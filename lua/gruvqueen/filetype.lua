local function init(c, config)
    local ft = {
        -- markown
        markdownH1 = {fg = c.red, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        markdownH2 = {fg = c.orange, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        markdownH3 = {fg = c.yellow, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        markdownH4 = {fg = c.green, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        markdownH5 = {fg = c.blue, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        markdownH6 = {fg = c.purple, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        markdownUrl = {fg = c.blue, bg = c.none, style = "underline", },
        markdownItalic = {fg = c.none, bg = c.none, style = "italic", },
        markdownBold = {fg = c.none, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        markdownItalicDelimiter = {fg = c.grey1, bg = c.none, style = "italic", },
        markdownCode = {fg = c.green, bg = c.none, },
        markdownCodeBlock = {fg = c.aqua, bg = c.none, },
        markdownCodeDelimiter = {fg = c.aqua, bg = c.none, },
        markdownBlockquote = {fg = c.grey1, bg = c.none, },
        markdownListMarker = {fg = c.red, bg = c.none, },
        markdownOrderedListMarker = {fg = c.red, bg = c.none, },
        markdownRule = {fg = c.purple, bg = c.none, },
        markdownHeadingRule = {fg = c.grey1, bg = c.none, },
        markdownUrlDelimiter = {fg = c.grey1, bg = c.none, },
        markdownLinkDelimiter = {fg = c.grey1, bg = c.none, },
        markdownLinkTextDelimiter = {fg = c.grey1, bg = c.none, },
        markdownHeadingDelimiter = {fg = c.grey1, bg = c.none, },
        markdownLinkText = {fg = c.purple, bg = c.none, },
        markdownUrlTitleDelimiter = {fg = c.green, bg = c.none, },
        markdownIdDeclaration = {fg = c.grey1, bg = c.none, },
        markdownBoldDelimiter = {fg = c.grey1, bg = c.none, },
        markdownId = {fg = c.yellow, bg = c.none, },

        -- html
        htmlH1 = {fg = c.red, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        htmlH2 = {fg = c.orange, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        htmlH3 = {fg = c.yellow, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        htmlH4 = {fg = c.green, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        htmlH5 = {fg = c.blue, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        htmlH6 = {fg = c.purple, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        htmlLink = {fg = c.none, bg = c.none, style = "underline", },
        htmlBold = {fg = c.none, bg = c.none, style = config.disable_bold and "NONE" or "bold", },
        htmlBoldUnderline = {fg = c.none, bg = c.none, style = "bold,underline", },
        htmlBoldItalic = {fg = c.none, bg = c.none, style = config.disable_bold and "italic" or "bold,italic", },
        htmlBoldUnderlineItalic = {fg = c.none, bg = c.none, style = config.disable_bold and "underline,italic" or "bold,underline,italic", },
        htmlUnderline = {fg = c.none, bg = c.none, style = "underline", },
        htmlUnderlineItalic = {fg = c.none, bg = c.none, style = "underline,italic", },
        htmlItalic = {fg = c.none, bg = c.none, style = "italic", },
        htmlTag = {fg = c.green, bg = c.none, },
        htmlEndTag = {fg = c.blue, bg = c.none, },
        htmlTagN = {fg = c.orange, bg = c.none, style = "italic", },
        htmlTagName = {fg = c.orange, bg = c.none, style = "italic", },
        htmlArg = {fg = c.aqua, bg = c.none, },
        htmlScriptTag = {fg = c.purple, bg = c.none, },
        htmlSpecialTagName = {fg = c.red, bg = c.none, style = "italic", },

        -- help
        helpNote = {fg = c.purple, style = 'bold'},
        helpHeadline = {fg = c.red,  style = 'bold'},
        helpHeader = {fg = c.orange, style = 'bold'},
        helpURL = {fg = c.green, style = 'underline'},
        helpHyperTextEntry = {fg = c.yellow, style = 'bold'},
        helpHyperTextJump = {fg = c.yellow},
        helpCommand = {fg = c.aqua},
        helpExample = {fg = c.green},
        helpSpecial = {fg = c.blue},
        helpSectionDelim = {fg = c.grey1},

        -- python
        pythonBuiltin = {fg = c.yellow},
        pythonExceptions = {fg = c.purple},
        pythonDecoratorName = {fg = c.blue},
    }

    return ft
end

return {init = init}
