" ============================================================
" Vim plugin configuration
" ============================================================
"
" This file contains a list of plugins installed using Vundle
" Once you've updated the list of plugins, run :BundleInstall to update Vundle within vim
" Or update Vundle directly from the command line with following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall

filetype off		" required by Vundle

" Vundle init
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let Vundle manage Vundle (required!)
Bundle 'gmarik/vundle'

" Bundles

Bundle "pangloss/vim-javascript"
Bundle "itspriddle/vim-jquery.git"
Bundle "jtratner/vim-flavored-markdown.git"
Bundle "kogakure/vim-sparkup.git"
Bundle "nelstrom/vim-markdown-preview"

Bundle "vim-scripts/sudo.vim"


" Cosmetics, color scheme, Powerline...
Bundle "chrisbra/color_highlight.git"
Bundle "skwp/vim-colors-solarized"
Bundle "bling/vim-airline.git"
Bundle "vim-scripts/TagHighlight.git"
Bundle "bogado/file-line.git"

" Filetype plugin indent on is required by vundle
filetype plugin indent on

