# Fish Shell
set fish_greeting
set -gx CDPATH . ..

# Local Bin
set -gx PATH $HOME/.local/bin $PATH
set -gx PATH ./node_modules/.bin $PATH

# EDITOR
set -gx EDITOR lazy
