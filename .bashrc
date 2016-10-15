############################################################
# Simple but Cute and Helpful (TM) Bash Settings
#
# cat feedback >> "kirtika.ruchandani@gmail.com"
############################################################

#!/usr/bin/env bash
# ${HOME}/.bashrc: executed by bash(1) for non-login shells.
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# User Info

export USERNAME="SHEN CHENGGUANG"
export NICKNAME="scg"

# Distribute bashrc into smaller, more specific files

source .shells/defaults
source .shells/functions
#source .shells/exports
source .shells/alias
PS1='\[\e[1;32m\]\u@\h\[\e[m\]:\[\e[1;34m\]\W\[\e[1;33m\]\$\[\e[m\] '
#source .shells/prompt   # Fancy prompt with time and current working dir
source .shells/git      # Conveniences - Display current branch etc

# Welcome message
echo -ne "Hello, $NICKNAME! Now is "; date +"%Y-%m-%d %H:%M:%S"

#echo "Hardware Information:"
#sensors  # Needs: 'sudo apt-get install lm-sensors'
#uptime   # Needs: 'sudo apt-get install lsscsi'
#lsscsi
#free -m
