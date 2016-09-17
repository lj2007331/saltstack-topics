HISTSIZE=10000
HISTTIMEFORMAT="%F %T `whoami` "
IP_ADDR=$(/sbin/ifconfig|/bin/sed -n  '/inet addr:10./{s/:/ /p}'|/bin/awk 'NR==1{print $3}')
if [ -n "$IP_ADDR" ];then
    _PS="\[\e[1;32m\][\u@\[\e[m\]\[\e[1;36m\]${IP_ADDR}\[\e[m\]\[\e[1;32m\] \w]\[\e[m\]\\$ "
fi

if [ -n "$IP_ADDR" ];then
    PS1="\[\e[37;40m\][\[\e[32;40m\]\u\[\e[37;40m\]@${IP_ADDR} \[\e[35;40m\]\W\[\e[0m\]]\\$ "
else
    PS1="\[\e[37;40m\][\[\e[32;40m\]\u\[\e[37;40m\]@\h \[\e[35;40m\]\W\[\e[0m\]]\\$ "
fi

alias l='ls -AFhlt'
alias lh='l | head'
alias vi=vim

export GREP_OPTIONS="--color=auto"
alias grep='grep --color'
alias egrep='egrep --color'
alias fgrep='fgrep --color'
