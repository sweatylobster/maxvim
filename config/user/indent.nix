{ ... }: {
  plugins.indent-blankline = {
    enable = true;
    settings = {
      indent = { char = "|"; };
      exclude = { filetypes = [ "help" ]; };
      scope = { enabled = false; };
    };
  };
}
