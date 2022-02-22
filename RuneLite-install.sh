#!/bin/bash
cd Games
mkdir RuneLite
cd RuneLite
#Download
wget https://github.com/runelite/launcher/releases/download/2.4.0/RuneLite.jar

#Install
java -jar RuneLite.jar

#Desktop shortcut
echo "[Desktop Entry]
Name=RuneLite
Comment=Open Source RuneScape Launcher
Icon=/home/pi/.runelite/icon.png
Exec=java -jar /home/pi/Games/RuneLite/RuneLite.jar
Path=/home/pi/Games/RuneLite/
Type=Application
Encoding=UTF-8
Terminal=false
Categories=Game;" > ~/.local/share/applications/RuneLite.desktop