#!/bin/bash
cd $HOME
mkdir games
cd games
mkdir RuneLite
cd RuneLite
sudo apt update && sudo apt upgrade -y
sudo apt-get install openjdk-17-jdk

#Download
wget https://github.com/runelite/launcher/releases/download/2.4.0/RuneLite.jar || error 'Failed to download repository!'
wget https://support.runescape.com/hc/article_attachments/360002378849/RS_Rune_final.png || error 'Failed to download repository!'
convert -resize 64x64 RS_Rune_final.png icon-64.png
rm -r $HOME/games/RuneLite/RS_Rune_final.png

#Desktop shortcut
echo "[Desktop Entry]
Name=RuneLite
Comment=Open Source RuneScape Launcher
Icon=$HOME/games/RuneLite/icon-64.png
Exec=java -jar $HOME/games/RuneLite/RuneLite.jar
Path=$HOME/games/RuneLite/
Type=Application
Encoding=UTF-8
Terminal=false
Categories=Game;" | sudo tee /usr/share/applications/RuneLite-OSRS.desktop
