#!/bin/bash

cd $ANDROID_HOME/platform-tools/
DB_NAME=${1}
APP_PACKAGE=${2}
if [ ! -z "$DB_NAME" -a ! -z "$APP_PACKAGE" ]; then
	echo "DB name: "$DB_NAME
	./adb devices
	echo "OPEN Android Bash"
	
	cd $ANDROID_HOME/platform-tools/
	./adb shell run-as $APP_PACKAGE chmod 666 databases/$DB_NAME
	echo "Setuped permission to pull"
	./adb shell cp /data/data/$APP_PACKAGE/databases/$DB_NAME /storage/emulated/0/
	echo "Copy to device external"
	./adb pull /storage/emulated/0/$DB_NAME
	echo "File pulled from device"
	./adb shell rm /storage/emulated/0/$DB_NAME
	echo "Delete temp copy"
	./adb shell run-as $APP_PACKAGE chmod 600 databases/$DB_NAME
	echo "restored old permissions"

	mv $ANDROID_HOME/platform-tools/$DB_NAME $HOME/Desktop
	echo "File moved into desktop"
else
	echo "Database name is required run AndroidDBExporter with an argument thet is DB name"
fi