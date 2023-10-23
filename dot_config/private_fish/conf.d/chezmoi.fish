alias cm chezmoi
function chezmoi
    if not type -q chezmoi
        echo "Chezmoi is not installed. Please install it before using this command."
        return
    end
    if not test "$argv[1]" = diff
        command chezmoi $argv
        return
    end
    if command -q delta
        command chezmoi diff --pager delta
    else if command -q nvimpager
        command chezmoi diff --pager nvimpager
    else
        command chezmoi diff
    end
end
