#!/usr/bin/bash

#Shell script by Aryan Wadhavekar
BASE_DIR=/home


useradd -m ChiefCommander
echo "ChiefCommander:ChiefCommander" | chpasswd

useradd -m ArmyGeneral
echo "ArmyGeneral:ArmyGeneral" | chpasswd

useradd -m NavyMarshal
echo "NavyMarshal:NavyMarshal" | chpasswd

useradd -m AirForceChief
echo "AirForceChief:AirForceChief" | chpasswd

#Army user creation
armyCounter=1
while [ $armyCounter -le 2 ]
do
        nameArmy=Army$armyCounter
	useradd -m $nameArmy
	echo "$nameArmy:$nameArmy" | chpasswd
	((armyCounter++))
done

#Navy user creation
navyCounter=1
while [ $navyCounter -le 2 ]
do
    nameNavy=Navy$navyCounter
    useradd -m $nameNavy
    echo "$nameNavy:$nameNavy" | chpasswd
    ((navyCounter++))
done

#Airforce user creation
airforceCounter=1
while [ $airforceCounter -le 2 ]
do
	nameAir=AirForce$airforceCounter
	useradd -m $nameAir
	echo "$nameAir:$nameAir" | chpasswd
	((airforceCounter++))
done

echo All passwords are the same as your usernames

