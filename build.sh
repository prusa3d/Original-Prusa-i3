#!/bin/sh
echo " Prusa Research epic build script for Firmware \n"

rm -r -f /home/arduino/Prusa-i3-Plus/Firmware/hex_files/*

for entry in "/home/arduino/Prusa-i3-Plus/Firmware/variants"/*
do	

	#entry="/home/arduino/Firmware/variants/175-2a-cz.h"

	filename="${entry##*/}"
	extension="ex"
	log=".log"

	echo "--------------------------------------"	
	echo " Building for:"
	echo $entry  | sed 's/.*\///'
	echo "\n"
	echo "Removing config from firmware"
	rm -f /home/arduino/Prusa-i3-Plus/Firmware/Configuration_prusa.h
	echo "Moving new config"
	cp $entry /home/arduino/Prusa-i3-Plus/Firmware/Configuration_prusa.h
	echo "Cleaning up output folder"
	rm -r -f /home/arduino/output/*
	rm -r -f /home/arduino/logs/*
	echo "Compiling ..."
	sh /home/arduino/arduino-1.6.0/arduino-cli --pref build.path=/home/arduino/output/ --verify --board marlin:avr:rambo  /home/arduino/Firmware/Firmware.ino > /home/arduino/logs/$filename$extension 
	echo "Moving hex file"
	cp /home/arduino/output/Firmware.cpp.hex /home/arduino/Prusa-i3-Plus/Firmware/hex_files/$filename$extension

	echo "Done"

done
	rm -f /home/arduino/Prusa-i3-Plus/Firmware/Configuration_prusa.h
