# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="vim"

export PATH="/home/mike/.cargo/bin:/home/mike/.local/bin:$PATH"

bindkey -v 
export KEYTIMEOUT=1

HISTSIZE=10000
SAVEHIST=10000

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="dracula"
ZSH_THEME="gnzh"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
source /home/mike/Git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# My aliases
alias conkyrc="nvim ~/.conkyrc"
alias i3rc="nvim ~/.config/i3/config"
alias rofirc="cd ~/.config/rofi/scripts && ls"
alias picomrc="nvim ~/.config/picom/picom.conf"
alias vim="nvim"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias zathurarc="nvim ~/.config/zathura/zathurarc"
alias zshrc="nvim ~/.zshrc"
alias polyrc="nvim ~/.config/polybar/config.ini \
				     ~/.config/polybar/modules.ini \
		    	     ~/.config/polybar/user_modules.ini \
					 ~/.config/polybar/colors.ini"

alias isaac="cd /home/mike/.local/share/Steam/steamapps/common/The\ Binding\ of\ Isaac\ Rebirth"

alias doc2pdf="unoconv -f pdf"

# Default applications
alias pdf="zathura"
alias doc="libreoffice"








