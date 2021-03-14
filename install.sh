#!/bin/bash

setup() {
  echo "The RC (Run Commands) file ${1} is going to be updated"

  echo "source /home/${USER}/.dot-files/.aliases" >> $1
  echo "source /home/${USER}/.dot-files/.custom" >> $1
}

if [[ $SHELL == *"zsh" ]]; then
  _rcFile="/home/${USER}/.zshrc"
  setup $_rcFile
elif [[ $SHELL == *"bash" ]]; then
  _rcFile="/home/${USER}/.bashrc"
  setup $_rcFile
else
  echo "The configuration won't be updated due to invalid shell client, shell: ${SHELL}"
fi
