#ip=`/sbin/ifconfig eth0 | /usr/bin/perl -ne 'if ( m/^\s*inet (?:addr:)?([\d.]+).*?cast/ ) { print qq($1\n); exit 0; }'`
PS1="\[\e[32;1m\]\u\[\e[m\]@\[\e[31m\]desktop\[\e[m\]:\[\e[33m\]\w\$\[\e[m\] "
PS1="\$(date +%m/%d\ %H:%M:%S) $PS1"
alias ls='ls -F --color=auto'
alias ll='ls -lh'
alias la='ll -a'
alias grep='grep --color=auto'
alias h='history 50'
alias htop='htop -d 5'
alias less='less -i'
alias j='jobs'
case "$-" in
    *i*)
        bind '"\x1b\x5b\x41":history-search-backward'
        bind '"\x1b\x5b\x42":history-search-forward'
        ;;
esac 
HISTFILESIZE=1000000000
HISTSIZE=1000000
HISTCONTROL=ignoredups
export LANG=C
export LANGUAGE=en_US.utf8
export LC_CTYPE=en_US.utf8
export LC_ALL=en_US.utf8
source ~/.gitrc
