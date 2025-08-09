{
  description = "SwarseFlake - Nix Flake for all SwarselSystems";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    systems.url = "github:nix-systems/default";
  };
  outputs =
    inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        ./nix/modules.nix
      ];
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
    };
}
