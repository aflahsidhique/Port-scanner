#!/bin/bash
echo "Usage: ./port-scanner.sh [IP]"
echo
echo
if ["$1" = "" ];
then
  echo "Usage: ./port-scanner.sh [IP]"
else
  echo "Please wait while it is scanning all the open ports..."
  nc -nvz $1 1-65535 > $1.txt 2>&1
fi
tac $1.txt
rm -rf $1.txt
