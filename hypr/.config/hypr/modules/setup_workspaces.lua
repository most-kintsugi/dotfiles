-- =========================
-- STARTUP APPLICATIONS
-- =========================

hl.on("hyprland.start", function()
  hl.exec_cmd(
    "firefox -P Original --no-remote",
    {
      workspace = "1 silent",
    }
  )

  hl.exec_cmd(
    "throne",
    {
      workspace = "9 silent",
    }
  )
end)
