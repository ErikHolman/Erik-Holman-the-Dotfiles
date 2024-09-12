# ===============================================
#
# 	Erik Holman: the .zshrc
#	Last Change: 9/12/24
#
# ===============================================


# Powerlevel10k =================================
# 
# 	instant prompt, keep at top of ~/.zshrc
#
# ===============================================
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Oh My Zsh =====================================
#
#	export ZSH=	"path/to/your/.oh-my-zsh
#	ZSH_THEME	See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#
# ===============================================
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gozilla"


# OMZ Updates ===================================
#
# 	disabled	Disable automatic updates
# 	auto		Update automatically without asking
# 	reminder	Just remind me to update when it's time
# 	frequency	Set auto-update (in days): 'frequency 13'
#
# ===============================================
zstyle ':omz:update' mode reminder 


# OMZ Plugins ===================================
# 
# 	Example format: plugins=(rails git textmate ruby lighthouse)
# 	Add wisely, as too many plugins slow down shell startup.
#
#	https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
#	https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/thefuck
#	https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux
#	https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/python
#
#	Source the shell to confirm all is well
#
# ===============================================
eval "$(thefuck --alias)"
plugins=(git thefuck tmux python)
source $ZSH/oh-my-zsh.sh


# Erik's Special Place ==========================
#
#	export			Special exports unique to my workflow
#	prompt_context	Forces USER export
#
# ===============================================
export USER='erikholman'
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}


# Node Version Manager ==========================
#
#	Add NVM to PATH
#	Define NVM_DIR
#	Load NVM
#	Enables bash autocomplete
#
# ===============================================
export PATH="/usr/local/opt/node@14/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


# Postgress =====================================
#
#	WIP: This should be migrated to a .pgrc type file
#
# ===============================================
# export PATH="/usr/local/opt/postgresql@15/bin":$PATH
# export PGDATA='/usr/local/var/postgresql@15'
# export PGHOST=localhost
# alias start-pg='pg_ctl -l $PGDATA/server.log start'
# alias stop-pg='pg_ctl stop -m fast'
# alias show-pg-status='pg_ctl status'
# alias restart-pg='pg_ctl reload'
