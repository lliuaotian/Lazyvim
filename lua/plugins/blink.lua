return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    -- 覆盖 sources.default，只保留 lsp 和 path
    -- 我个人非常不喜欢buffer和代码片段补全
    opts.sources = opts.sources or {}
    opts.sources.default = { "lsp", "path" }
    return opts
  end,
}
