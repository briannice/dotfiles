hl.config({
    general = {
        gaps_in = 0,
        gaps_out = 0,
        border_size = 0,
    },
})

hl.config({
    decoration = {
        dim_inactive = false,
        -- dim_strength = 0.15,
    },
})

hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 1.39,
    bezier = "almostLinear"
})

hl.window_rule({
    match = { class = ".*" },
    opacity = "1.0 override 1.0 override",
})

hl.window_rule({
    match = { class = "foot" },
    opacity = "0.9 override 0.9 override",
})
