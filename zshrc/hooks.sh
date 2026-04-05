__K8S_LAST_CTX=""
__AWS_LAST_PROFILE=""

k8s_ctx_hook() {
  [[ -z "$KUBIE_ACTIVE" ]] && return

  local ctx=$(kubectl config current-context 2>/dev/null)

  [[ -z "$ctx" ]] && return
  [[ "$ctx" == "$__K8S_LAST_CTX" ]] && return

  __K8S_LAST_CTX="$ctx"

  case "$ctx" in
    *liverpool-prod*)
      output="#[fg=#f38ba8,bold]k8s: liverpool-prod"
      ;;
    *liverpool-qa*)
      output="#[fg=#a6e3a1,bold]k8s: liverpool-qa"
      ;;
    *liverpool-dr*)
      output="#[fg=#f9e2af,bold]k8s: liverpool-dr"
      ;;
    *kind-sandbox*)
      output="#[fg=#f9e2af,bold]k8s: kind-sandbox"
      ;;
    *)
      output="#[fg=#f9e2af,bold]k8s: $ctx"
      ;;
  esac
  zellij pipe "zjstatus::pipe::pipe_k8s_info::$output"
}

aws_info_hook() {
  [[ -z "$AWS_PROFILE" ]] && return

  local profile="$AWS_PROFILE"
  [[ -z "$profile" ]] && return
  [[ "$profile" == "$__AWS_LAST_PROFILE" ]] && return

  __AWS_LAST_PROFILE="$profile"
  case "$AWS_PROFILE" in
    *-prod)
      output="#[fg=#f38ba8,bold]$AWS_PROFILE"
      ;;
    *-qa)
      output="#[fg=#a6e3a1,bold]$AWS_PROFILE"
      ;;
    *-dr|*-sandbox)
      output="#[fg=#f9e2af,bold]$AWS_PROFILE"
      ;;
    *)
      output="#[fg=#a6adc8,bold]$AWS_PROFILE"
  esac
  zellij pipe "zjstatus::pipe::pipe_aws_info::$output"
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd k8s_ctx_hook
add-zsh-hook precmd aws_info_hook
