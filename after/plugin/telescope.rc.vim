nnoremap <silent> ;f <cmd>Telescope find_files<cr>
nnoremap <silent> ;r <cmd>Telescope live_grep<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

lua <<EOF

local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "git"
    },
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
    pickers = {
      find_files = {
        previewer = false,
      },
      file_browser = {
        previewer = false,
      }
    }
  }
}

EOF
