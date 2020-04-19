syntax enable
colorscheme hybrid

let loaded_netrwPlugin = 1  " do not load netrw

let g:vim_root = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let g:python3_host_prog = g:vim_root . '/venv/bin/python'

call plug#begin()

" mimic tabs/spacing style
Plug 'tpope/vim-sleuth'

" Ask for diff during recover
Plug 'chrisbra/Recover.vim'
let g:RecoverPlugin_Edit_Unmodified = 1

" Git interface
Plug 'tpope/vim-fugitive'

" Remember cursor position
Plug 'kopischke/vim-stay'

Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
Plug 'cespare/vim-toml', {'for': 'toml'}
Plug 'dag/vim-fish', {'for': 'fish'}

augroup MyConfig
    autocmd!
    exec 'source' g:vim_root . '/config/autocmd.vim'
    exec 'source' g:vim_root . '/config/setting.vim'
    exec 'source' g:vim_root . '/config/mapping.vim'
    exec 'source' g:vim_root . '/config/highlight.vim'
    exec 'source' g:vim_root . '/config/interface.vim'
    exec 'source' g:vim_root . '/config/completion.vim'
augroup END

call plug#end()
