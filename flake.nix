{
  inputs = {
    nixpkgs = { url = "nixpkgs/nixpkgs-unstable"; };
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

        rook-ceph-openapi = pkgs.callPackage ./openapi/default.nix {};

        default = packages."${system}".rook-ceph-openapi;
      };

      overlays.default = final: prev: {
        haskellPackages = prev.haskellPackages.override {
          overrides = final: prev: {
            dhall-openapi =
              let
                dhall-haskell = pkgs.fetchFromGitHub {
                  owner = "dhall-lang";
                  repo = "dhall-haskell";
                  rev = "1.41.1";
                  sha256 = "11cb721zxvpjpqdssr3aywdgwha01rnvij2ahgbhmig36qnx1qbr";
                  fetchSubmodules = true;
                };

              in
                (import "${dhall-haskell}/nix/shared.nix" {
                  inherit system;
                }).dhall-openapi;
          };
        };
      } // self.packages."${system}";

      devShells."${system}".default = pkgs.mkShell {
        nativeBuildInputs = [
          pkgs.go
          pkgs.haskellPackages.dhall-openapi
        ];
      };
    };
}
