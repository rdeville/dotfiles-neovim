-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Hide deprecation warnings
vim.g.deprecation_warnings = true

local opt = vim.opt
--[[
# DESCRIPTION

Set the main VIM and NeoVim variables optained from command ':options'.
Not every variables configuration are set in this file. Variable which use the
default value and which are dangerous to modify or which can be breaken if
set.

For instance, see variable `keywordrg` which define the program used for the
`k` command, i.e. show help. When using command `:options`, its shown to be
set to `man`, but if following line is present in the file, then help can only
be shown for command which have a man page, leading to not showing help for
vim command in vimscript for instance.
--]]

-- # GENERAL VIM OPTIONS
-- ## IMPORTANT
-- Behave very Vi compatible (not advisable)
opt.compatible = false
--[[
List of flags to specify Vi compatibility:
* `a`: When included, a `:read` command with a file name argument will set
       the alternate file name for the current window.
* `A`: When included, a `:write` command with a file name argument will set
       the alternate file name for the current window.
* `B`: A backslash has no special meaning in mappings, abbreviations and the
       `to` part of the menu commands. Remove this flag to be able to use a
       backslash like a CTRL-V.
* `c`: Searching continues at the end of any match at the cursor position,
       but not further than the start of the next line.  When not present
       searching continues one character from the cursor position.  With 'c'
       `abababababab` only gets three matches when repeating `/abab",
       without 'c' there are five matches.
* `e`: When executing a register with `:@r", always add a <CR> to the last
       line, also when the register is not linewise.  If this flag is not
       present, the register is not linewise and the last line does not end
       in a <CR>, then the last line is put on the command-line and can be
       edited before hitting <CR>.
* `F`: When included, a `:write` command with a file name argument will set
       the file name for the current buffer, if the current buffer doesn't
       have a file name yet.
* `s`: Set buffer options when entering the buffer for the first time.  This
       is like it is in Vim version 3.0. And it is the default.  If not
       present the options are set when the buffer is created.
--]]
opt.cpoptions = "aABceFs"
-- Use Insert mode as the default mode
opt.insertmode = false
-- Paste mode, insert typed text literally
opt.paste = false
-- Key sequence to toggle paste mode
opt.pastetoggle = "<F2>"
--[[
## MOVING AROUND, SEARCHING AND PATTERNS
List of flags specifying which commands wrap to another line (local to window):

| Char | Key       | Mode                                |
| :-   | :-        | :-                                  |
| `b`  | `<BS>`    | Normal and Visual                   |
| `s`  | `<Space>` | Normal and Visual                   |
| `h`  | `"h"`     | Normal and Visual (not recommended) |
| `l`  | `"l"`     | Normal and Visual (not recommended) |
| `<`  | `<Left>`  | Normal and Visual                   |
| `>`  | `<Right>` | Normal and Visual                   |
| `~`  | `"~"`     | Normal                              |
| `[`  | `<Left>`  | Insert and Replace                  |
| `]`  | `<Right>` | Insert and Replace                  |
--]]
opt.whichwrap = "b,s,h,l,<,>,[,],~"
-- Many jump commands move the cursor to the first non-blank character of a line
opt.startofline = true
-- Change to directory of file in buffer
opt.autochdir = false
-- Show match for partly typed search command
opt.incsearch = true
-- Change the way backslashes are used in search patterns
opt.magic = true
-- Select the default regexp engine used
--  * `0` : Automatic selection
--  * `1` : Old engine
--  * `2` : NFA engine
opt.regexpengine = 0
-- Ignore case when using a search pattern
opt.ignorecase = true
-- Override 'ignorecase' when pattern has upper case characters
opt.smartcase = true
-- What method to use for changing case of letters
opt.casemap = "internal,keepascii"
-- Maximum amount of memory in Kbyte used for pattern matching
opt.maxmempattern = 100000
-- Pattern for a macro definition line (global or local to buffer)
-- Pattern for C++ program
opt.define = "^(#s*define|[a-z]*s*consts*[a-z]*)"
-- Pattern for an include-file line (local to buffer)
-- Pattern for C++ program
opt.include = "^\\s*#\\s*include"

