autoload -U colors && colors
export PS1="%F{080}%~ %F{007}λ %{$reset_color%}% "

eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

alias vi=nvim

defaults write "$(osascript -e 'id of app "Cursor"')" ApplePressAndHoldEnabled -bool false
