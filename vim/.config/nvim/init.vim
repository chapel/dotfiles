" Specify plugin directory
call plug#begin('~/.config/nvim/plugged')

""" Plugins
" Search
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'

" Style
Plug 'itchyny/lightline.vim'
"Plug 'nathanaelkane/vim-indent-guides'

" Javascript
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'othree/es.next.syntax.vim', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }

" Edit
Plug 'AndrewRadev/splitjoin.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Lint
Plug 'scrooloose/syntastic', { 'on': 'SyntasticCheck' }

" Init plugin system
call plug#end()



""" Plugin Configs

"" vim-javascript
" syntax highlight jsdoc
let g:javascript_plugin_jsdoc = 1

"" vim-jsx
" jsx not required
let g:jsx_ext_required = 0

"" javascript-libraries-syntax
" enabled libraries
let g:used_javascript_libs = 'underscore,react'

"" deoplete
" enable
let g:deoplete#enable_at_startup = 1


"" General Configs
" Add default runtime to path
set runtimepath^=/usr/share/vim/vimfiles

" Replace file instead of rename on save
set backupcopy=yes 


""" Filetype mapping
autocmd BufNewFile,BufRead *.jsx set filetype=javascript
autocmd BufNewFile,BufRead *.json set filetype=javascript

au FileType javascript setl sw=2 sts=2 et



""" Maps

let mapleader=','

map <C-p> :Files<cr>
map <C-o> :FZFMru<cr>
