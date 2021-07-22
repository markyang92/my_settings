if has("syntax")
	syntax on
endif	"문법 강조"
set hlsearch	"서치 하이라이트"
set nu	"라인 넘버"
set autoindent "자동 들여쓰기"
set cindent "c 들여쓰기"
set ts=4 "\t출력 스페이스 몇개"
set sts=4 "tab 키 입력 스페이스 몇개"
set shiftwidth=4 "자동 들여쓰기 시 스페이스 몇개"
set laststatus=2 "마지막 창에 statusline을 보여주는 설정. 0: 출력 안함, 1: 창이 2개 이상일 때 출력, 2: 항상 출력"
set statusline+=%F " F shows the Full path in statusbar, f show file name in statusbar
set showmatch "괄호 매칭해서 하이라이트"
set smartcase "No automatic ignore case switch"
set smarttab "ts, sts, sw값을 참조하여, 탭과 백스페이스의 동작을 보조"
set smartindent "자동 들여 쓰기시 include같은 전처리 구문 판단하여 들여쓰기 안함"
set ruler "커서 위치의 줄번호 행번호 아래에 자 처럼 보여줌"
set fileencodings=utf8,euc-kr "win euc-kr, linux terminal utf8"
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
"마지막 수정 된 곳에 커서 위치"

set clipboard=unnamedplus "use vim clipboard to system clipboard

colorscheme jellybeans
"mkdir -p ~/.vim/colors
"cd ~/.vim/colors
"curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim

set list
set expandtab
set listchars=tab:>-
"tab 입력시 >- 표시"

set tags=./tags "Only in case of using ctags"

"cscope setting"
set csprg=/usr/local/bin/cscope
set nocsverb

if filereadable("./cscope.out")
cs add cscope.out
else
cs add /usr/local/bin/cscope.out
endif

set csverb
set csto=0
set cst


