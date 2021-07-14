packadd termdebug
let g:termdebug_wide = 163
"set shell=bash\ -i
" 定义快捷键的前缀，即<Leader>
let mapleader=";"

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" 定义快捷键到行首和行尾
"nmap LB 0
"nnoremap 9 $
"nnoremap 1 ^
" 设置快捷键将选中文本块复制至系统剪贴板
vmap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nnoremap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
"nmap <Leader>x :x<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转
nmap <Leader>M %
" 返回到常用模式
inoremap jk <esc>
"inoremap <space><space> <esc>
"在行末添加;
inoremap <leader><space> <esc>$a;<esc>o
inoremap <leader>' <esc>la
"inoremap <esc> <nop>
"重做
nnoremap <Leader>r <C-r>
"编译输出到quickfix
"nmap <Leader>m :wa<CR>:make<CR><CR>:cw<CR>
"nmap <Leader>m :wa<CR>:!xmake<CR><CR>:!xmake run<CR>
"nmap <Leader>m :wa<CR>:!python3 .<CR>
"nmap <Leader>m :wa<CR>:make<CR><CR>:copen<CR><CR>
"nmap <Leader>m :wa<CR>:make<CR>:copen<CR>
" 编辑 我的 vimrc 文件
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" 打字机模式
nnoremap j jzz
nnoremap k kzz

"" 快速跳转buffer
"nnoremap <leader>b :bn<cr>
"nnoremap <leader>B :bp<cr>
"nnoremap <leader>d :bd %<cr>:bn<cr>


" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
"错误信息
set errorbells


" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'vim-airline/vim-airline'

Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'vim-scripts/DrawIt'
Plugin 'vim-latex/vim-latex'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'takac/vim-hardtime'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'sirver/ultisnips'
Plugin 'scrooloose/nerdcommenter'
Plugin 'raimondi/delimitmate'

Plugin 'pangloss/vim-javascript'
Plugin 'majutsushi/tagbar'
Plugin 'lilydjwg/fcitx.vim'
Plugin 'isruslan/vim-es6'
Plugin 'honza/vim-snippets'
Plugin 'easymotion/vim-easymotion'
Plugin 'dyng/ctrlsf.vim'
Plugin 'derekwyatt/vim-protodef'
Plugin 'derekwyatt/vim-fswitch'
"Plugin 'airblade/vim-gitgutter'
Plugin 'octol/vim-cpp-enhanced-highlight'

"Plugin 'wannesm/wmgraphviz.vim'
"Plugin 'w0rp/ale'
"Plugin 'vim-scripts/vimprj'
"Plugin 'vim-scripts/phd'
"Plugin 'vim-scripts/indexer.tar.gz'
"Plugin 'vim-scripts/DfrankUtil'
"Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
"Plugin 'tomasr/molokai'
"Plugin 'suan/vim-instant-markdown'
"Plugin 'sjl/gundo.vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'scrooloose/nerdtree'
"Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'mxw/vim-jsx'
"Plugin 'marijnh/tern_for_vim'
"Plugin 'majutsushi/tagbar'
"Plugin 'liuchengxu/graphviz.vim'
"Plugin 'lilydjwg/fcitx.vim'
"Plugin 'kshenoy/vim-signature'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'jelera/vim-javascript-syntax'
"Plugin 'gcmt/wildfire.vim'
"Plugin 'fholgado/minibufexpl.vim'
"Plugin 'fatih/vim-go'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'VimIM'
"Plugin 'Lokaltog/vim-powerline'
" 插件列表结束
call vundle#end()
filetype plugin indent on

" 配色方案
set background=dark
"colorscheme solarized
"colorscheme molokai
"colorscheme phd

" 禁止折行
set nowrap
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4


" 总是显示状态栏
"set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
"set cursorline
"set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 设置 gvim 显示字体
set guifont=YaHei\ Consolas\ Hybrid\ 11.5

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in project
let g:ctrlsf_ackprg='ack'
let g:ctrlsf_winsize='40%'
let g:ctrlsf_position='left'
let g:ctrlsf_auto_focus = {
            \ "at": "done",
            \ "duration_less_than": 100
      \ }
nnoremap <Leader>sp :CtrlSF<CR>



" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

