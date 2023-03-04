function lla --wraps='exa --classify --all --color=auto --icons --group-directories-first --long --git' --description 'list contents of directory, in long format including hidden files, with exa'
    exa --classify --all --color=auto --icons --group-directories-first --long --git $argv
end
