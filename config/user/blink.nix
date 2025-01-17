{ ... }: {
  plugins.blink-compat.enable = true;
  plugins.blink-cmp = {
    enable = true;
    # autoEnableSources = true;
    settings = {
      completion.documentation = {
        auto_show = true;
        auto_show_delay_ms = 2000;
      };
      # sources
    };
  };
}
