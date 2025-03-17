if [ "$(uname -s)" = "Darwin" ]; then
  alias flushdns="sudo killall -HUP mDNSResponder"
fi

alias cdcustom="cd ~/.oh-my-zsh/custom"
alias cdrepo="cd ~/Documents/repos/"

# Git
alias gll='git log --graph --pretty=oneline --abbrev-commit'