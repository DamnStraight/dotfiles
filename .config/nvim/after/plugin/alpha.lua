local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local function color()
    local colors = {"String", "Identifier", "Keyword", "Number"}
    return colors[math.random(#colors)]
end

local function footer()
    local total_plugins = #vim.tbl_keys(packer_plugins)
    local datetime = os.date(" %d-%m-%Y  %H:%M:%S")
    local version = vim.version()
    local nvim_version_info = "  v" .. version.major .. "." .. version.minor .. "." .. version.patch

    return datetime .. "  " .. total_plugins .. " plugins" .. nvim_version_info 
end

dashboard.section.header.val = {
"                      :::::::::      :::     ::::    ::::  ::::    :::                       ",
"                      :+:    :+:   :+: :+:   +:+:+: :+:+:+ :+:+:   :+:                       ",
"                      +:+    +:+  +:+   +:+  +:+ +:+:+ +:+ :+:+:+  +:+                       ",
"                      +#+    +:+ +#++:++#++: +#+  +:+  +#+ +#+ +:+ +#+                       ",
"                      +#+    +#+ +#+     +#+ +#+       +#+ +#+  +#+#+#                       ",
"                      #+#    #+# #+#     #+# #+#       #+# #+#   #+#+#                       ",
"                      #########  ###     ### ###       ### ###    ####                       ",
"    :::::::: ::::::::::: :::::::::      :::     ::::::::::: ::::::::  :::    ::: ::::::::::: ",
"   :+:    :+:    :+:     :+:    :+:   :+: :+:       :+:    :+:    :+: :+:    :+:     :+:     ",
"   +:+           +:+     +:+    +:+  +:+   +:+      +:+    +:+        +:+    +:+     +:+     ",
"   +#++:++#++    +#+     +#++:++#:  +#++:++#++:     +#+    :#:        +#++:++#++     +#+     ",
"          +#+    +#+     +#+    +#+ +#+     +#+     +#+    +#+   +#+# +#+    +#+     +#+     ",
"   #+#    #+#    #+#     #+#    #+# #+#     #+#     #+#    #+#    #+# #+#    #+#     #+#     ",
"    ########     ###     ###    ### ###     ### ########### ########  ###    ###     ###     ",
}
dashboard.section.header.opts.hl = color()

dashboard.section.buttons.val = {
    dashboard.button("e", " New File"),
    dashboard.button("<Leader>pf", " Find File")
}

dashboard.section.footer.val = footer()

alpha.setup(dashboard.opts)