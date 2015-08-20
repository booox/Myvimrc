"This section I can handle!"
colorscheme desert 
"colorscheme elflord
"colorscheme evening
"colorscheme murphy
"colorscheme ron
"colorscheme shine
"colorscheme torte

"This section I can handle!"
"编码设置
set enc=utf-8
set fencs=utf-8,gbk
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gbk

""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible			  " be iMproved,required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Code complete
Plugin 'snipMate'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关  
""""""""""""""""""""""""""""""""""""""""""""""""""
set shortmess=atI   	" 启动的时候不显示那个援助乌干达儿童的提示  
"winpos 5 5          	" 设定窗口位置  
"set lines=40 columns=155	" 设定窗口大小  
"color asmanian2     	" 设置背景主题  
"set guifont=Courier_New:h10:cANSI   " 设置字体  
syntax on           " 语法高亮  
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
autocmd InsertEnter * se cul    " 用浅色高亮当前行  
"set ruler           	" 显示标尺  
set showcmd         	" 输入的命令显示出来，看的清楚些  
"set scrolloff=3     	" 光标移动到buffer的顶部和底部时保持3行距离  
set novisualbell    	" 不要闪烁(不明白)  
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
set laststatus=1    	" 启动显示状态行(1),总是显示状态行(2)  
"set foldenable      	" 允许折叠  
"set foldmethod=manual  " 手动折叠  
"set background=dark 	"背景使用黑色 

" 显示中文帮助
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif

" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
filetype plugin indent on 

"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
"定义函数SetTitle，自动插入文件头 
func SetTitle() 
	"如果文件类型为.sh文件 
	if &filetype == 'sh' 
		call setline(1,"\######################################################################") 
		call append(line("."), "\# File Name: ".expand("%")) 
		call append(line(".")+1, "\# Author: mudongliang") 
		call append(line(".")+2, "\# mail: mudongliangabcd@163.com") 
		call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
		call append(line(".")+4, "\#######################################################################") 
		call append(line(".")+5, "\#!/bin/bash") 
		call append(line(".")+6, "") 
	else 
		call setline(1, "/*************************************************************************") 
		call append(line("."), "	> File Name: ".expand("%")) 
		call append(line(".")+1, "	> Author: mudongliang") 
		call append(line(".")+2, "	> Mail: mudongliangabcdi@163.com")
		call append(line(".")+3, "	> Created Time: ".strftime("%c")) 
		call append(line(".")+4, " ************************************************************************/") 
		call append(line(".")+5, "")
	endif
	if &filetype == 'cpp'
		call append(line(".")+6, "#include<iostream>")
		call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "int main(){ ")
		call append(line(".")+9, "")
		call append(line(".")+10, "    return 0;")
		call append(line(".")+11, "}")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include<stdio.h>")
		call append(line(".")+7, "")
		call append(line(".")+8, "int main(int argc,const char *argv[])")
		call append(line(".")+9, "{")
		call append(line(".")+10, "")
		call append(line(".")+11, "    return 0;")
		call append(line(".")+12, "}")
	endif
	"新建文件后，自动定位到文件末尾
	autocmd BufNewFile * normal G
endfunc 

"""""""""""""""""""""""""""""""""""""""""""""""""
" 键盘命令
"""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
nmap <leader>w :w!<cr>

" 映射全选+复制 ctrl+a
"map <C-A> ggVGY
"map! <C-A> <Esc>ggVGY
"map <F12> gg=G
" 选中状态下 Ctrl+c 复制
"vmap <C-c> "+y
"去空行  
nnoremap <F2> :g/^\s*$/d<CR> 
"比较文件  
"nnoremap <C-F2> :vert diffsplit 
"新建标签  
"map <M-F2> :tabnew<CR>  
"列出当前目录文件  
map <F3> :tabnew .<CR>  
"打开树状文件目录  
"map <C-F3> \be  

""""""""""""""""""""""""""""""""""""""""""""""""""
" 实用设置
""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置当文件被改动时自动载入
set autoread
" quickfix模式
"autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全 
set completeopt=preview,menu 
"共享剪贴板  
set clipboard+=unnamed 
"从不备份  
set nobackup
"自动保存
set autowrite
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)
" 设置在状态行显示的信息
"set foldcolumn=0
"set foldmethod=indent 
"set foldlevel=3 
"set foldenable              " 开始折叠
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
" 语法高亮
set syntax=on
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 总是显示状态行
set laststatus=2
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 为C程序提供自动缩进
set smartindent
" 打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu
