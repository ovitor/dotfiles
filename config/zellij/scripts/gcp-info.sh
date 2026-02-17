#!/usr/bin/env bash

CLOUDSDK_CONFIG="${CLOUDSDK_CONFIG:-$HOME/.config/gcloud}"
ACTIVE_CONFIG=$(cat "$CLOUDSDK_CONFIG/active_config" 2>/dev/null)

if [[ -z "$ACTIVE_CONFIG" ]]; then
    exit 0
fi

CONFIG_FILE="$CLOUDSDK_CONFIG/configurations/config_$ACTIVE_CONFIG"

if [[ ! -f "$CONFIG_FILE" ]]; then
    exit 0
fi

PROJECT=$(grep "^project" "$CONFIG_FILE" 2>/dev/null | cut -d'=' -f2 | tr -d ' ')
ACCOUNT=$(grep "^account" "$CONFIG_FILE" 2>/dev/null | cut -d'=' -f2 | tr -d ' ')

if [[ -z "$PROJECT" && -z "$ACCOUNT" ]]; then
    exit 0
fi

if [[ -n "$PROJECT" ]]; then
    echo "#[fg=#a6adc8]☁️ $PROJECT"
else
    echo "#[fg=#a6adc8]☁️ $ACCOUNT"
fi
