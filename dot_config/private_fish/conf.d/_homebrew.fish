if [ (arch) = arm64 ]
    set -gx HOMEBREW_PREFIX /opt/homebrew
else
    set -gx HOMEBREW_PREFIX /usr/local
end
set -gx PATH $HOMEBREW_PREFIX/bin $PATH
set -gx PATH $HOMEBREW_PREFIX/sbin $PATH
