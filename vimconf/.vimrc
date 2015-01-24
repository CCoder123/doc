"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           ctags settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags+=~/.vim/cpptags
set tags+=~/.vim/systags


"**********************************************
"             代码折叠
"********************************************"
""manual          手工定义折叠         
""indent           更多的缩进表示更高级别的折叠         
""expr              用表达式来定义折叠         
""syntax           用语法高亮来定义折叠         
""diff                对没有更改的文本进行折叠         
""marker           对文中的标志折叠
set fdm=syntax



"**********************************************
"             快捷键映射
"********************************************"
""依赖于插件a.vim 
map <C-k> :AV<CR>   

""查看vimgrep搜索结果,QuickFix窗口
map <C-d> :cw<CR>


"********************************************************
"                   一般性配置                          *
"********************************************************
"搜索高亮
set hls   "打开    set nohls  关闭

""/usr/share/vim/vim72/colors下面. 这些主题是: blue.vim default.vim desert.vim evening.vim morning.vim pablo.vim shine.vim torte.vim darkblue.vim delek.vim elflord.vim koehler.vim murphy.vim peachpuff.vim ron.vim slate.vim zellner.vim
""colorscheme darkblue
colorscheme torte

""需要自动改变vim的当前目录为打开的文件所在目录则设置此项
set autochdir


"关闭vim一致性原则
set nocompatible
 
"显示行号
set number
 
"设置在编辑过程中右下角显示光标的行列信息
set ruler
 
"在状态栏显示正在输入的命令
set showcmd

"设置历史记录条数
set history=1000

"设置取消备份 禁止临时文件的生成
set nobackup
set noswapfile
 
"设置匹配模式
set showmatch
 
"设置C/C++方式自动对齐
set autoindent
set cindent
 
"开启语法高亮功能
syntax enable
syntax on
 
"指定配色方案为256色
set t_Co=256
 
"设置搜索时忽略大小写
"set ignorecase
 
"配置backspace的工作方式
set backspace=indent,eol,start
 
"设置在vim中可以使用鼠标
set mouse=a
 
"设置tab宽度
set tabstop=4
 
"设置自动对齐空格数
set shiftwidth=4
 
"设置退格键时可以删除4个空格
set smarttab
set softtabstop=4
 
"将tab键自动转换为空格
set expandtab
 
"设置编码方式
set encoding=utf-8
 
"自动判断编码时 依次尝试以下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
 
"检测文件类型
filetype on
 
"针对不同的文件采取不同的缩进方式
filetype indent on
 
"允许插件
filetype plugin on
 
"启动智能补全
filetype plugin indent on
 
  
"*****************************************************
"                   taglist配置                      *
"*****************************************************

"打开关闭快捷键
nnoremap <silent> <F8> :TlistToggle<CR>
 
"不显示"press F1 to display help"
let Tlist_Compact_Format=1
 
"窗口在左侧显示
let Tlist_Use_Right_Window=1
 
"只显示当前文件的tags
let Tlist_Show_One_File=1  
 
"高亮显示
let Tlist_Auto_Highlight_tag=1
 
"随文件自动更新
let Tlist_Auto_Update=1
 
"设置宽度
let Tlist_WinWidth=30       
 
"taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow=1 
 
"单击跳转
let Tlist_Use_SingClick=1
 
 
"********************************************************
"                      NERD_Tree 配置                   *
"********************************************************
 
"快捷键
nnoremap <silent> <F4> :NERDTreeToggle<CR>

"显示增强
let NERDChristmasTree=1
 
"自动调整焦点
let NERDTreeAutoCenter=1
 
"鼠标模式:目录单击,文件双击
let NERDTreeMouseMode=2
 
"打开文件后自动关闭
let NERDTreeQuitOnOpen=1
 
"显示文件
let NERDTreeShowFiles=1
 
"显示隐藏文件
let NERDTreeShowHidden=1
 
"高亮显示当前文件或目录
let NERDTreeHightCursorline=1
 
"显示行号
let NERDTreeShowLineNumbers=1
 
"窗口位置
let NERDTreeWinPos='left'
 
"窗口宽度
let NERDTreeWinSize=31
 
"不显示'Bookmarks' label 'Press ? for help'
let NERDTreeMinimalUI=1 
 
 
"*****************************************************
"           YouCompleteMe配置                        *
"*****************************************************
 
"leader映射为逗号“，”
let mapleader = ":"  
 
"配置默认的ycm_extra_conf.py
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py' 
 
"按,jd 会跳转到定义
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>   
 
"打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_confirm_extra_conf=0   
 
"使用ctags生成的tags文件
let g:ycm_collect_identifiers_from_tag_files = 1 
 
 
"*****************************************************
"           Syntastic配置                            *
"*****************************************************
let g:Syntastic_check_on_open=1
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'

"whether to show balloons
let g:syntastic_enable_balloons = 1


"*****************************************************************"
"                             mini buffer navigator
"*****************************************************************"
let g:miniBUfExplMapWindowNavVim=0
"let g:miniBufExplMapWindowNavArrows=1
"let g:miniBufExplMapCTabSwitchBufs=1
"let g:miniBufExplModSelTarget=1
"let g:miniBufExplUseSingleClick=1

"********************************************************************
"                   OmniCpp
"*******************************************************************"
set completeopt=menu,menuone
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype  in popup window
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DisplayMode=1
let OmniCpp_DefaultNamespaces=["std"]

let g:neocomplcache_enable_at_startup=1 


"*********************************************************
"                  vundle 配置                           *
"*********************************************************
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" let Vundle manage Vundle
Bundle 'gmarik/vundle'
  
" My Bundles here:
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'taglist.vim'
Bundle 'The-NERD-tree'
Bundle 'Syntastic'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Valloric/YouCompleteMe' 
   
""Bundle 'c.vim'
"Bundle 'minibufexpl.vim'
""Bundle 'grep.vim'
Bundle 'a.vim'
Bundle 'mru.vim'
Bundle 'comments.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/AutoClose'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'



