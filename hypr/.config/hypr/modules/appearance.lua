-- =========================
-- CURSOR
-- =========================

-- Use classic XCursor themes instead of Hyprcursor

hl.config({
    cursor = {
        enable_hyprcursor = false,
    },
})

hl.env("XCURSOR_THEME", "Adwaita")
hl.env("XCURSOR_SIZE", "24")


-- =========================
-- MOTION
-- =========================

hl.config({
    animations = {
        enabled = true,
    },
})


-- =========================
-- CURVES
-- =========================

-- Smooth macOS-like easing.
-- Fast movement with a soft finish.

hl.curve("mac", {
    type = "bezier",
    points = {
        { 0.16, 1.0 },
        { 0.3, 1.0 },
    },
})


-- Workspace transition.
-- Quick acceleration with a smooth stop.

hl.curve("workspace", {
    type = "bezier",
    points = {
        { 0.22, 1.0 },
        { 0.36, 1.0 },
    },
})


-- =========================
-- WINDOW ANIMATIONS
-- =========================

hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 4,
    bezier = "mac",
    style = "slide",
})

hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 4,
    bezier = "mac",
    style = "slide",
})


-- =========================
-- FADE
-- =========================

hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 4,
    bezier = "mac",
})


-- =========================
-- WORKSPACES
-- =========================

-- Fast workspace switching.
-- No fade to keep windows visually solid.

hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 4,
    bezier = "workspace",
    style = "slide",
})


-- =========================
-- VISUAL
-- =========================

hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 14,
        border_size = 2,
    },

    decoration = {
        rounding = 10,

        blur = {
            enabled = true,
            size = 8,
            passes = 3,
            new_optimizations = true,
        },

        active_opacity = 0.80,
        inactive_opacity = 0.70,
        fullscreen_opacity = 1.0,

        shadow = {
            enabled = true,
            range = 6,
            render_power = 3,
        },
    },
})
