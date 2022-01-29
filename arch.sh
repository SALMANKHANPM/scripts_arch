#!/usr/bin/env sh

echo 'Hi ! Thank You Using This Script.'
sleep 2
echo "A Fork Akhil sir's script with my(SALMAN KHAN) addtions."
echo ' '
echo "Initalizing Android Build Envirnoment."
echo ' '
bash setup/build-env.sh
echo ' '
echo 'Setup of Android Build Envirnoment Is Done.'
sleep 2
echo ' '
echo 'Setting Up Git Config Credentials'
bash setup/git.sh
echo 'Git Config Added To The WorkStation Successfully.'
sleep 2
echo ' '
echo 'Setting Up SSH For easier usage of various tools.'
bash setup/sshid.sh
echo ' '
sleep 2
echo 'Initalizing Requirement for Glibc 2.34.'
bash setup/glibc.sh
sleep 2
echo ' '
echo 'Setting Up Oh My ZSH Theme.'
echo 'Making powerlevel10k default theme.'
bash zsh/zsh.sh
echo 'Want to Customize the look as per your liking ? Head Over to this article "https://bit.ly/3KQanlE".'
echo 'Your Are Completely Read To Rock.'