-- ## DISPLAYING TEXT
-- Number of lines to scroll for CTRL-U and CTRL-D (local to window)
opt.scroll = 15
-- `scrolloff` number of screen lines to show around the cursor
-- Set to 999 to put cursor in middle of screen when using CTRL-U and CTRL-D
opt.scrolloff = 999
-- Long lines wrap
opt.wrap = false
-- Wrap long lines at a character in 'breakat' (local to window)
opt.linebreak = false
--  Preserve indentation in wrapped text (local to window)
opt.breakindent = true
--  Adjust breakindent behaviour (local to window)
opt.breakindentopt = "min:20,shift:0"
--  Which characters might cause a line break
opt.breakat = "^I!*-+;:,./?\\"
-- tring to put before wrapped screen lines
opt.showbreak = ">>"
-- Minimal number of columns to scroll horizontally
opt.sidescroll = 0
--  `sidescrolloff` minimal number of columns to keep left and right of the cursor
opt.sidescrolloff = 25
-- Include `lastline` to show the last line even if it doesn't fit
-- Include `uhex` to show unprintable characters as a hex number
opt.display = "lastline"
-- Characters to use for the status line, folds and filler lines
opt.fillchars =
  "stl: ,stlnc: ,vert:│,fold:─,foldopen:,foldclose:,diff:x,foldsep:│"
-- Number of lines used for the command-line
opt.cmdheight = 1
-- Number of lines to scroll for CTRL-F and CTRL-B
opt.window = 52
-- Don't redraw while executing macros
opt.lazyredraw = false
-- Timeout for 'hlsearch' and :match highlighting in msec
opt.redrawtime = 1000
-- Delay in msec for each char written to the display (for debugging)
opt.writedelay = 0
-- Show <Tab> as ^I and end-of-line as $ (local to window)
opt.list = true
-- List of strings used for list mode
opt.listchars =
  "eol:𝅍,tab:˾ ,extends:→,precedes:←,space: ,trail:×,nbsp:·"

-- Show the line number for each line (local to window)
opt.number = true
-- Show the relative line number for each line (local to window)
opt.relativenumber = true
-- Number of columns to use for the line number (local to window)
--opt.numberwidth = 2
opt.numberwidth = 1
-- Controls whether concealable text is hidden (local to window)
opt.conceallevel = 0
-- Modes in which text in the cursor line can be concealed (local to window)
opt.concealcursor = ""

-- ## SYNTAX, HIGHLIGHTING AND SPELLING
-- `dark` or `light`; the background color brightness
opt.background = "dark"
-- Change color scheme
--  colorscheme material-dark
-- Maximum column to look for syntax items (local to buffer)
opt.synmaxcol = 0
-- Highlight all matches for the last used search pattern
opt.hlsearch = true
-- Use GUI colors for the terminal
opt.termguicolors = true
-- Highlight the screen column of the cursor (local to window)
opt.cursorcolumn = false
-- Highlight the screen line of the cursor (local to window)
opt.cursorline = true
-- Columns to highlight (local to window)
opt.colorcolumn = "+1"
-- Put vertical column at 81 char, 121 char at 161 char and 201 char
opt.colorcolumn = "81,121,161,201"
-- Highlight spelling mistakes (local to window)
opt.spell = false
-- `spelllang` list of accepted languages (local to buffer)
opt.spelllang = "en_us,fr"
-- `spellfile` file that `zg` adds good words to (local to buffer)
-- opt.spellfile=
-- `spellsuggest` methods used to suggest corrections
opt.spellsuggest = "best"
-- `mkspellmem` amount of memory used by :mkspell before compressing
opt.mkspellmem = "460000,2000,500"

-- ## MULTIPLE WINDOWS
-- 0, 1 or 2; when to use a status line for the last window
opt.laststatus = 3
-- Make all windows the same size when adding/removing windows
opt.equalalways = false
-- In which direction 'noequalalways' works: `ver`, `hor` or `both`
opt.eadirection = "both"
-- Keep the height of the window (local to window)
opt.winfixheight = false
-- Minimal number of lines used for the current window
opt.winheight = 1
-- Minimal number of lines used for any window
opt.winminheight = 1
-- Keep the width of the window (local to window)
opt.winfixwidth = false
-- Minimal number of columns used for the current window
opt.winwidth = 85
-- Minimal number of columns used for any window
opt.winminwidth = 15
-- Initial height of the help window
opt.helpheight = 25
-- Default height for the preview window
opt.previewheight = 15
-- Identifies the preview window (local to window)
opt.previewwindow = false
-- Don't unload a buffer when no longer shown in a window
opt.hidden = false
-- `useopen` and/or `split`; which window to use when jumping to a buffer
opt.switchbuf = "useopen,usetab,newtab"
-- A new window is put below the current one
opt.splitbelow = true
-- A new window is put right of the current one
opt.splitright = true
-- This window scrolls together with other bound windows (local to window)
opt.scrollbind = false
-- `ver`, `hor` and/or `jump`; list of options for 'scrollbind'
opt.scrollopt = "ver,jump"
-- This window's cursor moves together with other bound windows (local to window)
opt.cursorbind = false

