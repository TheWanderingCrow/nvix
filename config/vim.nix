{ pkgs, lib, config, ...}: {
	config = {
		opts = {
			number = true;
			tabstop = 4;
			shiftwidth = 4;
			expandtab = true;
			foldmethod = "indent";
		};
		globals = {
			loaded_netrw = 1;
			loaded_netrwPlugin = 1;
		};
	};
}
