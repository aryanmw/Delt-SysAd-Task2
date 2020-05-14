#!/usr/bin/bash

#Script by Aryan Wadhavekar

sudo a2enmod proxy
sudo a2enmod proxy_http
FILE_LOC=/etc/apache2/sites-available/soldier.io.conf
sudo rm /etc/apache2/sites-available/soldier.io.conf
sudo touch $FILE_LOC
echo "<VirtualHost *:80>" >> $FILE_LOC
echo "  ProxyPass / http://localhost:3333/" >> $FILE_LOC
echo "</VirtualHost>" >> $FILE_LOC
