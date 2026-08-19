local config = require("modules.config")

hl.bind(
  config.mod .. " + RETURN",
  hl.dsp.exec_cmd(config.terminal)
)

hl.bind(
  config.mod .. " + SHIFT + RETURN",
  hl.dsp.exec_cmd(config.terminal .. " --class floating-terminal")
)

hl.bind(
  config.mod .. " + BRACKETRIGHT",
  hl.dsp.exec_cmd("firefox -P Research --no-remote")
)

hl.bind(
  config.mod .. " + D",
  hl.dsp.exec_cmd("pkill wofi || wofi --show drun")
)

hl.bind(
  config.mod .. " + SHIFT + G",
  hl.dsp.exec_cmd("hyprlock")
)

-- screenshots

hl.bind(
  "Print",
  hl.dsp.exec_cmd("hyprshot -m region --clipboard-only")
)

hl.bind(
  "SHIFT + Print",
  hl.dsp.exec_cmd("hyprshot -m region --output-folder ~/Pictures/Screenshots")
)
