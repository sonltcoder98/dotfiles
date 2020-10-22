# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/sonltcoder/.oh-my-zsh"
export GOPATH=$HOME/go
export PATH=$HOME/.cargo/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export PATH=/usr/local/Cellar/openssl@1.1/1.1.1g:$PATH
export PATH=$GOPATH/bin:$PATH
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
plugins=(
  zsh-autosuggestions
  git
)

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
alias cc="cargo check"
alias crl="cargo run --release"
alias cr="cargo run"
alias cb="cargo build"
alias ct="cargo test"
alias nv="nvim"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PANORAMIX_PATH="/Users/sonltcoder/rust/block-explorer/contract_decompiler/panoramix"
export ERC20_CONTRACT_PATH="/Users/sonltcoder/rust/block-explorer/contract_decompiler/contracts/ERC20.json"
export ERC721_CONTRACT_PATH="/Users/sonltcoder/rust/block-explorer/contract_decompiler/contracts/ERC721.json"
export DECOMPILE_PYMODULE_PATH="/Users/sonltcoder/rust/block-explorer/contract_decompiler/src/decompile.py"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PK="0x1ebcede2d460520441ab84b690e09db330c8498ddc352e3120b8280bf3c2af32"
export SIDECHAIN_URI="https://chain.skymavis.one/rpc"
export FIRST_SPARE_SIDECHAIN_URI="http://35.226.108.237:8545/"
export SECOND_SPARE_SIDECHAIN_URI="http://34.66.86.197:8545/"
export RINKEBY_URI="https://rinkeby.infura.io/v3/a83de24995b049608c518ebee2d89f02"
#export PK_BOB="0x2f233d1d575c7ca60cc2f35c5b1aa77873ff24ea66f8a8210c39dfbc77e41155"
export PK_BOB=""
export PK_CHARLIES="0xb1c137dcb9d05d5dbdd9c618427ea0d4ed299020e7d0c7c6591b7a070119ca9b"
export PK_EZREAL="0x6dfd32767754ccefa25cb41d7e7bc49ece4168d2142534785ab24675b8b1ab4d"

export DB_URI="mongodb://axie:axie@localhost:27017"
export DB_NAME="statistics"

export DISCORD_TOKEN="NzUzMTE5NjcyMDAxNjI2MTY1.X1hjWg.RDrObGIS3PVyYNGgWqt1qd9OlEQ"
export DATABASE_URL=postgresql://lunacia:ZLEgrDLHsu@localhost:5432/axie

export GITHUB_TOKEN="7e0fcd4bb9e762bf071a9b29e4d20d420dbb839d"
export DOCKER_REGISTRY_TOKEN="1ZW5Sqq2TsymTqt6A3ze"

export GONOPROXY="github.com/tsocial"
export GONOSUMDB="github.com/tsocial"
export GOPRIVATE="github.com/tsocial"
