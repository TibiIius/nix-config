#!/usr/bin/env bash

USERNAME=${1:-$(whoami)}

home-manager switch --flake .\#${USERNAME} --impure
