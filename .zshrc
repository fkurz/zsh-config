neofetch

#
# 1. paths
#

# --- local packages --- #
export PATH="${PATH}:${HOME}/.local/bin"

# --- brew --- #
export PATH="${PATH}:/usr/bin:/usr/local/bin:/usr/local/sbin"

# --- npm --- #
export NODE_MODULES='/usr/local/Cellar/node/10.0.0/lib/node_modules'
export PATH="$PATH:$(npm config get prefix)/bin"

# --- texlive --- #
export TEXMF_DIR="/Users/main/Library/texmf/tex/latex"

# --- rust --- #
export PATH="$PATH:/Users/main/.cargo/bin"

# --- isabelle --- #
export ISABELLE_VERSION=2021
export ISABELLE_HOME="$(brew --prefix)/Caskroom/isabelle/${ISABELLE_VERSION}/Isabelle${ISABELLE_VERSION}.app"
export PATH="${ISABELLE_HOME}/bin:${PATH}"

# --- VS Code --- #
export VS_CODE_HOME="/Users/main/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin"
export VS_CODE_BIN="${VS_CODE_HOME}/Contents/Resources/app/bin"
export PATH="${PATH}:${VS_CODE_BIN}"

# --- LateX --- #
export TEX_BIN="/Library/TeX/texbin"
export PATH="${PATH}:${TEX_BIN}"

# --- Ruby --- #
export SDKROOT=$(xcrun --show-sdk-path)
export RUBY_VERSION=3.0.1
export PATH="${PATH}:${HOME}/.rbenv/versions/${RUBY_VERSION}/bin"

# --- Python --- #
export PYTHON_VERSION=3.9
alias python3="$(brew --prefix python@${PYTHON_VERSION})/bin/python${PYTHON_VERSION}"
alias python=python3
alias pip3="$(brew --prefix python@${PYTHON_VERSION})/bin/pip${PYTHON_VERSION}"
alias pip=pip3
# Add executables installed by pip3 to path
export PATH="${HOME}/Library/Python/${PYTHON_VERSION}/bin:${PATH}" 

#
# 2. aliases
#

alias ll="ls -l"

# --- git --- #
alias git:ca="git add --all && git commit -am"
alias git:qs="git:ca 'Quick save'"

# --- Skim --- #
alias skim="open -a Skim.app"

# --- Python --- #
alias python=python3

# --- Typora --- #
alias typora="open -a /Applications/Typora.app"

#
# 3. Scripts
#

# --- zsh --- #
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/main/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# User configuration

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
# if type brew &>/dev/null; then
#   [ -e "$(brew --prefix)/share/zsh-completions" ] && fpath=("$(brew --prefix)/share/zsh-completions" ${fpath})
# #  [ -e "$(brew --prefix)/share/zsh-syntax-highlighting" ] && fpath=(
# #    "$(brew --prefix)/share/zsh-syntax-highlighting" ${fpath})
#   [ -f "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && source \
#     "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# #  [ -e "$(brew --prefix)/share/zsh/site-functions" ] && fpath=(
# #    "$(brew --prefix)/share/zsh/site-functions" ${fpath})
# else
#   printf "[ERROR] Homebrew binary was not found\n"
# fi

# ZSH_DISABLE_COMPFIX="true"
# autoload -Uz compinit 
# compinit -u

setopt interactivecomments # Activate bash style comments

# --- git --- #
git config --global core.editor "code --wait" # Set VS Code as default editor for GIT

#  --- pyenv  --- #
printf "\nPython version: $(python --version)"

# --- rbenv --- #
eval "$(rbenv init -)"
printf "\nRuby version: %s" "$(ruby -v)"

# --- Starship --- #
eval "$(starship init zsh)"

# -- nvm -- #
export NVM_DIR="${HOME}/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export NODE_VERSION="lts/fermium"
printf "\n" 
nvm install "${NODE_VERSION}"

# --- sdkman --- #
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/main/.sdkman"
# Temporarily disable security checks in compinit by enforcing the -u flag
alias compinit="autoload -Uz compinit && compinit -u" 
[[ -s "/Users/main/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/main/.sdkman/bin/sdkman-init.sh"
unalias compinit
