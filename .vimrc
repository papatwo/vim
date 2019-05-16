" ========================================================================= }}}
" Vundle - plugin management
" ========================================================================= {{{
" *** Keep this at the top ***
" To install:
" $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/Vundle.vim/

let b:vundlepath = '~/.vim/bundle/'
if !empty(glob(b:vundlepath . 'Vundle.vim'))

  " required, turn on later if need be
  set nocompatible
  filetype off

  exec 'set runtimepath+=' . b:vundlepath . 'Vundle.vim'
  call vundle#begin(b:vundlepath)

  " required
  Plugin 'VundleVim/Vundle.vim'

  " plugins

  call vundle#end()

endif  " if has Vundle

" ========================================================================= }}}
" core setting
" ========================================================================= {{{

" be iMproved
set nocompatible

" show line number
set number
" show line number relative to cursor
set relativenumber

" always highlight search results
set hls
" highlight as typing
set incsearch
" case-insensitive unless search pattern contains uppercase letters
set ignorecase smartcase

" highlight (blink) matching parentheses
set showmatch

" do not generate backup/swap files
set nobackup noswapfile
" use undo history
set undofile undodir=/tmp/

" enable case-insensitive completion in command-line menu
set wildmenu
set wildignorecase fileignorecase

" enable syntax highlighting
syntax on

" file type detection
filetype on
filetype plugin on
filetype indent on

" sensible indentation rules (e.g., follow indentation of previous line)
set autoindent smartindent

" format text so lines do not exceed 80 columns
set textwidth=79

" ========================================================================= }}}
" custom key mappings
" ========================================================================= {{{

" <Esc> is too far away, tap `kj` instead
inoremap kj <Esc>

" `^` and `$` are too far away
" mnemonic: go left and go right
noremap gh ^
noremap gl $

" change vimrc
nnoremap crc :tabnew ~/.vimrc<CR>

" config update
nnoremap cu :source ~/.vimrc<CR>

" turn off search highlighting
nmap <F11> :nohls<CR>

" make `Y` behave like `D`: yank to end of line
nnoremap Y y$

" ========================================================================= }}}
" plugin configs
" ========================================================================= {{{

" }}}

" vim:tw=0:fdm=marker:
