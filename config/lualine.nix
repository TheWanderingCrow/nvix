{ pkgs, lib, config, ...}: {
	
	config.plugins.lualine = {
		enable = true;
		settings = {
			options = { theme = "powerline-dark"; };
			sections = {
				lualine_a = ["mode"];
				lualine_b = ["branch" "diff" "diagnostics"];
				lualine_c = ["filename"];
				lualine_x = ["encoding" "fileformat" "filetype"];
				lualine_y = ["progress"];
				lualine_z = ["location"];
			};
		};

	};
}
