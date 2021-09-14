" 使用帮助
" :Term Opens a new terminal buffer using :new (splits horizontally)
" :VTerm Opens a new terminal buffer using :vnew (splits vertically)
" :TTerm Opens a new terminal buffer using :tabnew (new tab)

" :10Term would open an horizontal buffer with 10 lines displayed, on top of the current buffer.

" :100VTerm would open a vertical buffer with 10 lines displayed, right of the current buffer.

" :Term npm search something would open a new terminal buffer and launch a search on npm registry. This is a good candidate to appreciate the async nature of neovim (no more frozen UI!)

" :2Term npm install express would open a minimal buffer with only two lines, immediatly invoking npm install express with npm output displayed within the terminal buffer. Hit <Enter> when done to close the buffer.

" :VTerm node would open a vertical buffer with a node REPL started.


let g:split_term_default_shell = "zsh"

" put the new window right of the current one when using :VTerm 
set splitright
" put the new window below the current one when using :Term
set splitbelow


" <Esc> - Switch to normal mode (instead of <C-\><C-n>)
" Bind Alt+hjkl, Ctrl+arrows to navigate through windows (eg. switching to buffer/windows left, right etc.)

" let g:disable_key_mappings

" Alt+h - does a <C-w>h
" Alt+j - does a <C-w>j
" Alt+k - does a <C-w>k
" Alt+l - does a <C-w>l
" Ctrl+Left - does a <C-w>h
" Ctrl+Down - does a <C-w>j
" Ctrl+Up - does a <C-w>k
" Ctrl+Right - does a <C-w>l
" Ctrl+v - copy-pasting, does a <C-\><C-N>pi
