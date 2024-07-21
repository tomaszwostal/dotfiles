return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "svelte",
        "lua_ls",
        "graphql",
        "emmet_ls",
        "prismals",
        "pyright",
        "angularls",
        "ansiblels",
        "autotools_ls",
        "bashls",
        "clangd",
 --       "csharp_ls",
        "omnisharp",
        "neocmake",
        "dockerls",
        "docker_compose_language_service",
        "flux_lsp",
        "gopls",
        "helm_ls",
        "jsonls",
        "jinja_lsp",
        "jsonnet_ls",
        "jqls",
        "markdown_oxide",
        "mutt_ls",
        "nginx_language_server",
        "rnix",
        "spectral",
        "rust_analyzer",
        "sqlls",
        "taplo",
        "terraformls",
        "yamlls",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint",
        "eslint_d",
        "autopep8",
        "clang-format",
        "cmakelang",
--        "csharpier",
        "docformatter",
        "fixjson",
        "gofumpt",
        "gotests",
        "hclfmt",
        "jq",
        "markdown-toc",
        "nixpkgs-fmt",
        "rustywind",
        "shellharden",
        "shfmt",
        "sql-formatter",
        "sqlfmt",
        "ts-standard",
        "usort",
        "yamlfix",
        "yamlfmt",
        "beautysh",
        "ansible-lint",
        "ast_grep",
        "checkmake",
        "cmakelint",
        "checkstyle",
        "codespell",
        "commitlint",
        "cpplint",
        "cspell",
        "curlylint",
        "flake8",
        "gitleaks",
        "gitlint",
        "golangci-lint",
        "jsonlint",
        "luacheck",
        "markdownlint",
        "protolint",
        "pydocstyle",
        "pyflakes",
        "pylama",
        "quick-lint-js",
        "shellcheck",
        "snyk",
        "sonarlint-language-server",
        "sqlfluff",
        "standardjs",
        "tflint",
        "tfsec",
        "trivy",
      },
    })
  end,
}
