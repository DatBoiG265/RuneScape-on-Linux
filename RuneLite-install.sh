#!/bin/bash
cd $HOME
mkdir games
cd games
mkdir RuneLite
cd RuneLite
#Download
sudo apt update && sudo apt upgrade -y
sudo apt install openjdk-17-jdk-y
wget https://github.com/runelite/launcher/releases/download/2.4.0/RuneLite.jar
wget https://support.runescape.com/hc/article_attachments/360002378849/RS_Rune_final.png
mv RS_Rune_final.png icon.png

#Install
java -jar RuneLite.jar

#Desktop shortcut
echo "[Desktop Entry]
Name=RuneLite
Comment=Open Source RuneScape Launcher
Icon=$HOME/games/RuneLite/icon.png
Exec=java -jar $HOME/games/RuneLite/RuneLite.jar
Path=$HOME/games/RuneLite/
Type=Application
Encoding=UTF-8
Terminal=false
Categories=Game;" > ~/.local/share/applications/RuneLite.desktop