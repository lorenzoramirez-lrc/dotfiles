alias vim='nvim'
alias g++='g++-15'
alias gcc='gcc-15'
alias draw='open -a lorien'
alias ls='gls --color=auto'

setopt HIST_IGNORE_ALL_DUPS

t() {
    timer $1 -n "En este tiempo voy a hacer $2" && terminal-notifier -message 'Timer is Up!'\
        -title 'Time Control'\
        -sound Crystal  
}
autoload -Uz colors && colors
setopt PROMPT_SUBST

git_branch() {
  local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  [[ -n $branch ]] && echo "($branch)"
}

PROMPT='%F{117}%1~%f %F{114}$(git_branch)%f ❯ '

export LS_COLORS="di=1;38;5;75:ex=1;38;5;114"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
