{
	description = "Crow's nixvim configs";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		flake-parts = {
			url "github:hercules-ci/flake-parts";
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
			   nixvimLib = nixvim.lib.${system};
			   nixvim' = nixvim.legacyPackages.${system};
			   nvim = nixvim'.makeNixvimWithModule {
			   	inherit pkgs;
				module = import ./config;
			   };
			in {
			   checks = {
			      default = nixvimLib.check.mkTestDerivationFromNixvimModule {
			         inherit nvim;
				 name = "Crow's nixvim config";
			   };
			   
			   packages = {
			   	default = nvim;
			   };
			};
		    };
		};
}
