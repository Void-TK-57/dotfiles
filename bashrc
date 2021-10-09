#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=/usr/local/bin:/usr/bin:/bin:~/.local/bin:$PATH

#
# Aliases
#

# ls aliases
alias ls='ls --color=auto'
alias lsa='ls -a'
# cd aliases
alias home='cd ~'
alias root='cd /'
alias code='cd ~/Desktop/Code/'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
# rm aliases
alias rmf='rm -rf'
# sudo aliases
alias please='sudo'
alias fucking='sudo'
# fetch alias
alias neofetch='clear; neofetch'
# cool aliases
alias clock='tty-clock -scb -C 6'
alias matrix='cmatrix -B -C cyan'


#
# Prompt
#

# user colors in prompt
color_prompt=yes

if [ "$color_prompt" = yes ]; then
    PS1='\[\033[1;32m\][\[\033[0m\]\u\[\033[1;34m\]@\[\033[0m\]\h\[\033[1;32m\]]─[\[\033[1;34m\]\w\[\033[1;32m\]]\[\033[0m\]\n\$ 〉'
else
    PS1='[\u@\h] ^t^`[\w]\n\$  ^l '
fi

#PS1='[\u@\h \W]\$ '


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/void/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/void/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/void/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/void/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# start with a system fetch
neofetch
