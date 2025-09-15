{
  description = "Crow's neovim configs";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {
    self,
    nixpkgs,
    nvf,
    ...
  } @ inputs: let
    forAllSystems = nixpkgs.lib.genAttrs [
      "x86_64-linux"
      "aarch64-linux"
    ];
  in {
    packages = forAllSystems (
      system: let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };

        neovimConfigured = nvf.lib.neovimConfiguration {
          inherit pkgs;
          modules = [./config.nix];
        };

        neovimMiniConfigured = nvf.lib.neovimConfiguration {
          inherit pkgs;
          modules = [./config-mini.nix];
        };
      in {
        default = neovimConfigured.neovim;
        mini = neovimMiniConfigured.neovim;
      }
    );
  };
}
