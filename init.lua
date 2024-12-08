-- Reload Hammerspoon configuration
hs.hotkey.bind({"cmd", "shift"}, "r", function()
    hs.reload()
end)
hs.alert.show("Hammerspoon config loaded")

-- Auto hide/unhide Telegram window
local function toggleTelegram()
    local telegram = hs.application.find("Telegram")
    if telegram then
        if telegram:isFrontmost() then
            telegram:hide()
        else
            telegram:unhide()
            telegram:activate()
        end
    end
end

-- Create a hotkey to toggle Telegram (Command + Shift + T)
hs.hotkey.bind({"cmd", "shift"}, "t", toggleTelegram)

-- Ensure menubar icon is always shown
hs.menuIcon(true)

-- Optional: You can also create a menu bar item
local menubar = hs.menubar.new()
if menubar then
    menubar:setTitle("TG")
    menubar:setClickCallback(toggleTelegram)
end
