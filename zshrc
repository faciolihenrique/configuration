# Path to your oh-my-zsh installation.
export ZSH=/home/henrique/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git web-search django archlinux history history-substring-search nanoc compleat pip extract )

# ----- User configuration ------ #

source $ZSH/oh-my-zsh.sh

# ---- EXPORT ---- #
export SSH_KEY_PATH="~/.ssh/dsa_id"
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
# Define system language
export LANG=pt_BR.UTF-8
# Define local and remote editor
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='atom'
fi
# History Control
HISTCONTROL=ignoreboth
export HISTCONTROL

# ---- ALIAS ---- #
# For a full list of active aliases, run `alias`.
alias gcc="gcc -std=c11"
alias la="ls -a"
alias zshcon="$EDITOR ~/.zshrc"
# Turning on/off gpu
alias gpuOff="sudo tee /proc/acpi/bbswitch <<<OFF"
alias gpuOn="sudo tee /proc/acpi/bbswitch <<<ON"
alias virtualKernel="sudo modprobe vboxdrv"


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
