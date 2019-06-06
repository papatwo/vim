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

  Plugin 'takac/vim-hardtime'  " get rid of bad habits
  Plugin 'unblevable/quick-scope'  " highlight cues for `f` and `t`
  Plugin 'tpope/vim-commentary' " easy comment

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

" enable vim modeline parsing (in-file vim settings)
set modeline modelines&

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

" colour scheme
colorscheme murphy

" file type detection
filetype on
filetype plugin on
filetype indent on

" sensible indentation rules (e.g., follow indentation of previous line)
set autoindent smartindent

" format text so lines do not exceed 80 columns
set textwidth=79

" spell check languages
" NOTE "cjk" does not check spelling for CJK languages. Instead it inhibits
" spell checks for those languages. Otherwise all CJK characters will be marked
" badly spelled because spell checking for CJK languages is not supported.
set spelllang=en_GB,cjk

" share system clipboard

" ========================================================================= }}}
" custom key mappings
" ========================================================================= {{{

" <Esc> is too far away, tap `kj` instead
inoremap jj <Esc>

" `^` and `$` are too far away
" mnemonic: go left and go right
noremap gh ^
noremap gl $

" change vimrc
nnoremap crc :tabnew ~/.vimrc<CR>

" config update
nnoremap cu :source ~/.vimrc<CR>

" turn off search highlighting
nmap s :nohls<CR>

" make `Y` behave like `D`: yank to end of line
nnoremap Y y$

" ========================================================================= }}}
" plugin configs
" ========================================================================= {{{

" ------------------------------------------------------------
" hardtime
" ------------------------------------------------------------

let g:hardtime_default_on = 1
let g:list_of_normal_keys = [
      \ 'h', 'j', 'k', 'l', '-', '+',
      \ '<UP>', '<DOWN>', '<LEFT>', '<RIGHT>',
      \ 'e', 'w', 'b',
      \ ]
" don't smash <Backspace>, try <C-w>
let g:list_of_insert_keys = [
      \ '<UP>', '<DOWN>', '<LEFT>', '<RIGHT>',
      \ '<BACKSPACE>',
      \ ]
let g:hardtime_ignore_quickfix = 1
let g:hardtime_maxcount = 3

" go one step further: completely disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" use <C-t> / <C-d> to (un)indent instead!
" If you truly want a tab, press <C-v><Tab>. Note that this won't be expanded
" to spaces even with 'expandtab' on
inoremap <Tab> <Nop>

" ------------------------------------------------------------
" quick-scope
" ------------------------------------------------------------

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" }}}

" vim:nowrap:tw=0:fdm=marker:fen:
