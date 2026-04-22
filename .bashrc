# .bashrc
#
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

alias ..='cd ..'
alias ...='cd ../..'
alias df='df -hT'
alias du='du -sh'
alias ps='ps aux'
alias mkdir='mkdir -pv'
alias cp='cp -iv'               # bevestiging bij overschrijven
alias mv='mv -iv'               # bevestiging bij overschrijven
alias rm='rm -iv'               # bevestiging bij verwijderen
alias ports='ss -tulpn'
alias myip='curl -s ifconfig.me'


# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
