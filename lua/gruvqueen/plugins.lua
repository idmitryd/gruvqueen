local function init(c, config)
    local plugins = {
        -- Telescope
        TelescopeMatching = {fg = c.green, style = config.disable_bold and "NONE" or "bold", },
        TelescopeBorder = {fg = c.grey1, bg = config.transparent_background and "NONE" or c.none, },
        TelescopePromptPrefix = {fg = c.orange, },
        TelescopeSelection = {fg = c.none, bg = c.bg_diff_green, },

        -- IndentBlankline
        IndentBlanklineContextChar = {fg = c.grey0, },
        IndentBlanklineChar = {fg = c.bg5, },
        IndentBlanklineSpaceChar = {fg = c.bg5, },
        IndentBlanklineSpaceCharBlankline = {fg = c.bg5, },

        -- netrw
        netrwDir = {fg = c.green, },
        netrwClassify = {fg = c.green, },
        netrwLink = {fg = c.grey1, },
        netrwSymLink = {fg = c.fg0, },
        netrwExe = {fg = c.yellow, },
        netrwComment = {fg = c.grey1, },
        netrwList = {fg = c.aqua, },
        netrwHelpCmd = {fg = c.blue, },
        netrwCmdSep = {fg = c.grey1, },
        netrwVersion = {fg = c.orange, },

        -- lewis6991/gitsigns.nvim
        GitSignsAdd =  {fg = c.green, bg = c.none},
        GitSignsChange =  {fg = c.blue, bg = c.none},
        GitSignsDelete =  {fg = c.red, bg = c.none},
        GitSignsChangeDelete =  {fg = c.purple, bg = c.none},

        -- easymotion/vim-easymotion
        EasyMotionTarget = {fg = c.bg0, bg = c.bg_green},
        EasyMotionShade = {fg = c.grey1, bg = c.none},

        -- nvim-ts-rainbow
        rainbowcol1 = {fg = c.red},
        rainbowcol2 = {fg = c.orange},
        rainbowcol3 = {fg = c.yellow},
        rainbowcol4 = {fg = c.green},
        rainbowcol5 = {fg = c.aqua},
        rainbowcol6 = {fg = c.blue},
        rainbowcol7 = {fg = c.purple},

        -- nvim tree
        NvimTreeSymlink = {fg = c.fg0},
        NvimTreeFolderName = {fg = c.green},
        NvimTreeRootFolder = {fg = c.grey1},
        NvimTreeFolderIcon = {fg = c.orange},
        NvimTreeEmptyFolderName = {fg = c.green},
        NvimTreeOpenedFolderName = {fg = c.green},
        NvimTreeExecFile = {fg = c.fg0},
        NvimTreeOpenedFile = {fg = c.fg0},
        NvimTreeSpecialFile = {fg = c.fg0},
        NvimTreeImageFile = {fg = c.fg0},
        NvimTreeMarkdownFile = {fg = c.fg0},
        NvimTreeIndentMarker = {fg = c.grey0},
        NvimTreeGitDirty = {fg = c.yellow},
        NvimTreeGitStaged = {fg = c.blue},
        NvimTreeGitMerge = {fg = c.orange},
        NvimTreeGitRenamed = {fg = c.purple},
        NvimTreeGitNew = {fg = c.aqua},
        NvimTreeGitDeleted = {fg = c.red},
        NvimTreeWindowPicker = {fg = c.fg0, bg = c.bg3, style = config.disable_bold and "NONE" or "bold"},
        NvimTreeNormal = { fg = c.fg0, bg = c.bg_statusline1 },
        NvimTreeVertSplit = { fg = c.bg_statusline1, bg = c.bg_statusline1 },
        NvimTreeStatusLine = { fg = c.bg_statusline1, bg = c.bg_statusline1 },
        NvimTreeStatusLineNC = { fg = c.bg_statusline1, bg = c.bg_statusline1 },

        -- undotree
        UndotreeSavedBig = {fg = c.purple, style = 'bold'},
        UndotreeNode = {fg = c.orange},
        UndotreeNodeCurrent = {fg = c.red},
        UndotreeSeq = {fg = c.green},
        UndotreeNext = {fg = c.blue},
        UndotreeTimeStamp = {fg = c.grey1},
        UndotreeHead = {fg = c.yellow},
        UndotreeBranch = {fg = c.yellow},
        UndotreeCurrent = {fg = c.aqua},
        UndotreeSavedSmall = {fg = c.purple},

        -- startify
        StartifyBracket = {fg = c.grey1},
        StartifyFile = {fg = c.fg0},
        StartifyNumber = {fg = c.red},
        StartifyPath = {fg = c.green},
        StartifySlash = {fg = c.green},
        StartifySection = {fg = c.blue},
        StartifyHeader = {fg = c.orange},
        StartifySpecial = {fg = c.grey1},
        StartifyFooter = {fg = c.grey1},

        -- BarBar
        BufferCurrent = { fg = c.fg0, bg = c.bg0, },
        BufferCurrentIndex = { fg = c.fg0, bg = c.bg0, },
        BufferCurrentMod = { fg = c.yellow, bg = c.bg0, },
        BufferCurrentSign = { fg = c.green, bg = c.bg0},
        BufferCurrentTarget = { fg = c.orange, bg = c.bg0, style = "bold", },
        BufferVisible = { fg = c.fg0, bg = c.bg0, },
        BufferVisibleIndex = { fg = c.fg0, bg = c.bg0, },
        BufferVisibleMod = { fg = c.yellow, bg = c.bg0, },
        BufferVisibleSign = { fg = c.grey2, bg = c.bg0, },
        BufferVisibleTarget = { fg = c.orange, bg = c.bg0, style = "bold", },
        BufferInactive = { fg = c.grey1, bg = c.bg3, },
        BufferInactiveIndex = { fg = c.grey1, bg = c.bg3, },
        BufferInactiveMod = { fg = c.grey1, bg = c.bg3, },
        BufferInactiveSign = { fg = c.grey1, bg = c.bg3},
        BufferInactiveTarget = { fg = c.green, bg = c.bg3, style = "bold"},
        BufferOffset = { fg = c.fg0, bg = c.bg_statusline1 },
        BufferTabpages = { fg = c.purple },

        -- dapui
        DapUIVariable = { fg = c.fg0, bg = c.bg0 },
        DapUIScope = { fg = c.green, },
        DapUIType = { fg = c.yellow, },
        DapUIValue = { fg = c.purple, bg = c.bg0 },
        DapUIModifiedValue = { fg = c.aqua, style = "bold", },
        DapUIDecoration = { fg = c.green, },
        DapUIThread = { fg = c.purple, },
        DapUIStoppedThread = { fg = c.green, },
        DapUIFrameName = { fg = c.fg0, bg = c.bg0 },
        DapUISource = { fg = c.yellow, },
        DapUILineNumber = { fg = c.aqua, },
        DapUIFloatBorder = { fg = c.bg_statusline3, },
        DapUIWatchesEmpty = { fg = c.red, },
        DapUIWatchesValue = { fg = c.purple, },
        DapUIWatchesError = { fg = c.red, },
        DapUIBreakpointsPath = { fg = c.green, },
        DapUIBreakpointsInfo = { fg = c.purple, },
        DapUIBreakpointsCurrentLine = { fg = c.aqua, style = "bold", },
        DapUIBreakpointsLine = { fg = c.aqua, },

        -- lspsaga
        LspSagaBorderTitle = { fg = c.orange },
        LspSagaHoverBorder = { fg = c.grey1, bg = c.bg0, },
        LspSagaRenameBorder = { fg = c.aqua },
        LspSagaDefPreviewBorder = { fg = c.grey1, bg = c.bg0, },
        LspSagaCodeActionBorder = { fg = c.green, },
        LspSagaFinderSelection = { fg = c.fg0 },
        LspSagaCodeActionTitle = { fg = c.orange },
        LspSagaCodeActionContent = { fg = c.fg0 },
        LspSagaSignatureHelpBorder = { fg = c.grey1, bg = c.bg0, },
        LspSagaDiagnosticBorder = { fg = c.fg0 },
        LspSagaDiagnosticTruncateLine = { fg = c.fg0 },
        LspSagaLspFinderBorder = { fg = c.blue },
        LspSagaShTruncateLine = { fg = c.fg0, },
        LspSagaDocTruncateLine = { fg = c.fg0, },
        LspSagaCodeActionTruncateLine = { fg = c.fg0, },

        -- Hop
        HopNextKey = { fg = c.orange, style = "bold"  },
        HopNextKey1 = { fg = c.green, style = "bold" },
        HopNextKey2 = { fg = c.aqua, style = "bold" },

        -- Notify
        NotifyERRORBorder = { fg = c.red, },
        NotifyWARNBorder = { fg = c.orange, },
        NotifyINFOBorder = { fg = c.blue, },
        NotifyDEBUGBorder = { fg = c.purple, },
        NotifyTRACEBorder = { fg = c.aqua, },

        NotifyERRORIcon = { fg = c.red, },
        NotifyWARNIcon = { fg = c.orange, },
        NotifyINFOIcon = { fg = c.blue, },
        NotifyDEBUGIcon = { fg = c.purple, },
        NotifyTRACEIcon = { fg = c.aqua, },

        NotifyERRORTitle = { fg = c.red, },
        NotifyWARNTitle = { fg = c.orange, },
        NotifyINFOTitle = { fg = c.blue, },
        NotifyDEBUGTitle = { fg = c.purple, },
        NotifyTRACETitle = { fg = c.aqua, },
    }

    return plugins
end

return {init = init}
