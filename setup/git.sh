#!/usr/bin/env sh

echo 'Setting Up  Git config.'
echo ''
echo 'Enter your github username.'
# asks for user input. so by using the function 'read' here . There is no need to add any credentials.
read username
git config --global user.name "$username"
echo 'Enter your registered github mail id.'
read mail
git config --global user.email "$mail"
git config --global core.editor "nano"
printf '\n' | tee -a ~/.bashrc
echo "source ~/scripts/functions" >> ~/.bashrc
echo "onLogin" >> ~/.bashrc
sudo pacman -S figlet fortune-mod hub byobu --noconfirm
