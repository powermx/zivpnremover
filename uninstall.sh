#!/bin/bash
# ZiVPN Remover
echo -e "Uninstalling ZiVPN ..."
systemctl stop zivpn.services
killall zivpn 2> /dev/null
rm -rf /etc/zivpn
rm /usr/local/bin/zivpn
ex="/usr/local/bin/zivpn"
if pgrep "zivpn" >/dev/null; then
  echo -e "Server Running"
else
  echo -e "Server Stopped"
fi
if [ -e "$ex" ]; then
  echo -e "Files still remaining, try again"
else
  echo -e "Successfully Removed"
fi
