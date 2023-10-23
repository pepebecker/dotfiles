# set -gx LLVM_PREFIX $HOMEBREW_PREFIX/opt/llvm@11
# set -gx LLVM_PREFIX $HOMEBREW_PREFIX/opt/llvm@13
set -gx LLVM_PREFIX $HOMEBREW_PREFIX/opt/llvm
if test -d $LLVM_PREFIX
    set -gx PATH $LLVM_PREFIX/bin $PATH
    set -gx LDFLAGS -L$LLVM_PREFIX/lib
    set -gx CPPFLAGS -I$LLVM_PREFIX/include
    # Custom
    # set -gx CC $LLVM_PREFIX/bin/clang
    # set -gx CPATH $HOMEBREW_PREFIX/include
    # set -gx LIBRARY_PATH $HOMEBREW_PREFIX/lib
end
