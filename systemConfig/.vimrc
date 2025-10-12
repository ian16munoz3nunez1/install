syntax enable " Habilita el resaltado de sintaxis
set autoindent " Ingresa indentacion automaticamente
set bg=dark " Configura el fondo
set clipboard=unnamed " Permite copiar y pegar texto
set cursorline " Resalta la linea en la que se encuentra el cursor
set encoding=utf-8 " Carga los ficheros en unicode (utf-8)
set expandtab " Transforma los tabs del indentado en espacios
" set foldmethod=manual " Desactiva el folding de los bloques de codigo
set foldmethod=indent " Desactiva el folding de los bloques de codigo
set ignorecase " Realiza busquedas sin tener en cuenta mayusculas y minusculas
set incsearch " Mejora la busqueda del editor n: siguiente coincidencia N: coincidencia anterior
set laststatus=2 " Muestra datos del archivo y el modo
" set list " Muestra los saltos de linea
" set lazyredraw " ---
set mouse=a " Habilita el uso del mouse en el editor
set nobackup " Desactiva la creacion de ficheros swap
set noswapfile " Desactiva la creacion de ficheros swap
set nowrap " Si no hay espacio en la ventana, las lineas siguen a la derecha, en vez de mostrarse debajo
set nowritebackup " Desactiva la creacion de ficheros swap
set number " Muestra los numeros de linea a la izquierda
set numberwidth=1
set relativenumber " Muestra numeros relativos
set ruler " Muestra la linea y columna en la que se encuentra el cursor
set scrolloff=8 " Agregar un margen de 8 lineas al hacer scroll (el cursor no se queda pegado arriba o abajo)
" set spell " Resalta errores ortograficos
set splitbelow splitright " Al dividir la pantalla, los ficheros se abren abajo y a la derecha
set shiftwidth=4 " Configura las indentaciones con 4 espacios
set showcmd " Muestra un historial de comandos. Usar :help showcmd para mas informacion
set showmatch " Muestra la apertura o cierre de un parentesis al tener el cursor sobre uno
set showtabline=2 " Con 2 muestra las pesta;as todo el tiempo, con 0, las oculta cuando hay un solo archivo abierto
set softtabstop=4 " Configura las indentaciones con 4 espacios
set sw=4 " Configura las indentaciones con 4 espacios
set tabstop=4 " Configura las indentaciones con 4 espacios
set termguicolors " Cambia el espacio de color de la terminal (colores de 24bits)
" set ttyfast " ---

call plug#begin('~/.vim/plugged')

" Temas
Plug 'morhetz/gruvbox'
Plug 'gosukiwi/vim-atom-dark'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
" Plug 'dracula/dracula-theme'
Plug 'chriskempson/base16-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jacoborus/tender.vim'
Plug 'sjl/badwolf'
Plug 'arcticicestudio/nord-vim'

" IDE
Plug 'easymotion/vim-easymotion' " Permite un movimiento sencillo entre el texto
Plug 'scrooloose/nerdtree' " Muestra un arbol de navegacion
Plug 'christoomey/vim-tmux-navigator' " ---
Plug 'vim-airline/vim-airline' " Agrega una linea de datos debajo del editor
Plug 'vim-airline/vim-airline-themes' " Temas para la linea de datos
Plug 'airblade/vim-gitgutter' " Muestra los cambios realizados en un fichero de un repositorio
Plug 'SirVer/ultisnips' " Snippets
Plug 'honza/vim-snippets' " Snippets
" Plug 'ap/vim-buftabline' " Muestra los buffers de ficheros en la parte superior
" Plug 'jayli/vim-easycomplete'

" Plug 'nvim-lualine/lualine.nvim'
" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'neoclide/coc.nvim'

call plug#end()

