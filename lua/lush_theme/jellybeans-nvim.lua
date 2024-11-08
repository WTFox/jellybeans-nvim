--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

local lush = require("lush")
local hsl = lush.hsl

local foreground = hsl("#e8e8d3")
local background = hsl("#151515")
local grey = hsl("#888888")
local grey_one = hsl("#1c1c1c")
local grey_two = hsl("#f0f0f0")
local grey_three = hsl("#333333")
local regent_grey = hsl("#9098A0")
local scorpion = hsl("#606060")
local cod_grey = hsl("#101010")
local tundora = hsl("#404040")
local zambezi = hsl("#605958")
local silver_rust = hsl("#ccc5c4")
local silver = hsl("#c7c7c7")
local alto = hsl("#dddddd")
local gravel = hsl("#403c41")
local boulder = hsl("#777777")
local cocoa_brown = hsl("#302028")
local grey_chateau = hsl("#a0a8b0")
local bright_grey = hsl("#384048")
local shuttle_grey = hsl("#535d66")
local mine_shaft = hsl("#1f1f1f")
local temptress = hsl("#40000a")

local bayoux_blue = hsl("#556779")
local total_white = hsl("#ffffff")
local total_black = hsl("#000000")
local cadet_blue = hsl("#b0b8c0")
local perano = hsl("#b0d0f0")
local wewak = hsl("#f0a0c0")
local mantis = hsl("#70b950")
local raw_sienna = hsl("#cf6a4c")
local highland = hsl("#799d6a")
local hoki = hsl("#668799")
local green_smoke = hsl("#99ad6a")
local costa_del_sol = hsl("#556633")
local biloba_flower = hsl("#c6b6ee")
local morning_glory = hsl("#8fbfdc")
local goldenrod = hsl("#fad07a")
local ship_cove = hsl("#8197bf")
local koromiko = hsl("#ffb964")
local brandy = hsl("#dad085")
local old_brick = hsl("#902020")
local dark_blue = hsl("#0000df")
local ripe_plum = hsl("#540063")
local casal = hsl("#2D7067")
local purple = hsl("#700089")
local tea_green = hsl("#d2ebbe")
local dell = hsl("#437019")
local calypso = hsl("#2B5B77")

