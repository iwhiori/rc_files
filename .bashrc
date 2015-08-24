#ip=`/bin/hostname -I`
#ip=`/sbin/ifconfig eth1 | /usr/bin/perl -ne 'if ( m/^\s*inet (?:addr:)?([\d.]+).*?cast/ ) { print qq($1\n); exit 0; }'`
ip='desktop'

export PROMPT_COMMAND=__prompt_command  # Func to gen PS1 after CMDs
function __prompt_command() {
    local EXIT="$?"             # This needs to be first
    PS1=""

    local RCol='\[\e[0m\]'

    local Red='\[\e[0;31m\]'
    local Gre='\[\e[0;32m\]'
    local BYel='\[\e[1;33m\]'
    local BBlu='\[\e[1;34m\]'
    local Pur='\[\e[0;35m\]'

    if [ $EXIT != 0 ]; then
        PS1+="${Red}[$EXIT]${RCol}"      # Add red if exit code non 0
    else
        PS1+="${Gre}[$EXIT]${RCol}"
    fi
    PS1+=" \$(date +%m/%d\ %H:%M:%S) "
    PS1+="\[\e[32;1m\]\u\[\e[m\]@\[\e[31m\]$ip\[\e[m\]:\[\e[33m\]\w\$\[\e[m\] "
}
LS_COLORS='or=31'
export LS_COLORS
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ll -a'
alias lr='ll -R'
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
export EDITOR=vim
export PATH=${PATH}:/home/owen_wen/git.htc.com/htc_pp_tools/ota_utility
export PATH=${PATH}:/home/owen_wen/Downloads/android-sdk-linux/tools
source ~/.gitrc
source ~/.git-completion.rc
export USE_CCACHE=1
export CCACHE_DIR=/disk2/CCACHE
ulimit -n 4096
