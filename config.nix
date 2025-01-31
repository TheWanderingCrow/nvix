{inputs, ...}: {
  config.vim = {
    theme = {
      enable = true;
      name = "tokyonight";
      style = "moon";
    };

    # More convinient to hit than \
    globals.mapleader = ",";

    options = {
        tabstop = 4;
        expandtab = true;
        shiftwidth = 4;
        foldmethod = "indent";
    };

    # We can toggle the tree with <leader>t and jump to it with <leader>tf
    filetree.nvimTree.enable = true;
    statusline.lualine = {
      enable = true;
      theme = "powerline_dark";
    };

    # Neat leader commands
    # fg: live grep
    # ff: find file
    # fvb: jump around git branches
    telescope.enable = true;

    languages = {
      enableFormat = true;
      enableLSP = true;
      enableTreesitter = true;
      nix.enable = true;
      lua.enable = true;
      php.enable = true;
      rust.enable = true;
    };

    lsp = {
        enable = true;
        trouble.enable = true;
    };
  };
}
