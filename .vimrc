set nocompatible              " be iMproved, required
"filetye off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion'
Plugin 'wakatime/vim-wakatime'
Plugin 'rust-lang/rust.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
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
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
map <Leader> <Plug>(easymotion-prefix)
autocmd filetype cpp nnoremap <F5> :w <bar> !g++-4.8 -ulimit -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r <CR>
autocmd filetype c nnoremap <F5> :w <bar> !gcc -ulimit -Wall -Wno-unused-result  -O2 % -o %:r && ./%:r <CR>
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <Leader>fo <Plug>(Prettier)
syntax on
"let g:airline_theme='afterglow'
let g:rust_clip_command = 'pbcopy'
let g:rustfmt_autosave = 1
" setting for golang
au BufNewFile,BufRead *.go setlocal noet ts=2 sw=2 sts=2
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_fields = 1
let g:syntastic_go_checkers = ['go']
set clipboard=unnamedplus
set relativenumber
set nu
set autoindent
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set smartcase
set t_Co=256
set background=dark
set noswapfile
map <C-a> <esc>ggVG<CR>
set belloff=all
let g:afterglow_inherit_background=1
let g:afterglow_blackout=1
let g:afterglow_italic_comments=1
let g:quantum_black=1
set background=dark
set termguicolors
set backspace=2
set backspace=indent,eol,start " backspace over everything in insert mode

"colorscheme afterglow
colorscheme quantum


set statusline+=%#warningmsg#
set statusline+=%*

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

nmap <leader>rn <Plug>(coc-rename)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
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
set updatetime=300
set nobackup
set nowritebackup