-- ## MULTIPLE TAB PAGES
-- 0, 1 or 2; when to use a tab pages line
opt.showtabline = 2
-- Maximum number of tab pages to open for -p and `tab all`
opt.tabpagemax = 50

-- ## TERMINAL
-- Check built-in termcaps first
--  if !has('nvim')
--    set ttybuiltin
--  endif
-- Terminal connection is fast
opt.ttyfast = true
-- Minimal number of lines to scroll at a time
opt.scrolljump = 1
-- Show info in the window title
-- opt.title
-- Percentage of 'columns' used for the window title
opt.titlelen = 85
-- When not empty, string to be used for the window title
opt.titlestring =
  "%{v:progname}[%{tolower(empty(v:servername)?'':v:servername)}]- %t %m (%{expand('%:p:h')})"
-- String to restore the title to when exiting Vim
opt.titleold = "Thanks for flying Vim"
-- Set the text of the icon for this window
-- opt.icon
-- When not empty, text for the icon of this window
opt.iconstring = "NeoVim"

-- ## USING THE MOUSE
-- List of flags for using the mouse
opt.mouse = ""
-- Hide the mouse when typing
opt.mousehide = true
-- `extend`, `popup` or `popup_setpos`; what the right mouse button is used for
opt.mousemodel = "popup"
-- Maximum time in msec to recognize a double-click
opt.mousetime = 500

-- " ## PRINTING
--     " List of items that control the format of :hardcopy output
--   set printoptions=paper:a4
--     " Name of the printer to be used for :hardcopy
--   set printdevice=
--     " Expression used to print the PostScript file for :hardcopy
--   set printexpr=system('lpr'\ .\ (&printdevice\ ==\ ''\ ?\ ''\ :\ '\ -P'\ .\ &printdevice)\ .\ '\ '\ .\ v:fname_in)\ .\ delete(v:fname_in)\ +\ v:shell_error
--     " Name of the font to be used for :hardcopy
--   set printfont=FuraCode\ Nerd\ Font
--     " Format of the header used for :hardcopy
--   set printheader=%<%f%h%m%=Page\ %N
--     " Encoding used to print the PostScript file for :hardcopy
--   set printencoding=utf-8
--     " The CJK character set to be used for CJK output from :hardcopy
--   set printmbcharset=
--     " List of font names to be used for CJK output from :hardcopy
--   set printmbfont=

