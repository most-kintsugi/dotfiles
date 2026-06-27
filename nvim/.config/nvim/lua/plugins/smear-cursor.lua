return {
  {
    "sphamba/smear-cursor.nvim",

    config = function()
      require("smear_cursor").setup({
        smear_between_buffers = true,
        smear_between_neighbor_lines = true,
        stiffness = 0.8,
        trailing_exponent = 0.1,
        distance_stop_animating = 0.1,
      })
    end,
  },
}
