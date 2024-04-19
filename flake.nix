{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";

      pkgs = import nixpkgs {
        inherit system;
        overlays = [ self.overlays.default ];
      };

    in rec {
      packages."${system}" = {
        kube-openapi = pkgs.callPackage ({ fetchFromGitHub, buildGoModule }:
          buildGoModule {
            pname = "kube-openapi";
            version = "v0.0.0-20240411171206-dc4e619f62f3";

            src = fetchFromGitHub {
              owner = "kubernetes";
              repo = "kube-openapi";
              rev = "dc4e619f62f39c61c7b7fc49a9e561ceee8a8935";
              hash = "sha256-KoM8GgYnJUELHR7pGcG/UlxcJ2tefZGLqiZuyvQ6qIw=";
            };

            vendorHash = "sha256-sckhOpoCN7FrFOMk3PpOjlDv1zHhj09SHg3GGrH8tac=";

            doCheck = false;
            excludedPackages = [ "./test/integration" ];
          }
        ) {};

        rook-ceph-openapi = pkgs.callPackage ./generate/openapi/default.nix {};

        dhall-rook = pkgs.callPackage ({ pkgs, stdenvNoCC }:
          stdenvNoCC.mkDerivation {
            name = "dhall-rook";
            version = "1.9";

            src = ./generate;

            buildInputs = [ pkgs.ed pkgs.haskellPackages.dhall ];

            buildPhase = ''
              mkdir 1.9
              cd 1.9
              ${pkgs.haskellPackages.dhall-openapi}/bin/openapi-to-dhall \
                  --preferNaturalInt ${pkgs.rook-ceph-openapi}/generated.v2.json

              # openapi-to-dhall currently doesn't support exceptions with
              # underscores in their names
              sed -i "s/Natural/Integer/g" types/io.rook.ceph.v1.StatesSpec.dhall
              cd ..

              sh patch.sh 1.9 1.9
            '';

            installPhase = "mv 1.9 $out";
          }
        ) {};

        default = packages."${system}".dhall-rook;
      };

      overlays.default = final: prev: self.packages."${system}";

      devShells."${system}".default = pkgs.mkShell {
        nativeBuildInputs = [
          pkgs.go
          pkgs.haskellPackages.dhall-openapi
        ];
      };
    };
}
