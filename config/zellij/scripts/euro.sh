#!/usr/bin/env bash

URL=https://economia.awesomeapi.com.br/json/last/EUR-BRL

color="#fab387"
output=$(curl --silent https://economia.awesomeapi.com.br/json/last/EUR-BRL | jq -r '"\(.EURBRL.code): \(.EURBRL.bid)"')
echo "#[fg=$color,bold]${output}"
