" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Mouse
set mouse=a

set clipboard=unnamed
set guifont=Courier\ New:h15
set background=dark
set encoding=utf8
set fileencoding=utf8

" auto load vimrc file
autocmd FileType python set omnifunc=pythoncomplete#Complete
" disable use of included files in default completion
set complete-=i

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" highlight search string
set hlsearch

" highlight cursor
set cursorline
set cursorcolumn
hi CursorLine cterm=None ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=None ctermfg=white guibg=white

" Colors and Fornts
set t_Co=256
" 颜色主题 wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
colorscheme wombat256mod

syntax on
filetype plugin on
filetype plugin indent on

" 以下设置来自 http://zhi.hu/BhFx
" 显示行数，设置软回车和缩进还有语法
set number
set expandtab
set tabstop=8
set shiftwidth=4
set softtabstop=4

" 这个是我喜欢的，一旦一行的字符超出80个的话就把那些字符的背景设为红色
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" 模式不同光标不同
" http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" https://github.com/scrooloose/nerdtree
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" flake8快捷键, 默认是F7
autocmd FileType python map <buffer> <F3> :call Flake8()<CR>

" 按F4按钮，在窗口的左侧出现taglist的窗口,像vc的左侧的workpace
nnoremap <silent> <F4> :TlistToggle<CR><CR>

" taglist配置
" :Tlist              调用TagList
let Tlist_Show_One_File=0                    " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window=1                 " 在右侧窗口中显示
let Tlist_File_Fold_Auto_Close=1             " 自动折叠

" 代码自动补全
let g:pydiction_location = '$HOME/.vim/bundle/pydiction/complete-dict'

" https://github.com/davidhalter/jedi-vim
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_on_dot = 0
"let g:jedi#completions_enabled = 0
"let g:jedi#completions_command = "<C-Space>"
let g:jedi#popup_select_first = 0
let g:jedi#goto_assignments_command = ""
let g:jedi#show_call_signatures = "0"

" tab快捷键设置 http://vim.wikia.com/wiki/Alternative_tab_navigation
" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>

nnoremap <C-Insert> :tabnew<CR>
nnoremap <C-Delete> :tabclose<CR>

