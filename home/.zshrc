# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zshrc.env
source ~/.zshrc.post
source ~/.zshrc.aliases

export ZSH="$HOME/.oh-my-zsh"

# set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# see https://github.com/ohmyzsh/ohmyzsh/wiki/themes
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
  asdf
  zoxide
  helm
  terraform
  gh
  aws
  taskwarrior
  fzf
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  docker
  kubectl
  gcloud
  golang
)

source $ZSH/oh-my-zsh.sh
# forcing tmux to have 256 colors
