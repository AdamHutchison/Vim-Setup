set nocompatible
so ~/.vim/plugins.vim                         "sourcing a seperate plugins.vim file for plugins installed using vundle
syntax enable                                 "enable syntax highlighting
set backspace=indent,eol,start                "allowing delete to function normally
let mapleader=','                             "changing <leader> from / to ,
set number                                    "set line numbers
set autoindent                                "setauto indend
set shell=/bin/bash
set autowriteall                              "auto writing of file when changing buffer
set tabstop=9
set expandtab
set softtabstop=5
set shiftwidth=5
set complete=.,w,b,u                         "searches current buffer, open buffers, unopenned bufferswhen using auto complete
set updatetime=250                           "reduces default update time to 250ms which is better for git gutter plugin
set ignorecase                               " ignore case when searching
set smartcase                                " ignore case if search pattern is all lowercase,
set autoindent                               " always set autoindenting on
set copyindent                               " copy the previous indentation on autoindenting
"Auto change directory to match current file <leader>cd
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
"Show (partial) command in the status line
set showcmd
"---------------------split settings------------------------
"changes default mappings for switching between open splits
nmap \<down> <C-W><C-J>
nmap \<up> <C-W><C-K>
nmap \<left> <C-W><C-H>
nmap \<right> <C-W><C-L>
"sets new splits to open to the right in vertical and below in horizontal
set splitbelow
set splitright
"---------------------phpqa settings------------------------
" Don't run messdetector on save (default = 1)
let g:phpqa_messdetector_autorun = 0
" Don't run codesniffer on save (default = 1)
let g:phpqa_codesniffer_autorun = 0

