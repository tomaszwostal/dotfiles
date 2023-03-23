-- require('copilot').setup({
--   panel = {
--     enabled = false,
--     auto_refresh = false,
--     keymap = {
--       jump_prev = "[[",
--       jump_next = "]]",
--       accept = "<CR>",
--       refresh = "gr",
--       open = "<M-CR>"
--     },
--     layout = {
--       position = "bottom", -- | top | left | right
--       ratio = 0.4
--     },
--   },
--   suggestion = {
--     enabled = false,
--     auto_trigger = false,
--     debounce = 75,
--     keymap = {
--       accept = "<M-l>",
--       accept_word = false,
--       accept_line = false,
--       next = "<M-]>",
--       prev = "<M-[>",
--       dismiss = "<C-]>",
--     },
--   },
--   -- filetypes = {
--   --   yaml = false,
--   --   markdown = false,
--   --   help = false,
--   --   gitcommit = false,
--   --   gitrebase = false,
--   --   hgcommit = false,
--   --   svn = false,
--   --   cvs = false,
--   --   ["."] = false,
--   -- },
--   -- copilot_node_command = 'system', -- Node.js version must be > 16.x
--   server_opts_overrides = {},
-- })
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })