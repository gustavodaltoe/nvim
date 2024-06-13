local chat = require('CopilotChat')

chat.setup {
  debug = true,
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
