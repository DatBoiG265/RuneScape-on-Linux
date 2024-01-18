#!/bin/bash

#Deleting game files
rm -r $HOME/.runelite/
rm -r $HOME/games/RuneLite/
rm -rf ~/.local/share/applications/RuneLite.desktop

#Allow packages required by this app to be uninstalled
purge_packages || exit 1
