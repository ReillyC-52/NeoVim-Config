local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end
configs.setup {
    ensure_installed = {"python", "lua", "go", "html"},
    highlight = {enable = true, additional_vim_regex_highlighting = true},
    indent = {enable = true, disable = {"python"}},
    refactor = {
            highlight_definitions  = { enable = true, clear_on_cursor_move = true },
            highlight_current_scope = { enable = true },
            smart_rename = { enable = true,
                keymaps = { smart_rename = "<leader>rr",},
                },
            navigation = { enable = true,
                keymaps = { goto_definition = "<leader>gd",
                            list_definitions = "<leader>ld",
                            goto_next_usage = "<leader>dn",
                            goto_previous_usage = "<leader>dp",
                          },
                },
            },
    yati = {
        enable = true,
        -- Whether to enable lazy mode (recommend to enable this if bad indent happens frequently)
        default_lazy = true,

        -- Determine the fallback method used when we cannot calculate indent by tree-sitter
        --   "auto": fallback to vim auto indent
        --   "asis": use current indent as-is
        --   "cindent": see `:h cindent()`
        -- Or a custom function return the final indent result.
        default_fallback = "asis",
        suppress_conflict_warning = true,
      },
}
