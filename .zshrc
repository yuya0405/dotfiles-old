PROMPT='%m:%F{green}%~%f %n %F{yellow}$%f '

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="$PATH:/Users/benika/flutter/bin"

alias jn='jupyter notebook'
alias jl='jupyter lab'
alias g='git'

export LANG=ja_JP.UTF-8

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/benika/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/benika/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/benika/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/benika/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

if [ -d $HOME/.anyenv ]
then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
fi

]# set theme via `starship`
eval "$(starship init zsh)"

# for starship(zsh) and CDK
export CDK_VERSION="$(cdk --version | awk '{printf $1}')"
