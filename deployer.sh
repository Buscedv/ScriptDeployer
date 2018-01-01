# Deployer
# Script for turning scripts like (sh/py/c...) Into appliction launchers (Desktop Launchers // Entrys)
# 3.0
# Written by: Edvard Buck-Nielsen (Buscedv)
# Date: Mon Jan 1 2018

clear
echo "\033[7mDeployer For Linux:\033[0m"
echo "\033[5mTurn your scripts into applications.\033[0m"
echo "Press enter to start..."
read rewd
clear
echo "\033[7mDeployer Part: 1\033[0m"
printf "Name your program: "
read -r prog_name
printf "Add a comment/description: "
read -r prog_comment
printf "Program version: (1.0,2.0...) "
read -r prog_version
clear
echo " \033[7mDeployer Part: 2"
echo "Project: "$prog_name"\033[0m"
printf "Script file path: (ex. /usr/share/my_program.py) "
read -r prog_path
printf "Program path without filename: "
read -r prog_pathn
printf "Icon path: (ex. /home/user/Logo.png) "
read -r prog_icon
printf "Open in terminal or in background: (true/false) "
read -r prog_terminal
clear
echo "\033[7mDeployer Part: 3"
echo "Project: "$prog_name"\033[0m"
echo "Start generation by pressing enter:"
read rewd2
clear
cd $prog_pathn
sudo touch $prog_name.desktop
echo "[Desktop Entry]" | sudo tee -a $prog_name.desktop
echo "Version="$prog_version | sudo tee -a $prog_name.desktop
echo "Name="$prog_name | sudo tee -a $prog_name.desktop
echo "Comment="$prog_comment | sudo tee -a $prog_name.desktop
echo "Exec = $prog_path" | sudo tee -a $prog_name.desktop
echo "Icon = $prog_icon" | sudo tee -a $prog_name.desktop
echo "Terminal = $prog_terminal" | sudo tee -a $prog_name.desktop
echo "Type = Application" | sudo tee -a $prog_name.desktop
echo "Categories = Utility;Application;" | sudo tee -a $prog_name.desktop
sudo chmod 777 $prog_name.desktop
sudo chmod +x $prog_name.desktop
sudo chmod 777 $prog_path
sudo chmod +x $prog_path
cd
clear
echo "\033[7mDeployer Part: 4"
echo "Project: "$prog_name"\033[0m"
echo "Done!"
echo "Press enter to exit: "
read rewd3
clear
exit
