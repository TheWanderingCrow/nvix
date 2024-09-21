{
	description = "Crow's nixvim configs";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		flake-parts = {
			url = "github:hercules-ci/flake-parts";
			inputs.nixpkgs-lib.follows = "nixpkgs";
		};
	};

	outputs = {
		nixvim,
		flake-parts,
		...
	} @ inputs:
		flake-parts.lib.mkFlake {inherit inputs;} {
			systems = [
			   "x86_64-linux"
			   "aarch64-linux"
			];
			perSystem = {
			   pkgs,
			   system,
			   ...
			}: let
			   pkgs = import inputs.nixpkgs {
			   	config.allowUnfree = true;
				inherit system;
			   };
			   nixvimLib = nixvim.lib.${system};
			   nixvim' = nixvim.legacyPackages.${system};
			   nixvimModule = {
			   	inherit pkgs;
				module = import ./config;
			   };
			   nvim = nixvim'.makeNixvimWithModule nixvimModule;
			in {
			   checks = {
			      default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
			   };
			   packages = {
			   	default = nvim;
			   };
			};
		    };
}
