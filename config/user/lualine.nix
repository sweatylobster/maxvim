{ ... }: {
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        theme = "tokyonight";
        component_separators = "";
        section_separators = "";
      };
      sections = {
        lualine_c = [
          "%="
          {
            __unkeyed-1 = "filename";
            file_status = false;
            path = 1;
          }
        ];
      };
      inactive_sections = {
        lualine_c = [
          "%="
          {
            __unkeyed-1 = "filename";
            file_status = false;
            path = 1;
          }
        ];
        lualine_x = [
          { __unkeyed-1 = "location"; }
        ];
      };
    };
  };
}
