function ColorMyPencils(color)
        -- color = color or "rose-pine"

        -- require('rose-pine').setup({
        --         --- @usage 'auto'|'main'|'moon'|'dawn'
        --         variant = 'auto',
        --         --- @usage 'main'|'moon'|'dawn'
        --         dark_variant = 'main',
        --         bold_vert_split = false,
        --         dim_nc_background = false,
        --         disable_background = false,
        --         disable_float_background = false,
        --         disable_italics = false,
        --
        --         --- @usage string hex value or named color from rosepinetheme.com/palette
        --         groups = {
        --                 background = 'base',
        --                 background_nc = '_experimental_nc',
        --                 panel = 'surface',
        --                 panel_nc = 'base',
        --                 border = 'highlight_med',
        --                 comment = 'muted',
        --                 link = 'iris',
        --                 punctuation = 'subtle',
        --
        --                 error = 'love',
        --                 hint = 'iris',
        --                 info = 'foam',
        --                 warn = 'gold',
        --
        --                 headings = {
        --                         h1 = 'iris',
        --                         h2 = 'foam',
        --                         h3 = 'rose',
        --                         h4 = 'gold',
        --                         h5 = 'pine',
        --                         h6 = 'foam',
        --                 }
        --                 -- or set all headings at once
        --                 -- headings = 'subtle'
        --         },
        --
        --         -- Change specific vim highlight groups
        --         -- https://github.com/rose-pine/neovim/wiki/Recipes
        --         highlight_groups = {
        --                 ColorColumn = { bg = 'rose' },
        --
        --                 -- Blend colours against the "base" background
        --                 CursorLine = { bg = 'foam', blend = 10 },
        --                 StatusLine = { fg = 'love', bg = 'love', blend = 10 },
        --
        --                 -- By default each group adds to the existing config.
        --                 -- If you only want to set what is written in this config exactly,
        --                 -- you can set the inherit option:
        --                 Search = { bg = 'gold', inherit = false },
        --         }
        -- })


        -- color = color or "rose-pine"
        -- vim.g.gruvbox_flat_style = "hard"
        -- vim.cmd.colorscheme(color)

        -- require('nightfox').setup({
        --         options = {
        --                 -- Compiled file's destination location
        --                 compile_path = vim.fn.stdpath("cache") .. "/nightfox",
        --                 compile_file_suffix = "_compiled", -- Compiled file suffix
        --                 transparent = false, -- Disable setting background
        --                 terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
        --                 dim_inactive = false, -- Non focused panes set to alternative background
        --                 module_default = true, -- Default enable value for modules
        --                 colorblind = {
        --                         enable = false, -- Enable colorblind support
        --                         simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
        --                         severity = {
        --                                 protan = 0, -- Severity [0,1] for protan (red)
        --                                 deutan = 0, -- Severity [0,1] for deutan (green)
        --                                 tritan = 0, -- Severity [0,1] for tritan (blue)
        --                         },
        --                 },
        --                 styles = { -- Style to be applied to different syntax groups
        --                         comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
        --                         conditionals = "NONE",
        --                         constants = "NONE",
        --                         functions = "NONE",
        --                         keywords = "NONE",
        --                         numbers = "NONE",
        --                         operators = "NONE",
        --                         strings = "NONE",
        --                         types = "NONE",
        --                         variables = "NONE",
        --                 },
        --                 inverse = { -- Inverse highlight for different types
        --                         match_paren = false,
        --                         visual = false,
        --                         search = false,
        --                 },
        --                 modules = { -- List of various plugins and additional options
        --                         -- ...
        --                 },
        --         },
        --         palettes = {},
        --         specs = {},
        --         groups = {},
        -- })

        -- setup must be called before loading
        -- vim.cmd("colorscheme terafox")

        -- setup must be called before loading the colorscheme
        -- Default options:
        require("gruvbox").setup({
                undercurl = true,
                underline = true,
                bold = true,
                italic = {
                        strings = true,
                        comments = true,
                        operators = false,
                        folds = true,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "",  -- can be "hard", "soft" or empty string
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = false,
        })
        vim.cmd("colorscheme gruvbox")
end

ColorMyPencils()
