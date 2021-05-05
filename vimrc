colo moody 
syntax on

:set mouse=a
:set shiftwidth=4
:set expandtab
:set number
:set notimeout
:set ttimeout
:set timeoutlen=100
:set listchars=tab:▸\ ,eol:¬
:set list
:set autochdir
:set completeopt+=menuone
:set completeopt+=noselect
:set cmdheight=4

highlight WhiteSpace ctermfg=238
match WhiteSpace /\s/

" use 256 colors in terminal
if !has("gui_running")
    set t_Co=256
    set term=screen-256color
endif

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

autocmd BufRead,BufNewFile * setlocal signcolumn=yes

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_list_hide= '.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,*.git'
let g:netrw_hide = 1

" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:ale_sign_column_always = 1
let g:ale_sign_warning = '--'
let g:ale_set_highlights = 0 " Disable highligting

let g:signify_sign_add = '+'
let g:signify_sign_delete = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change = '!'
let g:signify_sign_changedelete = g:signify_sign_change

let g:typescript_indent_disable = 1

command! -nargs=0 Prettier :CocCommand prettier.formatFile

