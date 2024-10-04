{ ... }: {
  globalOpts = {

    hlsearch = false;
    hidden = true;
    smoothscroll = true;
    number = true;
    relativenumber = true;
    mouse = "a";
    breakindent = true;
    undofile = true;
    ignorecase = true;
    smartcase = true;
    updatetime = 250;
    signcolumn = "yes";
    termguicolors = true;
    completeopt = [ "menu" "menuone" "noselect" ];
    spelllang = "en_us";
    spell = true;
    shiftwidth = 2;
    softtabstop = 4;
    tabstop = 4;
    swapfile = false;
    backup = false;
    laststatus = 2;
    autoread = true;
    wildmenu = true;
    grepprg = "rg --vimgrep --smart-case --follow";
    makeprg = "just";

    expandtab = true;
    smarttab = true;

    clipboard = "unnamedplus";

    scrolloff = 9;

    # formatexpr = "v:lua.require'conform'.formatexpr()";
  };

  # set the damn leader
  globals.mapleader = " ";

}
