#!/usr/bin/bash

#Shell script by Aryan Wadhavekar
BASE_DIR=/home


useradd -m -g sudo ChiefCommander
"ChiefCommander:ChiefCommander" | sudo chpasswd

useradd -m ArmyGeneral
"ArmyGeneral:ArmyGeneral" | sudo chpasswd

useradd -m NavyMarshal
echo "NavyMarshal:NavyMarshal" | sudo chpasswd

useradd -m AirForceChief
echo "AirForceChief:AirForceChief" | sudo chpasswd

#Army user creation
armyCounter=1
while [ $armyCounter -le 50 ]
do
        nameArmy=Army$armyCounter
	useradd -m $nameArmy
	echo "$nameArmy:$nameArmy" | sudo chpasswd
	((armyCounter++))
done

#Navy user creation
navyCounter=1
while [ $navyCounter -le 50 ]
do
    nameNavy=Navy$navyCounter
    useradd -m $nameNavy
    echo "$nameNavy:$nameNavy" | sudo chpasswd
    ((navyCounter++))
done

#Airforce user creation
airforceCounter=1
while [ $airforceCounter -le 50 ]
do
	nameAir=AirForce$airforceCounter
	useradd -m $nameAir
	echo "$nameAir:$nameAir" | sudo chpasswd
	((airforceCounter++))
done

echo All passwords are the same as your usernames

