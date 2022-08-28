# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias sshs36gong="ssh -X s36gong@linux.student.cs.uwaterloo.ca"
alias g="git"
alias gs="git status"
alias gst="git status"
alias ga="git add ."
alias gcm="git commit -m"
alias gps="git push"
alias gpl="git pull"
alias lc="leetcode"
alias pjava="/mnt/c/Program\ Files/Processing/processing-java.exe"
alias piconnect="ssh pi@192.168.0.116"

alias lcps="cd ~/.leetcode/code && g add . && g cm 'answer new question' && g ps"
alias epi="cd ~/.leetcode/code/epi"
alias cppshell="rm ~/Projects/scripts/temp.cpp && cp ~/Projects/scripts/main.cpp ~/Projects/scripts/temp.cpp && vim ~/Projects/scripts/temp.cpp"
alias cshell="rm ~/Projects/scripts/temp.c && cp ~/Projects/scripts/main.c ~/Projects/scripts/temp.c && vim ~/Projects/scripts/temp.c"

alias delta="ssh -i ~/.ssh/id_rsa -J s36gong@bastion.watonomous.ca s36gong@delta-ubuntu1.watocluster.local"
alias thor="ssh -i ~/.ssh/id_rsa -J s36gong@bastion.watonomous.ca s36gong@thor-ubuntu1.watocluster.local"
alias dmoj="cd ~/Projects/competitive-programming/DMOJ"
alias gen="g++ -std=c++17"
