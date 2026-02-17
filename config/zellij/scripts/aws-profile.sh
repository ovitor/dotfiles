#!/usr/bin/env bash

if [[ -z "$AWS_PROFILE" ]]; then
    exit 0
fi

PROFILE="$AWS_PROFILE"

case "$PROFILE" in
    *-prod)
        echo "#[fg=#f38ba8,bold]$PROFILE"
        ;;
    *-qa)
        echo "#[fg=#a6e3a1,bold]$PROFILE"
        ;;
    *-dr|*-sandbox)
        echo "#[fg=#f9e2af,bold]$PROFILE"
        ;;
    *)
        echo "#[fg=#a6adc8]$PROFILE"
        ;;
esac
