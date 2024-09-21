{ pkgs, lib, config, ...}: {
	config.keymaps = [
		{
			mode = ["n" "v"];
			key = "d";
			action = "\"_d";
		}
		{
			mode = ["n" "v"];
			key = "x";
			action = "\"_x";
		}
	];
}
