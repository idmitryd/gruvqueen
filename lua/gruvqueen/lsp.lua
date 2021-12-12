local function init(c, _)
    local lsp = {
        LspReferenceText = { bg = c.bg5, style = "bold" },
        LspReferenceWrite = { bg = c.bg5, style = "bold" },
        LspReferenceRead = { bg = c.bg5, style = "bold" },

        LspDiagnosticsFloatingError = {fg = c.red, bg = c.bg3, },
        LspDiagnosticsFloatingWarning = {fg = c.yellow, bg = c.bg3, },
        LspDiagnosticsFloatingInformation = {fg = c.blue, bg = c.bg3, },
        LspDiagnosticsFloatingHint = {fg = c.green, bg = c.bg3, },

        LspDiagnosticsDefaultError = {fg = c.none, bg = c.bg_visual_red, style = "undercurl", },
        LspDiagnosticsDefaultWarning = {fg = c.none, bg = c.bg_visual_yellow, style = "undercurl", },
        LspDiagnosticsDefaultInformation = {fg = c.none, bg = c.bg_visual_blue, style = "undercurl", },
        LspDiagnosticsDefaultHint = {fg = c.none, bg = c.bg_visual_green, style = "undercurl", },

        LspDiagnosticsVirtualTextError = {fg = c.red, },
        LspDiagnosticsVirtualTextWarning = {fg = c.yellow, },
        LspDiagnosticsVirtualTextInformation = {fg = c.blue, },
        LspDiagnosticsVirtualTextHint = {fg = c.green, },

        LspDiagnosticsUnderlineError = {fg = c.none, bg = c.bg_visual_red, style = "undercurl", },
        LspDiagnosticsUnderlineWarning = {fg = c.none, bg = c.bg_visual_yellow, style = "undercurl", },
        LspDiagnosticsUnderlineInformation = {fg = c.none, bg = c.bg_visual_blue, style = "undercurl", },
        LspDiagnosticsUnderlineHint = {fg = c.red, },

        LspDiagnosticsSignError = {fg = c.red, bg = c.none, },
        LspDiagnosticsSignWarning = {fg = c.yellow, bg = c.none, },
        LspDiagnosticsSignInformation = {fg = c.blue, bg = c.none, },
        LspDiagnosticsSignHint = {fg = c.aqua, bg = c.none, },

        DiagnosticError = { fg = c.red, bg = c.none, },
        DiagnosticWarn = { fg = c.yellow, bg = c.none, },
        DiagnosticInfo = { fg = c.blue, bg = c.none, },
        DiagnosticHint = { fg = c.aqua, bg = c.none, },

        DiagnosticUnderlineError = { fg = c.none, bg = c.bg_visual_red, sp=c.red, style = "undercurl", },
        DiagnosticUnderlineWarn = { fg = c.none, bg = c.bg_visual_yellow, sp=c.yellow, style = "undercurl", },
        DiagnosticUnderlineInfo = { fg = c.none, bg = c.bg_visual_blue, sp=c.blue, style = "undercurl", },
        DiagnosticUnderlineHint = { fg = c.none, bg = c.bg_visual_aqua, sp = c.aqua, style = "undercurl" },

        DiagnosticFloatingError = {fg = c.red, bg = c.bg3, },
        DiagnosticFloatingWarn = {fg = c.yellow, bg = c.bg3, },
        DiagnosticFloatingInfo = {fg = c.blue, bg = c.bg3, },
        DiagnosticFloatingHint = {fg = c.green, bg = c.bg3, },
    }

    return lsp
end

return {init = init}
