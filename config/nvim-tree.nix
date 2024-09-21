{pkgs, lib, config, ...}: {
	config = {
		plugins.nvim-tree.enable = true;
		opts.termguicolors = true;
	};
}
