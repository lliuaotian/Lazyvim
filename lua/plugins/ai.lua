return {
  "yetone/avante.nvim",
  opts = function(_, opts)
    -- 1. 设置默认 provider
    opts.provider = "openai"

    -- 2. 配置 providers 表 (这是新版要求)
    opts.providers = opts.providers or {}
    opts.providers.openai = {
      endpoint = "https://dashscope.aliyuncs.com/compatible-mode/v1",
      model = "qwen3.7-plus",
      timeout = 30000,
    }

    -- 3. 设置语言为中文
    opts.language = "zh-CN"

    -- 4. 确保 behaviour 是表结构 (容易出错的地方)
    opts.behaviour = opts.behaviour or {}
    opts.behaviour.auto_suggestions = false

    -- 4. 确保 windows 是表结构 (如果之前改过窗口大小)
    opts.windows = opts.windows or {}
    -- opts.windows.width = 0.3

    return opts
  end,
}
