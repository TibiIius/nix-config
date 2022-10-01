#!/usr/bin/env bash

HOSTNAME=${1:-$(cat /etc/hostname)}

sudo nixos-rebuild switch --flake .\#$HOSTNAME --impure
