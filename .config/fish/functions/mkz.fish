function mkz --description 'create directory and enter it with zoxide'
    mkdir --verbose --parents $argv
    z $argv
end
