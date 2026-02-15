kgpbn() {
  if [[ -z "$1" ]]; then
    echo "Usage: kgpbn <node-name> [kubectl-args...]"
    return 1
  fi
  local node="$1"
  shift
  kubectl get pods "$@" --field-selector="spec.nodeName=$node"
}

start-work() {
  export WORK=true
}

stop-work() {
  unset WORK
}
