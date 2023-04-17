#
# ~/.bashrc
#

# Set the terminal transparency for st
# echo "$(cat /proc/$PPID/comm)"
if [[ "$(cat /proc/$PPID/comm)" = "st" ]]; then
	transset-df "0.80" --id "$WINDOWID" > /dev/null
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# add user created scripts to $PATH
export PATH=$PATH:~/.local/bin

#where all of our user defined aliases are defined 
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Parrot os bash prompt
# PS1="\[\033[0;31m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root\[\033[01;33m\]@\[\033[01;96m\]\h'; else echo '\[\033[0;39m\]\u\[\033[01;33m\]@\[\033[01;96m\]\h'; fi)\[\033[0;31m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\]\\$\[\e[0m\]"

# default bash prompt (boring)
# PS1='[\u@\h \W]\$ '

# cool prompt
PS1='\[\033[32m\]\u\[\033[36m\]@\[\033[32m\]\h \[\033[37m\]\W\[\033[36m\]$ '

