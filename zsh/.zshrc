export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="nicoulaj"

plugins=(
	git
	z
	sudo
	dirhistory
	copybuffer

	fzf
	fzf-tab

	zsh-syntax-highlighting
	# zsh-autosuggestions
	zsh-history-substring-search

)
source $ZSH/oh-my-zsh.sh


bindkey '^R' fzf-history-widget

export FZF_CTRL_R_OPTS="
  --reverse
  --height 40%
  --layout=reverse
  --border
  --ansi
  --preview 'echo {}'
  --preview-window=hidden
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
export PATH="$PATH:/usr/local/go/bin"
export PATH="$HOME/go/bin:$PATH"

export LIBVIRT_DEFAULT_URI=qemu:///system

# Sudoedit 
export EDITOR="nvim"
export VISUAL="nvim"


# bun completions
[ -s "/home/player/.bun/_bun" ] && source "/home/player/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
