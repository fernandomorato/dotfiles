return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<leader>a", "<cmd>Alpha<CR>", desc = "Alpha" },
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    local neovim_art = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }
    local tomioka = {
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣶⣦⣤⣴⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣷⣦⢄⡀⠀⠀⠀⠀⠀",
      "⠀⠀⠒⠶⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣷⢿⣿⣆⠀⠀⠀",
      "⠀⠀⠀⠀⠀⢉⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣼⣿⣿⣿⣿⣿⡏⠀⠀⠀",
      "⠀⠀⠀⠀⣰⣿⣿⣿⣿⣼⣿⣿⣿⠟⢻⣿⣿⠟⣹⠿⠋⠁⢿⣿⢿⣿⣇⠀⠀⠀",
      "⠀⢤⣴⣾⣿⣿⣿⣿⣿⣿⣿⠟⠓⠒⢺⠟⣓⠊⠀⠀⠶⠦⠼⣇⢸⣿⣿⣦⠀⠀",
      "⠀⠀⠀⠀⠉⠉⣽⣿⣿⣟⣽⠒⠛⣻⣍⠑⠀⠀⠀⠘⠒⢒⡒⠮⢘⣿⣿⣿⣿⣦",
      "⠀⠀⢀⣀⣤⣾⣿⣿⣿⣿⣿⠀⡀⡙⡋⠀⠀⠀⠀⠀⠀⣛⣋⡀⢸⣿⣿⡀⠀⠀",
      "⠀⠀⠀⠀⠀⢀⣼⡿⡙⣝⢿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⣿⡿⣷⣄⠀",
      "⣀⣀⣀⣀⣐⣛⣛⣻⣌⠫⠢⠁⠀⠀⠀⠀⠦⠤⠤⠆⠀⠀⠀⢠⠟⡸⣷⡀⠀⠀",
      "⠈⠙⠻⢿⣿⣿⣿⣿⣿⣿⣶⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠇⠊⠀⠀⠀⠀⠀",
      "⠀⠀⠀⢀⣨⣿⢿⣿⣿⡻⣿⣟⢎⠐⠄⡀⠀⠀⠀⢀⣠⢚⣷⣄⠀⠀⠀⠀⠀⠀",
      "⠀⠀⢀⣽⣿⣿⣿⣿⡿⡟⢹⣿⣶⣌⡐⠠⠭⢀⠨⠕⣊⣼⣸⡿⠿⠶⠄⠀⠀⠀",
      "⠀⠀⠉⠀⣰⡿⠛⠁⢠⠁⢸⣿⣿⣿⣿⣶⡆⡜⢰⣾⣿⣿⣷⢷⢄⠀⠀⠀⠀⠀",
      "⠀⢀⡀⠒⠉⠇⠀⠀⠃⠀⢸⣿⣾⣿⣿⡿⡇⣈⣼⣿⣽⣿⡏⢶⠯⣈⡐⠤⠀⠀",
    }
    local vagabond = {
      "⡿⡽⣛⣿⢯⣟⣿⢝⡯⣿⣻⣻⡻⣟⣿⡻⡯⡿⡽⡯⣻⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⡻⣯⣿⡯⣟⢿⢝⣟⣯⢿⣽⣻⣽⢯⣟⣏⣟⢯⢟⣟⢯⢿⣝⣯",
      "⡾⣽⢯⣷⣻⣳⣟⣷⣫⣷⣳⣟⡯⣟⡾⣽⡹⣽⣳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣻⣿⣽⢽⣕⢷⢝⡷⡽⡾⣽⡳⣕⡧⣳⠽⡵⣽⣹⣵⣻⣞",
      "⡳⡯⣗⡿⣺⣪⣗⣧⡻⣮⡳⣏⡯⡿⡽⢮⡿⣽⣿⣿⣿⣿⡿⣿⣿⣿⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣽⡿⣷⢽⢧⣏⢯⣝⣮⣻⣜⡗⡝⡮⡏⡞⣞⠼⣪⢗⡷",
      "⡫⣟⣼⣯⢷⣳⡟⣖⢯⡳⡯⣗⢯⣯⢯⣟⣾⣿⣿⣿⣻⡷⡟⣿⣛⢿⢻⢿⣿⣿⡷⣝⣿⣿⣿⣻⠿⣿⣿⣾⣻⣿⣟⡾⣪⣗⣗⢷⢵⣳⡝⣭⡳⡭⡳⣝⢽⣸⢽⣺",
      "⢭⢺⢼⢾⢽⣺⣻⡪⡯⣳⡻⣞⣳⢵⣳⢿⣿⣿⣿⣿⣳⣿⣷⣤⣿⡗⣷⡿⢾⣾⣿⣪⢿⢮⡻⣿⢿⣿⣿⣿⣿⡽⣿⡮⣳⡳⡽⡽⡽⢮⣛⢞⡺⢮⢻⢮⡳⡷⡽⣺",
      "⢪⢳⣹⡽⡳⡽⣜⢮⡳⣕⡟⣜⢮⡳⣫⣿⣿⣿⣿⢫⣽⣿⣷⠾⠍⠅⠞⡪⢓⡊⠽⢯⡿⣗⣿⣺⣝⡮⣛⢿⣿⢻⣾⣿⣚⢮⡳⣝⠮⡯⣎⢧⡫⣎⡳⡕⣽⣺⢹⢽",
      "⢹⢼⢼⡽⡭⣟⡳⣳⡻⣚⢞⢞⢮⣺⣿⣿⡿⢏⣗⠍⢊⠌⠐⠀⠀⠀⠀⠀⠀⢣⠀⠈⠀⠌⠈⠚⡼⣟⡾⣷⣮⣯⣿⣿⣷⡵⡽⣜⢭⣏⣗⣗⢽⣸⣺⢜⣗⡕⣯⢻",
      "⡵⡹⣝⡮⡫⣗⢵⡳⣝⢮⣫⢯⢾⢽⣿⣿⣻⣟⠎⡠⠃⢈⡠⠀⠀⠀⠀⠀⠀⠰⠀⠀⠀⠀⠀⠀⢞⣿⢯⣺⢝⣛⡞⣯⣿⣿⢿⣬⣗⢇⣗⣕⢧⡣⡣⣣⢣⡝⣪⣚",
      "⡼⡪⣇⡗⡽⡮⡣⡯⣪⢞⢮⢫⡯⡿⣿⣟⣯⣷⣡⢅⠸⠐⠀⠀⠀⠀⠀⠀⠀⠑⠀⠀⠀⣀⣀⣄⠈⠛⢿⣗⡿⣊⢬⣿⣵⣿⣟⢭⢫⢯⢫⡫⡫⢝⢜⢎⢧⢝⢞⡞",
      "⢧⣫⡮⣺⡺⡝⡎⣇⠧⣫⢓⣷⣝⠟⣿⠮⣿⠮⡕⣨⣛⡶⣦⣄⡀⠀⢀⡠⣴⢶⠾⡛⡋⡁⠀⠁⠑⠁⠸⣽⠾⣿⣈⣼⣿⣿⢿⣳⢧⣇⢗⡕⡭⡪⢪⠪⡪⡪⡣⡣",
      "⢳⡸⡳⣣⡳⣍⠯⢧⡫⡪⣾⣫⡪⡾⣻⣯⣿⡎⡉⣛⢖⢪⣤⡮⢗⡄⠀⢘⢠⡱⣭⡵⢴⠶⠖⠀⠀⠀⠀⢾⣎⣝⣿⣿⣿⣯⣿⡮⡳⢽⢷⡱⡣⡹⢅⢯⢺⢸⢪⢳",
      "⠼⡸⣪⢺⡸⣜⣝⡎⣎⢮⡗⡕⣽⣵⣿⣟⣿⣷⠄⠀⠁⠉⢀⡠⣺⡇⠀⠀⠑⠑⠀⠁⠁⠁⠀⠀⠀⠀⢠⠽⣇⣿⣿⣿⣿⣿⣻⣿⣜⣓⣯⡗⡧⡫⡪⡒⡕⡕⡵⡹",
      "⢵⢱⢕⢕⢜⢜⢮⢿⢦⣟⣯⣮⣿⣿⣿⣿⢻⣿⡧⡄⠀⠀⢨⢺⢾⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢴⣾⣿⣿⡿⣿⣿⡹⣿⢽⡭⡓⠧⢿⠭⡎⢎⢪⢜⢜⢌⢎",
      "⢸⡈⢎⡺⡮⣕⢜⢜⢍⢿⣳⢯⡿⣽⣾⣿⣿⣯⣷⢀⠈⠀⠀⠁⣿⡇⠀⠀⠆⡀⠀⠀⠀⠀⠀⠀⠀⠜⡄⣿⣿⣾⢵⣿⣿⡻⣞⣛⢯⡚⡮⣳⢱⠩⡍⡲⣘⢲⢳⢹",
      "⣊⢊⢎⢪⢪⡛⣝⢻⣓⢏⣯⣿⣾⡿⣟⣟⣼⣿⣿⣷⡀⡂⠀⢈⣪⣷⣄⣐⢲⠀⠀⠀⠀⠀⢀⠆⢨⠚⢀⣿⣿⣿⣾⣿⣿⣿⣮⡻⣞⡎⡎⡪⡢⡓⡜⡱⡑⢕⠕⡕",
      "⢔⠕⣔⢹⡸⡪⢪⢺⢸⣵⣿⣵⣿⣿⣻⣽⣿⣿⣿⣿⣿⣕⢠⠷⡫⢚⠆⢐⣑⠡⠷⡢⠄⠀⢂⣪⠃⢠⢒⣿⣿⣿⣿⣿⣻⣟⡿⣞⢿⡇⡎⡪⢨⠢⡱⢱⠸⢡⢍⢪",
      "⡂⡓⡔⡱⡱⡊⡎⣊⡿⣻⣽⢿⣿⡿⠿⢿⣿⣿⣿⣿⣿⡳⡚⣽⡓⠢⠤⠤⡤⠀⠀⢜⢆⣈⠗⠀⢀⡵⣿⣿⣿⣿⣿⣿⣿⣾⣿⠾⣿⣷⣑⣪⡜⠬⢑⢅⠕⡘⡜⡐",
      "⢕⠸⡨⠸⡐⡱⡸⣾⡿⢽⣿⡿⡑⣌⣿⣿⣽⣿⣿⣿⣿⣷⠙⢷⣯⡦⣁⣎⡢⣠⡄⡼⠜⠁⠀⠌⢸⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣮⣇⡎⣔⡌⡢⡑⠔⡡⠱⡐⢌",
      "⠬⡩⢌⢊⡊⢖⢘⢣⢝⣞⡿⣷⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⡾⠙⠻⡿⣽⢶⣽⡞⠋⠁⢰⡀⢔⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⣦⣆⠆⡌⣄⢅⢃⢅⠪",
      "⡪⢢⡑⢜⠠⡩⢠⣒⣵⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⡄⣪⠪⣰⡟⠋⠀⠀⠀⠀⠨⣷⣾⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣻⣾⣤⣐⠌⡂⣎",
      "⡞⣕⣧⣧⣾⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⠈⠛⣭⠺⣦⢄⠀⠀⠀⡀⢧⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣟⣿⣿⢿⣿⢿⣿⣿⣷⣦⣂",
      "⣷⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⡆⠁⠫⢳⠹⡠⠀⠀⠀⣵⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣯⣿⣻⣿",
    }
    dashboard.section.header.val = vagabond
    dashboard.section.buttons.val = {
      dashboard.button("n", "  New file", "<cmd>ene<CR>"),
      dashboard.button("f", "󰈞  Find file", "<cmd>Telescope find_files<CR>"),
      dashboard.button("t", "󰊄  Find text", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("r", "  Recent files", "<cmd>Telescope oldfiles<CR>"),
      dashboard.button("s", "  Settings", '<cmd>! echo "Vai ficar querendo!"<CR>'),
      dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
    }
    alpha.setup(dashboard.opts)
  end,
}
