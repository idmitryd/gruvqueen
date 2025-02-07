local function init(c, config)
    local base = {
        Normal = {fg = c.fg0, bg = config.transparent_background and "NONE" or config.bg_color, },
        Terminal = {fg = c.fg0, bg = c.bg0, },
        Folded = {fg = c.grey1, bg = c.bg2, },
        SignColumn = {fg = c.fg0, bg = c.none, },
        FoldColumn = {fg = c.grey1, bg = c.bg2, },
        IncSearch = {fg = c.bg0, bg = c.bg_red, },
        Search = {fg = c.bg0, bg = c.bg_green, },
        ColorColumn = {fg = c.none, bg = c.bg2, },
        Conceal = {fg = c.bg5, },
        DiffAdd = {fg = c.none, bg = c.bg_diff_green, },
        DiffChange = {fg = c.none, bg = c.bg_diff_blue, },
        DiffDelete = {fg = c.none, bg = c.bg_diff_red, },
        DiffText = {fg = c.bg0, bg = c.blue, },
        Directory = {fg = c.green, },
        ErrorMsg = {fg = c.red, bg = c.none, style = config.disable_bold and "underline" or "bold,underline", },
        WarningMsg = {fg = c.yellow, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        ModeMsg = {fg = c.fg0, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        MoreMsg = {fg = c.yellow, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        MatchParen = {fg = c.orange, bg = c.none, style = config.disable_bold and "NONE" or "bold" },
        NonText = {fg = c.bg5, },
        Whitespace = {fg = c.bg5, },
        SpecialKey = {fg = c.bg5, },
        Pmenu = {fg = c.fg1, bg = c.bg2, },
        PmenuSel = {fg = c.bg2, bg = c.blue, },
        PmenuSbar = {fg = c.bg2, bg = c.bg2, },
        PmenuThumb = {fg = c.blue, bg = c.bg2, },
        NormalFloat = {fg = c.fg1, bg = c.bg2, },
        Question = {fg = c.yellow, },
        SpellBad = {fg = c.none, style = "undercurl", },
        SpellCap = {fg = c.none, style = "undercurl", },
        SpellLocal = {fg = c.none, style = "undercurl", },
        SpellRare = {fg = c.none, style = "undercurl", },
        StatusLine = {fg = c.fg1, bg = c.bg_statusline1, style = "NONE", },
        StatusLineTerm = {fg = c.fg1, bg = c.bg_statusline1, },
        StatusLineNC = {fg = c.grey1, bg = c.bg_statusline1, style = "NONE", },
        StatusLineTermNC = {fg = c.grey1, bg = c.bg_statusline1, },
        TabLine = {fg = c.fg1, bg = c.bg_statusline3, },
        TabLineFill = {fg = c.fg1, bg = c.bg_statusline1, },
        TabLineSel = {fg = c.bg0, bg = c.grey2, },
        VertSplit = {fg = c.bg5, },
        Visual = {bg = config.invert_selection and c.bg0 or c.bg5, style = config.invert_selection and "inverse" or "NONE", },
        VisualNOS = {bg = config.invert_selection and c.bg0 or c.bg5, style = config.invert_selection and "inverse" or "NONE", },
        QuickFixLine = {fg = c.purple, style = config.disable_bold and "NONE" or "bold", },
        Debug = {fg = c.orange, },
        debugPC = {fg = c.bg0, bg = c.green, },
        debugBreakpoint = {fg = c.bg0, bg = c.red, },
        ToolbarButton = {fg = c.bg0, bg = c.grey2, },
        Substitute = {fg = c.bg0, bg = c.yellow, },
        Boolean = {fg = c.purple, },
        Number = {fg = c.purple, },
        Float = {fg = c.purple, },
        PreProc = {fg = c.purple, style = "italic", },
        PreCondit = {fg = c.purple, style = "italic", },
        Include = {fg = c.purple, style = "italic", },
        Define = {fg = c.purple, style = "italic", },
        Conditional = {fg = c.red, style = "italic", },
        Repeat = {fg = c.red, style = "italic", },
        Keyword = {fg = c.red, style = config.italic_keywords and "italic" or "NONE"},
        Typedef = {fg = c.red, style = "italic", },
        Exception = {fg = c.red, style = "italic", },
        Statement = {fg = c.red, style = "italic", },
        Error = {fg = c.fg1, bg=c.none },
        StorageClass = {fg = c.orange, },
        Tag = {fg = c.orange, },
        Label = {fg = c.orange, },
        Structure = {fg = c.orange, },
        Operator = {fg = c.orange, },
        Title = {fg = c.orange, style = config.disable_bold and "NONE" or "bold", },
        Special = {fg = c.yellow, },
        SpecialChar = {fg = c.yellow, },
        Type = {fg = c.yellow, },
        Function = {fg = c.green, style = config.disable_bold and "NONE" or "bold", },
        String = {fg = c.green, },
        Character = {fg = c.green, },
        Constant = {fg = c.aqua, },
        Macro = {fg = c.aqua, },
        Identifier = {fg = c.blue, style = config.italic_variables and "italic" or "NONE", },
        Comment = {fg = c.grey1, style = config.italic_comments and "italic" or "NONE" },
        SpecialComment = {fg = c.grey1, style = "italic", },
        Todo = {fg = c.purple, style = "italic", },
        Delimiter = {fg = c.fg0, },
        Ignore = {fg = c.grey1, },
        Underlined = {fg = c.none, style = "underline", },
        ErrorText = {fg = c.none, bg = c.bg_visual_red, style = "undercurl", },
        WarningText = {fg = c.none, bg = c.bg_visual_yellow, style = "undercurl", },
        InfoText = {fg = c.none, bg = c.bg_visual_blue, style = "undercurl", },
        HintText = {fg = c.red, },
        ErrorLine = {fg = c.none, bg = c.bg_visual_red, },
        WarningLine = {fg = c.none, bg = c.bg_visual_yellow, },
        InfoLine = {fg = c.none, bg = c.bg_visual_blue, },
        HintLine = {fg = c.none, bg = c.bg_visual_green, },
        ErrorFloat = {fg = c.red, bg = c.bg3, },
        WarningFloat = {fg = c.yellow, bg = c.bg3, },
        InfoFloat = {fg = c.blue, bg = c.bg3, },
        HintFloat = {fg = c.green, bg = c.bg3, },
        LineNr = {fg = c.bg5, },
        CursorLineNr = {fg = c.blue, },
        CursorLine = {fg = c.none, bg = c.bg1, },
        CursorColumn = {fg = c.none, bg = c.bg1, },
        healthError = {fg = c.red, },
        healthSuccess = {fg = c.green, },
        healthWarning = {fg = c.yellow, },
    }

    return base
end

return {init = init}
