colo moody 
syntax on

:set mouse=a
:set shiftwidth=4
:set expandtab
:set number
:set notimeout
:set ttimeout
:set timeoutlen=100
:set listchars=tab:▸\ ,eol:¬,space:·
:set list
:set autochdir
:set completeopt+=menuone
:set completeopt+=noselect

highlight WhiteSpace ctermfg=238
match WhiteSpace /\s/

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

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:ale_sign_column_always = 1
let g:ale_sign_warning = '--'

let g:prettier#autoformat = 0
let g:prettier#config#print_width = 80
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#parser = 'babylon'
let g:prettier#config#config_precedence = 'prefer-file'
let g:prettier#config#prose_wrap = 'preserve'

autocmd BufWritePre *.js,*.jsx,*.mjs,*.css,*.less,*.scss PrettierAsync

let g:signify_sign_add = '+'
let g:signify_sign_delete = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change = '!'
let g:signify_sign_changedelete = g:signify_sign_change

let g:mucomplete#enable_auto_at_startup = 1

