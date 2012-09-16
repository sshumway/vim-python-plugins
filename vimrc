" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

"set statusline=
"set statusline+=%1*\ %n\ %*                "buffer number
"set statusline+=%5*%{&ff}%*                "file format
"set statusline+=%3*%y%*                    "file type
"set statusline+=%{fugitive#statusline()}   "git-branch
"set statusline+=%4*\ %<%f%*                "file
"set statusline+=%2*%m%*                    "modified flag
"set statusline+=%1*%=%5l%*                 "current line
"set statusline+=%2*/%L%*                   "total lines
"set statusline+=%1*%4v\ %*                 "column number

set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
