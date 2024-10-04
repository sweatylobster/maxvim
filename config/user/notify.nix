{ ... }: {
  plugins.notify = {
    enable = true;
    render.__raw = "compact";
    stages = "static";
    timeout = 2000;
    maxHeight.__raw = ''function()
        return math.floor(vim.o.lines * 0.75)
      end'';
    maxWidth.__raw = ''function()
        return math.floor(vim.o.columns * 0.75)
      end'';
    onOpen.__raw = ''function(win)
        vim.api.nvim_win_set_config(win, { focusable = false }) -- i like getting output with print sometimes
      end'';
  };
}
