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
            version = "v0.0.0-20241009091222-67ed5848f094";

            src = fetchFromGitHub {
              owner = "kubernetes";
              repo = "kube-openapi";
              rev = "67ed5848f094e4cd74f5bdc458cd98f12767c538";
              hash = "sha256-xK6MoR3sHJIOO/dRrKin28HJXx22QWVT8ReKypuCkAk=";
            };

            vendorHash = "sha256-LnXlPMNiuBw5qp9r/17n+Y8ir6s4M2mFFefhG1mAb4U=";

            doCheck = false;
            excludedPackages = [ "./test/integration" ];
          }
        ) {};

        dhall-rook = pkgs.dhall-rook_1_15;
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
