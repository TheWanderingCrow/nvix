{pkgs, lib, config, ...}: {
	config = {
		plugins.nvim-tree = {
            enable = true;
            autoReloadOnWrite = true;
            openOnSetup = true;
            updateFocusedFile.enable = true;
        };
		opts.termguicolors = true;
	};
}
