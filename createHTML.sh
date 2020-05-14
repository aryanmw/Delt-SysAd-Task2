#!/usr/bin/bash

#Shell script by Aryan Wadhavekar
BASE_DIR=/home


#sudo useradd -m -g sudo ChiefCommander
#echo "ChiefCommander:ChiefCommander" | sudo chpasswd

#sudo useradd -m ArmyGeneral
#echo "ArmyGeneral:ArmyGeneral" | sudo chpasswd

#sudo useradd -m NavyMarshal
#echo "NavyMarshal:NavyMarshal" | sudo chpasswd

#sudo useradd -m AirForceChief
#echo "AirForceChief:AirForceChief" | sudo chpasswd

filecreate=Sites/index.html
#Army user creation
armyCounter=1
while [ $armyCounter -le 50 ]
do
        nameArmy=Army$armyCounter
#	sudo useradd -m $nameArmy
#	echo "$nameArmy:$nameArmy" | sudo chpasswd
	sudo touch /home/$nameArmy/$filecreate
	echo "<html><body>" >> /home/$nameArmy/$filecreate
	echo "<h1>Hello, $nameArmy </h1>" >> /home/$nameArmy/$filecreate
	echo "</body></html>" >> /home/$nameArmy/$filecreate
	((armyCounter++))
done

#Navy user creation
navyCounter=1
while [ $navyCounter -le 50 ]
do
    nameNavy=Navy$navyCounter
    #sudo useradd -m $nameNavy
    #echo "$nameNavy:$nameNavy" | sudo chpasswd
     sudo touch /home/$nameNavy/$filecreate
     echo "<html><body>" >> /home/$nameNavy/$filecreate
     echo "<h1>You are in the Naval forces</h1></body></html>" >> /home/$nameNavy/$fileCreate
		
    ((navyCounter++))
done

#Airforce user creation
airforceCounter=1
while [ $airforceCounter -le 50 ]
do
	nameAir=AirForce$airforceCounter
#	sudo useradd -m $nameAir
#	echo "$nameAir:$nameAir" | sudo chpasswd
	sudo touch /home/$nameAir/$filecreate
	echo "<html><body><h1>" >> /home/$nameAir/$filecreate
	echo "You are in the Air forces</h1></body></html>" >> /home/$nameAir/$filecreate
	((airforceCounter++))
done