local theme = lush(function(injected_functions)
	local sym = injected_functions.sym

	return {
		Comment({ fg = grey }), -- any comment
		ColorColumn({ bg = total_black }), -- used for the columns set with 'colorcolumn'
		Conceal({ fg = morning_glory }), -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor({ fg = background, bg = perano }), -- character under the cursor
		CursorColumn({ bg = grey_one.darken(2) }), -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine({
			bg = grey_one.darken(2),
			fg = "NONE", -- Explicitly clear foreground
			sp = "NONE", -- Clear any special properties
			blend = 0, -- No blending
		}),
		Directory({ fg = brandy }), -- directory names (and other special names in listings)
		DiffAdd({ fg = tea_green, bg = dell }), -- diff mode: Added line |diff.txt|
		DiffChange({ bg = calypso }), -- diff mode: Changed line |diff.txt|
		DiffDelete({ fg = temptress, bg = purple }), -- diff mode: Deleted line |diff.txt|
		DiffText({ fg = morning_glory, bg = total_black }), -- diff mode: Changed text within a changed line |diff.txt|
		ErrorMsg({ bg = old_brick }), -- error messages on the command line
		VertSplit({ fg = gravel }), -- the column separating vertically split windows
		WinSeparator({ fg = gravel }), -- the line separating split windows
		Folded({ fg = grey_chateau, bg = bright_grey }), -- line used for closed folds
		FoldColumn({ fg = shuttle_grey, bg = mine_shaft }), -- 'foldcolumn'
		SignColumn({ fg = boulder }), -- column where |signs| are displayed
		LineNr({ fg = zambezi }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr({ fg = silver_rust }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen({ fg = wewak, gui = "bold" }), -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		MoreMsg({ fg = highland }), -- |more-prompt|
		NonText({ fg = scorpion }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text
		Normal({ bg = background, fg = foreground }), -- normal text
		Pmenu({ fg = total_white, bg = background.lighten(4) }), -- Popup menu: normal item.
		PmenuSel({ fg = total_black, bg = ship_cove, gui = "bold" }), -- Popup menu: selected item.
		Question({ fg = mantis }), -- |hit-enter| prompt and yes/no questions
		QuickFixLine({ bg = bright_grey }), -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search({ fg = wewak, bg = cocoa_brown }), -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		SpecialKey({ fg = tundora, bg = grey_one }), -- Unprintable characters: text displayed differently from what it really is.
		SpellBad({ bg = old_brick }), -- Word that is not recognized by the spellchecker. |spell|
		SpellCap({ bg = dark_blue }), -- Word that should start with a capital. |spell|
		SpellLocal({ bg = casal }), -- Word that is recognized by the spellchecker as one that is used in another region. |spell|
		SpellRare({ bg = ripe_plum }), -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell|
		StatusLine({ fg = total_white, bg = grey_one }), -- status line of current window
		StatusLineNC({ fg = silver, bg = grey_one }), -- status lines of not-current windows
		TabLine({ fg = cadet_blue, bg = total_black }), -- tab pages line, not active tab page label
		TabLineFill({ fg = regent_grey }), -- tab pages line, where there are no labels
		TabLineSel({ fg = mantis, bg = total_black }), -- tab pages line, active tab page label
		Title({ fg = mantis }), -- titles for output from ":set all", ":autocmd" etc.
		Visual({ bg = tundora }), -- Visual mode selection
		WildMenu({ fg = wewak, bg = cocoa_brown }), -- current match in 'wildmenu' completion

		-- Syntax
		Constant({ fg = raw_sienna }), -- any constant
		String({ fg = green_smoke }), -- a string constant: "this is a string"
		StringDelimiter({ fg = costa_del_sol }),

		Identifier({ fg = foreground }), -- Simplified to just use normal text color
		Function({ fg = goldenrod }), -- function name (also: methods for classes)

		Statement({ fg = perano }), -- any statement
		Operator({ fg = morning_glory }), -- "sizeof", "+", "*", etc.

		PreProc({ fg = ship_cove }), -- generic Preprocessor
		Include({ PreProc, gui = "italic" }), -- preprocessor #include

		Type({ fg = koromiko, gui = "italic" }), -- int, long, char, etc.
		Structure({ fg = morning_glory }), -- struct, union, enum, etc.

		Special({ fg = hsl(155, 30, 65) }), -- special symbol
		Delimiter({ fg = hoki }), -- character that needs attention

		Underlined({ gui = "underline" }), -- text that stands out, HTML links
		Bold({ gui = "bold" }),
		Italic({ gui = "italic" }),

		Error({ bg = old_brick }), -- any erroneous construct
		Todo({ fg = silver }), -- anything that needs extra attention; mostly TODO FIXME and XXX

		-- LSP
		LspReferenceText({ bg = background.lighten(8) }),
		LspReferenceRead({ bg = background.lighten(8) }),
		LspReferenceWrite({ bg = background.lighten(8) }),

		LspDiagnosticsDefaultError({ fg = old_brick.lighten(20) }),
		LspDiagnosticsDefaultWarning({ fg = koromiko }),
		LspDiagnosticsDefaultInformation({ fg = perano }),
		LspDiagnosticsDefaultHint({ fg = tea_green }),

		LspDiagnosticsVirtualTextError({ LspDiagnosticsDefaultError, bg = old_brick.darken(72) }),
		LspDiagnosticsVirtualTextWarning({ LspDiagnosticsDefaultWarning, bg = koromiko.darken(88) }),
		LspDiagnosticsVirtualTextInformation({ LspDiagnosticsDefaultInformation, bg = perano.darken(87) }),
		LspDiagnosticsVirtualTextHint({ LspDiagnosticsDefaultHint, bg = tea_green.darken(90) }),

		LspDiagnosticsUnderlineError({ sp = old_brick.lighten(20), gui = "undercurl" }),
		LspDiagnosticsUnderlineWarning({ sp = koromiko, gui = "undercurl" }),
		LspDiagnosticsUnderlineInformation({ sp = perano, gui = "undercurl" }),
		LspDiagnosticsUnderlineHint({ sp = tea_green, gui = "undercurl" }),

		-- Treesitter
		sym("@variable")({ fg = foreground }), -- Set to normal text color
		sym("@variable.builtin")({ fg = biloba_flower }),
		sym("@parameter")({ fg = foreground }),
		sym("@field")({ fg = foreground }),
		sym("@property")({ fg = foreground }),
		sym("@namespace")({ fg = wewak }),

		-- LSP Semantic tokens
		sym("@lsp.type.variable")({ fg = foreground }),
		sym("@lsp.type.parameter")({ fg = foreground }),
		sym("@lsp.type.property")({ fg = foreground }),
		sym("@lsp.type.namespace")({ fg = wewak }),
		sym("@lsp.type.enum")({ fg = morning_glory }),
		sym("@lsp.type.interface")({ fg = morning_glory }),

		sym("@tag.delimiter")({ fg = bayoux_blue }),
		sym("@text.emphasis")({ Italic }),
		sym("@text.underline")({ Underlined }),
		sym("@text.strike")({ gui = "strikethrough" }),
		sym("@text.uri")({ fg = morning_glory }),

		-- HTML
		htmlLink({}),

		-- GitSigns
		GitSignsAdd({ fg = mantis }),
		GitSignsChange({ fg = koromiko }),
		GitSignsDelete({ fg = old_brick.lighten(20) }),

		-- Telescope
		TelescopeNormal({ bg = background }),
		TelescopePromptNormal({ bg = background.darken(4) }),
		TelescopeResultsNormal({ bg = background }),
		TelescopePreviewNormal({ bg = background }),

		TelescopePromptBorder({ fg = grey_three, bg = background.darken(4) }),
		TelescopeResultsBorder({ fg = grey_three, bg = background }),
		TelescopePreviewBorder({ fg = grey_three, bg = background }),

		TelescopePromptPrefix({ fg = koromiko, bg = background.darken(4) }),
		TelescopePromptTitle({ fg = background.darken(4), bg = koromiko }),
		TelescopeResultsTitle({ fg = background, bg = grey_three }),
		TelescopePreviewTitle({ fg = background, bg = grey_three }),

		TelescopeSelection({ bg = grey_one, fg = foreground }),
		TelescopeSelectionCaret({ fg = koromiko, bg = grey_one }),
		TelescopeMultiSelection({ bg = grey_one }),

		TelescopeMatching({ fg = koromiko, gui = "bold" }),
		TelescopePromptCounter({ fg = grey, bg = background.darken(4) }),

		-- vim-sneak
		Sneak({ Search }),

		-- nvim-tree
		NvimTreeRootFolder({ Directory, gui = "bold" }),
		NvimTreeGitDirty({ GitSignsChange }),
		NvimTreeGitStaged({ fg = tea_green }),
		NvimTreeGitMerge({ GitSignsChange }),
		NvimTreeGitRenamed({ GitSignsChange }),
		NvimTreeGitNew({ GitSignsAdd }),
		NvimTreeGitDeleted({ GitSignsDelete }),

		-- NeoTree
		NeoTreeDirectoryName({ fg = brandy }),
		NeoTreeDirectoryIcon({ fg = morning_glory }),
		NeoTreeRootName({ fg = brandy, gui = "bold" }),
		NeoTreeFileName({ fg = foreground }),
		NeoTreeFileIcon({ fg = morning_glory }),
		NeoTreeFileNameOpened({ fg = perano }),
		NeoTreeIndentMarker({ fg = grey_three }),
		NeoTreeGitAdded({ fg = mantis }),
		NeoTreeGitConflict({ fg = old_brick }),
		NeoTreeGitDeleted({ fg = old_brick.lighten(20) }),
		NeoTreeGitIgnored({ fg = grey }),
		NeoTreeGitModified({ fg = koromiko }),
		NeoTreeGitUnstaged({ fg = koromiko }),
		NeoTreeGitUntracked({ fg = raw_sienna }),
		NeoTreeGitStaged({ fg = tea_green }),
		NeoTreeWindowsHidden({ fg = grey }),
		NeoTreeDotfile({ fg = grey }),
		NeoTreeHiddenByName({ fg = grey }),
		NeoTreeDimText({ fg = grey }),
		NeoTreeNormal({ Normal }),
		NeoTreeNormalNC({ Normal }),
		NeoTreeStatusLine({ StatusLine }),
		NeoTreeStatusLineNC({ StatusLineNC }),
		NeoTreeSignColumn({ SignColumn }),
		NeoTreeCursorLine({ CursorLine }),
		NeoTreeFloatBorder({ bg = total_black, fg = grey_one }),
		NeoTreeFloatTitle({ bg = total_black, fg = foreground }),
		NeoTreeTitleBar({ bg = total_black, fg = foreground }),
		NeoTreeFloatNormal({ bg = background }),
		NeoTreeVertSplit({ VertSplit }),
		NeoTreeWinSeparator({ WinSeparator }),

		-- Treesitter Context
		TreesitterContext({ bg = grey_one }),
		TreesitterContextLineNumber({ fg = zambezi, bg = grey_one }),
		TreesitterContextBottom({ gui = "NONE", sp = grey_three }),

		-- Dashboard
		DashboardHeader({ fg = perano }),
		DashboardCenter({ fg = morning_glory }),
		DashboardFooter({ fg = grey }),
		DashboardKey({ fg = koromiko }),
		DashboardDesc({ fg = grey_two }),
		DashboardIcon({ fg = morning_glory }),

		DashboardProjectTitle({ fg = perano, gui = "bold" }),
		DashboardProjectTitleIcon({ fg = morning_glory }),
		DashboardProjectIcon({ fg = morning_glory }),
		DashboardMruTitle({ fg = perano, gui = "bold" }),
		DashboardMruIcon({ fg = morning_glory }),
		DashboardFiles({ fg = foreground }),
		DashboardShortCut({ fg = koromiko }),
	}
end)

return theme

-- vi:nowrap
