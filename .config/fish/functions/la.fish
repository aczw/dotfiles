function la --wraps='exa --classify --all --color=auto --icons --group-directories-first' --description 'list contents of directory, including hidden files, with exa'
    exa --classify --all --color=auto --icons --group-directories-first $argv
end
