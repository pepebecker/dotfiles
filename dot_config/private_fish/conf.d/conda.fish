if command -v $HOMEBREW_PREFIX/Caskroom/miniconda/base/bin/conda &> /dev/null
  eval $HOMEBREW_PREFIX/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source  
end
