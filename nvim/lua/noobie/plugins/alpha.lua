return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {  
      "                                                ╔═╗                                              ", 
    "███╗   ██╗ ██████╗  ██████╗ ██████╗ ██╗███████╗ ██║███████╗    ███╗   ██╗██╗   ██╗██╗███╗   ███╗ ",
    "████╗  ██║██╔═══██╗██╔═══██╗██╔══██╗██║██╔════╝  █║██╔════╝    ████╗  ██║██║   ██║██║████╗ ████║ ",
    "██╔██╗ ██║██║   ██║██║   ██║██████╔╝██║█████╗    ╚╝███████╗    ██╔██╗ ██║██║   ██║██║██╔████╔██║ ",
    "██║╚██╗██║██║   ██║██║   ██║██╔══██╗██║██╔══╝      ╚════██║    ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "██║ ╚████║╚██████╔╝╚██████╔╝██████╔╝██║███████╗    ███████║    ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═════╝ ╚═╝╚══════╝    ╚══════╝    ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                                                                 "
  }
--[[
    " __    __                   _______  ______ ________ __               __    __ __     __ ______ __       __ ", 
    "|  \\  |  \\                 |       \\|      \\        \\  \\             |  \\  |  \\  \\   |  \\      \\  \\     /  \\",
    "| ▓▓\\ | ▓▓ ______   ______ | ▓▓▓▓▓▓▓\\\\▓▓▓▓▓▓ ▓▓▓▓▓▓▓▓ ▓▓ _______     | ▓▓\\ | ▓▓ ▓▓   | ▓▓\\▓▓▓▓▓▓ ▓▓\\   /  ▓▓",
    "| ▓▓▓\\| ▓▓/      \\ /      \\| ▓▓__/ ▓▓ | ▓▓ | ▓▓__    \\▓ /       \\    | ▓▓▓\\| ▓▓ ▓▓   | ▓▓ | ▓▓ | ▓▓▓\\ /  ▓▓▓",
    "| ▓▓▓▓\\ ▓▓  ▓▓▓▓▓▓\\  ▓▓▓▓▓▓\\ ▓▓    ▓▓ | ▓▓ | ▓▓  \\     |  ▓▓▓▓▓▓▓    | ▓▓▓▓\\ ▓▓\\▓▓\\ /  ▓▓ | ▓▓ | ▓▓▓▓\\  ▓▓▓▓",
    "| ▓▓\\▓▓ ▓▓ ▓▓  | ▓▓ ▓▓  | ▓▓ ▓▓▓▓▓▓▓\\ | ▓▓ | ▓▓▓▓▓      \\▓▓    \\     | ▓▓\\▓▓ ▓▓ \\▓▓\\  ▓▓  | ▓▓ | ▓▓\\▓▓ ▓▓ ▓▓",
    "| ▓▓ \\▓▓▓▓ ▓▓__/ ▓▓ ▓▓__/ ▓▓ ▓▓__/ ▓▓_| ▓▓_| ▓▓_____    _\\▓▓▓▓▓▓\\    | ▓▓ \\▓▓▓▓  \\▓▓ ▓▓  _| ▓▓_| ▓▓ \\▓▓▓| ▓▓",
    "| ▓▓  \\▓▓▓\\▓▓    ▓▓\\▓▓    ▓▓ ▓▓    ▓▓   ▓▓ \\ ▓▓     \\  |       ▓▓    | ▓▓  \\▓▓▓   \\▓▓▓  |   ▓▓ \\ ▓▓  \\▓ | ▓▓",
    " \\▓▓   \\▓▓ \\▓▓▓▓▓▓  \\▓▓▓▓▓▓ \\▓▓▓▓▓▓▓ \\▓▓▓▓▓▓\\▓▓▓▓▓▓▓▓   \\▓▓▓▓▓▓▓      \\▓▓   \\▓▓    \\▓    \\▓▓▓▓▓▓\\▓▓      \\▓▓",
  }
  ]]--
    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
