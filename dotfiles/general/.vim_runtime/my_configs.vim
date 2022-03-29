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

"""""""""""""""""""""""""""""""""""""""""""
" => Set Shortcuts of Plugins 
"""""""""""""""""""""""""""""""""""""""""""
" Trinity:
" Open and close all the three plugins on the same time
nmap <C-F7> :TrinityToggleAll<CR>
" Open and close the srcexpl.vim separately
nmap <C-F9> :TrinityToggleSourceExplorer<CR>
" Open and close the taglist.vim separately
nmap <C-F10> :TrinityToggleTagList<CR>
" Open and close the NERD_tree.vim separately
nmap <C-F11> :TrinityToggleNERDTree<CR>"

" ctags:
" (TODO) create abbreviation for the following user-input command
" :ctags -R --exclude=.svn
set tags=./tags,./TAGS,tags;~,TAGS;~

"""""""""""""""""""""""""""""""""""""""""""
" => My VIM settings
"""""""""""""""""""""""""""""""""""""""""""
set nu

" Key maps for copying text to the system clipboard
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d

" Open a file at right side by vsplit
set splitright

" Set mouse mode to resize splits
set mouse=n
"   Inside tmux
set ttymouse=xterm2

"""""""""""""""""""""""""""""""""""""""""""
" => My VIM settings for coding
"""""""""""""""""""""""""""""""""""""""""""
" Integrate `clang-format` to `vim`
function! Formatonsave()
  let l:formatdiff = 1
  py3f /usr/share/vim/addons/syntax/clang-format.py
endfunction
autocmd BufWritePre *.h,*.hpp,*.c,*.cc,*.cpp call Formatonsave()

" Automatically removing all trailing whitespace:
" https://vim.fandom.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace
"
" TODO: add the function to clang-format.py
autocmd BufWritePre *.h,*.hpp,*.c,*.cc,*.cpp call CleanExtraSpaces()

" make a vertical column in the background at 80 characters
set colorcolumn=80

" make it black in Graphical Vims (my vim background is dark gray) see help 
" gui-colors for a list of suggseted color names
" see help guibg for how to specific specific rgb / hex colors
highlight ColorColumn guibg=Red

" make it black in terminal vims (my terminal vim looks the same as my GUI vim)
" see :help ctermbg for a list of colors that can be used in the terminal
highlight ColorColumn ctermbg=Red

" Automatic word wrapping on 80-characters for coding rule on the Linux course
" Note: Auto-wrap needs one blank to seperate last two words in line of text
set tw=80
