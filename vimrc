set runtimepath+=$HOME/dotfiles/vim_runtime

source $HOME/dotfiles/vim_runtime/vimrcs/basic.vim
source $HOME/dotfiles/vim_runtime/vimrcs/filetypes.vim
source $HOME/dotfiles/vim_runtime/vimrcs/plugins_config.vim
source $HOME/dotfiles/vim_runtime/vimrcs/extended.vim

set cursorline
set number
set relativenumber

try
source $HOME/dotfiles/vim_runtime/my_configs.vim
catch
endtry
