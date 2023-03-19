function ll --wraps='exa --classify --color=auto --icons --group-directories-first --long --git' --description 'list contents of directory, in long format, with exa'
    exa --classify --color=auto --icons --group-directories-first --long --git $argv
end
