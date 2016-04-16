# export FZF_DEFAULT_COMMAND='ag -g ""'

# # Use ag instead of the default find command for listing candidates.
# # - The first argument to the function is the base path to start traversal
# # - Note that ag only lists files not directories
# # - See the source code (completion.{bash,zsh}) for the details.
# _fzf_compgen_path() {
#   ag -g "" "$1"
# }

# export FZF_DEFAULT_OPTS="--reverse --inline-info"

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fe() {
  IFS='
'
  local declare files=($(fzf-tmux --query="$1" --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
  unset IFS
}

# Modified version where you can press
#   - CTRL-O to open with `open` command,
#   - CTRL-E or Enter key to open with the $EDITOR
o() {
  local out file key
  out=$(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e)
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-vim} "$file"
  fi
}

# Search file contents
af() {
 # ag --nobreak --nonumbers --noheading . | fzf
 ag --nobreak --noheading --hidden $@ . | fzf
}
