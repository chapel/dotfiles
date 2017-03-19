" Specify plugin directory
call plug#begin('~/.config/nvim/plugged')

""" Plugins
" Search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'

" Style
Plug 'itchyny/lightline.vim'
"Plug 'nathanaelkane/vim-indent-guides'

" Javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }




""" Plugin Configs

"" vim-javascript
" syntax highlight jsdoc
let g:javascript_plugin_jsdoc = 1

"" vim-jsx
" jsx not required
let g:jsx_ext_required = 0


"" General Configs
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

" Init plugin system
call plug#end()
