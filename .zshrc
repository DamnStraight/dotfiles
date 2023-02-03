# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

plugins=(
    git 
    zsh-syntax-highlighting 
    zsh-autosuggestions 
    fnm 
    sdk
)

source $ZSH/oh-my-zsh.sh

# User configuration

# run fnm use when directory contains .node-version or .nvmrc
eval "$(fnm env --use-on-cd)"

# Fix for cava inside of Alacritty on macOS
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Keep at bottom of config
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
