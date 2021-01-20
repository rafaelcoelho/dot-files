#!/bin/bash

_rcFile="/home/${USER}/.bashrc"
if [ "$0" == "zsh" ]; then
  _rcFile="/home/${USER}/.zshrc"
fi

echo "source /home/${USER}/.dot-files/.aliases" >> $_rcFile 
echo "source /home/${USER}/.dot-files/.custom" >> $_rcFile