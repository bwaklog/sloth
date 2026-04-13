-- Format on save using LSP
-- vim.api.nvim_create_autocmd("BufWritePre", {
--     pattern = "*",
--     callback = function()
--         vim.lsp.buf.format({ async = false }) end,
-- })

-- vim.api.nvim_create_autocmd("VimEnter", {
--     callback = function()
--         require("fzf-lua").files()
--     end
-- })

-- vim.api.nvim_create_autocmd("BufEnter", {
--     callback = function()
--         if vim.fn.isdirectory(vim.fn.expand('%')) == 1 then
--             vim.defer_fn(function()
--                 require('fzf-lua').files()
--                 vim.defer_fn(function()
--                     vim.cmd('startinsert!')
--                 end, 100)
--             end, 10)
--         end
--     end,
--     once = true
-- })

vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function(args)
    -- Safely attempt to start treesitter. 
    -- If a parser isn't installed for the current filetype, it quietly exits.
    local ok = pcall(vim.treesitter.start, args.buf)
    if not ok then
      return
    end

    vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

    -- vim.opt_local.foldmethod = 'expr'
    -- vim.opt_local.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
  end,
})
