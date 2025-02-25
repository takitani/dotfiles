# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting z)

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

fastfetch
#source /home/opik/.rvm/scripts/rvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#autokey-qt
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
#export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

. "$HOME/.asdf/asdf.sh"

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"

export PATH=$PATH:~/.dotnet/tools

export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:/home/opik/go/bin
export PATH=$PATH:$GOPATH/bin
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1

# deploy para producao
alias dppd='dotnet publish --configuration Release Intelligence.Service.SelfHost/Intelligence.Service.SelfHost.csproj --self-contained true --framework net8.0 --runtime win-x64 && cd Intelligence.Service.SelfHost/bin/Release/net8.0/win-x64/ && zip -r exatoapi.zip publish && cd - && scp Intelligence.Service.SelfHost/bin/Release/net8.0/win-x64/exatoapi.zip Administrator@172.30.2.223:C:/temp/deploy/exatoapi.zip && scp Intelligence.Service.SelfHost/bin/Release/net8.0/win-x64/exatoapi.zip Administrator@172.30.0.60:C:/temp/deploy/exatoapi.zip && scp Intelligence.Service.SelfHost/bin/Release/net8.0/win-x64/exatoapi.zip Administrator@172.30.1.72:C:/temp/deploy/exatoapi.zip'

alias dppd9='dotnet publish --configuration Release Intelligence.Service.SelfHost/Intelligence.Service.SelfHost.csproj --self-contained true --framework net9.0 --runtime win-x64 && cd Intelligence.Service.SelfHost/bin/Release/net9.0/win-x64/ && zip -r exatoapi.zip publish && cd - && scp Intelligence.Service.SelfHost/bin/Release/net9.0/win-x64/exatoapi.zip Administrator@172.30.2.223:C:/temp/deploy/exatoapi.zip && scp Intelligence.Service.SelfHost/bin/Release/net9.0/win-x64/exatoapi.zip Administrator@172.30.0.60:C:/temp/deploy/exatoapi.zip && scp Intelligence.Service.SelfHost/bin/Release/net9.0/win-x64/exatoapi.zip Administrator@172.30.1.72:C:/temp/deploy/exatoapi.zip'

alias dpcp='dotnet publish --configuration Release Intelligence.Service.SelfHost/Intelligence.Service.SelfHost.csproj --self-contained true --framework net8.0 --runtime win-x64 && cd Intelligence.Service.SelfHost/bin/Release/net8.0/win-x64/ && zip -r exatoapi.zip publish && cd - && scp Intelligence.Service.SelfHost/bin/Release/net8.0/win-x64/exatoapi.zip Administrator@172.30.0.25:C:/temp/deploy/exatoapi.zip && scp Intelligence.Service.SelfHost/bin/Release/net8.0/win-x64/exatoapi.zip Administrator@172.30.2.6:C:/temp/deploy/exatoapi.zip && scp Intelligence.Service.SelfHost/bin/Release/net8.0/win-x64/exatoapi.zip Administrator@172.30.1.193:C:/temp/deploy/exatoapi.zip'

alias dpcp9='dotnet publish --configuration Release Intelligence.Service.SelfHost/Intelligence.Service.SelfHost.csproj --self-contained true --framework net9.0 --runtime win-x64 && cd Intelligence.Service.SelfHost/bin/Release/net9.0/win-x64/ && zip -r exatoapi.zip publish && cd - && scp Intelligence.Service.SelfHost/bin/Release/net9.0/win-x64/exatoapi.zip Administrator@172.30.0.25:C:/temp/deploy/exatoapi.zip && scp Intelligence.Service.SelfHost/bin/Release/net9.0/win-x64/exatoapi.zip Administrator@172.30.2.6:C:/temp/deploy/exatoapi.zip && scp Intelligence.Service.SelfHost/bin/Release/net9.0/win-x64/exatoapi.zip Administrator@172.30.1.193:C:/temp/deploy/exatoapi.zip'

#alias dpqp='cd Intelligence.QueueProcessor.SelfHost2/bin/Release/net8.0/win-x64/ && zip -r queueproc.zip publish && cd - && scp Intelligence.QueueProcessor.SelfHost2/bin/Release/net8.0/win-x64/queueproc.zip Administrator@172.30.2.223:C:/temp/deploy/queueproc.zip'
alias dpqp='dotnet publish --configuration Release Intelligence.QueueProcessor.SelfHost2/Intelligence.QueueProcessor.SelfHost2.csproj --self-contained true --framework net9.0 --runtime win-x64 && cd Intelligence.QueueProcessor.SelfHost2/bin/Release/net9.0/win-x64/ && zip -r queueproc.zip publish && cd - && scp Intelligence.QueueProcessor.SelfHost2/bin/Release/net9.0/win-x64/queueproc.zip Administrator@172.30.2.223:C:/temp/deploy/queueproc.zip'

