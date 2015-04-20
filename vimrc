" 使用说明
" ',' + e      : 在新的标签页编辑.vimrc
" CTRL + L     : 切换右侧的标签页
" CTRL + H     : 切换左侧的标签页
" F2           : 打开目录树
" CTRL + X + O : 打开自动补全

" 记录历史的行数
set history=300

" 文件修改时，自动重读
set autoread

" 显示行号
set nu

" 显示所在行下划线
set cursorline

" 设定vim颜色
set t_Co=256

" 语法高亮
syntax on

" 检测文件类型
filetype on

" 文件类型对应插件开启
filetype plugin on
filetype plugin indent on

" BackSpace键功能
set backspace=eol,start,indent

" 对齐
set cindent
set autoindent
set smartindent

" Enable enhanced command line completion.
set wildmenu wildmode=list:full

" Ignore these filenames during enhanced command line completion.
set wildignore+=*.aux,*.out,*.toc " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif " binary images
set wildignore+=*.luac " Lua byte code
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.pyc " Python byte code
set wildignore+=*.spl " compiled spelling word lists
set wildignore+=*.sw? " Vim swap files

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

" 开启ctags
"set tags=tags; "配置生成的tags路径


" 快捷命令起始符
let mapleader = ","
let g:mapleader = ","

" 向前向后跳转tab页的快捷键
nnoremap <C-l> gt
nnoremap <C-h> gT

" 编辑vim快捷键
map <leader>e :tabnew ~/.vimrc<cr>



" nerd tree配置,左侧目录树插件
map <F2> :NERDTreeToggle<CR>


" taglist配置 taglist use exuberant ctags
let Tlist_Auto_Highlight_Tag=1
let Tlist_Auto_Open=0
let Tlist_Auto_Update=1
let Tlist_Close_On_Select=0
let Tlist_Compact_Format=0
let Tlist_Display_Prototype=0
let Tlist_Display_Tag_Scope=1
let Tlist_Enable_Fold_Column=0
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Hightlight_Tag_On_BufEnter=1
let Tlist_Inc_Winwidth=0
let Tlist_Max_Submenu_Items=1
let Tlist_Max_Tag_Length=30
let Tlist_Process_File_Always=0
let Tlist_Show_Menu=0
let Tlist_Sort_Type="order"
let Tlist_Ctags_Cmd='/usr/bin/ctags' " ctags程序位置，不知道可以用which ctags查看
let Tlist_Show_One_File=1 "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow=1 "如果taglist窗口是最后一个窗口，则推出vim
let Tlist_Use_Right_Window=1 "在右侧显示taglist窗口
"let tlist_php_settings='php;c:类名;i:接口;P:属性;D:常量;F:方法列表' "使用ctags时的参数，看ctags的支持可以用ctags --list-kinds或者ctags --list-kinds=php
let tlist_php_settings='php;c:类名;F:方法列表' "使用ctags时的参数，看ctags的支持可以用ctags --list-kinds或者ctags --list-kinds=php
let tlist_c_setting='c;c:类名;f:方法列表'
" 定义taglist快捷键
map <F3> :TlistToggle<CR>


" PHP自动补全
" VIM 7.0以上自带
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
" 启用自动补全
set ofu=syntaxcomplete#Complete



" 括号自动补全
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap { {<CR>}<Esc>O
"autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
"inoremap ) <c-r>=ClosePair(')')<CR>
"inoremap ] <c-r>=ClosePair(']')<CR>
"inoremap } <c-r>=CloseBracket()<CR>
"inoremap " <c-r>=QuoteDelim('"')<CR>
"inoremap ' <c-r>=QuoteDelim("'")<CR>
"
"function ClosePair(char)
"    if getline('.')[col('.') - 1] == a:char
"        return "\<Right>"
"    else
"        return a:char
"    endif
"endf
"
"function CloseBracket()
"    if match(getline(line('.') + 1), '\s*}') < 0
"        return "\<CR>}"
"    else
"        return "\<ESC>j0f}a"
"    endif
"endf
"
"function QuoteDelim(char)
"    let line = getline('.')
"    let col = col('.')
"    if line[col - 2] == "\\"
"        return a:char
"    elseif line[col - 1] == a:char
"        return "\<Right>"
"    else
"        return a:char.a:char."\<Esc>i"
"    endif
"endf
" End括号自动补全
