{
  description = "Dijkstra's Shortest Path Implementation";

  inputs = {
    nixpkgs.url = "github:anmonteiro/nix-overlays";
    nix-filter.url = "github:numtide/nix-filter";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, nix-filter, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = (nixpkgs.makePkgs {
          inherit system;
          extraOverlays = [ ];
        }).extend
          (self: super: { ocamlPackages = super.ocaml-ng.ocamlPackages_5_0; });

        package = pkgs.callPackage ./nix/package.nix { inherit nix-filter; };

        shell = import ./nix/shell.nix { inherit pkgs package; };
      in
      rec {
        packages = { inherit package; };
        devShells.default = shell;
      });
}
