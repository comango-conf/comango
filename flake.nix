{
  description = "Config management system";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  }; 

  outputs = { self, nixpkgs, flake-utils }:
  (flake-utils.lib.simpleFlake {
      inherit self nixpkgs;
      name = "comango";
      overlay = _: prev: { 
        comango = {
          comango = prev.callPackage ./comango.nix {};
        };
    };
  });
}
