# ===============================================
#
# 	Erik Holman: the .zshrc
#	Last Change: 9/18/24
#
# ===============================================


# Oh My Zsh =====================================
#
#	export ZSH=	"path/to/your/.oh-my-zsh
#	ZSH_THEME	See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#
# ===============================================
export ZSH="/Users/erikholman/.oh-my-zsh"
ZSH_THEME="agnoster"


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
#	https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/python
#	https://github.com/zsh-users/zsh-syntax-highlighting
#
#	Source the shell to confirm all is well
#
# ===============================================
eval "$(thefuck --alias)"
plugins=(git thefuck python zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh


# OhMyPosh ======================================
#
#	Init for Oh My Posh, default theme
#	Disable OMP in standard terminal - MacOS only
#
# ===============================================
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
	eval "$(oh-my-posh init zsh --config ~/catppuccin_mocha.omp.json)"
fi


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
