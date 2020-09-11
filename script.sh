#!/bin/bash

echo $TESTVAR

python3 ./script.py

echo "Server hostname is" $HOSTNAME

for (( i = 1; i <= 5; i++ ))
do
  if [ -f /home/connect/clientbox-hostname ]; then
    CLIENT_HOSTNAME=`cat /home/connect/clientbox-hostname`
  else
    echo "Не могу получить получить файл. Попытка" $i
    sleep 5
  fi
done

echo "Client hostname is" $CLIENT_HOSTNAME

if [ -f /home/connect/clientbox-hostname ]; then
  rm /home/connect/clientbox-hostname
fi
