{
  config.vim = {
    theme = {
      enable = true;
      name = "tokyonight";
      style = "moon";
    };

    # Easier to hit than \
    globals.mapleader = ",";

    spellcheck.enable = true;

    options = {
      tabstop = 2;
      smartindent = true;
      shiftwidth = 2;
      expandtab = true;
    };

    # We can toggle the tree with <leader>t and jump to it with <leader>tf
    filetree.neo-tree = {
      enable = true;
      setupOpts = {
        enable_cursor_hijack = true;
        filesystem.follow_current_file = {
          enabled = true;
          leave_dirs_open = false;
        };
      };
    };

    statusline.lualine = {
      enable = true;
      theme = "powerline_dark";
    };

    visuals = {
      nvim-scrollbar.enable = true;
      nvim-web-devicons.enable = true;
      fidget-nvim.enable = true;
      indent-blankline.enable = true;
    };

    projects = {
      project-nvim.enable = true;
    };

    ui = {
      borders.enable = true;
      noice.enable = true;
      colorizer.enable = true;
    };

    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
    };

    # Neat leader commands
    # fg: live grep
    # ff: find file
    # fvb: jump around git branches
    telescope.enable = true;

    lsp = {
      enable = true;
      formatOnSave = true;
      trouble.enable = true;
    };

    languages = {
      enableLSP = true;
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;

      nix.enable = true;
      markdown.enable = true;
      bash.enable = true;
    };
  };
}
