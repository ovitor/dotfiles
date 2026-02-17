#!/usr/bin/env bash

CONTEXT=$(kubectl config current-context 2>/dev/null)

case "$CONTEXT" in
    *liverpool-prod*)
        echo "#[fg=#f38ba8,bold]⎈ liverpool-prod"
        ;;
    *liverpool-qa*)
        echo "#[fg=#a6e3a1,bold]⎈ liverpool-qa"
        ;;
    *liverpool-dr*)
        echo "#[fg=#f9e2af,bold]⎈ liverpool-dr"
        ;;
    *caju-sandbox*)
        echo "#[fg=#f9e2af,bold]⎈ caju-sandbox"
        ;;
    *caju-local*)
        echo "#[fg=#f9e2af,bold]⎈ caju-local"
        ;;
    *)
        echo "#[fg=#a6adc8]$CONTEXT"
        ;;
esac
