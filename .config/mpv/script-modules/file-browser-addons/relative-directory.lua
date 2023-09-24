local mp = require 'mp'
local fb = require 'file-browser'

mp.add_key_binding(nil, 'browse-files/open-current-dir', function ()
    local dir = fb.get_current_file().directory

    if  not fb.get_open_status()
        and fb.get_directory() ~= dir
    then
        mp.commandv('script-message-to', 'file_browser', 'browse-directory', dir)
        return;
    end

    mp.commandv('script-binding', 'file_browser/browse-files')
end)

return {}