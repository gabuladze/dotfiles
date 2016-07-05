#
# ~/.bashrc
#

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# For command not found
[ -r /etc/profile.d/cnf.sh ] && . /etc/profile.d/cnf.sh

# Automatically append cd if input is dir
shopt -s autocd

# Line warp on window resize fix
shopt -s checkwinsize

alias ls='ls --color=auto'
alias pac="/usr/bin/yaourt -S" # default action	- install one or more packages
alias pacu="/usr/bin/yaourt -Syua" # '[u]pdate'		- upgrade all packages +AUR  to their newest version
alias pacr="sudo /usr/bin/pacman -Rns" # '[r]emove'		- uninstall one or more packages
alias pacs="/usr/bin/pacman -Ss" # '[s]earch'		- search for a package using one or more keywords
alias aur="/usr/bin/yaourt" # alias for yaourt
alias paci="/usr/bin/yaourt -Si" # '[i]nfo'		- show information about a package
alias paclo="/usr/bin/pacman -Qdt" # '[l]ist [o]rphans'	- list all packages which are orphaned
alias pacc="sudo /usr/bin/pacman -Scc" # '[c]lean cache'	- delete all not currently installed package files
alias paclf="/usr/bin/pacman -Ql" # '[l]ist [f]iles'	- list all files installed by a given package
alias pacexpl="sudo /usr/bin/pacman -D --asexp"	# 'mark as [expl]icit'	- mark one or more packages as explicitly installed
alias pacimpl="sudo /usr/bin/pacman -D --asdep"	# 'mark as [impl]icit'	- mark one or more packages as non explicitly installed
alias psync='sudo /usr/bin/pacman -Syy' # sync mirrors

# '[r]emove [o]rphans' - recursively remove ALL orphaned packages
alias pacro="/usr/bin/pacman -Qtdq > /dev/null && sudo /usr/bin/pacman -Rns \$(/usr/bin/pacman -Qtdq | sed -e ':a;N;$!ba;s/\n/ /g')"

alias q="exit"

cl() {
		local dir="$1"
			local dir="${dir:=$HOME}"
				if [[ -d "$dir"  ]]; then
							cd "$dir" >/dev/null; ls
								else
											echo "bash: cl: $dir: Directory not found"
												fi

}

#PS1='[\u@\h \W]\$ '
PS1=" \W \[$txtgrn\]$ \[$txtrst\]"

#function _update_ps1() {
#    PS1="$(~/powerline $? 2> /dev/null)"
#}

#if [ "$TERM" != "linux"  ]; then
#	    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi

[[ -s "$HOME/.rvm/scripts/rvm"  ]] && source "$HOME/.rvm/scripts/rvm" #RVM

# RVM bash completion
[[ -r "$HOME/.rvm/scripts/completion"  ]] && source "$HOME/.rvm/scripts/completion"