-- ## MESSAGES AND INFO
-- Add 's' flag in 'shortmess' (don't show search message)
opt.terse = false
-- List of flags to make messages shorter:
--    "
-- | flag | meaning when present                                                                                                                                                |
-- | :-   | :-                                                                                                                                                                  |
-- | `f`  | use `(3 of 5)` instead of `(file 3 of 5)`                                                                                                                           |
-- | `i`  | use `[noeol]` instead of `[Incomplete last line]`                                                                                                                   |
-- | `l`  | use `999L, 888C` instead of `999 lines, 888 characters`                                                                                                             |
-- | `m`  | use `[+]` instead of `[Modified]`                                                                                                                                   |
-- | `n`  | use `[New]` instead of `[New File]`                                                                                                                                 |
-- | `r`  | use `[RO]` instead of `[readonly]`                                                                                                                                  |
-- | `w`  | use `[w]` instead of `written` for file write message and `[a]` instead of `appended` for ':w >> file' command                                                      |
-- | `x`  | use `[dos]` instead of `[dos format]`, `[unix]` instead of `[unix format]` and `[mac]` instead of `[mac format]`.                                                   |
-- | `a`  | all of the above abbreviations                                                                                                                                      |
-- | `o`  | overwrite message for writing a file with subsequent message for reading a file (useful for `:wn` or when 'autowrite' on)                                           |
-- | `O`  | message for reading a file overwrites any previous message.  Also for quickfix message (e.g., `:cn`).                                                               |
-- | `s`  | don't give `search hit BOTTOM, continuing at TOP` or `search hit TOP, continuing at BOTTOM` messages                                                                |
-- | `t`  | truncate file message at the start if it is too long to fit on the command-line, `<` will appear in the left most column. Ignored in Ex mode.                       |
-- | `T`  | truncate other messages in the middle if they are too long to fit on the command line.  `...` will appear in the middle. Ignored in Ex mode.                        |
-- | `W`  | don't give `written` or `[w]` when writing a file                                                                                                                   |
-- | `A`  | don't give the `ATTENTION` message when an existing swap file is found.                                                                                             |
-- | `I`  | don't give the intro message when starting Vim `:intro`.                                                                                                            |
-- | `c`  | don't give `ins-completion-menu` messages.  For example, `-- XXX completion (YYY)`, `match 1 of 2`, `The only match`, `Pattern not found`, `Back at original`, etc. |
-- | `q`  | use `recording` instead of `recording @a`                                                                                                                           |
-- | `F`  | don't give the file info when editing a file, like `:silent` was used for the command                                                                               |
opt.shortmess = "atToO"
-- Show (partial) command keys in the status line
opt.showcmd = true
-- Display the current mode in the status line
opt.showmode = true
-- Show cursor position below each window
opt.ruler = true
-- Alternate format to be used for the ruler
-- opt.rulerformat=
-- Threshold for reporting number of changed lines
opt.report = 2
-- The higher the more messages are given
opt.verbose = 0
-- Pause listings when the screen is full
opt.more = true
-- Start a dialog when a command fails
opt.confirm = true
-- Ring the bell for error messages
opt.errorbells = false
-- Use a visual bell instead of beeping
opt.visualbell = true
-- Do not ring the bell for these reasons
opt.belloff = ""
-- List of preferred languages for finding help
opt.helplang = "en,fr"

-- ## SELECTING TEXT
-- `old`, `inclusive` or `exclusive`; how selecting text behaves
opt.selection = "exclusive"
-- `mouse`, `key` and/or `cmd`; when to start Select mode instead of Visual mode
opt.selectmode = ""
-- `startsel` and/or `stopsel`; what special keys can do
-- opt.keymodel=

-- ## EDITING TEXT
-- Maximum number of changes that can be undone (global or local to buffer)
opt.undolevels = 1000
-- Automatically save and restore undo history
opt.undofile = false
-- List of directories for undo files
-- exec   "set undodir=" . new_rtp .   "/.undo,/tmp/"
-- Maximum number lines to save for undo on a buffer reload
opt.undoreload = 10000
-- Changes have been made and not written to a file (local to buffer)
opt.modified = false
-- Buffer is not to be written (local to buffer)
opt.readonly = false
-- Changes to the text are not possible (local to buffer)
opt.modifiable = true
-- Line length above which to break a line (local to buffer)
opt.textwidth = 80
-- Margin from the right in which to break a line (local to buffer)
opt.wrapmargin = 80
-- Specifies what <BS>, CTRL-W, etc. can do in Insert mode
opt.backspace = "eol,start,indent"
-- Definition of what comment lines look like (local to buffer)
opt.com = 'sO:" -,mO:"  ,eO:"",:"'
-- List of flags that tell how automatic formatting works (local to buffer)
--    "atcroql2
opt.formatoptions = "tcroqlj"
-- Pattern to recognize a numbered list (local to buffer)
-- opt.formatlistpat="^\\s*\\d\\+[\\]:.)}\t ]\s*"
-- Expression used for `gq` to format lines (local to buffer)
-- opt.formatexpr=
-- Specifies how Insert mode completion works for CTRL-N and CTRL-P
-- (local to buffer)
opt.complete = ".,w,b,u,U,t,i,k"
-- Whether to use a popup menu for Insert mode completion
opt.completeopt = "menuone,preview,noinsert,noselect"
-- Maximum height of the popup menu
opt.pumheight = 0
-- User defined function for Insert mode completion (local to buffer)
-- opt.completefunc=
-- List of dictionary files for keyword completion (global or local to buffer)
opt.dictionary = "en_us,fr_fr"
-- list of thesaurus files for keyword completion (global or local to buffer)
-- opt.thesaurus=
-- Adjust case of a keyword completion match (local to buffer)
opt.infercase = false
-- Enable entering digraphs with c1 <BS> c2
opt.digraph = false
-- The `~` command behaves like an operator
opt.tildeop = false
-- Function called for the `g@`  operator
-- opt.operatorfunc=
-- When inserting a bracket, briefly jump to its match
opt.showmatch = true
-- Tenth of a second to show a match for 'showmatch'
opt.matchtime = 10
-- List of pairs that match for the `%` command (local to buffer)
opt.matchpairs = "(:),{:},[:],<:>"
-- Use two spaces after '.' when joining a line
opt.joinspaces = false
-- `alpha`, `octal` and/or `hex`; number formats recognized for CTRL-A and CTRL-X
-- Commands (local to buffer)
opt.nrformats = "bin,octal,hex,alpha"

-- ## TABS AND INDENTING
-- Number of spaces a <Tab> in the text stands for (local to buffer)
opt.tabstop = 2
-- Number of spaces used for each step of (auto)indent (local to buffer)
opt.shiftwidth = 2
-- When shifting lines, round the indentation to the nearest multiple of
-- “shiftwidth.”
opt.shiftround = true
-- A <Tab> in an indent inserts 'shiftwidth' spaces
opt.smarttab = true
-- If non-zero, number of spaces to insert for a <Tab> (local to buffer)
opt.softtabstop = 0
-- Expand <Tab> to spaces in Insert mode (local to buffer)
opt.expandtab = true
-- Automatically set the indent of a new line (local to buffer)
opt.autoindent = true
-- Do clever autoindenting (local to buffer)
opt.smartindent = true
-- Enable specific indenting for C code (local to buffer)
opt.cindent = false
-- Options for C-indenting (local to buffer)
-- opt.cinoptions=
-- Keys that trigger C-indenting in Insert mode (local to buffer)
opt.cinkeys = "0{,0},0),:,0#,!^F,o,O,e"
-- List of words that cause more C-indent (local to buffer)
opt.cinw = "if,else,while,do,for,switch"
-- Expression used to obtain the indent of a line (local to buffer)
opt.indentexpr = "GetVimIndent()"
-- Keys that trigger indenting with 'indentexpr' in Insert mode (local to buffer)
opt.indentkeys = "0{,0},:,0#,!^F,o,O,e"
-- Copy whitespace for indenting from previous line (local to buffer)
opt.copyindent = true
-- Preserve kind of whitespace when changing indent (local to buffer)
opt.preserveindent = true
-- Enable lisp mode (local to buffer)
opt.lisp = false

-- ## FOLDING
-- Set to display all folds open (local to window)
opt.foldenable = true
-- Folds with a level higher than this number will be closed (local to window)
-- opt.foldlevel = 10
-- Value for 'foldlevel' when starting to edit a file
--opt.foldlevelstart = -1
-- Width of the column used to indicate folds (local to window)
opt.foldcolumn = "1"
-- Expression used to display the text of a closed fold (local to window)
opt.foldtext = "foldtext()"
-- Set to `all` to close a fold when the cursor leaves it
opt.foldclose = "all"
-- Specifies for which commands a fold will be opened
opt.foldopen = "block,hor,mark,percent,quickfix,search,tag,undo"
-- Minimum number of screen lines for a fold to be closed (local to window)
opt.foldminlines = 0
-- Template for comments; used to put the marker in
opt.commentstring = "/*%s*/"
-- Folding type: `manual`, `indent`, `expr`, `marker` or `syntax`
-- (local to window)
opt.foldmethod = "indent"
-- Expression used when 'foldmethod' is `expr` (local to window)
opt.foldexpr = "0"
-- Used to ignore lines when 'foldmethod' is `indent` (local to window)
opt.foldignore = ""
-- Markers used when 'foldmethod' is `marker` (local to window)
opt.foldmarker = "[[[,]]]"
-- Maximum fold depth for when 'foldmethod' is `indent` or `syntax`
-- (local to window)
opt.foldnestmax = 10

-- ## DIFF MODE
-- Use diff mode for the current window (local to window)
opt.diff = false
-- Options for using diff mode
opt.diffopt = "filler,vertical"
-- Expression used to obtain a diff file
opt.diffexpr = ""
-- Expression used to patch a file
opt.patchexpr = ""

-- ## MAPPING
-- Maximum depth of mapping
opt.maxmapdepth = 1000
-- Recognize mappings in mapped keys
opt.remap = true
-- Allow timing out halfway into a mapping
opt.timeout = true
-- Allow timing out halfway into a key code
opt.ttimeout = true
-- Time in msec for 'timeout'
opt.timeoutlen = 1000
-- Time in msec for 'ttimeout'
opt.ttimeoutlen = -1

-- ## READING AND WRITING FILES
-- Enable using settings from modelines when reading a file (local to buffer)
opt.modeline = true
-- Number of lines to check for modelines
opt.modelines = 5
-- Binary file editing (local to buffer)
opt.binary = false
-- Last line in the file has an end-of-line (local to buffer)
opt.endofline = true
-- Fixes missing end-of-line at end of text file (local to buffer)
opt.fixendofline = true
-- Prepend a Byte Order Mark to the file (local to buffer)
opt.bomb = false
-- End-of-line format: `dos`, `unix` or `mac` (local to buffer)
opt.fileformat = "unix"
-- List of file formats to look for when editing a file
opt.fileformats = "unix,dos,mac"
-- Writing files is allowed
opt.write = true
-- Write a backup file before overwriting a file
opt.writebackup = true
-- Keep a backup after overwriting a file
opt.backup = false
-- Patterns that specify for which files a backup is not made
opt.backupskip = "/tmp/*"
-- Whether to make the backup as a copy or rename the existing file
-- (global or local to buffer)
opt.backupcopy = "auto"
-- List of directories to put backup files in
opt.backupdir = os.getenv("HOME") .. "/.cache/neovim/backups/"
-- File name extension for the backup file
opt.backupext = ".bak"
-- Automatically write a file when leaving a modified buffer
opt.autowrite = false
-- As 'autowrite', but works with more commands
opt.autowriteall = false
-- Always write without asking for confirmation
opt.writeany = false
-- Automatically read a file when it was modified outside of Vim
-- (global or local to buffer)
opt.autoread = true
-- Keep oldest version of a file; specifies file name extension
opt.patchmode = ""
-- Forcibly sync the file to disk after writing it
opt.fsync = true

-- ## THE SWAP FILE
-- List of directories for the swap file
opt.directory = os.getenv("HOME") .. "/.cache/nevomvim/swapfiles/,/tmp/"
-- Use a swap file for this buffer (local to buffer)
opt.swapfile = true
-- Number of characters typed to cause a swap file update
opt.updatecount = 200
-- Time in msec after which the swap file will be updated
opt.updatetime = 5000

-- ## COMMAND LINE EDITING
-- How many command lines are remembered
opt.history = 10000
-- Key that triggers command-line expansion
opt.wildchar = 9
-- Like 'wildchar' but can also be used in a mapping
opt.wildcharm = 0
-- Specifies how command line completion works
opt.wildmode = "full"
-- List of file name extensions that have a lower priority
opt.suffixes =
  ".bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.obj"
-- List of file name extensions added when searching for a file (local to buffer)
opt.suffixesadd = ""
-- List of patterns to ignore files for file name completion
opt.wildignore = "*.o,*~,*.pyc,*.aux,*.sw*"
-- Ignore case when using file names
opt.fileignorecase = true
-- Ignore case when completing file names
opt.wildignorecase = true
-- Command-line completion shows a list of matches
opt.wildmenu = true
-- Height of the command-line window
opt.cmdwinheight = 10

-- ## EXECUTING EXTERNAL COMMANDS
-- Character(s) to enclose a shell command in
opt.shellquote = ""
-- Like 'shellquote' but include the redirection
opt.shellxquote = ""
-- Characters to escape when 'shellxquote' is (
opt.shellxescape = ""
-- Argument for 'shell' to execute a command
opt.shellcmdflag = "-c"
-- Used to redirect command output to a file
opt.shellredir = ">%s 2>&1"
-- Use a temp file for shell commands instead of using a pipe
opt.shelltemp = true
-- Program used for `=` command (global or local to buffer)
opt.equalprg = ""
-- Program used to format lines with `gq` command
opt.formatprg = ""
-- Warn when using a shell command and a buffer has changes
opt.warn = true

-- ## RUNNING MAKE AND JUMPING TO ERRORS
-- Name of the file that contains error messages
opt.errorfile = "errors.err"
-- Program used for the `:make` command (global or local to buffer)
opt.makeprg = "make"
-- String used to put the output of `:make` in the error file
opt.shellpipe = "2>&1| tee"

-- ## LANGUAGE SPECIFIC
-- Specifies the characters in a file name
opt.isfname = "@,48-57,/,.,-,_,+,,,#,$,%,~,="
-- Specifies the characters in an identifier
opt.isident = "@,48-57,_,192-255"
-- Specifies the characters in a keyword (local to buffer)
opt.iskeyword = "@,48-57,_,192-255,#"
-- Specifies printable characters
opt.isprint = "@,161-255"
-- Specifies escape characters in a string (local to buffer)
opt.quoteescape = "\\"
-- Display the buffer right-to-left (local to window)
opt.rightleft = false
-- When to edit the command-line right-to-left (local to window)
opt.rightleftcmd = "search"
-- Insert characters backwards
opt.revins = false
-- Allow CTRL-_ in Insert and Command-line mode to toggle 'revins'
opt.allowrevins = false
-- The ASCII code for the first letter of the Hebrew alphabet
opt.aleph = 224
-- Use Hebrew keyboard mapping
opt.hkmap = false
-- Use phonetic Hebrew keyboard mapping
opt.hkmapp = false
-- Prepare for editing Arabic text (local to window)
opt.arabic = false
-- Perform shaping of Arabic characters
opt.arabicshape = false
-- Terminal will perform bidi handling
opt.termbidi = false
-- Name of a keyboard mapping
opt.keymap = ""
-- List of characters that are translated in Normal mode
opt.langmap = ""
-- Apply 'langmap' to mapped characters
opt.langremap = true
-- In Insert mode (local to window) :
-- * 1: use :lmap;
-- * 2: use IM;
-- * 0: neither
opt.iminsert = 0
-- Entering a search pattern: 1: use :lmap; 2: use IM; 0: neither
-- (local to window)
opt.imsearch = -1

-- ## MULTI-BYTE CHARACTERS
-- Character encoding used in Vim: `latin1`, `utf-8` `euc-jp`, `big5`, etc.
opt.encoding = "utf-8"
-- Character encoding for the current file (local to buffer)
opt.fileencoding = "utf-8"
-- Automatically detected character encodings
opt.fileencodings = "utf-8,default,latin1"
-- Character encoding used by the terminal
opt.termencoding = "utf-8"
-- Expression used for character encoding conversion
opt.charconvert = ""
-- Delete combining (composing) characters on their own
opt.delcombine = false
-- Maximum number of combining (composing) characters displayed
opt.maxcombine = 2
-- Width of ambiguous width characters
opt.ambiwidth = "single"
-- Emoji characters are full width
opt.emoji = true

-- ## VARIOUS
-- When to use virtual editing: `block`, `insert` and/or `all`
opt.virtualedit = "block"
-- List of autocommand events which are to be ignored
opt.eventignore = ""
-- Load plugin scripts when starting up
opt.loadplugins = true
-- Enable reading .vim/.exrc/.gvimrc in the current directory
opt.exrc = false
-- Safer working with script files in the current directory
opt.secure = false
-- Use the `g` flag for `:substitute`
opt.gdefault = false
-- `g` and `c` flags of `:substitute` toggle
opt.edcompatible = false
-- Maximum depth of function calls
opt.maxfuncdepth = 100
-- List of words that specifies what to put in a session file
-- stylua: ignore start
opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
-- stylua: ignore end
-- List of words that specifies what to save for :mkview
opt.viewoptions = "folds,options,cursor,curdir"
-- File name used for the viminfo file
opt.viminfofile = ""
-- What happens with a buffer when it's no longer in a window (local to buffer)
opt.bufhidden = ""
-- ``, `nofile`, `nowrite` or `quickfix`: type of buffer (local to buffer)
opt.buftype = ""
-- Whether the buffer shows up in the buffer list (local to buffer)
opt.buflisted = true
-- Set to `msg` to see all error messages
opt.debug = ""
-- Whether to show the signcolumn (local to window)
opt.signcolumn = "yes:2"
-- Whether to use Python 2 or 3
opt.pyxversion = 3

-- ## NVim Specific
opt.inccommand = "nosplit"
opt.winblend = 10
opt.pumblend = 10

-- vim: nospell
