local chat = require('CopilotChat')
chat.setup {
  debug = true,
  window = {
    layout = 'float',
    relative = 'cursor',
    width = 1,
    height = 0.4,
    row = 1
  },
  prompts = {
    Explain = {
      mapping = '<leader>ae',
      description = 'AI Explain',
    },
    Review = {
      mapping = '<leader>ar',
      description = 'AI Review',
    },
    Tests = {
      mapping = '<leader>at',
      description = 'AI Tests',
    },
    Fix = {
      mapping = '<leader>af',
      description = 'AI Fix',
    },
    Optimize = {
      mapping = '<leader>ao',
      description = 'AI Optimize',
    },
    Docs = {
      mapping = '<leader>ad',
      description = 'AI Documentation',
    },
    CommitStaged = {
      mapping = '<leader>ac',
      description = 'AI Generate Commit',
    },
  },
}
vim.keymap.set({ 'n', 'v' }, '<leader>aa', chat.toggle, { desc = 'AI Toggle' })
vim.keymap.set({ 'n', 'v' }, '<leader>ax', chat.reset, { desc = 'AI Reset' })

-- accept copilot suggestion with tab
vim.keymap.set('i', '<Tab>', function()
  if require("copilot.suggestion").is_visible() then
    require("copilot.suggestion").accept()
  else
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
  end
end, { desc = "Copilot accept" })

