local telescope = require("telescope.builtin")
return {
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("telescope").setup({
        pickers = {
          colorscheme = {
            enable_preview = true,
          },
        },
      })
    end,
    keys = {
      {
        "<leader>rc",
        function()
          telescope.find_files({ search_dirs = { "app/controllers" } })
        end,
        desc = "Open Rails Controllers",
      },
      {
        "<leader>rm",
        function()
          telescope.find_files({ search_dirs = { "app/models" } })
        end,
        desc = "Open Rails Models",
      },
      {
        "<leader>rv",
        function()
          telescope.find_files({ search_dirs = { "app/views" } })
        end,
        desc = "Open Rails Views",
      },
      {
        "<leader>rj",
        function()
          telescope.find_files({ search_dirs = { "app/javascript", "app/assets/javascripts" } })
        end,
        desc = "Open Rails Javascripts",
      },
      {
        "<leader>rs",
        function()
          telescope.find_files({ search_dirs = { "app/assets/stylesheets" } })
        end,
        desc = "Open Rails Stylesheets",
      },
      {
        "<leader>rh",
        function()
          telescope.find_files({ search_dirs = { "app/helpers" } })
        end,
        desc = "Open Rails Helpers",
      },
      {
        "<leader>ro",
        function()
          telescope.oldfiles({ cwd_only = true })
        end,
        desc = "Open Old Files",
      },
      {
        "<leader>rz",
        function()
          telescope.resume()
        end,
        desc = "Resume previous find",
      },
      {
        "<leader>rb",
        function()
          telescope.buffers({ search_dirs = { "." } })
        end,
        desc = "Open Old Buffers",
      },
      {
        "<leader>pf",
        function()
          telescope.find_files()
        end,
        desc = "File Files",
      },
      {
        "<C-p>",
        function()
          telescope.git_files()
        end,
        desc = "Git Files",
      },
      {
        "<leader>ps",
        function()
          telescope.grep_string({ search = vim.fn.input("Grep > ") })
        end,
        desc = "Grep Files",
      },
      {
        "<leader>vh",
        function()
          telescope.help_tags()
        end,
        desc = "Help Tags",
      },
      {
        "<leader>rf",
        function()
          --  local cwd = vim.fn.getcwd()
          --  vim.notify(cwd)
          local fp = vim.fn.expand("%:h")
          --   vim.notify(fp)
          --  local p = fp:gsub("^" .. cwd, "")
          --  vim.notify(p)
          telescope.find_files({ search_dirs = { fp } })
        end,
        desc = "Browse files in current file directory",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
