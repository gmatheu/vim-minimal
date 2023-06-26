call plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'tomtom/tcomment_vim'
  Plug 'ntpeters/vim-better-whitespace'

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()


" Plugins mappings

" Plug 'tomtom/tcomment_vim'
let g:tcomment_mapleader1 = ''
let g:tcomment_mapleader2 = ''
let g:tcomment_opleader1 = 'tc'
nnoremap <silent><leader>cc :TComment<CR>
vnoremap <silent><leader>cc :TComment<CR>
nnoremap <silent><leader>cb :TCommentBlock<CR>
vnoremap <silent><leader>cb :TCommentBlock<CR>

" Plug 'ntpeters/vim-better-whitespace'
let g:better_whitespace_filetypes_blacklist=['diff', 'gitcommit', 'unite', 'qf', 'help', 'markdown']
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" Plug 'junegunn/fzf'
" nnoremap <leader>af :Ag<space>

nnoremap <silent><leader>` :Files<CR>
nnoremap <silent><leader>. :Files<CR>
nnoremap <silent><leader>b :Buffers<CR>
nnoremap <leader>gf :GFiles<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>gm :GFiles?<CR>
nnoremap <leader>bl :BLines<CR>

