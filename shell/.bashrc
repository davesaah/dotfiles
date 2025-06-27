# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

LOCAL=$HOME/.local/bin
RUST=$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin
GO=$HOME/go/bin
FLUTTER=$HOME/dev/flutter/bin/

export PATH=$PATH:$LOCAL:$RUST:$GO:$FLUTTER

# Path to your oh-my-bash installation.
export OSH='/home/davesaah/.oh-my-bash'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="robbyrussell"

# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=false

# To enable/disable display of Python virtualenv and condaenv
OMB_PROMPT_SHOW_PYTHON_VENV=true  # enable
# OMB_PROMPT_SHOW_PYTHON_VENV=false # disable

# Which completions would you like to load? 
# (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  ssh
)

# Which aliases would you like to load? 
# (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would you like to load? 
# (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
)

# aliases
alias nv=nvim
alias lzg=lazygit
alias lzd=lazydocker

source "$OSH"/oh-my-bash.sh
export EDITOR='nvim'
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
