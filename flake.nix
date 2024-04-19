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

    in rec {
      packages."${system}" = {
        dhall-rook = generateLib.buildSpecDhall {
          version = "1.9";
          sha256 = "sha256-BTvCdW1aHcVgxb11s5g2njrLWIIi7jg4qs2XWhV66Xs=";
          vendorHash = "sha256-VVqu12MnRz0yAmgiYt7eqAy/YBsmak/xT0yiECDHz3c=";
        };

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
