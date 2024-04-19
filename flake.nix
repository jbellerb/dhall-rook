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

      generateLib = import ./generate/default.nix {
        inherit (pkgs) lib newScope;
      };

    in {
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

        dhall-rook = pkgs.dhall-rook_1_10;
        default = pkgs.dhall-rook;
      } // (nixpkgs.lib.mapAttrs' (version: props: nixpkgs.lib.nameValuePair
        "dhall-rook_${builtins.replaceStrings [ "." ] [ "_" ] version}"
        (generateLib.buildSpecDhall {
          inherit version;
          inherit (props) sha256 vendorHash;
        })
      ) (nixpkgs.lib.importTOML ./generate/rook.toml));

      overlays.default = final: prev: self.packages."${system}";

      devShells."${system}".default = pkgs.mkShell {
        nativeBuildInputs = [
          pkgs.go
          pkgs.haskellPackages.dhall-openapi
        ];
      };
    };
}
