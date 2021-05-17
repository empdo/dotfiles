neofetch

export PATH=$HOME/.node_modules/bin:$PATH
export npm_config_prefix=~/.node_modules
export PATH=$PATH:$HOME/.yarn/bin:/home/emil/.local/bin:$HOME/.gem/ruby/2.7.0/bin

export ZSH="/home/emil/.oh-my-zsh"
export EDITOR="nvim"

ZSH_THEME="lamda-duck"

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
alias ls="exa --icons -lx --group-directories-first"
alias lsa="exa --icons -xa --group-directories-first"
#alias neofetch='neofetch --source ~/.config/neofetch/duck.txt'

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
