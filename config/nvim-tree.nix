{pkgs, lib, config, ...}: {
	config = {
		plugins.nvim-tree = {
            enable = true;
            autoReloadOnWrite = true;
            openOnSetup = true;
            openOnSetupFile = false;
            hijackUnnamedBufferWhenOpening = true;
            updateFocusedFile.enable = true;
        };
		opts.termguicolors = true;
	};
}
