---@diagnostic disable: undefined-global
local lush = require("lush")
local clr = require("colorscheme.definitions")

return lush(function()
  return {
    -- ## General Vim
    -- ### Base Interface
    Italic({ gui = "italic" }),
    Underlined({ gui = "underline" }),
    Bold({ gui = "bold" }),
    Normal({ fg = clr.grey_100.hex, bg = clr.grey_900.hex }),
    NormalFloat({ fg = clr.grey_100.hex, bg = clr.grey_800.hex }),
    NormalNC({}),
    MsgArea({ Normal }),
    Visual({ bg = clr.lime_900.hex }),
    VisualNOS({ Visual }),
    NonText({ bg = clr.grey_900.hex }),
    Debug({ fg = clr.white.hex, bg = clr.light_green_900.hex }),
    WarningMsg({ fg = clr.white.hex, bg = clr.orange_A200.hex }),
    Error({ fg = clr.white.hex, bg = clr.red_A200.hex }),
    ErrorMsg({ Error }),
    ModeMsg({ fg = clr.light_green_500.hex }),
    MoreMsg({ fg = clr.light_green_500.hex }),
    LineNr({ fg = clr.grey_400.hex, bg = clr.grey_700.hex }),
    CursorLine({ bg = clr.grey_800.hex }),
    CursorColumn({ CursorLine }),
    CursorLineNr({ CursorLine }),
    FoldColumn({ LineNr }),
    Pmenu({ fg = clr.grey_200.hex, bg = clr.grey_800.hex }),
    PmenuSel({ fg = clr.grey_800.hex, bg = clr.grey_200.hex }),
    PmenuSbar({ bg = clr.grey_500.hex }),
    PmenuThumb({ bg = clr.green_900.hex }),
    Menu({ Pmenu }),
    WildMenu({ Pmenu }),
    StatusLine({ bg = clr.green_700.hex }),
    -- StatusLineNC(),
    -- TabLine(),
    -- TabLineFill(),
    TabLineSel({ fg = clr.yellow_900.hex }),
    VertSplit({ fg = clr.grey_700.hex, bg = clr.grey_700.hex }),
    ColorColumn({ g = clr.blue_grey_900.hex }),
    Folded({ gui = "italic", fg = clr.grey_400.hex, bg = clr.grey_800.hex }),
    Search({ bg = clr.yellow_100.hex }),
    IncSearch({ Search }),
    Substitute({ fg = clr.grey_800.hex, bg = clr.yellow_200.hex }),
    MatchParen({ fg = clr.grey_900.hex, bg = clr.grey_300.hex }),
    SpecialKey({ fg = clr.red_500.hex }),
    -- Whitespace(),
    SignColumn({ fg = clr.grey_400.hex, bg = clr.grey_800.hex }),
    EndOfBuffer({ fg = clr.grey_900.hex, bg = clr.grey_800.hex }),
    Title({ gui = "bold", fg = clr.cyan_A200.hex }),
    Directory({ fg = clr.teal_A400.hex }),

    -- ### Diff Mode
    DiffAdd({ fg = clr.green_A200.hex, bg = clr.blue_grey_900.hex }),
    DiffChange({ bg = clr.brown_900.hex }),
    DiffDelete({ fg = clr.red_500.hex, bg = clr.blue_grey_900.hex }),
    DiffText({ gui = "italic", bg = clr.blue_grey_700.hex }),

    -- ### Spelling
    SpellBad({ gui = "undercurl", fg = clr.yellow_500.hex }),
    SpellCap({ gui = "undercurl" }),
    SpellLocal({ gui = "undercurl" }),
    SpellRare({ gui = "undercurl" }),

    -- ### Standard syntax highlighting
    Comment({ fg = clr.grey_500.hex }),

    -- ### Value
    Constant({ fg = clr.orange_A200.hex }),
    String({ fg = clr.red_A200.hex }),
    Character({ fg = clr.red_A200.hex }),
    Number({ fg = clr.amber_A200.hex }),
    Float({ Number }),
    Boolean({ fg = clr.orange_A200.hex }),

    -- ### Definition
    Identifier({ fg = clr.purple_A100.hex }),
    Function({ fg = clr.deep_purple_A100.hex }),

    -- ### Keywords
    Statement({ fg = clr.cyan_A100.hex }),
    Conditional({ fg = clr.blue_A100.hex }),
    Repeat({ Statement }),
    Label({ Conditional }),
    Operator({ Statement }),
    Keywords({ fg = clr.light_blue_A100.hex }),
    Exception({ Statement }),

    -- ### Macro & Preprocessor
    PreProc({ fg = clr.yellow_A400.hex }),
    Include({ PreProc }),
    Define({ PreProc }),
    Macro({ PreProc }),
    PreCondit({ PreProc }),

    -- ### Type
    Type({ fg = clr.light_green_A200.hex }),
    StorageClass({ fg = clr.green_A200.hex }),
    Structure({ fg = clr.light_green_A200.hex }),
    TypeDef({ fg = clr.green_A200.hex }),

    -- ### Special
    Special({ fg = clr.orange_A200.hex }),
    SpecialChar({ fg = clr.deep_orange_A200.hex }),
    Tag({ fg = clr.deep_orange_A200.hex }),
    Delimiter({ fg = clr.red_A200.hex }),
    SpecialComment({ fg = clr.red_A200.hex }),
  }
end)
