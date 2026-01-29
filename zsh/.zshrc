export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="arrow"

plugins=(
	# default
	git
	z
	sudo
	dirhistory
	copybuffer

	fzf
	fzf-tab

	#highlighting
	zsh-syntax-highlighting

)
source $ZSH/oh-my-zsh.sh
bindkey '^R' fzf-history-widget

export FZF_CTRL_R_OPTS="
  --reverse
  --preview 'echo {}'
  --preview-window down:3:wrap
  --height 40%
"


# Remove duplicates from history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

# -- History settings -- 
HISTORY_IGNORE_PATTERN=(
  "ls"
  "ls *"
  "cd"
  "cd *"
  "pwd"
  "exit"
  "history"
  "cd -"
)
# -- -- 




export PATH="$HOME/.local/bin:$PATH"

# Sudoedit 
export EDITOR="nvim"
export VISUAL="nvim"


# ----- # Aliases

# telegram app (path=home/Downloads/Telegram) 
alias telegram="~/Downloads/Telegram/Telegram > /dev/null 2>&1 &"

# short-formed [docker ps] command
alias dps='docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"'

# whonix
alias whonix="~/Code/scripts/whonix/whonix-start.sh"

# day-night theme changer alias
# changing .config/alacritty/alacritty.toml 
# and .config/nvim/lua/plugins/colorschemes.lua

# ----- #


# bun completions
[ -s "/home/kintsugi/.bun/_bun" ] && source "/home/kintsugi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
