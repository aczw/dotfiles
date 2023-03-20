# export some useful variables
set -gx SUDO_EDITOR nvim
set -gx EDITOR nvim
set -gx VISUAL nvim

# XDG directory support for GHCup
set -gx GHCUP_USE_XDG_DIRS 1

# abbreviations for common commands
abbr --add nv nvim
abbr --add cls clear
abbr --add sued sudoedit
abbr --add pf pfetch
abbr --add py python

# add stuff to $PATH,
fish_add_path ~/.local/bin
fish_add_path ~/.local/bin/haskell

# disable greeting on startup
set -g fish_greeting

# setup zoxide
zoxide init fish | source