" base16-brewer
" base16-brogrammer
" base16-chalk
" base16-classic-dark
" base16-classic-light
" base16-codeschool
" base16-dracula
" base16-embers
" base16-flat
" base16-fruit-soda
" base16-gigavolt
" base16-github
" base16-grayscale-dark
" base16-grayscale-light
" base16-greenscreen
" base16-harmonic-dark
" base16-harmonic-light
" base16-heetch
" base16-icy
" base16-irblack
" base16-isotope
" base16-macintosh
" base16-marrakesh
" base16-mellow-purple
" base16-mocha
" base16-monokai
" base16-nord
" base16-nova
" base16-one-light
" base16-outrun-dark
" base16-papercolor-dark
" base16-papercolor-light
" base16-paraiso
" base16-pico
" base16-pop
" base16-railscasts
" base16-rebecca
" base16-sandcastle
" base16-shapeshifter
" base16-snazzy
" base16-solarized-dark
" base16-solarized-light
" base16-summerfruit-dark
" base16-summerfruit-light
" base16-synth-midnight-dark
" base16-tube
" base16-twilight
" base16-unikitty-dark
" base16-unikitty-light
" base16-woodland
" base16-xcode-dusk
" base16-zenburn
" badwolf
" goodwolf
" gruvbox
" molokai
" nord
" PaperColor
" atom-dark
" atom-dark-256
" solarized
" one
colorscheme one " Selecciona el tema del editor
let g:airline_theme='transparent' " Selecciona el tema de la linea de datos
let NERDTreeQuitOnOpen=1 " Configuracion de NERDTree

let mapleader=" " " Configura la tecla ' ' como leader 
let base16colorspace=256 " Cambia el espacio de color de base16 con 256 colores

" Crea el atajo <20>s para usar easymotion
nmap <Leader>s <Plug>(easymotion-s2)
" Crea el atajo <20>nt para usar NERDTree
nmap <Leader>nt :NERDTreeFind<CR>
" Buffers
nmap <Leader>bn :bnext<CR>
nmap <Leader>bp :bprevious<CR>
" Atajo para correr archivos 'python'
nmap <Leader>py :!python3 %<CR>
" Atajo para correr archivos 'c'
nmap <Leader>gcc :!gcc % -o main && ./main<CR>
" Atajo para correr archivos 'c++'
nmap <Leader>cpp :!g++ % -o main && ./main<CR>
" Atajo para correr archivos 'go'
nmap <Leader>gor :!go run %<CR>
nmap <Leader>gob :!go build %<CR>
" Atajo para correr archivos 'ruby'
nmap <Leader>rb :!ruby %<CR>
" Atajo para correr archivos 'microC'
nmap <Leader>p87 :!xc8 % --chip=16F887 --outdir=c<CR>
nmap <Leader>p77 :!xc8 % --chip=16F877A --outdir=c<CR>
nmap <Leader>p50 :!xc8 % --chip=18F4550 --outdir=c<CR>
" Atajo para correr archivos 'java'
nmap <Leader>java :!java %<CR>
" Atajo para correr archivos 'LaTex'
nmap <Leader>pdf :!pdflatex ./main.tex && open main.pdf<CR>
" Correr archivos bash
nmap <Leader>sh :!bash %<CR>
" Atajos de ejecucion
nmap <Leader>build :!./.build<CR>
nmap <Leader>run :!./.run<CR>
nmap <Leader>clean :!./.clean<CR>
" Search
nmap <Leader>f :!search

" Atajos para git
nmap <Leader>ga :!git add 
nmap <Leader>gc :!git commit
nmap <Leader>gcm :!git commit -m 
nmap <Leader>gs :!git status
nmap <Leader>gsbs :!git status -bs
nmap <Leader>gb :!git branch
nmap <Leader>gba :!git branch -a
nmap <Leader>gbv :!git branch -v
nmap <Leader>gl :!git log
nmap <Leader>gln :!git log -n 
nmap <Leader>glo :!git log --oneline
nmap <Leader>glon :!git log --oneline -n 
nmap <Leader>gco :!git checkout 
nmap <Leader>gcob :!git checkout -b 
nmap <Leader>gr :!git restore
nmap <Leader>gd :!git diff %<CR>

function HighlightsTabsAndSpace ()
call feedkeys(":set listchars=eol:¬,tab:\\-->,trail:~,extends:>,precedes:<,space:\\|\<CR>")
call feedkeys(":set list\<CR>")
endfunction
nmap <leader>t :call HighlightsTabsAndSpace()<CR>
nmap <leader>tt :set nolist<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

