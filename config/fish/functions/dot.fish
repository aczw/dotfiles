function dot --wraps 'git' --description 'track and manage dotfiles'
    set -l dotpath $HOME/dotfiles
    git --git-dir=$dotpath/.git --work-tree=$dotpath $argv
end
