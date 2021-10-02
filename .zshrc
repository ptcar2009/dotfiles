# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH=$PATH:$HOME/go/bin
export FZF_default_command="find -l"
export DISABLE_auto_title='true'
alias setclip="xclip -selection c"
export VISUAL=nvim
export EDITOR="$VISUAL"
export PATH=$PATH:$HOME/.local/bin
export INPROV_PROVIDER_URL="http://inspr.com"
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -rF '
export REVIEW_BASE=main
export PATH=$PATH:$HOME/.cargo/bin
# set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# see https://github.com/ohmyzsh/ohmyzsh/wiki/themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# set list of themes to pick from when loading at random
# setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# if set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# uncomment the following line to use hyphen-insensitive completion.
# case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# uncomment the following line if pasting urls and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# uncomment the following line to enable command auto-correction.

# uncomment the following line to display red dots whilst waiting for completion.
# caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# see https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# uncomment the following line if you want to disable marking untracked files
# under vcs as dirty. this makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# you can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# which plugins would you like to load?
# standard plugins can be found in $ZSH/plugins/
# custom plugins may be added to $ZSH_CUSTOM/plugins/
# example format: plugins=(rails git textmate ruby lighthouse)
# add wisely, as too many plugins slow down shell startup.
plugins=(zoxide helm terraform gh aws taskwarrior fzf git zsh-autosuggestions zsh-syntax-highlighting docker kubectl gcloud golang)

source $ZSH/oh-my-zsh.sh

# user configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export GITHUB_TOKEN=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

export GOPRIVATE=github.com/cyralinc

# forcing tmux to have 256 colors
alias tmux=tmux -2
alias cyraldev=sudo docker start wrapper
eval `ssh-agent` &> /dev/null

# aws profile configuration
export AWS_PROFILE=admin-pcarvalho

export LD_LIBRARY_PATH=/opt/oracle/instantclient_21_1:$LD_LIBRARY_PATH
export PATH=/opt/oracle/instantclient_21_1:$PATH






chpwd () {
  [ -f ./.env ] && source ./.env
  set -- "$(git rev-parse --show-toplevel 2>/dev/null)" 2>/dev/null
  # If cd'ing into a git working copy and not within the same working copy
  if [ -n "$1" ] && [ "$1" != "$vc_root" ]; then
    vc_root="$1"
    git fetch --prune &> /dev/null
  fi
}
chpwd
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
source ~/completions/_istioctl

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

export JIRA_PROJECT=ENG
export REVIEW_BASE=main

export GIT_FEATURE_PREFIX=feature
export GIT_FIX_PREFIX=fix
export GIT_PATCH_PREFIX=tech

alias c=clear

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias brk="setxkbmap br -option case:swapescape; xset r rate 300 100"
alias us="setxkbmap us -option case:swapescape; xset r rate 300 100"
alias intl="setxkbmap us -variant intl -option case:swapescape; xset r rate 300 100"
[ -f "/home/ptcar/.ghcup/env" ] && source "/home/ptcar/.ghcup/env" # ghcup-env

alias dco=docker-compose
