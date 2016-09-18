let $VIMRUNTIME="/home/mariohuang/share/vim/vim73"  
set runtimepath=/home/mariohuang/share/vim/vim73  
set ts=4
set sw=4
set nu
colorscheme desert

set fileencodings=gb2312,gb18030
set termencoding=gb2312
set fileformats=unix
set encoding=prc
set history=300
set number 

filetype plugin on
filetype indent on 

let mapleader=","
set wildmenu 
set hid  "Change buffer - without saving
set ignorecase  "Ignore case when searching
set hlsearch  "Highlight search things
set incsearch "Make search act like search in modern browsers

set magic  "Set magic on, for regular expressions

set showmatch  "Show matching bracets when text indicator is over them

set mat=2  "How many tenths of a second to blink

set noerrorbells
set novisualbell
syntax enable      "¨®?¡¤¡§??¨¢¨¢??¨º?

"set expandtab
set shiftwidth=4

set tabstop=4
set smarttab
set lbr
set tw=500
set ai  "??¨¢¨°¨ª??¨¦¡ê?¡Á??¡¥????
set si  "???¨¹????
set wrap  "Wrap lines
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>tn :tabnew %<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
set laststatus=2

if has("cscope")
	set csprg=cscope
	set csto=1
	set cst
	set nocsverb
	if filereadable("cscope.out")
		cs add cscope.out
	endif
	set csverb
endif

nmap <leader>cs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>ct :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>ce :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>ci :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <leader>cd :cs find d <C-R>=expand("<cword>")<CR><CR>
set cscopequickfix=s-,c-,d-,i-,t-,e-


let g:miniBufExplModSelTarget = 1 
let g:miniBufExplorerMoreThanOne = 100 
let g:miniBufExplModSelTarget = 0 
let g:miniBufExplUseSingleClick = 1 
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplVSplit = 25
let g:miniBufExplSplitBelow=1

let g:bufExplorerSortBy = "name"

function! InsertTabWrapper()
	let col=col('.')-1
	if !col || getline('.')[col-1] !~ '\k' 
		return "\<TAB>"
	else
		return "\<C-N>"
	endif
endfunction

inoremap <TAB> <C-R>=InsertTabWrapper()<CR>

syn on
autocmd Filetype c,cpp set sw=4 
"| set expandtab
""set expandtab
set sw=4
set nocompatible
set backspace=indent,eol,start
set autoindent
set smartindent
set ai!
set nu!
set showmatch
set incsearch
filetype plugin indent on
set scrolloff=5
set ts=4
set nu

let mapleader = ","

if has("autocmd")
	autocmd BufRead *.txt set tw=78
	autocmd BufReadPost *
				\ if line("'\"") > 0 && line ("'\"") <= line("$") |
				\   exe "normal g'\"" |
				\ endif
endif
nmap <F9> <Esc>:!ctags -R *<CR>

let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_OnlyWindow=1
let Tlist_Use_Right_Window=0
let Tlist_Sort_Type='name'
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_Menu=1
let Tlist_Max_Submenu_Items=10
let Tlist_Max_Tag_length=20
let Tlist_Use_SingleClick=0
let Tlist_Auto_Open=0
let Tlist_Close_On_Select=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=0
let Tlist_Process_File_Always=1
let Tlist_WinHeight=10
let Tlist_WinWidth=18
let Tlist_Use_Horiz_Window=0

let mapleader=","
map <silent> <leader>tl :TlistToggle<cr>

let g:winManagerWindowLayout = "TagList|FileExplorer,BufExplorer"
let g:persistentBehaviour=0            
let g:winManagerWidth=30
let g:defaultExplorer=1
nmap <silent> <leader>fir :FirstExplorerWindow<cr>
nmap <silent> <leader>bot :BottomExplorerWindow<cr>
nmap <silent> <F8> :WMToggle<cr>

augroup filetype
    autocmd! BufRead,BufNewFile BUILD set filetype=blade
augroup end
set viminfo='1000,<800