"设置indent-guides
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
"nnoremap <silent> <Leader>i <Plug>IndentGuidesToggle

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" <<

" >>
" 内容替换

" 快捷替换
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
"let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'



" 精准替换
" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>



let g:ycm_global_ycm_extra_conf = '/home/laisg/.vim/bundle/youcompleteme/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf = '/home/laisg/.ycm_c-c++_conf.py'
"" YCM 补全菜单配色
"" 菜单
highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
"" 选中项
highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black
"" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
"set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
"inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全			
let g:ycm_seed_identifiers_with_syntax=1

let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

"" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
"nmap <Leader>fl :NERDTreeToggle<CR>
"" 设置NERDTree子窗口宽度
"let NERDTreeWinSize=32
"" 设置NERDTree子窗口位置
"let NERDTreeWinPos="left"
"" 显示隐藏文件
"let NERDTreeShowHidden=1
"" NERDTree 子窗口中不显示冗余帮助信息
"let NERDTreeMinimalUI=1
"" 删除文件时自动删除文件对应 buffer
"let NERDTreeAutoDeleteBuffer=1
"" 打开文件后，自动关闭
"let NERDTreeQuitOnOpen=1

" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_right=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <Leader>tb :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
"
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><leader>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

"let g:UltiSnipsSnippetDirectories=["mysnippets"] 


"syntastic设置
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"latex配置
set grepprg=grep\ -nH\ $*    " 使grep总是生成文件名

let g:tex_flavor='latex'    " vim默认把空的tex文件设为plaintex而不是tex，导致latex-suite不被加载     
set iskeyword+=:

autocmd BufEnter *.tex set sw=2
let g:tex_indent_items=0
autocmd Filetype tex setl updatetime=1000
autocmd Filetype tex setlocal nofoldenable
nnoremap <Leader>l :LLPStartPreview<CR>
let g:livepreview_engine = 'xelatex'
"let g:livepreview_previewer = 'evince'
let g:Tex_IgnoreLevel='TCLevel strict'
let g:Tex_GotoError=1

"js配置
let g:used_javascript_libs = 'angularjs,react'
au BufNewFile,BufRead *.jsx set filetype=javascript
au BufNewFile,BufRead *.tsx set filetype=javascript
au BufNewFile,BufRead *.ts set filetype=javascript
au BufNewFile,BufRead *.handlebars set filetype=html


"graphviz配置
nnoremap <leader>g :w<cr>:GraphvizCompile<cr>:Graphviz<cr>

"ale配置
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_lint_on_text_changed = 'never'
"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\   'javascript': ['eslint'],
\   'asm': ['nasm'],
\   'java': ['android-sdk'],
\   'lex': ['flex'],
\   'yacc': ['bison'],
\   'sql': ['mysql'],
\   'markdown': ['instant-markdown-d'],
\}
au BufNewFile,BufRead *.inc set filetype=asm


"proto配置
" 设置 pullproto.pl 脚本路径
let g:protodefprotogetter='~/.vim/bundle/vim-protodef/pullproto.pl'
" 成员函数的实现顺序与声明顺序一致
let g:disable_protodef_sorting = 'true'

"Uncomment to override defaults:
  let g:instant_markdown_slow = 1
  let g:instant_markdown_autostart = 0
  "let g:instant_markdown_open_to_the_world = 1
  let g:instant_markdown_allow_unsafe_content = 1
  let g:instant_markdown_allow_external_content = 0
  "let g:instant_markdown_mathjax = 1
  "let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
  "let g:instant_markdown_autoscroll = 0
  "let g:instant_markdown_port = 8888
  "let g:instant_markdown_python = 1


" <Leader>f{char} to move to {char}
noremap  <Leader>f <Plug>(easymotion-bd-f)
nnoremap <Leader>f <Plug>(easymotion-overwin-f)

let g:asyncrun_open = 15
let g:asyncrun_save = 1
let g:asyncrun_timer=100


"" vim-go
"let g:go_def_mode='gopls'
"let g:go_info_mode='gopls'
"
"

"fswitch配置
" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>


"hardtime配置
let g:hardtime_default_on = 1

"airline配置
let g:airline_theme='ayu_mirage'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline#extensions#tabline#enabled = 1
let g:airline_disable_statusline = 1

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

