function dot --wraps 'git' --description 'track and manage dotfiles'
    git --git-dir=$HOME/.dotfiles --work-tree=$HOME $argv
end
