# Define an array of key-value pairs (folder-name and Vim-name)
set -l vim_configs "lazy=nvim-LazyVim" "nvchad=nvim-NvChad" "astro=nvim-AstroNvim" "space=nvim-SpaceVim"
# Create functions using a loop
for config in $vim_configs
    set -l config_name (string split = $config)[1]
    set -l folder_name (string split = $config)[2]
    # alias $config_name "env NVIM_APPNAME=$folder_name nvim $argv"
    alias "t$config_name" "env NVIM_APPNAME=$folder_name tvim $argv"
    alias "n$config_name" "env NVIM_APPNAME=$folder_name neovide $argv"
end

# LunarVim in Neovide
alias lvide "neovide --neovim-bin (which lvim)"

bind \cv vims
