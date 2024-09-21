{ pkgs, lib, config, ...}: {
	config.plugins.lsp = {
		enable = true;
		servers = {
			phpactor.enable = true;
			lua-ls.enable = true;
			yamlls.enable = true;
		};
	};
}
