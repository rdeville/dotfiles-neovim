return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Static checker for GitHub Actions workflow files.
        "actionlint",
        -- A CLI tool for code structural search, lint and rewriting. Written in Rust.
        -- "ast-grep",
        -- Bacon is a background rust code checker
        -- "bacon",
        -- Rust diagnostic provider based on Bacon
        -- "bacon-ls",
        -- Bash shell debugger, based on bashdb.
        "bash-debug-adapter",
        -- A language server for Bash.
        "bash-language-server",
        -- beautysh - A Bash beautifier for the masses.
        "beautysh",
        -- Cleaner and Formatter for BibTeX files
        -- "bibtex-tidy",
        -- Black, the uncompromising Python code formatter.
        "black",
        -- Tiny HTTP client for the Black (blackd) Python code formatter.
        "blackd-client",
        -- A tool to format codeblocks inside markdown and org documents. It iterates over all codeblocks, and formats them with the tool(s) specified for the language of the block.
        "cbfmt",
        -- Debug your JavaScript code running in Google Chrome.
        -- "chrome-debug-adapter",
        -- clang-format is formatter for C/C++/Java/JavaScript/JSON/Objective-C/Protobuf/C# code.
        -- "clang-format",
        -- clangd understands your C++ code and adds smart features to your editor: code completion, compile errors, go-to-definition and more.
        -- "clangd",
        -- Discover vulnerabilities across a codebase with CodeQL, our industry-leading semantic code analysis engine. CodeQL lets you query code as though it were data. Write a query to find all variants of a vulnerability, eradicating it forever. Then share your query to help others do the same.
        -- "codeql",
        -- Check code for common misspellings.    Language
        -- "codespell",
        -- commitlint checks if your commit messages meet the conventional commit format.    Language
        "commitlint",
        -- Cpplint is a command-line tool to check C/C++ files for style issues following Google's C++ style guide.
        -- "cpplint",
        -- Official repository for the Microsoft C/C++ extension for VS Code.
        -- "cpptools",
        -- Formatter for Go code that enforces the CockroachDB Style Guide.
        -- "crlfmt",
        -- A Spell Checker for Code.
        -- "cspell",
        -- Language Server Protocol implementation for CSS, SCSS & LESS.
        -- "css-lsp",
        -- Autocompletion and go-to-definition for project-wide CSS variables.
        -- "css-variables-language-server",
        -- Autocompletion and go-to-definition for cssmodules.
        -- "cssmodules-language-server",
        -- Experimental HTML templates linting for Jinja, Nunjucks, Django templates, Twig, Liquid.
        "curlylint",
        -- An implementation of the Debug Adapter Protocol for Python.
        -- "debugpy",
        -- Delve is a debugger for the Go programming language.
        -- "delve",
        -- Deno (/ˈdiːnoʊ/, pronounced dee-no) is a JavaScript, TypeScript, and WebAssembly runtime with secure defaults and a great developer experience.
        "deno",
        -- Diagnostic language server that integrates with linters.    Language
        "diagnostic-languageserver",
        -- A language server for TeX and friends
         "digestif",
        -- docformatter automatically formats docstrings to follow a subset of the PEP 257 conventions.
        -- "docformatter",
        -- A language server for Docker Compose.
        "docker-compose-language-service",
        -- A language server for Dockerfiles powered by Node.js, TypeScript, and VSCode technologies.
        "dockerfile-language-server",
        -- API and CLI for generating a markdown TOC (table of contents) for a README or any markdown files.
        -- "doctoc",
        -- A tool to verify that your files are in harmony with your `.editorconfig`.    Language
        "editorconfig-checker",
        -- Makes eslint the fastest linter on the planet.
        -- "eslint_d",
        -- Language Server Protocol implementation for ESLint. The server uses the ESLint library installed in the opened workspace folder. If the folder doesn't provide one the extension looks for a global install version.
        -- "eslint-lsp",
        -- Debug your web application or browser extension in Firefox.
        -- "firefox-debug-adapter",
        -- A JSON file fixer/formatter for humans using (relaxed) JSON5.
        "fixjson",
        -- flake8, python quality code analyser
        "flake8",
        -- gh is GitHub on the command line. It brings pull requests, issues, and other GitHub concepts to the terminal next to where you are already working with git and your code.    Category
        "gh",
        -- An experimental language server for Gitlab CI.
        -- "gitlab-ci-ls",
        -- Gitleaks helps you protect and discover secrets in git repositories.    Language
        "gitleaks",
        -- Render markdown on the CLI, with pizzazz!    Category
        "glow",
        -- Go debug adapter sourced from the VSCode Go extension.
        -- "go-debug-adapter",
        -- A stricter gofmt.
        -- "gofumpt",
        -- A golang formatter which formats your code in the same style as gofmt and additionally updates your Go import lines, adding missing ones and removing unreferenced ones.
        -- "goimports",
        -- Tool for Golang to sort goimports by 3-4 groups: std, general, company (optional), and project dependencies. Also, formatting for your code will be prepared (so, you don't need to use gofmt or goimports separately). Use additional option -rm-unused to remove unused imports and -set-alias to rewrite import aliases for versioned packages.
        -- "goimports-reviser",
        -- golangci-lint is a fast Go linters runner. It runs linters in parallel, uses caching, supports yaml config, has integrations with all major IDE and has dozens of linters included.
        -- "golangci-lint",
        -- golangci-lint language server.
        -- "golangci-lint-langserver",
        -- A golang formatter that fixes long lines.
        -- "golines",
        -- Go tool to modify/update field tags in structs.
        -- "gomodifytags",
        -- gopls (pronounced "Go please") is the official Go language server developed by the Go team. It provides IDE features to any LSP-compatible editor.
        -- "gopls",
        -- misspelled word linter for Go comments, string literals and embedded files.
        -- "gospel",
        -- Gotests is a Golang commandline tool that generates table driven tests based on its target source files' function and method signatures.
        -- "gotests",
        -- 'go test' runner with output optimized for humans, JUnit XML for CI integration, and a summary of the test results.    Category
        -- "gotestsum",
        -- Dockerfile linter, validate inline bash, written in Haskell.
        "hadolint",
        -- A command to format HCL files
        "hclfmt",
        -- A language server that offers Helm support in early development - programmed in Go.
        -- "helm-ls",
        -- Language Server Protocol implementation for HTML.
        "html-lsp",
        -- A normaliser/beautifier for HTML that also understands embedded Ruby. Ideal for tidying up Rails templates.
        "htmlbeautifier",
        -- The Static Code Analysis Tool for your HTML
        "htmlhint",
        -- A LSP server for Hyprland config files
        "hyprls",
        -- isort is a Python utility / library to sort imports alphabetically.
        "isort",
        -- A Python language server exclusively for Jedi. If Jedi supports it well, this language server should too.
        "jedi-language-server",
        -- Experimental jinja lsp server, with autocomplete, syntax highlighting, hover, goto definition, code actions and linting.
        "jinja-lsp",
        -- Command-line JSON processor.
        "jq",
        -- jq-lsp is a language server for the jq language, developed by Mattias Wadman. It provides IDE features to any LSP-compatible editor.
        -- "jq-lsp",
        -- The VS Code JavaScript debugger.
        -- "js-debug-adapter",
        -- Language Server Protocol implementation for JSON.
        "json-lsp",
        -- A simple command-line tool for generating to struct definitions from JSON.    Category
        -- "json-to-struct",
        -- A Language Server Protocol (LSP) server for Jsonnet (https://jsonnet.org).
        -- "jsonnet-language-server",
        -- jsonnetfmt is a command line tool to format jsonnetfmt files.
        -- "jsonnetfmt",
        -- KCL is an open-source, constraint-based record and functional language that enhances the writing of complex configurations, including those for cloud-native scenarios.
        -- "kcl",
        -- latexindent.pl is a perl script to beautify/tidy/format/indent (add horizontal leading space to) code within environments, commands, after headings and within special code blocks.
        -- "latexindent",
        -- XML Language Server.
        -- "lemminx",
        -- LSP server leveraging AI/LLMs based for code completion.    Language
        -- "llm-ls",
        -- LTeX Language Server: LSP language server for LanguageTool 🔍✔️ with support for LaTeX 🎓, Markdown 📝, and others.
        -- "ltex-ls",
        -- A language server that offers Lua language support - programmed in Lua.
        "lua-language-server",
        -- A tool for linting and static analysis of Lua code.
        -- "luacheck",
        -- Code formatter for Lua.
        -- "luaformatter",
        -- API and CLI for generating a markdown TOC (table of contents) for a README or any markdown files.
        "markdown-toc",
        -- A Node.js style checker and lint tool for Markdown/CommonMark files.
        "markdownlint",
        -- A fast, flexible, configuration-based command-line interface for linting Markdown/CommonMark files with the markdownlint library
        -- "markdownlint-cli2",
        -- Visualize your Markdown as mindmaps.    Category
        -- "markmap-cli",
        -- Markdown LSP server providing completion, cross-references, diagnostics, and more.
        -- "marksman",
        -- An HTML linter for all markup developers.
        "markuplint",
        -- Format markdown code blocks using your favorite code formatters.
        "mdsf",
        -- Correct commonly misspelled English words in source files.    Language
        -- "misspell",
        -- A language server for (neo)mutt's muttrc.
        -- "mutt-language-server",
        -- Mypy is a static type checker for Python.
        -- "mypy",
        -- A language server for nginx configuration files.
        -- "nginx-language-server",
        -- Language Server for Nix.
        "nil",
        -- Nix code formatter for nixpkgs
        "nixpkgs-fmt",
        -- Open Policy Agent (OPA) is an open source, general-purpose policy engine.
        -- "opa",
        -- A Language Server Protocol server for OpenSCAD
        -- "openscad-language-server",
        -- Language Server Protocol implementation for OpenSCAD, written in Rust.
        -- "openscad-lsp",
        -- High-performance linter for JavaScript and TypeScript written in Rust.
        -- "oxlint",
        -- A language server implementation for Google Protocol Buffers.
        -- "pbls",
        -- Prettier is an opinionated code formatter.
        -- "prettier",
        -- Prettier, as a daemon, for ludicrous formatting speed.
        -- "prettierd",
        -- proselint is a linter for English prose. It places the world's greatest writers and editors by your side, where they whisper suggestions on how to improve your prose.
        -- "proselint",
        -- An experimental proofreading and linting language server for markdown files.
        -- "prosemd-lsp",
        -- protolint is the pluggable linting/fixing utility for Protocol Buffer files (proto2+proto3).
        -- "protolint",
        -- A Simple LSP for proto3 protobuf files.
        -- "protols",
        -- pydocstyle is a static analysis tool for checking compliance with Python docstring conventions.
        -- "pydocstyle",
        -- A simple program which checks Python source files for errors. Pyflakes analyzes programs and detects various errors. It works by parsing the source file, not importing it, so it is safe to use on modules with side effects. It’s also much faster.
        -- "pyflakes",
        -- Code audit tool for Python.
        -- "pylama",
        -- Pylint is a static code analyser for Python 2 or 3.
        -- "pylint",
        -- A fast static code analyzer & language server for Python.
        -- "pylyzer",
        -- Create, update or convert docstrings in existing Python files, managing several styles.
        -- "pyment",
        -- A monkey patching wrapper to connect flake8 with pyproject.toml configuration.
        -- "pyproject-flake8",
        -- Pyre is a performant type checker for Python compliant with PEP 484.
        -- "pyre",
        -- Static type checker for Python.
        -- "pyright",
        -- Fork of the python-language-server project, maintained by the Spyder IDE team and the community.
        -- "python-lsp-server",
        -- Over 130× faster than ESLint, quick-lint-js gives you instant feedback as you code. Find bugs in your JavaScript before your finger leaves the keyboard. Lint any JavaScript file with no configuration.
        -- "quick-lint-js",
        -- A linter for Rego, with support for running as an LSP server.
        -- "regal",
        -- OPA Rego language server
        -- "regols",
        -- Tool for automatically reordering python imports. Similar to isort but uses static analysis more.
        -- "reorder-python-imports",
        -- ~6x faster, stricter, configurable, extensible, and beautiful drop-in replacement for golint.
        -- "revive",
        -- Language Server for Nix.
        "rnix-lsp",
        -- An extremely fast Python linter and code formatter, written in Rust.
        -- "ruff",
        -- A Language Server Protocol implementation for Ruff - An extremely fast Python linter, written in Rust.
        -- "ruff-lsp",
        -- A blazing-fast modern Lua linter written in Rust.
        -- "selene",
        -- ShellCheck, a static analysis tool for shell scripts.
        "shellcheck",
        -- The corrective bash syntax highlighter.
        "shellharden",
        -- A shell formatter (sh/bash/mksh).
        "shfmt",
        -- Snyk CLI scans and monitors your projects for security vulnerabilities
        "snyk",
        -- The language server follows the Language Server Protocol and integrates with Snyk Open Source, Snyk Infrastructure as Code and Snyk Code. For the former two, it uses the Snyk CLI as a data provider, for the latter it is connecting directly to the Snyk Code API.
        -- "snyk-ls",
        -- Sourcery is a tool available in your IDE, GitHub, or as a CLI that suggests refactoring improvements to help make your code more readable and generally higher quality.
        -- "sourcery",
        -- Awesome Spectral JSON/YAML linter with OpenAPI/AsyncAPI support. Spectral is a flexible object linter with out of the box support for OpenAPI v2 and v3, JSON Schema, and AsyncAPI.
        -- "spectral-language-server",
        -- A whitespace formatter for different query languages.
        -- "sql-formatter",
        -- SQLFluff is a dialect-flexible and configurable SQL linter.
        -- "sqlfluff",
        -- sqlfmt formats your dbt SQL files so you don't have to. It is similar in nature to black, gofmt, and rustfmt (but for SQL).
        -- "sqlfmt",
        -- SQL Language Server.
        -- "sqlls",
        -- SQL language server written in Go.
        -- "sqls",
        -- JavaScript Style Guide, with linter & automatic code fixer.
        -- "standardjs",
        -- The advanced Go linter.
        -- "staticcheck",
        -- A mighty CSS linter that helps you avoid errors and enforce conventions.
        -- "stylelint",
        -- A stylelint Language Server.
        -- "stylelint-lsp",
        -- An opinionated Lua code formatter.
        "stylua",
        -- Systemd Unitfile Linter
        -- "systemdlint",
        -- Language Server Protocol implementation for Tailwind CSS.
        -- "tailwindcss-language-server",
        -- Tectonic is a modernized, complete, self-contained TeX/LaTeX engine, powered by XeTeX and TeXLive.
        -- "tectonic",
        -- A language server for some specific bash scripts.
        -- "termux-language-server",
        -- Terraform Language Server.
        "terraform-ls",
        -- An implementation of the Language Server Protocol for LaTeX.
        -- "texlab",
        -- The pluggable natural language linter for text and markdown.
        -- "textlint",
        -- Language server for text spell and grammar check with various tools.
        -- "textlsp",
        -- A Pluggable Terraform Linter.
        "tflint",
        -- Security scanner for your Terraform code
        "tfsec",
        -- Find vulnerabilities, misconfigurations, secrets, SBOM in containers, Kubernetes, code repositories, clouds and more.
        "trivy",
        -- Find and verify credentials.
        "trufflehog",
        -- Typescript style guide, linter, and formatter using StandardJS.
        "ts-standard",
        -- TypeScript & JavaScript Language Server.
        "typescript-language-server",
        -- Source code spell checker
        "typos",
        -- Source code spell checker
        "typos-lsp",
        -- VLS (Vue Language Server) is a language server implementation compatible with Language Server Protocol.
        -- "vetur-vls",
        -- Detect non-inclusive language in your source code.    Language
        "woke",
        -- Naive linter for English prose for developers who can't write good and wanna learn to do other stuff good too.
        "write-good",
        -- xmlformatter is an Open Source Python package that provides formatting of XML documents. xmlformatter differs from others formatters by handling whitespaces by a distinct set of formatting rules - formatting element content by an object style and mixed content by a text style. You may find xmlformatter useful for corrections and presentations.
        -- "xmlformatter",
        -- Language Server for YAML Files.
        "yaml-language-server",
        -- A simple and configurable YAML formatter that keeps comments.
        "yamlfix",
        -- yamlfmt is an extensible command line tool or library to format yaml files.
        "yamlfmt",
        -- Linter for YAML files. yamllint does not only check for syntax validity, but for weirdnesses like key repetition and cosmetic problems such as lines length, trailing spaces, indentation, etc.
        "yamllint",
        -- yq is a portable command-line YAML, JSON, XML, CSV, TOML and properties processor.    Category
        "yq",
      },
    },
  },
}
