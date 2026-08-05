return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    -- 覆盖 sources.default，只保留 lsp 和 path
    -- 我个人非常不喜欢buffer和代码片段补全
    opts.sources = opts.sources or {}
    opts.sources.default = { "lsp", "path" }

    -- 关闭enter自动选中第一个补全，真的很恶心
    opts.completion = opts.completion or {}
    opts.completion.list = opts.completion.list or {}
    opts.completion.list.selection = opts.completion.list.selection or {}
    opts.completion.list.selection.preselect = false
    opts.completion.list.selection.auto_insert = false
    opts.keymap = opts.keymap or {}
    opts.keymap["<CR>"] = nil
    return opts
  end,
}
