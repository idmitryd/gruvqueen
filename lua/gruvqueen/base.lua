local function init(c, config)
    local base = {
        Normal = {fg = c.fg0, bg = config.transparent_background and "NONE" or config.bg_color, },
        Terminal = {fg = c.fg0, bg = c.bg0, },
        Folded = {fg = c.grey1, bg = c.bg2, },
        SignColumn = {fg = c.fg0, bg = c.bg2, },
        FoldColumn = {fg = c.grey1, bg = c.bg2, },
        IncSearch = {fg = c.bg0, bg = c.bg_red, },
        Search = {fg = c.bg0, bg = c.bg_green, },
        ColorColumn = {fg = c.none, bg = c.bg2, },
        Conceal = {fg = c.bg5, bg = c.none, },
        DiffAdd = {fg = c.none, bg = c.bg_diff_green, },
        DiffChange = {fg = c.none, bg = c.bg_diff_blue, },
        DiffDelete = {fg = c.none, bg = c.bg_diff_red, },
        DiffText = {fg = c.bg0, bg = c.blue, },
        Directory = {fg = c.green, bg = c.none, },
        ErrorMsg = {fg = c.red, bg = c.none, style = config.disable_bold and "underline" or "bold,underline", },
        WarningMsg = {fg = c.yellow, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        ModeMsg = {fg = c.fg0, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        MoreMsg = {fg = c.yellow, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        MatchParen = {fg = c.orange, bg = c.none, style = config.disable_bold and "NONE" or "bold" },
        NonText = {fg = c.bg5, bg = c.none, },
        Whitespace = {fg = c.bg5, bg = c.none, },
        SpecialKey = {fg = c.bg5, bg = c.none, },
        Pmenu = {fg = c.fg1, bg = c.bg2, },
        PmenuSel = {fg = c.bg2, bg = c.blue, },
        PmenuSbar = {fg = c.bg2, bg = c.bg2, },
        PmenuThumb = {fg = c.blue, bg = c.bg2, },
        NormalFloat = {fg = c.fg1, bg = c.bg2, },
        Question = {fg = c.yellow, bg = c.none, },
        SpellBad = {fg = c.none, bg = c.none, style = "undercurl", },
        SpellCap = {fg = c.none, bg = c.none, style = "undercurl", },
        SpellLocal = {fg = c.none, bg = c.none, style = "undercurl", },
        SpellRare = {fg = c.none, bg = c.none, style = "undercurl", },
        StatusLine = {fg = c.fg1, bg = c.bg_statusline1, },
        StatusLineTerm = {fg = c.fg1, bg = c.bg_statusline1, },
        StatusLineNC = {fg = c.grey1, bg = c.bg_statusline1, },
        StatusLineTermNC = {fg = c.grey1, bg = c.bg_statusline1, },
        TabLine = {fg = c.fg1, bg = c.bg_statusline3, },
        TabLineFill = {fg = c.fg1, bg = c.bg_statusline1, },
        TabLineSel = {fg = c.bg0, bg = c.grey2, },
        VertSplit = {fg = c.bg5, bg = c.none, },
        Visual = {bg = config.invert_selection and c.bg0 or c.bg5, style = config.invert_selection and "inverse" or "NONE", },
        VisualNOS = {bg = config.invert_selection and c.bg0 or c.bg5, style = config.invert_selection and "inverse" or "NONE", },
        QuickFixLine = {fg = c.purple, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        Debug = {fg = c.orange, bg = c.none, },
        debugPC = {fg = c.bg0, bg = c.green, },
        debugBreakpoint = {fg = c.bg0, bg = c.red, },
        ToolbarButton = {fg = c.bg0, bg = c.grey2, },
        Substitute = {fg = c.bg0, bg = c.yellow, },
        Boolean = {fg = c.purple, bg = c.none, },
        Number = {fg = c.purple, bg = c.none, },
        Float = {fg = c.purple, bg = c.none, },
        PreProc = {fg = c.purple, bg = c.none, style = "italic", },
        PreCondit = {fg = c.purple, bg = c.none, style = "italic", },
        Include = {fg = c.purple, bg = c.none, style = "italic", },
        Define = {fg = c.purple, bg = c.none, style = "italic", },
        Conditional = {fg = c.red, bg = c.none, style = "italic", },
        Repeat = {fg = c.red, bg = c.none, style = "italic", },
        Keyword = {fg = c.red, style = config.italic_keywords and "italic" or "NONE"},
        Typedef = {fg = c.red, bg = c.none, style = "italic", },
        Exception = {fg = c.red, bg = c.none, style = "italic", },
        Statement = {fg = c.red, bg = c.none, style = "italic", },
        Error = {fg = c.red, bg = c.none, },
        StorageClass = {fg = c.orange, bg = c.none, },
        Tag = {fg = c.orange, bg = c.none, },
        Label = {fg = c.orange, bg = c.none, },
        Structure = {fg = c.orange, bg = c.none, },
        Operator = {fg = c.orange, bg = c.none, },
        Title = {fg = c.orange, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        Special = {fg = c.yellow, bg = c.none, },
        SpecialChar = {fg = c.yellow, bg = c.none, },
        Type = {fg = c.yellow, bg = c.none, },
        Function = {fg = c.green, style = config.disable_bold and "NONE" or "bold", },
        String = {fg = c.green, bg = c.none, },
        Character = {fg = c.green, bg = c.none, },
        Constant = {fg = c.aqua, bg = c.none, },
        Macro = {fg = c.aqua, bg = c.none, },
        Identifier = {fg = c.blue, style = config.italic_variables and "italic" or "NONE", },
        Comment = {fg = c.grey1, style = config.italic_comments and "italic" or "NONE" },
        SpecialComment = {fg = c.grey1, bg = c.none, style = "italic", },
        Todo = {fg = c.purple, bg = c.none, style = "italic", },
        Delimiter = {fg = c.fg0, bg = c.none, },
        Ignore = {fg = c.grey1, bg = c.none, },
        Underlined = {fg = c.none, bg = c.none, style = "underline", },
        ErrorText = {fg = c.none, bg = c.bg_visual_red, style = "undercurl", },
        WarningText = {fg = c.none, bg = c.bg_visual_yellow, style = "undercurl", },
        InfoText = {fg = c.none, bg = c.bg_visual_blue, style = "undercurl", },
        HintText = {fg = c.red, bg = c.none, },
        ErrorLine = {fg = c.none, bg = c.bg_visual_red, },
        WarningLine = {fg = c.none, bg = c.bg_visual_yellow, },
        InfoLine = {fg = c.none, bg = c.bg_visual_blue, },
        HintLine = {fg = c.none, bg = c.bg_visual_green, },
        ErrorFloat = {fg = c.red, bg = c.bg3, },
        WarningFloat = {fg = c.yellow, bg = c.bg3, },
        InfoFloat = {fg = c.blue, bg = c.bg3, },
        HintFloat = {fg = c.green, bg = c.bg3, },
        LineNr = {fg = c.bg5, bg = c.none, },
        CursorLineNr = {fg = c.blue, },
        CursorLine = {fg = c.none, bg = c.bg1, },
        CursorColumn = {fg = c.none, bg = c.bg1, },
        healthError = {fg = c.red, bg = c.none, },
        healthSuccess = {fg = c.green, bg = c.none, },
        healthWarning = {fg = c.yellow, bg = c.none, },
    }

    return base
end

return {init = init}
