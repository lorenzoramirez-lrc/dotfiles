alias vim='nvim'
alias draw='open -a lorien'
alias ls='ls --color=auto'

setopt HIST_IGNORE_ALL_DUPS
setopt PROMPT_SUBST

git_branch() {
  local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  [[ -n $branch ]] && echo "($branch)"
}

PROMPT='%F{244}%1~%f %F{115}$(git_branch)%f ❯ '

export LS_COLORS="di=1;38;5;186:ex=1;38;5;115"

