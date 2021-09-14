" lin.vim

" 1) vim plugins
source $HOME/.vim/vim-plug.vim

" 2) standalone config
source $HOME/.vim/setting/lin-vim-standalone.vim

" 3) vim-plug config

" UI
source $HOME/.vim/setting/Yggdroot-indentLine.vim
source $HOME/.vim/setting/scrooloose-nerdtree.vim
source $HOME/.vim/setting/majutsushi-tagbar.vim
source $HOME/.vim/setting/split-term.vim

" Syntax highlight
source $HOME/.vim/setting/sheerun-vim-polyglot.vim
source $HOME/.vim/setting/interestingwords.vim

" Language Server
source $HOME/.vim/setting/neoclide-coc.nvim.vim
source $HOME/.vim/setting/ludovicchabant-vim-gutentags.vim
" source $HOME/.vim/setting/vista.vim

" Comment
source $HOME/.vim/setting/preservim-nerdcommenter.vim

" Search
source $HOME/.vim/setting/jremmen-vim-ripgrep.vim
source $HOME/.vim/setting/fzf.vim

" Keyboard Operation
source $HOME/.vim/setting/easymotion-vim-easymotion.vim
source $HOME/.vim/setting/haya14busa-incsearch.vim.vim
source $HOME/.vim/setting/junegunn-vim-easy-align.vim

" HTML/XML
source $HOME/.vim/setting/alvan-vim-closetag.vim

" Markdown
source $HOME/.vim/setting/plasticboy-vim-markdown.vim

" 语法高亮
source $HOME/.vim/setting/nvim-treesitter.vim

" 4) user setting
if filereadable(expand('~/.vim/user-settings.vim'))
    source $HOME/.vim/user-settings.vim

endif
