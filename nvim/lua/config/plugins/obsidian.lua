return {
  "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("obsidian").setup({
        workspaces = {
          {
            name = "second-brain",
            path = "~/second-brain/",
          },
        },
        completion = {
          nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
          min_chars = 3,
        },
        notes_subdir = "notes",
        new_notes_location = "notes_subdir",
        templates = {
          folder = "templates",
        },
        picker = {
          name = "telescope.nvim",
          mappings = {
            -- Create a new note from your query.
            new = "<C-x>",
            -- Insert a link to the selected note.
            insert_link = "<C-l>",
          },
        },
      })
    end,
}