"---------------------mappings------------------------"
imap <Insert> <Nop>
inoremap <S-Insert> <Insert>
"makes it easy to edit .vimrc
nmap <leader>ev :e $MYVIMRC<CR>
"shortcut to cheetsheet
nmap <leader>cs :e ~/Documents/Vim-Setup/vimcheetsheet.txt<cr>
"clear highlighting from search
nmap <leader><space> :nohlsearch<cr>
"allows easy navigation to snippets file
nmap <leader>es :e ~/.vim/snippets/
"allows easy navigation to plugins file
nmap <leader>ep :e ~/.vim/plugins.vim<cr>
"allows use of CtrlV for pasting in normal mode
nmap <C-V> "+gP
"allows use of CtrlV for pasting in insert mode
imap <C-V> <ESC><C-V>i
"allows use of CtrlC for copying in insert mode
nmap <C-C> "+y
"allows CtrlA to be used to select all in normal mode
nmap <C-A>  gg<S-V><S-G>
"allows CtrlS to be used to save in insert mode
imap <C-S> <ESC>:w<cr>
"allows CtrlS to be used to save in normal mode
nmap <C-S> :w<cr>
"allows CtrlN to bring up new vertical split in normal mode
nmap <C-N> :vsp<cr>
"allows CtrlN to bring up new vertical split in visual mode
vmap <C-N> <ESC>:vsp<cr>
"allows CtrlN to bring up new vertical split in insert mode
imap <C-N> <ESC>:vsp<cr>
"allows use of CtrlE to go to end of line in normal mode
nmap <C-E> $i<right>
"allows use of ,,b to select buffer to got to
nmap <leader><leader>b <esc>:ls<cr>:b
"allows ,f to be used to produce :tag which allows a tag search
nmap <leader>s :tag<space>
nmap <leader>x :q<cr>
nmap <leader>b :bd<cr>
imap <leader>x <ESC>:q<cr>
:map <leader>z <ESC>:bd<cr>
"allow for easy deletion of content inside " ' { ( and [
:nmap d9 di(i
:nmap d{ di{i
:nmap d[ di[i
:nmap d< di<i
:nmap d2 di"i
:nmap d' di'i
"---------------------Git-Fugitive mapping------------------------"
:nmap <leader>gs <ESC>:Gstatus<cr>
:nmap <leader>gc <ESC>:Gcommit -v<cr>i
:nmap <leader>gm <ESC>:Gmerge<cr>
:nmap <leader>gp <ESC>:Gpull<cr>
:nmap <leader>gpp <ESC>:Gpush<cr>
:nmap <leader>ga <ESC>:Git add %:p<cr>
:nmap <leader>gaa <ESC>:Git add .<cr>
:nmap <leader>gg <ESC>:Git<space>
"---------------------Test mapping------------------------"
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
"--------------------JSHint Mappings------------------------"
:map <C-H> <ESC>:JSHint<cr>
"--------------------JS Beautify Mappings------------------------"
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
"--------------------ctrlp settings------------------------"
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
let g:ctrlp_by_filename = 1

"--------------------ctag mapping------------------------"
"allows easy you to easily go between tags using nm and mn
nmap nm :tn<cr>
nmap mn :tn<cr>
"allows easier scrolling between buffers
nmap zx :bn<cr>
nmap xz :bp<cr>
"---------------------Project-Specific-Mappings------------------------"
nmap<leader><leader>t :cd /home/adam/Sites/Trail-Monkey<cr> :e /home/adam/Sites/Trail-Monkey<cr>
" uses ,,s to navigate to site directory
nmap <leader><leader>s :cd /home/adam/Sites/
"--------------------Laravel-Mappings------------------------"
"allows use of ,lm to produce php artisan make: command
nmap <leader>lm :! php artisan make:
"allows use of ,,r to go to routes file
nmap <leader><leader>r :e routes/web.php<cr>
",zallows use of ,,c to go straigt to controller directory
nmap <leader><leader>c :e app/Http/Controllers/<cr>
"allows use of ,,v to g to views directory
nmap <leader><leader>v :e resources/views/<cr>
"allows use of ,,m to go to app directory (for Models)
nmap <leader><leader>m :e app<cr>
"allows use of ,,mi to open migrations
nmap <leader><leader>mi :e database/migrations/<cr>
" Concept - load underlying class for Laravel

"---------------------Visual-settings------------------------"

colorscheme atom-dark         "set color scheme
set t_CO=258
set guioptions -=m            "removes menu in gvim
set guioptions -=T            "removes top boarder in gvim
set guioptions -=r            "removes right boarder in gvim
set guioptions -=L            "removes left boarder in gvim
set guioptions -=e
set linespace=13              "sets line spacing in gvim
hi LineNr guibg=bg
hi vertsplit guifg=bg guibg=bg
set guicursor=i-n-v:ver25-iCursor
"---------------------lightline settigns------------------------"
set laststatus=2
set noshowmode
if !has('gui_running')
  set t_Co=256
endif


"---------------------vim-airline------------------------"
let g:airline_theme='minimalist'   "sets theme for vim-airline plugin
"---------------------search------------------------"
set hlsearch
set incsearch
"--------------------Auto-Commands------------------"
augroup autosourcing          "auto sources .vimrc file when it is saved
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
"--------------------NERDTree------------------"
let NERDTreeHijackNetrw=0          "prevents NERDTree from using - as default
nmap <C-Z> :NERDTreeToggle<cr>     
nmap <leader>fi <esc>,cd:NERDTreeToggle<cr>ma
"--------------------Ag search settings-----------------"
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'
"-------------------php-cs-fixer-----------------"
let g:php_cs_fixer_level = "@psr2"
let g:php_cs_fixer_path = "/home/adam/.config/composer/vendor/bin/php-cs-fixer"
"allows use of ,f to change format to psr2
nmap <leader>f <leader>pcf
nmap <leader>fd <leader>pcd
"--------------------vim-php-namesapce-----------------"
function! IPhpInsertUse()
     call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction

"uses ,n when curser is over class to add namespace to top of file
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
"uses ,nf add fully qaulified namespace to class
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>
"-----------------------------pdv settings---------------------------------
let g:pdv_template_dir = $HOME.'/.vim/bundle/pdv/templates_snip'
nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>
"-----------------------------Vim-Airline---------------------------------
let g:airline#extensions#tabline#enabled = 1
"-----------------------------vim complete me settings---------------------------------
":imap <tab>q <C-X><C-O>
autocmd FileType php setlocal omnifunc=phpcd#CompletePHP
"-----------------------------vim jsx settings---------------------------------
let g:jsx_ext_required = 0
"-----------------------------javascript libraries settings---------------------------------
let g:used_javascript_libs = 'react'
autocmd BufReadPre *.js let b:javascript_lib_use_react= 1
"-----------------------------vim-multiple-cursor---------------------------------
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-o>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
"-----------------------------Git Gutter Mappings---------------------------------
:map <leader><leader>g :GitGutterToggle<cr>
"-----------------------------Git Gutter Mappings---------------------------------
nmap <leader><leader><space> :TagbarToggle<CR>
