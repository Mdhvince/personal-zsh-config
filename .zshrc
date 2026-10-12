export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""

# =============================================================================
# Terminal customization
# =============================================================================

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  fast-syntax-highlighting
  zsh-autocomplete
)

SPACESHIP_PROMPT_ORDER=(
  venv
  dir
  git
  python
  line_sep
  char
)

SPACESHIP_PROMPT_PREFIXES_SHOW=false
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PYTHON_SHOW=true
SPACESHIP_VENV_SHOW=true
# Afficher .venv plutôt que le nom du projet
SPACESHIP_VENV_GENERIC_NAMES=()
# Ajouter les parenthèses autour du nom
SPACESHIP_VENV_COLOR="green"
SPACESHIP_VENV_PREFIX=""
SPACESHIP_VENV_SYMBOL="("
SPACESHIP_VENV_SUFFIX=") "
export VIRTUAL_ENV_DISABLE_PROMPT=1


source $ZSH/oh-my-zsh.sh
source "$HOME/.zsh/spaceship/spaceship.zsh"

# =============================================================================
# PATH & toolchain
# =============================================================================
# Order matters here: each line either prepends or appends, so the last
# prepend wins. Keep the sequence below as-is unless you mean to change
# which binary takes precedence.

if [[ -d /opt/homebrew/opt/openjdk@17 ]]; then
  export JAVA_HOME=/opt/homebrew/opt/openjdk@17
  export PATH="$JAVA_HOME/bin:$PATH"
fi
export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin"

# uv / uvx shims
if [[ -r "$HOME/.local/bin/env" ]]; then
  . "$HOME/.local/bin/env"
fi

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"


# =============================================================================
# Environment
# =============================================================================

# /editor command
export EDITOR=zed

# Private settings stay outside this repository.
if [[ -r "$HOME/.zshrc.local" ]]; then
  source "$HOME/.zshrc.local"
fi

# =============================================================================
# Aliases: shell & config
# =============================================================================

alias clc="clear"
alias zshconfig="vi ~/.zshrc"
alias configzsh="vi ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias reloadzsh="source ~/.zshrc"

# =============================================================================
# Aliases: git
# =============================================================================

alias gcb="git checkout -b"
alias gpfo="git pull --ff-only"
alias gcd="git checkout develop && git pull --ff-only"
alias gck="git checkout"


# =============================================================================
# Aliases: Python & tests
# =============================================================================

alias pyinit="$HOME/.local/bin/pyinit"


# =============================================================================
# Aliases: projects & tooling
# =============================================================================

alias piu="pi update && pi update --extensions && pi"

# Shell completion
if (( $+commands[op] )); then
  eval "$(op completion zsh)"
  compdef _op op
fi
