# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$PATH:$(go env GOPATH)/bin
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias sshs36gong="ssh -X s36gong@linux.student.cs.uwaterloo.ca"
alias gs="git status"
alias gst="git status"
alias ga="git add"
alias gb="git branch"
alias gcm="git commit -m"
alias gps="git push"
alias gpl="git pull"
alias lc="leetcode"

alias cppshell="rm ~/Projects/scripts/temp.cpp && cp ~/Projects/scripts/main.cpp ~/Projects/scripts/temp.cpp && vim ~/Projects/scripts/temp.cpp"
alias cshell="rm ~/Projects/scripts/temp.c && cp ~/Projects/scripts/main.c ~/Projects/scripts/temp.c && vim ~/Projects/scripts/temp.c"

alias delta="ssh -i ~/.ssh/id_rsa -J s36gong@bastion.watonomous.ca s36gong@delta-ubuntu2.cluster.watonomous.ca"
alias trubuntu3="ssh -i ~/.ssh/id_rsa -J s36gong@bastion.watonomous.ca s36gong@tr-ubuntu3.cluster.watonomous.ca"
alias thor="ssh -i ~/.ssh/id_rsa -J s36gong@bastion.watonomous.ca s36gong@thor-ubuntu1.cluster.watonomous.ca"
alias trpro="ssh -i ~/.ssh/id_rsa -J s36gong@bastion.watonomous.ca s36gong@trpro-ubuntu2.cluster.watonomous.ca"
alias wato3="ssh -i ~/.ssh/id_rsa -J s36gong@bastion.watonomous.ca s36gong@wato3-ubuntu1.watocluster.local"
# alias gen="/opt/homebrew/opt/gcc/bin/g++-14 -std=c++20"
alias gen="clang++ -std=c++20"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/stevengong/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/stevengong/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/Users/stevengong/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/Users/stevengong/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/stevengong/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/Users/stevengong/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<


: '
export OPENSSL_ROOT_DIR=/opt/homebrew/opt/openssl@3
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PYENV_ROOT/shims:${PATH}"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
'

export ROS_DOMAIN_ID=0
export RTI_LICENSE_FILE=/Applications/rti_connext_dds-6.1.1/rti_license.dat
export PATH="/Users/stevengong/.local/bin:$PATH"
# export RMW_IMPLEMENTATION=rmw_connext_cpp
#

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# bun completions
[ -s "/Users/stevengong/.bun/_bun" ] && source "/Users/stevengong/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/opt/homebrew/opt/ccache/libexec:$PATH"
alias source-esp="source ~/esp/esp-idf/export.sh"
# source "$HOME/esp/esp-idf/export.sh"

