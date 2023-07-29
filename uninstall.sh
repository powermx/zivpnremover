#!/bin/bash
# ZiVPN Remover
clear
echo -e "Uninstalling ZiVPN ..."
systemctl stop zivpn.services 1> /dev/null 2> /dev/null
killall zivpn 1> /dev/null 2> /dev/null
rm -rf /etc/zivpn 1> /dev/null 2> /dev/null
rm /usr/local/bin/zivpn 1> /dev/null 2> /dev/null
if pgrep "zivpn" >/dev/null; then
  echo -e "Server Running"
else
  echo -e "Server Stopped"
fi
file="/usr/local/bin/zivpn" 1> /dev/null 2> /dev/null
if [ -e "$file" ]; then
  echo -e "Files still remaining, try again"
else
  echo -e "Successfully Removed"
fi
