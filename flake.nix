{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;

      os = lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
        ];
      };

      vm = lib.nixosSystem {
        inherit system;
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
      nixosConfigurations.my-os = os;

      packages.${system}.vm =
        vm.config.system.build.vm;

      checks.${system}.os-build =
        os.config.system.build.toplevel;

      checks.${system}.vm-build =
        vm.config.system.build.vm;
    };
}
