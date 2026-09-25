require("themes.catppuccin-mocha")

-- -------------------------
-- Env
-- -------------------------

hl.env("PATH", "$HOME/.local/bin:/usr/local/bin:/usr/bin")

-- -------------------------
-- Variables
-- -------------------------

local terminal = "kitty"
local fileManager = "dolphin"
local code = "code"
local browser = "firefox"
local menu = "wofi --show drun --conf=~/.config/wofi/wofi.conf"
local colorPicker = "hyprpicker -a -n -l"

local screen_laptop = "eDP-1"
local screen_hdmi1 = "HDMI-A-1"

-- -------------------------
-- Cursor
-- -------------------------

hl.env("XCURSOR_SIZE", 24)
hl.env("HYPRCURSOR_SIZE", 24)

-- -------------------------
-- Monitors
-- -------------------------

hl.monitor({
    output = screen_laptop,
    mode = "preferred",
    position = "auto",
    scale = 1.5,
    disabled = false
})

hl.monitor({
    output = screen_hdmi1,
    disabled = true
})

-- hl.monitor({
--     output = screen_laptop,
--     disabled = true
-- })

-- hl.monitor({
--     output = screen_hdmi1,
--     mode = "preferred",
--     position = "auto",
--     scale = 1,
--     disabled = false
-- })

-- hl.monitor({
--     output = screen_laptop,
--     mode = "preferred",
--     position = "auto",
--     scale = 1.5,
--     disabled = false
-- })

-- hl.monitor({
--     output = screen_hdmi1,
--     mode = "preferred",
--     position = "auto",
--     scale = 1,
--     mirror = screen_laptop,
--     disabled = false
-- })

-- -------------------------
-- Execute programs
-- -------------------------

hl.on("hyprland.start", function()
    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprsunset")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("hyprpaper")

    hl.exec_cmd("mako")

    hl.exec_cmd("systemctl --user start hyprpolkitagent")

    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)


-- -------------------------
-- Input
-- -------------------------

hl.config({
    input = {
        kb_layout = "us",
        touchpad = {
            natural_scroll = true
        }
    }
})

-- -------------------------
-- Keybinds
-- -------------------------

hl.config({
    binds = {
        allow_workspace_cycles = true
    }
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

hl.bind("SUPER + space", hl.dsp.exec_cmd(menu))
hl.bind("SUPER + return", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + X", hl.dsp.window.close())


hl.bind("SUPER + f", hl.dsp.exec_cmd(fileManager))
hl.bind("SUPER + c", hl.dsp.exec_cmd(code))
hl.bind("SUPER + b", hl.dsp.exec_cmd(browser))

hl.bind("SUPER + SHIFT + p", hl.dsp.exec_cmd(colorPicker))
hl.bind("SUPER + SHIFT + v",
    hl.dsp.exec_cmd(
        "cliphist list | wofi --dmenu --pre-display-cmd \"echo '%s' | cut -f 2\" | cliphist decode | wl-copy"))

hl.bind("SUPER + l", hl.dsp.exec_cmd("hyprlock"))

hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }))

hl.bind("SUPER + CTRL + left", hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + CTRL + right", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER + CTRL + up", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + CTRL + down", hl.dsp.window.move({ direction = "down" }))

for i = 1, 7 do
    hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = i }))
    hl.bind("SUPER + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end

hl.bind("SUPER + SHIFT + right", hl.dsp.focus({ workspace = "+1" }))
hl.bind("SUPER + SHIFT + left", hl.dsp.focus({ workspace = "-1" }))

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("hyprctl hyprsunset gamma -10"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("hyprctl hyprsunset gamma +10"))

hl.bind("SHIFT + XF86MonBrightnessDown", hl.dsp.exec_cmd("hyprctl hyprsunset temperature -500"))
hl.bind("SHIFT + XF86MonBrightnessUp", hl.dsp.exec_cmd("hyprctl hyprsunset temperature +500"))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))


-- -------------------------
-- Animation
-- -------------------------

hl.config({
    general = {
        gaps_in = 0,
        gaps_out = 0,
        border_size = 0,
        layout = "dwindle"
    },
    decoration = {
        rounding = 5,
        rounding_power = 5
    },
    animations = {
        enabled = true
    }
})

hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("md3_standard", { type = "bezier", points = { { 0.2, 0 }, { 0, 1 } } })
hl.curve("md3_decel", { type = "bezier", points = { { 0.05, 0.7 }, { 0.1, 1 } } })
hl.curve("md3_accel", { type = "bezier", points = { { 0.3, 0 }, { 0.8, 0.15 } } })
hl.curve("overshot", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.1 } } })
hl.curve("crazyshot", { type = "bezier", points = { { 0.1, 1.5 }, { 0.76, 0.92 } } })
hl.curve("hyprnostretch", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.0 } } })
hl.curve("fluent_decel", { type = "bezier", points = { { 0.1, 1 }, { 0, 1 } } })
hl.curve("easeInOutCirc", { type = "bezier", points = { { 0.85, 0 }, { 0.15, 1 } } })
hl.curve("easeOutCirc", { type = "bezier", points = { { 0, 0.55 }, { 0.45, 1 } } })
hl.curve("easeOutExpo", { type = "bezier", points = { { 0.16, 1 }, { 0.3, 1 } } })

hl.animation({ leaf = "windows", enabled = true, speed = 2, bezier = "md3_decel", style = "popin 60%" })
hl.animation({ leaf = "border", enabled = true, speed = 2, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 2, bezier = "md3_decel" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2, bezier = "easeOutExpo", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 2, bezier = "md3_decel", style = "slidevert" })

hl.config({
    misc = {
        disable_hyprland_logo = true
    }
})
