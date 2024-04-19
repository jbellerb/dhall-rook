{ lib, newScope }:

lib.makeScope newScope (self:
  let
    inherit (self) callPackage;

  in {
    buildSpecDhall = callPackage ./buildSpecDhall.nix { };
    buildSpecJSON = callPackage ./buildSpecJSON.nix { };
    buildSpecModule = callPackage ./buildSpecModule.nix { };
  }
)
