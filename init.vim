" Basic settings	
set ignorecase smartcase
set undodir=~/.config/undodir
set undofile
set tabstop=2
set expandtab
set shiftwidth=2
set relativenumber
set cursorline
set hidden
set noshowmode

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugins')

  " Declare the list of plugins.
  Plug 'mhinz/vim-startify'
  Plug 'preservim/nerdtree'  
  Plug 'preservim/nerdcommenter'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/vim-peekaboo'
  Plug 'mattn/emmet-vim'
  Plug 'chriskempson/base16-vim'
  Plug 'wakatime/vim-wakatime'	
  Plug 'takac/vim-hardtime'
  Plug 'itchyny/lightline.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'simnalamburt/vim-mundo'

" List ends here. Plugins become visible to VIM after this call.
call plug#end()

" Disable Page Up/Down keys in whole of modes
noremap <PageDown> <NOP>
noremap <PageUp> <NOP>

" Enable theme
syntax on
let base16colorspace=256
colorscheme base16-monokai
set termguicolors

" Custom commands
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" Created basic mapping
nnoremap <silent> <esc><esc> :noh<return><esc>

for config in split(glob('$HOME/.config/nvim/plugins/config/*.vim'), '\n')
  exe 'source' config
endfor
