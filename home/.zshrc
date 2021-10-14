# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zshrc.env
source ~/.zshrc.local
source ~/.zshrc.post
source ~/.zshrc.post.local
source ~/.zshrc.aliases
source ~/.zshrc.aliases.local

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
