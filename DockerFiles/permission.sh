#!/usr/bin/bash

#created by Aryan Wadhavekar

chmod g-rwx,o-rwx ChiefCommander

chmod g+rwx,o-rwx ArmyGeneral
chown ChiefCommander ArmyGeneral

chmod g+rwx,o-rwx NavyMarshal
chown ChiefCommander NavyMarshal

chmod g+rwx,o-rwx AirForceChief
chown ChiefCommander AirForceChief

i=1
while [ $i -le 50 ]
do 
	chmod g+rwx,o-rwx Army$i
	chown ArmyGeneral Army$i
	((i++))
done

j=1
while [ $j -le 50 ]
do
	chmod g+rwx,o-rwx Navy$j
	chown NavyMarshal Navy$j
	((j++))
done

k=1
while [ $k -le 50 ]
do
	chmod g+rwx,o-rwx AirForce$k
	chown AirForceChief AirForce$k
	((k++))
done
