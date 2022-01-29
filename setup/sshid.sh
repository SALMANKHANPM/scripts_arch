#!/usr/bin/env bash

echo 'Generating a new SSH key.'
echo ' '
echo 'Enter Your registered github mail id & tap enter again.'
read mailid
ssh-keygen -t ed25519 -C "$mailid"

echo 'Adding SSH key to the workstation.'
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo 'Added SSH key Successfully.'
sudo pacman -S xclip konsole --noconfirm
xclip -sel clip <  ~/.ssh/id_ed25519.pub
echo 'SSH Key has been copied.'
echo ' '
sleep 1
echo 'to add it your github account. '
echo ''
echo 'Opening github.com'.
konsole --new-tab  -e python -m webbrowser https://github.com/settings/ssh/new
sleep 1
echo ' '
echo 'enter creditals to login to your account if asked.'
sleep 1
echo 'after pasting the text , click on Add SSH key.'
read -r -p "Press Enter To Continue."
sleep 1
echo 'yay! you are successfully added.'
sleep 1
echo ' '
echo 'Now Testing The Connection.'
ssh -T git@github.com
