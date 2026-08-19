local config = require("modules.config")


-- =========================
-- RELOAD CONFIG
-- =========================

hl.bind(
  config.mod .. " + SHIFT + R",
  hl.dsp.exec_cmd("hyprctl reload")
)


-- =========================
-- SCRATCH WORKSPACE
-- =========================

hl.bind(
  config.mod .. " + grave",
  hl.dsp.workspace.toggle_special("scratch")
)

hl.bind(
  config.mod .. " + SHIFT + grave",
  hl.dsp.window.move({
    workspace = "special:scratch",
  })
)


-- =========================
-- WINDOWS CONTROL
-- =========================

hl.bind(
  config.mod .. " + Q",
  hl.dsp.window.close()
)

hl.bind(
  config.mod .. " + F",
  hl.dsp.window.fullscreen()
)

hl.bind(
  config.mod .. " + SHIFT + E",
  hl.dsp.exit()
)


-- =========================
-- FOCUS MOVEMENT
-- =========================

hl.bind(
  config.mod .. " + J",
  hl.dsp.focus({
    direction = "l",
  })
)

hl.bind(
  config.mod .. " + K",
  hl.dsp.focus({
    direction = "u",
  })
)

hl.bind(
  config.mod .. " + L",
  hl.dsp.focus({
    direction = "d",
  })
)

hl.bind(
  config.mod .. " + semicolon",
  hl.dsp.focus({
    direction = "r",
  })
)


-- =========================
-- MOVE WINDOWS
-- =========================

hl.bind(
  config.mod .. " + SHIFT + J",
  hl.dsp.window.move({
    direction = "l",
  })
)

hl.bind(
  config.mod .. " + SHIFT + K",
  hl.dsp.window.move({
    direction = "u",
  })
)

hl.bind(
  config.mod .. " + SHIFT + L",
  hl.dsp.window.move({
    direction = "d",
  })
)

hl.bind(
  config.mod .. " + SHIFT + semicolon",
  hl.dsp.window.move({
    direction = "r",
  })
)


-- =========================
-- MOUSE WINDOW CONTROL
-- =========================

hl.bind(
  config.mod .. " + mouse:272",
  hl.dsp.window.drag(),
  {
    mouse = true,
  }
)

hl.bind(
  config.mod .. " + mouse:273",
  hl.dsp.window.resize(),
  {
    mouse = true,
  }
)

-- =========================
-- WORKSPACES
-- =========================

hl.bind(
  config.mod .. " + 1",
  hl.dsp.focus({
    workspace = "1",
  })
)

hl.bind(
  config.mod .. " + 2",
  hl.dsp.focus({
    workspace = "2",
  })
)

hl.bind(
  config.mod .. " + 3",
  hl.dsp.focus({
    workspace = "3",
  })
)

hl.bind(
  config.mod .. " + 4",
  hl.dsp.focus({
    workspace = "4",
  })
)

hl.bind(
  config.mod .. " + Z",
  hl.dsp.focus({
    workspace = "5",
  })
)

hl.bind(
  config.mod .. " + X",
  hl.dsp.focus({
    workspace = "6",
  })
)

hl.bind(
  config.mod .. " + C",
  hl.dsp.focus({
    workspace = "7",
  })
)

hl.bind(
  config.mod .. " + V",
  hl.dsp.focus({
    workspace = "8",
  })
)

hl.bind(
  config.mod .. " + 9",
  hl.dsp.focus({
    workspace = "9",
  })
)


-- =========================
-- MOVE WINDOW TO WORKSPACE
-- =========================

hl.bind(
  config.mod .. " + SHIFT + 1",
  hl.dsp.window.move({
    workspace = "1",
  })
)

hl.bind(
  config.mod .. " + SHIFT + 2",
  hl.dsp.window.move({
    workspace = "2",
  })
)

hl.bind(
  config.mod .. " + SHIFT + 3",
  hl.dsp.window.move({
    workspace = "3",
  })
)

hl.bind(
  config.mod .. " + SHIFT + 4",
  hl.dsp.window.move({
    workspace = "4",
  })
)

hl.bind(
  config.mod .. " + SHIFT + Z",
  hl.dsp.window.move({
    workspace = "5",
  })
)

hl.bind(
  config.mod .. " + SHIFT + X",
  hl.dsp.window.move({
    workspace = "6",
  })
)

hl.bind(
  config.mod .. " + SHIFT + C",
  hl.dsp.window.move({
    workspace = "7",
  })
)

hl.bind(
  config.mod .. " + SHIFT + V",
  hl.dsp.window.move({
    workspace = "8",
  })
)

hl.bind(
  config.mod .. " + SHIFT + 9",
  hl.dsp.window.move({
    workspace = "9",
  })
)


-- =========================
-- SPECIAL BUTTONS
-- =========================

hl.bind(
  "XF86MonBrightnessDown",
  hl.dsp.exec_cmd("brightnessctl set 5%-"),
  {
    repeating = true,
  }
)

hl.bind(
  "XF86MonBrightnessUp",
  hl.dsp.exec_cmd("brightnessctl set +5%"),
  {
    repeating = true,
  }
)

hl.bind(
  "XF86AudioMute",
  hl.dsp.exec_cmd(
    "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
  )
)

hl.bind(
  "XF86AudioLowerVolume",
  hl.dsp.exec_cmd(
    "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
  ),
  {
    repeating = true,
  }
)

hl.bind(
  "XF86AudioRaiseVolume",
  hl.dsp.exec_cmd(
    "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
  ),
  {
    repeating = true,
  }
)

hl.bind(
  "XF86AudioMicMute",
  hl.dsp.exec_cmd(
    "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
  )
)
