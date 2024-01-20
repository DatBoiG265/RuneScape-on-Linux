#!/bin/bash

#Deleting game files
rm -r $HOME/games/RuneLite/
sudo rm -rf ~/usr/share/applications/RuneLite-OSRS.desktop

#Uninstalling packages required by this application
sudo apt remove openjdk-17-jdk
