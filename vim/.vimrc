"" Changes last set 2024-10-22
"" Base Settings
"" ====================================================================

" User relative numbers in normal mode only for an active buffer; user absolute numbers elsewhere
set number
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Scroll offset determines the number of context lines you would like to see above and below the cursor (similar to zz command)
set scrolloff=8

"" Search settings
" Incremental search highlights the pattern as a search command is typed
set incsearch
" Ignore case in search patterns
set ignorecase
" Except if you use upper case in your search pattern
set smartcase

" Interact with the OS clipboard
set clipboard^=unnamed,unnamedplus
