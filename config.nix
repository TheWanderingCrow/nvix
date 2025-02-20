{
  config.vim = {
    keymaps = [
      # For use with a footswitch bound to F12
      {
        mode = "n";
        key = "<F12>";
        action = "i";
        silent = true;
      }
      {
        mode = "i";
        key = "<F12>";
        action = "<Esc>";
        silent = true;
      }
    ];

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
    filetree.neo-tree.enable = true;

    statusline.lualine = {
      enable = true;
      theme = "powerline_dark";
    };

    autopairs.nvim-autopairs.enable = true;

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
        editing_text = "type type type";
        reading_text = "pondering tomes";
        file_explorer_text = "where da file at";
        enable_line_number = true;
        line_number_text = "Line %s of %s";
        workspace_text = "I use NixOS btw";
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
