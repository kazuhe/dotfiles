# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# fnm
eval "$(fnm env --use-on-cd --shell zsh)"

# pnpm
export PATH="$HOME/Library/pnpm:$PATH"
