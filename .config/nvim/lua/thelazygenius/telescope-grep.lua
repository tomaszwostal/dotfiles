-- # ripgrep telescope

local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local sorters = require "telescope.sorters"

local rg = {'rg', '--line-number', '--column', "", vim.fn.expand("%:p:h")}

local job_opts = {
    entry_maker = function(entry)
        local _, _, filename, lnum, col, text = string.find(entry, "([^:]+):(%d+):(%d+):(.*)")

        local table = {
            ordinal = text,
            display = lnum .. ":" .. filename .. ":" .. text
        }

        return table
    end
}
local opts = {
    finder = finders.new_oneshot_job(rg, job_opts),
    sorter = sorters.get_generic_fuzzy_sorter(),
}

local picker = pickers.new(opts)
picker:find()
