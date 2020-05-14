#!/usr/bin/bash

#Script by Aryan Wadhavekar 
FILE=/etc/apache2/sites-available/soldier.io.conf
sudo touch $FILE
sudo chown aryanw $FILE
echo "<VirtualHost *:80>" >> $FILE
echo "  ServerName soldier.io" >> $FILE
echo "  ServerAlias www.soldier.io" >> $FILE
echo "  ServerAdmin webmaster@localhost" >> $FILE
echo "  DocumentRoot /var/mywww" >> $FILE
echo "  ErrorLog ${APACHE_LOG_DIR}/error.log" >> $FILE
echo "  CustomLog ${APACHE_LOG_DIR}/access.log combined" >> $FILE
echo "</VirtualHost>" >> $FILE

sudo cp $FILE /etc/apache2/sites-enabled/soldier.io.conf
