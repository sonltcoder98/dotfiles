set nocompatible              " be iMproved, required
"filetye off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim-plugins/LanguageClient-neovim
call vundle#begin()
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'VundleVim/Vundle.vim'
"Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
"Plugin 'danilo-augusto/vim-afterglow'
Plugin 'preservim/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'rust-lang/rust.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'fatih/vim-go'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'arcticicestudio/nord-vim'
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
map <C-n> :NERDTreeToggle<CR>
nnoremap <SPACE> <Nop>
let mapleader=" "
noremap <C-h> z.<CR>
noremap <C-k> zt<CR>
noremap <C-j> zb<CR>
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
nnoremap <C-p> :Files<CR>

autocmd filetype cpp nnoremap <F5> :w <bar> !g++-4.8 -ulimit -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r <CR>
autocmd filetype c nnoremap <F5> :w <bar> !gcc -ulimit -Wall -Wno-unused-result  -O2 % -o %:r && ./%:r <CR>
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd FileType go nmap <Leader>i <Plug>(go-info)
autocmd FileType go nmap <leader>rn <Plug>(go-rename)
autocmd FileType go nmap <silent>gd <Plug>(go-def)
autocmd FileType go nmap <silent>gr <Plug>(go-referrers)
autocmd FileType go nmap <silent>gi <Plug>(go-implements)
autocmd FileType go nmap <silent>gk <Plug>(go-doc)

syntax on
"let g:airline_theme='afterglow'
let g:airline_powerline_fonts = 1
let g:rust_clip_command = 'pbcopy'
let g:rustfmt_autosave = 1

" setting for golang
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
au BufRead,BufNewFile *.rs set filtype=rust
let g:go_fmt_command = "goimports"
let g:go_highlight_fields = 1
let g:syntastic_go_checkers = ['go']
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_doc_window_popup_window = 1

" setting for CtrlP
let g:ctrlp_working_path_mode = 'ra'

" setting for fzf
let g:fzf_preview_window = 'right:60%'

set encoding=UTF-8
set clipboard=unnamedplus
set relativenumber
set nu
set autoindent
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set smartcase
set t_Co=256
"set background=dark
set noswapfile
set belloff=all
"set termguicolors
set backspace=2
set backspace=indent,eol,start " backspace over everything in insert mode

let g:afterglow_inherit_background=1
let g:afterglow_blackout=1
let g:afterglow_italic_comments=1
let g:quantum_black=1

let g:nord_cursor_line_number_background = 1
let g:nord_uniform_diff_background = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
"colorscheme afterglow
"colorscheme quantum
colorscheme nord
set guifont=DroidSansMono_Nerd_Font:h11
set statusline+=%#warningmsg#
set statusline+=%*
set updatetime=100
set cursorline

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_typescript_checkers = ['tslint', 'tsc']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

"setting for prettier formating
let g:prettier#config#print_width = 80
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#semi = 'true'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#arrow_parens = 'always'

let g:ctrlp_use_caching = 1

autocmd FileType rust nmap <leader>rn <Plug>(coc-rename)
autocmd FileType rust nmap <silent> [g <Plug>(coc-diagnostic-prev)
autocmd FileType rust nmap <silent> ]g <Plug>(coc-diagnostic-next)
autocmd FileType rust nmap <silent> gd <Plug>(coc-definition)
autocmd FileType rust nmap <silent> gy <Plug>(coc-type-definition)
autocmd FileType rust nmap <silent> gi <Plug>(coc-implementation)
autocmd FileType rust nmap <silent> gr <Plug>(coc-references)
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set nobackup
set nowritebackup
