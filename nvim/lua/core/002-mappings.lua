local api = vim.api
local g = vim.g
local key = vim.keymap
-- mappings --
g.mapleader = ','
key.set('n', '<Leader>', '<Nop>')
key.set('x', '<Leader>', '<Nop>')

key.set('i', 'jj', '<ESC>', {
    silent = true
})

key.set('n', '<ESC><ESC>', ':nohlsearch<CR><ESC>')

key.set('n', 'j', 'gj')
key.set('n', 'gj', 'j')
key.set('n', 'k', 'gk')
key.set('n', 'gk', 'k')

key.set('n', 'H', '^')
key.set('n', 'L', '$')
key.set('x', 'H', '^')
key.set('x', 'L', '$')

key.set('n', '<space><space>', ':bn<CR>', {
    silent = true
})
key.set('n', '<S-space>', ':bp<CR>', {
    silent = true
})

key.set('n', 'ciy', 'ciw<C-r>0<ESC>')
key.set({'n', 'x'}, '-', '<C-o>')
key.set({'n', 'x'}, '+', '<C-i>')
key.set({'n', 'x'}, '?', '*')
