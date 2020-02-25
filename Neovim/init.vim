" plug-vim
call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'phanviet/vim-monokai-pro'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins'}

call plug#end()

set termguicolors
colorscheme monokai_pro

let g:airline_theme='minimalist'

" Windows
let g:python_host_prog = 'C:\Python27\python.exe'
let g:python3_host_prog = 'C:\Python38\python.exe'

set nu

" Run NERDTree on startup
" autocmd vimenter * NERDTree