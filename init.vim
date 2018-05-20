" Directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'rust-lang/rust.vim'
Plug 'vim-python/python-syntax'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'
Plug 'fatih/vim-go'
Plug 'zchee/deoplete-go'
"Plug 'pangloss/vim-javascript'
"Plug 'jelera/vim-javascript-syntax'
Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'
Plug 'cespare/vim-toml'
"Plug 'ap/vim-buftabline'
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-commentary'
Plug 'raimondi/delimitmate'
Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'vim-ruby/vim-ruby'

" Initialize plugin system
call plug#end()

set termguicolors

set hidden

" Airline
let g:airline#extensions#tabline#enabled = 1

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Language Client Settings

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'python': ['pyls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> fd :call LanguageClient#textDocument_formatting()<CR>

" Snippet Settings

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"let g:neosnippet#enable_completed_snippet = 1
"imap <C-k>  <Plug>(neosnippet_expand_or_jump)
"smap <C-k>  <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>  <Plug>(neosnippet_expand_target)

" Buffer Keybinds
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

syntax on
colorscheme gruvbox
set background=dark
set number

let g:python_highlight_all = 1

filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent

set mouse=a

set cursorline

set ignorecase
set smartcase

set updatetime=500

nmap nt :NERDTreeToggle<CR>

" Go Settings
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
