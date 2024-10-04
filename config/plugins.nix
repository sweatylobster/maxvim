{

  colorschemes.tokyonight.enable = true;

  plugins = {

    ######## AESTHETICS ########

    cloak.enable = true;
    web-devicons.enable = true;
    todo-comments.enable = true;
    dressing.enable = true;

    ########     GIT    ########
    gitsigns = {
      enable = true;
      settings.current_line_blame = true;
      settings.preview_config.border = "rounded";
    };
    # Use floating lazygit
    lazygit.enable = true;
    fugitive.enable = true;

    ######## UTILITIES ########

    # Use oil for fs nav
    oil.enable = true;

    # Of course, leverage treesitter
    treesitter.enable = true;

    ######## LSP & SNIPPETS ########

    # yay lsp stuff :)
    lsp = {
      enable = true;
      servers = {
        pyright.enable = true;
        ruff.enable = true;
        marksman.enable = true;
        nil-ls.enable = true;
        bashls.enable = true;
      };
    };

    # Snippets :)
    luasnip = {
      enable = true;
    };

    # # trying out none-ls, idc really
    # none-ls = {
    #   enable = true;
    #   settings = {
    #     cmd = [ "bash -c nvim" ];
    #     debug = true;
    #   };
    #   sources = {
    #     code_actions = { };
    #     diagnostics = { };
    #     formatting = {
    #       alejandra.enable = true;
    #       stylua.enable = true;
    #       shfmt.enable = true;
    #       nixpkgs_fmt.enable = true;
    #     };
    #     completion = {
    #       luasnip.enable = true;
    #       spell.enable = true; # QUESTIONABLE
    #     };
    #   };
    # };

  };
}



