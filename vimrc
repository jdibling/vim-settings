set nocompatible 

set nu
set nowrap

set makeprg=ninja\ -j\ 20\ -C\ ~/build/current/
set autowrite

set tabstop=2 
set shiftwidth=2 
set softtabstop=2
set expandtab 
set cindent
set backspace=indent,eol,start
set listchars=tab:>-,trail:-
syntax enable 

set hlsearch

nmap n nzz 
nmap N Nzz 

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
set t_Co=256

execute pathogen#infect()

let g:solarized_termcolors=256
set background=dark
color mrkn256


