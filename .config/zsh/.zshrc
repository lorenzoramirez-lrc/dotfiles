alias vim='nvim'
alias draw='open http://excalidraw.com'
alias ls='ls --color=auto'
eval "$(direnv hook zsh)"


setopt HIST_IGNORE_ALL_DUPS
setopt PROMPT_SUBST
export HISTSIZE=10000
export SAVEHIST=10000

git_branch() {
  local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  [[ -n $branch ]] && echo "($branch)"
}

PROMPT='%F{245}%1~%f %F{115}$(git_branch)%f λ '

export LS_COLORS="di=1;38;5;110:ex=1;38;5;108"
