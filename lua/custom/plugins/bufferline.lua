return {
  'akinsho/nvim-bufferline.lua',
  config = function()
    vim.opt.termguicolors = true
    require('bufferline').setup {
      options = {
        numbers = 'id',
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level)
          local icon = level:match 'error' and ' ' or ''
          return ' ' .. icon .. count
        end,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        separator_style = 'slant',
        indicator = {
          icon = '▎',
          -- style = { 'icon' | 'underline' | 'none' },
        },
        always_show_bufferline = true,
        highlight = { underline = true, sp = 'blue' },
        hover = {
          enabled = true,
          delay = 150,
          reveal = { 'close' },
        },
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            text_align = 'center',
          },
        },
      },
    }
  end,
}
