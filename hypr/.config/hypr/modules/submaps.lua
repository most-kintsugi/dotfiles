local config = require("modules.config")


-- =========================
-- ENTER RESIZE MODE
-- =========================

hl.bind(
  config.mod .. " + R",
  hl.dsp.submap("resize")
)


-- =========================
-- RESIZE MODE
-- =========================

hl.define_submap("resize", function()

  -- Toggle resize mode
  hl.bind(
    config.mod .. " + R",
    hl.dsp.submap("reset")
  )

  -- Resize left
  hl.bind(
    "J",
    hl.dsp.window.resize({
      x = -20,
      y = 0,
      relative = true,
    }),
    {
      repeating = true,
    }
  )

  -- Resize right
  hl.bind(
    "semicolon",
    hl.dsp.window.resize({
      x = 20,
      y = 0,
      relative = true,
    }),
    {
      repeating = true,
    }
  )

  -- Resize down
  hl.bind(
    "K",
    hl.dsp.window.resize({
      x = 0,
      y = 20,
      relative = true,
    }),
    {
      repeating = true,
    }
  )

  -- Resize up
  hl.bind(
    "L",
    hl.dsp.window.resize({
      x = 0,
      y = -20,
      relative = true,
    }),
    {
      repeating = true,
    }
  )

  -- Exit resize mode
  hl.bind(
    "Escape",
    hl.dsp.submap("reset")
  )

  hl.bind(
    "Return",
    hl.dsp.submap("reset")
  )

end)
