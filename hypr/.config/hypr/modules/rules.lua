hl.window_rule({
    name = "firefox-opaque",

    match = {
        class = "^(firefox)$",
    },

    opacity = "1.0 override 1.0 override",
})

hl.window_rule({
    name = "chromium-opaque",

    match = {
        class = "^(chromium)$",
    },

    opacity = "1.0 override 1.0 override",
})

hl.window_rule({
    name = "firefox-pip-floating",

    match = {
        class = "^(firefox)$",
        title = "(Picture-in-Picture)",
    },

    float = true,
})

hl.window_rule({
    name = "qemu-opaque",

    match = {
        title = "^.*QEMU.*$",
    },

    opacity = "1.0 override 1.0 override",
})

hl.window_rule({
    name = "telegram-opaque",

    match = {
        class = ".*org.telegram.desktop.*",
    },

    opacity = "0.95 override 0.95 override",
})

hl.window_rule({
    name = "evince-opaque",

    match = {
        class = "org.gnome.Evince",
    },

    opacity = "1.0 override 1.0 override",
})

hl.layer_rule({
    name = "wofi-blur",

    match = {
        namespace = "wofi",
    },

    blur = true,
})

hl.layer_rule({
    name = "waybar-blur",

    match = {
        namespace = "waybar",
    },

    blur = true,
    ignore_alpha = true,
})

hl.window_rule({
    name = "throne-floating",

    match = {
        class = "^(Throne)$",
    },

    float = true,
    center = true,
    size = "1000 600",
    rounding = 10,
    fullscreen = 0,
    maximize = 0,
})

hl.window_rule({
    name = "floating-terminal",

    match = {
        class = "^(floating-terminal)$",
    },

    float = true,
    center = true,
    size = "1000 500",
})
