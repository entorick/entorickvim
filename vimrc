" 记录历史的行数
set history=300

" 文件修改时，自动重读
set autoread

" 显示行号
set nu

" 语法高亮
syntax on

" 检测文件类型
filetype on

" 对齐
set cindent
set autoindent
set smartindent

" 格式
" tab为4个空格
set tabstop=4
" 行交错时使用4个空格
set shiftwidth=4

set expandtab
set smarttab
set softtabstop=4

" 查找匹配时，高亮度显示
set hls

" 快速定位到匹配项
set incsearch

" 备份
set nobackup

" 中文问题
set fileencodings=utf-8,cp936,gbk,default,latin1
set encoding=utf-8
set termencoding=utf-8


" 快捷命令起始符
let mapleader = ","
let g:mapleader = ","

" 向前向后跳转tab页的快捷键
nnoremap <C-l> gt
nnoremap <C-h> gT

" 编辑vim快捷键
map <leader>e :tabnew ~/.vimrc<cr>
