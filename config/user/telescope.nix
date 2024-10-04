{ ... }: {
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
    };
    keymaps = {
      "<leader>sf" = "find_files";
      "<leader>sg" = "live_grep";
      "<leader>gf" = "git_files";
      "<leader>sh" = "help_tags";
      "<leader><leader>" = "buffers";
    };
    settings = {
      defaults = {
        mappings = {
          i = {
            "<CR>" = {
              __raw = ''
                function(prompt_bufnr)
                  local picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
                  local multi = picker:get_multi_selection()
                  if not vim.tbl_isempty(multi) then
                    require("telescope.actions").close(prompt_bufnr)
                    for _, j in pairs(multi) do
                      if j.path ~= nil then
                        vim.cmd(string.format("%s %s", "edit", j.path))
                      end
                    end
                  else
                    require("telescope.actions").select_default(prompt_bufnr)
                  end
                end'';
            };

            # "<C-y>" = select_one_or_multi;
            "<C-h>" = { __raw = "require('telescope.actions').move_to_top"; };
            "<C-l>" = { __raw = "require('telescope.actions').move_to_bottom"; };
            "<C-j>" = { __raw = "require('telescope.actions').move_selection_next"; };
            "<C-k>" = {
              __raw = "require('telescope.actions').move_selection_previous";
            };
            "<C-q>" = {
              __raw = "require('telescope.actions').send_selected_to_qflist";
            };
          };
        };
        prompt_prefix = "   ";
        selection_caret = " ❯ ";
        entry_prefix = " ";
        multi_icon = " + ";
        path_display = [ " filename_first " ];
        vimgrep_arguments = [
          " rg "
          " - -color = never "
          " - -no-heading "
          " - -with-filename "
          " - -line-number "
          " - -column "
          " - -smart-case "
          " - -hidden "
          " - -glob=!.git"
        ];
      };
    };
  };
}
