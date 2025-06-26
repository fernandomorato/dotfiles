return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
          return vim.fn.executable("make") == 1
        end,
      },
      { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          vimgrep_arguments = { -- This config makes live_grep work for symlinks, symlink folders and hidden files
            "rg",
            "--hidden",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--follow",
          },
          file_ignore_patterns = { ".git", ".venv" },
          mappings = {
            i = {
              ["<C-k>"] = require("telescope.actions").move_selection_previous,
              ["<C-j>"] = require("telescope.actions").move_selection_next,
              ["<C-l>"] = require("telescope.actions").select_default,
            },
          },
        },
        pickers = {
          find_files = {
            hidden = true,
            follow = true,
          },
        },
      })
      -- Enable telescope extensions if they are installed
      pcall(require("telescope").load_extension, "fzf")
      pcall(require("telescope").load_extension, "ui-select")

      local builtin = require("telescope.builtin")
      local keymap = vim.keymap.set
      local opts = { silent = true, noremap = true }
      -- TODO: remove some of these keymaps
      keymap("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
      keymap("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
      keymap("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
      keymap("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
      keymap("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
      keymap("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
      keymap("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
      keymap("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
      keymap("n", "<leader>s.", builtin.oldfiles, { desc = "[S]earch Recent Files ('.' for repeat)" })
      keymap("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
      keymap("n", '<leader>gd', builtin.lsp_definitions, opts)
      keymap('n', '<leader>gr', builtin.lsp_references, opts)
      keymap('n', '<leader>gi', builtin.lsp_implementations, opts)
      keymap('n', '<leader>gT', builtin.lsp_type_definitions, opts)
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({
              -- even more opts
            }),
          },
        },
      })
      -- To get ui-select loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require("telescope").load_extension("ui-select")
    end,
  },
}
