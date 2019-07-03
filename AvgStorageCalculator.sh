#!/usr/bin/env zsh


open -a Terminal
df -h |  tail -n '+2' | tr '\%' ' ' | head -n 4 | awk '{ if($5 != 100) print $5}' | awk '{ total += $1 } END { print total/NR}'

