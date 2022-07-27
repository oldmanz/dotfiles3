autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif


call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox
