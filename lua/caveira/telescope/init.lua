require('telescope').setup{
  pickers = {
    find_files = {
      theme = "dropdown",
    }
  },
}

-- This need to be after setup
require("caveira.telescope.remaps")
