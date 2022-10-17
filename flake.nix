{
  inputs = {
    nixpkgs = { url = "github:nixos/nixpkgs/nixos-22.05"; };
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
        kube-openapi = pkgs.callPackage ({ fetchzip, buildGoModule }:
          buildGoModule {
            pname = "kube-openapi";
            version = "1.22";

            src = fetchzip {
              url = "https://github.com/kubernetes/kube-openapi/archive/release-1.22.tar.gz";
              sha256 = "06bq0js4bqf5cpc8p1l681g86hblq689namnm46nyydzjvwkzd53";
            };

            vendorSha256 = "0383dkfxsd2zrdicv28xz3c61s20qnjqf95s2qj4zf8ffgwswdqq";

            doCheck = false;
          }
        ) {};

        rook-ceph-openapi = pkgs.callPackage ./generate/openapi/default.nix {};

        dhall-rook = pkgs.callPackage ({ pkgs, stdenv }:
          stdenv.mkDerivation {
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
