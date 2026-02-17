#!/usr/bin/env bash

kgpbn() {
  if [[ -z "$1" ]]; then
    echo "Usage: kgpbn <node-name> [kubectl-args...]"
    return 1
  fi
  local node="$1"
  shift
  kubectl get pods "$@" --field-selector="spec.nodeName=$node"
}

asp() {
    if [[ -z "$1" ]]; then
        echo "Usage: asp <profile>"
        echo "Example: asp caju-sandbox"
        echo "  asp --clear       - Clear AWS profile from status bar"
        return 1
    fi

    if [[ "$1" == "--clear" ]]; then
        unset AWS_PROFILE
        zellij pipe "zjstatus::pipe::pipe_aws_profile::"
        return 0
    fi

    export AWS_PROFILE="$1"

    case "$1" in
        *-prod)
            FORMATTED="#[fg=#f38ba8,bold]☁️ $1"
            ;;
        *-qa)
            FORMATTED="#[fg=#a6e3a1,bold]☁️ $1"
            ;;
        *-dr|*-sandbox)
            FORMATTED="#[fg=#f9e2af,bold]☁️ $1"
            ;;
        *)
            FORMATTED="#[fg=#a6adc8]☁️ $1"
            ;;
    esac

    zellij pipe "zjstatus::pipe::pipe_aws_profile::$FORMATTED"
}

gcp-account() {
    if [[ -z "$1" ]]; then
        echo "Usage: gcp <command> [args...]"
        echo "Commands:"
        echo "  activate <config>  - Activate gcloud configuration"
        echo "  project <project> - Set GCP project"
        echo "  account <account> - Set GCP account"
        echo "  refresh           - Refresh status bar with current config"
        echo "  clear             - Clear GCP from status bar"
        return 1
    fi

    local cmd="$1"
    shift

    if [[ "$cmd" == "clear" ]]; then
        zellij pipe "zjstatus::pipe::pipe_gcp_info::"
        return 0
    fi

    case "$cmd" in
        activate)
            gcloud config configurations activate "$@"
            ;;
        project)
            gcloud config set project "$@"
            ;;
        account)
            gcloud config set account "$@"
            ;;
        refresh)
            ;;
        *)
            echo "Unknown command: $cmd"
            return 1
            ;;
    esac

    local output=$("$HOME/.config/zellij/scripts/gcp-info.sh")
    if [[ -n "$output" ]]; then
        zellij pipe "zjstatus::pipe::pipe_gcp_info::$output"
    fi
}
