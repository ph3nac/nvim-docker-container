local status_ok, cmp = pcall(require, "cmp")
if not status_ok then
    return
end

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end
    },
    sources = {{
        name = "nvim_lsp"
    } -- { name = "buffer" },
    -- { name = "path" },
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ['<C-l>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm {
            select = true
        }
    }),
    experimental = {
        ghost_text = true
    }
})
-- cmp.setup.cmdline('/', {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = {
--     { name = 'buffer' }
--   }
-- })
-- cmp.setup.cmdline(":", {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = {
--     { name = "path" },
--     { name = "cmdline" },
--   },
-- })
