{inputs, ...}: {
  config.vim = {
    theme = {
      enable = true;
      name = "tokyonight";
      style = "moon";
    };

    # More convinient to hit than \
    globals.mapleader = ",";

    spellcheck.enable = true;

    options = {
      tabstop = 4;
      expandtab = true;
      shiftwidth = 4;
      foldmethod = "indent";
      autoindent = false;
      smartindent = false;
    };

    # We can toggle the tree with <leader>t and jump to it with <leader>tf
    filetree.neo-tree.enable = true;

    statusline.lualine = {
      enable = true;
      theme = "powerline_dark";
    };

    visuals = {
      nvim-scrollbar.enable = true;
      nvim-web-devicons.enable = true;
      fidget-nvim.enable = true;
      indent-blankline.enable = true;

      cellular-automaton.enable = true;
    };

    git = {
      enable = true;
      gitsigns.enable = true;
      gitsigns.codeActions.enable = false;
    };

    minimap = {
      minimap-vim.enable = false;
      codewindow.enable = true;
    };

    projects = {
      project-nvim.enable = true;
    };

    ui = {
      borders.enable = true;
      noice.enable = true;
      colorizer.enable = true;
    };

    presence.neocord = {
      enable = true;
      setupOpts = {
        editing_text = "Grindin out code";
        browsing_text = "Grindin out code";
        enable_line_number = true;
      };
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
      css.enable = true;
      html.enable = true;
      sql.enable = true;
      go.enable = true;
      lua.enable = true;
      python.enable = true;
      rust = {
        enable = true;
        crates.enable = true;
      };
      php.enable = true;
    };
  };
}
