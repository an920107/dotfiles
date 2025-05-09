local function setup()
  local notify = require("notify")
  notify.setup({
    background_colour = "#282828",
  })
  vim.notify = notify
end

return {
  "rcarriga/nvim-notify",
  config = setup,
}
