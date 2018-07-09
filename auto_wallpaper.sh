#!/bin/bash 
cd /home/fire/Pictures/wallpapers/ 
while [ 1 ] 
  do 
  set - * 
  length=$# 
  random_num=$(( $RANDOM % ($length + 1) )) 
  gsettings set org.gnome.desktop.background picture-uri "file:/home/fire/Pictures/wallpapers/${!random_num}" 
  sleep 600	# 68分钟变化一次桌面墙纸 
done