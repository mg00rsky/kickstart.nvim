-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },

    require('telescope').setup {
      extensions = {
        live_grep_args = {
          auto_quoting = false, -- allows raw regex
        },
      },
    },

    require('telescope').load_extension 'live_grep_args',

    vim.keymap.set('n', '<leader>sl', function()
      require('telescope').extensions.live_grep_args.live_grep_args()
    end, { desc = '[S]earch [L]ive grep (regex enabled)' }),
  },
}
