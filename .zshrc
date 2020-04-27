# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/username/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="awesomepanda"


# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  ant
  github
  history-substring-search
  adb
)



source $ZSH/oh-my-zsh.sh

source ~/.zsh/alias.zsh
source ~/.zsh/android.zsh
source ~/.zsh/colors.zsh
source ~/.zsh/env.zsh
source ~/.zsh/history.zsh
source ~/.zsh/java.zsh
source ~/.zsh/keybinding.zsh
source ~/.zsh/locale.zsh
source ~/.zsh/motd.zsh
source ~/.zsh/options.zsh
source ~/.zsh/private.zsh
source ~/.zsh/terminal.zsh


# Load MOTD
if [[ -d ~/.motd.d ]]; then
    for motd in ~/.motd.d/*; do
        cat $motd
    done
fi
