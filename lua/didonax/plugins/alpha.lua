return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    dashboard.section.header.val = {
      [[ ██████╗ ██╗██████╗  ██████╗ ███╗   ██╗ █████╗ ██╗  ██╗ ]],
      [[ ██╔══██╗██║██╔══██╗██╔═══██╗████╗  ██║██╔══██╗╚██╗██╔╝ ]],
      [[ ██║  ██║██║██║  ██║██║   ██║██╔██╗ ██║███████║ ╚███╔╝  ]],
      [[ ██║  ██║██║██║  ██║██║   ██║██║╚██╗██║██╔══██║ ██╔██╗  ]],
      [[ ██████╔╝██║██████╔╝╚██████╔╝██║ ╚████║██║  ██║██╔╝ ██╗ ]],
      [[ ╚═════╝ ╚═╝╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝  ╚═╝ ]],
    }

    alpha.setup(dashboard.opts)
    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button('e', '  > New File', '<cmd>ene<CR>'),
      dashboard.button('ff', ' > Find file', '<cmd>Telescope find_files<CR>'),
      dashboard.button('fe', '  > Toggle file explorer', '<cmd>NvimTreeToggle<CR>'),
      dashboard.button('q', ' > Quit NVIM', '<cmd>qa<CR>'),
    }
  end,
}
