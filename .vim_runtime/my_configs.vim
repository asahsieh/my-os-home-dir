"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""
"" => Install Plugins by vim-plug
"""""""""""""""""""""""""""""""""
" By vim-plug
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Build IDE like Source insight on VIM:
"   ctags + cscope + taglist + nerdtree + srcexpl + trinity

" Move installation of ctags to below Snap method.
" Ctags need extra steps that vim-plug don't support,
" e.g., sudo make
"Plug 'universal-ctags/ctags'
Plug 'portante/cscope'
Plug 'dr-kino/cscope-maps'
Plug 'yegappan/taglist'
Plug 'preservim/nerdtree'
Plug 'wesleyche/SrcExpl'
Plug 'wesleyche/Trinity'

" Initialize plugin system
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""
" => Install Plugins by Canonical Snapcraft 
"""""""""""""""""""""""""""""""""""""""""""
" Automatic installation of the plugins
"   Install universal-ctags if not found
    if empty(glob('/snap/bin/ctags'))
      !echo 'Install Plugins by Snap'
      silent !sudo snap install universal-ctags
    endif
