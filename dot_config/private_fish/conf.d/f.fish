function f
    set files (fd --type f --hidden --max-depth 4 --exclude .git)
    set selected (printf "%s\n" $files | fzf-tmux -p --prompt="Open File: " --reverse --border)
    if [ -n "$selected" ]
        vims "$selected"
    end
end

bind \cf f
