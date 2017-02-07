alias ll='ls -la'

git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }
#HOST='\033[02;36m\]\h'; HOST=' '$HOST
TIME='\033[01;31m\]\t \033[01;32m\]'
#LOCATION=' \033[01;34m\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
LOCATION=' \033[01;36m\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
BRANCH=' \033[00;33m\]$(git_branch)\[\033[00m\]\n\$ '
#PS1=$TIME$USER$HOST$LOCATION$BRANCH
PS1=$TIME$USER$LOCATION$BRANCH
PS2='\[\033[01;36m\]>'

ls --color=al > /dev/null 2>&1 && alias ls='ls -F --color=al' || alias ls='ls -G' 

export TERM=xterm-color
