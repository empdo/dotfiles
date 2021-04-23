export PATH=$HOME/.node_modules/bin:$PATH
export npm_config_prefix=~/.node_modules
export PATH=$PATH:$HOME/.yarn/bin:/home/emil/.local/bin:$HOME/.gem/ruby/2.7.0/bin

export ZSH="/Users/emilessung/.oh-my-zsh"
export EDITOR="nvim"

ZSH_THEME="simple"

# Enable auto correct!
ENABLE_CORRECTION="true"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
unsetopt nomatch

alias xcopy="xclip -selection c"
alias xpaste="xclip -selection c -o"
alias fucking="sudo"
alias make="/usr/bin/make -j24"
alias v="nvim"
#alias neofetch='neofetch --source ~/.config/neofetch/duck.txt'

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
