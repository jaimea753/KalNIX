
{
  description = "KalNIX nix module";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = inputs@{ self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;

      vm = lib.nixosSystem {
        inherit system;

        specialArgs = { inherit inputs; };

        modules = [
          ./configuration.nix

          {
            virtualisation.vmVariant = {
              virtualisation.memorySize = 2048;
              virtualisation.cores = 2;
              virtualisation.graphics = true;
            };
          }
        ];
      };
    in
    {
      nixosModules.default = ./configuration.nix;
      nixosModules.kalnix = ./configuration.nix;

      packages.${system}.vm =
        vm.config.system.build.vm;

      checks.${system}.vm-build =
        vm.config.system.build.vm;
    };
}

