local M = {}

-- Configuration with defaults
local config = {
  variant = 'gray'  -- Default variant: 'gray', 'black', 'dark-blue', or 'dark-gray'
}

function M.setup(opts)
  -- Merge user options with defaults
  if opts then
    config = vim.tbl_extend('force', config, opts)
  end
end

function M.load()
  local colors

  if config.variant == 'black' then
    colors = require('night-wolf.colors-black')
  elseif config.variant == 'dark-blue' then
    colors = require('night-wolf.colors-dark-blue')
  elseif config.variant == 'dark-gray' then
    colors = require('night-wolf.colors-dark-gray')
  else
    colors = require('night-wolf.colors')
  end

  -- Clear existing highlights
  vim.cmd('highlight clear')
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end
  vim.o.background = 'dark'

  local scheme_name = 'night_wolf'

  if config.variant ~= 'gray' then
    local variant_name = config.variant:gsub('-', '_')
    scheme_name = 'night_wolf_' .. variant_name
  end
  vim.g.colors_name = scheme_name

  -- Apply highlights
  M.apply_highlights(colors)
end

function M.apply_highlights(colors)
  local function set_highlight(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Syntax highlighting
  set_highlight('Normal', { fg = colors.text, bg = colors.principal })
  set_highlight('Comment', { fg = colors.comment, italic = true })
  set_highlight('Constant', { fg = colors.syntaxRed })
  set_highlight('String', { fg = colors.string })
  set_highlight('Character', { fg = colors.string })
  set_highlight('Number', { fg = colors.number })
  set_highlight('Boolean', { fg = colors.boolean })
  set_highlight('Float', { fg = colors.number })

  set_highlight('Identifier', { fg = colors.variable })
  set_highlight('Function', { fg = colors.functionName })

  set_highlight('Statement', { fg = colors.contrastText })
  set_highlight('Conditional', { fg = colors.specialWordA })
  set_highlight('Repeat', { fg = colors.specialWordA })
  set_highlight('Label', { fg = colors.specialWordB })
  set_highlight('Operator', { fg = colors.operator })
  set_highlight('Keyword', { fg = colors.specialWordC })
  set_highlight('Exception', { fg = colors.specialWordA })

  set_highlight('PreProc', { fg = colors.specialWordC })
  set_highlight('Include', { fg = colors.specialWordA })
  set_highlight('Define', { fg = colors.specialWordB })
  set_highlight('Macro', { fg = colors.specialWordB })
  set_highlight('PreCondit', { fg = colors.specialWordC })

  set_highlight('Type', { fg = colors.specialWordB })
  set_highlight('StorageClass', { fg = colors.specialWordB })
  set_highlight('Structure', { fg = colors.specialWordC })
  set_highlight('Typedef', { fg = colors.specialWordB })

  set_highlight('Special', { fg = colors.specialWordA })
  set_highlight('SpecialChar', { fg = colors.string })
  set_highlight('Tag', { fg = colors.htmlTag })
  set_highlight('Delimiter', { fg = colors.punctuation })
  set_highlight('SpecialComment', { fg = colors.comment, bold = true, italic = true })
  set_highlight('Debug', { fg = colors.warning })

  set_highlight('Underlined', { fg = colors.syntaxBlue, underline = true })
  set_highlight('Ignore', { fg = colors.comment })
  set_highlight('Error', { fg = colors.white, bg = colors.danger })
  set_highlight('Todo', { fg = colors.black, bg = colors.warning, bold = true })

  -- Editor UI
  set_highlight('ColorColumn', { bg = colors.principal_0 })
  set_highlight('Cursor', { fg = colors.black, bg = colors.text })
  set_highlight('CursorLine', { bg = colors.principal_0 })
  set_highlight('LineNr', { fg = colors.principal_4 })
  set_highlight('CursorLineNr', { fg = colors.text, bg = colors.principal_0 })
  set_highlight('MatchParen', { fg = colors.text, bg = colors.selection_2 })

  set_highlight('StatusLine', { fg = colors.text, bg = colors.principal_1 })
  set_highlight('StatusLineNC', { fg = colors.principal_5, bg = colors.principal_0 })
  set_highlight('VertSplit', { fg = colors.principal_1 })

  set_highlight('Folded', { fg = colors.principal_5, bg = colors.principal_0 })
  set_highlight('FoldColumn', { fg = colors.principal_4, bg = colors.principal })
  set_highlight('SignColumn', { fg = colors.principal_5, bg = colors.principal })

  set_highlight('Visual', { bg = colors.selection_2 })
  set_highlight('VisualNOS', { bg = colors.selection_1 })

  set_highlight('Pmenu', { fg = colors.text, bg = colors.principal_0 })
  set_highlight('PmenuSel', { fg = colors.text, bg = colors.selection_2 })
  set_highlight('PmenuSbar', { bg = colors.principal_1 })
  set_highlight('PmenuThumb', { bg = colors.principal_5 })

  set_highlight('Search', { fg = colors.black, bg = colors.warning })
  set_highlight('IncSearch', { fg = colors.black, bg = colors.warning })
  set_highlight('CurSearch', { fg = colors.black, bg = colors.warningLight })

  set_highlight('Directory', { fg = colors.syntaxBlue })
  set_highlight('Title', { fg = colors.syntaxCyan, bold = true })

  set_highlight('SpellBad', { undercurl = true, sp = colors.danger })
  set_highlight('SpellCap', { undercurl = true, sp = colors.warning })
  set_highlight('SpellRare', { undercurl = true, sp = colors.info })
  set_highlight('SpellLocal', { undercurl = true, sp = colors.success })

  -- Diff highlighting
  set_highlight('DiffAdd', { bg = colors.gitInsertedBg })
  set_highlight('DiffChange', { bg = colors.principal_0 })
  set_highlight('DiffDelete', { bg = colors.gitRemovedBg })
  set_highlight('DiffText', { bg = colors.selection_1 })

  -- Git highlighting
  set_highlight('gitcommitOverflow', { fg = colors.danger })
  set_highlight('gitcommitSummary', { fg = colors.string })
  set_highlight('gitcommitComment', { fg = colors.comment })
  set_highlight('gitcommitUntracked', { fg = colors.comment })
  set_highlight('gitcommitDiscarded', { fg = colors.comment })
  set_highlight('gitcommitSelected', { fg = colors.comment })
  set_highlight('gitcommitHeader', { fg = colors.specialWordC })
  set_highlight('gitcommitSelectedType', { fg = colors.syntaxBlue })
  set_highlight('gitcommitUnmergedType', { fg = colors.syntaxBlue })
  set_highlight('gitcommitDiscardedType', { fg = colors.syntaxBlue })
  set_highlight('gitcommitBranch', { fg = colors.syntaxMagenta, bold = true })
  set_highlight('gitcommitUntrackedFile', { fg = colors.syntaxYellow })
  set_highlight('gitcommitUnmergedFile', { fg = colors.warning, bold = true })
  set_highlight('gitcommitDiscardedFile', { fg = colors.danger, bold = true })
  set_highlight('gitcommitSelectedFile', { fg = colors.string, bold = true })

  -- HTML/XML highlighting
  set_highlight('htmlTag', { fg = colors.htmlTag })
  set_highlight('htmlEndTag', { fg = colors.htmlTag })
  set_highlight('htmlTagName', { fg = colors.htmlTag })
  set_highlight('htmlArg', { fg = colors.tagAttribute })
  set_highlight('htmlSpecialChar', { fg = colors.syntaxOrange })

  -- CSS highlighting
  set_highlight('cssURL', { fg = colors.string, italic = true })
  set_highlight('cssFunctionName', { fg = colors.functionName })
  set_highlight('cssColor', { fg = colors.number })
  set_highlight('cssPseudoClassId', { fg = colors.cssPseudoClass })
  set_highlight('cssClassName', { fg = colors.cssClass })
  set_highlight('cssValueLength', { fg = colors.cssUnits })
  set_highlight('cssCommonAttr', { fg = colors.cssAttribute })
  set_highlight('cssBraces', { fg = colors.punctuation })
  set_highlight('cssIdentifier', { fg = colors.cssId })

  -- JavaScript/TypeScript highlighting
  set_highlight('jsFunction', { fg = colors.specialWordA })
  set_highlight('jsFuncName', { fg = colors.functionName })
  set_highlight('jsFuncCall', { fg = colors.functionName })
  set_highlight('jsThis', { fg = colors.variableInstance })
  set_highlight('jsVariableDef', { fg = colors.variable })
  set_highlight('jsGlobalObjects', { fg = colors.specialWordB })
  set_highlight('jsOperator', { fg = colors.operator })
  set_highlight('jsStorageClass', { fg = colors.specialWordA })

  set_highlight('typescriptBraces', { fg = colors.punctuation })
  set_highlight('typescriptParens', { fg = colors.punctuation })
  set_highlight('typescriptEndColons', { fg = colors.punctuation })
  set_highlight('typescriptOperator', { fg = colors.operator })
  set_highlight('typescriptKeywordOp', { fg = colors.operator })

  -- JSON highlighting
  set_highlight('jsonBraces', { fg = colors.punctuation })
  set_highlight('jsonKeyword', { fg = colors.variable })
  set_highlight('jsonString', { fg = colors.string })
  set_highlight('jsonNumber', { fg = colors.number })
  set_highlight('jsonBoolean', { fg = colors.boolean })
  set_highlight('jsonNull', { fg = colors.nullUnd })

  -- Python highlighting
  set_highlight('pythonOperator', { fg = colors.specialWordA })
  set_highlight('pythonRepeat', { fg = colors.specialWordA })
  set_highlight('pythonInclude', { fg = colors.specialWordA })
  set_highlight('pythonStatement', { fg = colors.specialWordA })
  set_highlight('pythonBuiltin', { fg = colors.specialWordB })

  -- Additional common highlight groups
  set_highlight('NonText', { fg = colors.principal_3 })
  set_highlight('SpecialKey', { fg = colors.principal_4 })
  set_highlight('ErrorMsg', { fg = colors.danger, bold = true })
  set_highlight('WarningMsg', { fg = colors.warning, bold = true })
  set_highlight('MoreMsg', { fg = colors.success, bold = true })
  set_highlight('Question', { fg = colors.info, bold = true })

  -- Treesitter highlighting
  if vim.fn.has('nvim-0.8') == 1 then
    -- Basic groups
    set_highlight('@comment', { link = 'Comment' })
    set_highlight('@error', { link = 'Error' })
    set_highlight('@none', {})
    set_highlight('@preproc', { link = 'PreProc' })
    set_highlight('@define', { link = 'Define' })
    set_highlight('@operator', { link = 'Operator' })

    -- Punctuation
    set_highlight('@punctuation.delimiter', { fg = colors.punctuation })
    set_highlight('@punctuation.bracket', { fg = colors.punctuation })
    set_highlight('@punctuation.special', { fg = colors.punctuation })

    -- Literals
    set_highlight('@string', { link = 'String' })
    set_highlight('@string.regex', { fg = colors.string, italic = true })
    set_highlight('@string.escape', { fg = colors.specialWordB })
    set_highlight('@string.special', { fg = colors.string, italic = true })

    set_highlight('@character', { link = 'Character' })
    set_highlight('@character.special', { fg = colors.string, bold = true })

    set_highlight('@boolean', { link = 'Boolean' })
    set_highlight('@number', { link = 'Number' })
    set_highlight('@float', { link = 'Float' })

    -- Functions
    set_highlight('@function', { link = 'Function' })
    set_highlight('@function.call', { fg = colors.functionName })
    set_highlight('@function.builtin', { fg = colors.functionName, italic = true })
    set_highlight('@function.macro', { fg = colors.functionName, bold = true })

    set_highlight('@method', { link = 'Function' })
    set_highlight('@method.call', { fg = colors.functionName })

    set_highlight('@constructor', { fg = colors.specialWordC })
    set_highlight('@parameter', { fg = colors.variable, italic = true })

    -- Keywords
    set_highlight('@keyword', { link = 'Keyword' })
    set_highlight('@keyword.function', { fg = colors.specialWordA })
    set_highlight('@keyword.operator', { fg = colors.operator })
    set_highlight('@keyword.return', { fg = colors.specialWordA, italic = true })

    set_highlight('@conditional', { link = 'Conditional' })
    set_highlight('@repeat', { link = 'Repeat' })
    set_highlight('@label', { link = 'Label' })
    set_highlight('@include', { link = 'Include' })
    set_highlight('@exception', { link = 'Exception' })

    -- Types
    set_highlight('@type', { link = 'Type' })
    set_highlight('@type.builtin', { fg = colors.specialWordB, italic = true })
    set_highlight('@type.qualifier', { fg = colors.specialWordA })
    set_highlight('@type.definition', { fg = colors.specialWordB })

    set_highlight('@storageclass', { link = 'StorageClass' })
    set_highlight('@attribute', { fg = colors.specialWordB })
    set_highlight('@field', { fg = colors.variableProperty })
    set_highlight('@property', { fg = colors.variableProperty })

    -- Identifiers
    set_highlight('@variable', { fg = colors.variable })
    set_highlight('@variable.builtin', { fg = colors.variableInstance })

    set_highlight('@constant', { link = 'Constant' })
    set_highlight('@constant.builtin', { fg = colors.contrastText })
    set_highlight('@constant.macro', { fg = colors.contrastText, bold = true })

    set_highlight('@namespace', { fg = colors.specialWordC, italic = true })
    set_highlight('@symbol', { fg = colors.syntaxViolet })

    -- Text
    set_highlight('@text', { fg = colors.text })
    set_highlight('@text.strong', { fg = colors.text, bold = true })
    set_highlight('@text.emphasis', { fg = colors.text, italic = true })
    set_highlight('@text.underline', { fg = colors.text, underline = true })
    set_highlight('@text.strike', { fg = colors.text, strikethrough = true })
    set_highlight('@text.title', { fg = colors.syntaxCyan, bold = true })
    set_highlight('@text.literal', { fg = colors.string })
    set_highlight('@text.uri', { fg = colors.string, underline = true })

    set_highlight('@text.todo', { link = 'Todo' })
    set_highlight('@text.note', { fg = colors.black, bg = colors.info })
    set_highlight('@text.warning', { fg = colors.black, bg = colors.warning })
    set_highlight('@text.danger', { fg = colors.white, bg = colors.danger })

    -- Tags
    set_highlight('@tag', { link = 'Tag' })
    set_highlight('@tag.attribute', { fg = colors.tagAttribute })
    set_highlight('@tag.delimiter', { fg = colors.punctuation })
  end

  -- LSP Semantic tokens
  if vim.fn.has('nvim-0.9') == 1 then
    set_highlight('@lsp.type.namespace', { link = '@namespace' })
    set_highlight('@lsp.type.type', { link = '@type' })
    set_highlight('@lsp.type.class', { link = '@type' })
    set_highlight('@lsp.type.enum', { link = '@type' })
    set_highlight('@lsp.type.interface', { link = '@type' })
    set_highlight('@lsp.type.struct', { link = '@structure' })
    set_highlight('@lsp.type.parameter', { link = '@parameter' })
    set_highlight('@lsp.type.variable', { link = '@variable' })
    set_highlight('@lsp.type.property', { link = '@property' })
    set_highlight('@lsp.type.enumMember', { link = '@constant' })
    set_highlight('@lsp.type.function', { link = '@function' })
    set_highlight('@lsp.type.method', { link = '@method' })
    set_highlight('@lsp.type.macro', { link = '@macro' })
    set_highlight('@lsp.type.keyword', { link = '@keyword' })
    set_highlight('@lsp.type.comment', { link = '@comment' })
    set_highlight('@lsp.type.string', { link = '@string' })
    set_highlight('@lsp.type.number', { link = '@number' })
    set_highlight('@lsp.type.regexp', { link = '@string.regex' })
    set_highlight('@lsp.type.operator', { link = '@operator' })
    set_highlight('@lsp.type.decorator', { link = '@attribute' })
    set_highlight('@lsp.mod.deprecated', { link = '@deprecated' })
    set_highlight('@lsp.mod.readonly', { italic = true })
  end

  -- NeoTree
  set_highlight('NeoTreeNormal', { fg = colors.text, bg = colors.principal })
  set_highlight('NeoTreeNormalNC', { fg = colors.text, bg = colors.principal })
  set_highlight('NeoTreeDimText', { fg = colors.principal_4 })
  set_highlight('NeoTreeRootName', { fg = colors.syntaxCyan, bold = true })
  set_highlight('NeoTreeDirectoryName', { fg = colors.syntaxBlue })
  set_highlight('NeoTreeFileName', { fg = colors.text })
  set_highlight('NeoTreeFileNameOpened', { fg = colors.text, bold = true })
  set_highlight('NeoTreeIndentMarker', { fg = colors.principal_3 })
  set_highlight('NeoTreeGitAdded', { fg = colors.success })
  set_highlight('NeoTreeGitModified', { fg = colors.warning })
  set_highlight('NeoTreeGitDeleted', { fg = colors.danger })

  -- Illuminate
  set_highlight('IlluminatedWordText', { bg = colors.selection_0 })
  set_highlight('IlluminatedWordRead', { bg = colors.selection_0 })
  set_highlight('IlluminatedWordWrite', { bg = colors.selection_0 })
end

-- Initialize with default settings
M.setup()

return M
