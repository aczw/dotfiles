function l --wraps='exa --classify --color=auto --icons --group-directories-first' --description 'list contents of directory with exa'
    exa --classify --color=auto --icons --group-directories-first $argv
end
