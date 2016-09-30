# AndroidDBExporter
Simple script to help developers to export Android DB on your pc 
This script works only for debuggable app.

## Installation

To use thi script you need ADB program of Android sdk platform-tools
in order to allow the script to find sdk you must setup ```ANDROID_HOME``` environment var

to do that you can execute the following commands:

###Windows 10 (NOT COMPLETED)
open PowerShell and execute following commands
```sh
  setx -m ANDROID_HOME "C:\Android\sdk"
```
replace ```C:\Android\sdk``` with your Android SDK location

###Linux Ubuntu and Mac OSX
On linux and Mac ```HOME``` environment var should be already defined so we can only set ```ANDROID_HOME```

In order to setup ```ANDROID_HOME``` we must execute following commands:

```sh
  sudo nano ~/.bashrc
```

and add the following lines

```sh
  #Android SDK home
  export ANDROID_HOME=/home/marco/Android/sdk
```
replace ```/home/marco/Android/sdk``` with your Android SDK location and save the file then execute following command

```sh
  source ~/.bashrc
```

####Optional

in order to execute script in any folder you must configure ```adbe``` command, to do that execute this command

```sh
  sudo nano ~./bash_profile  
```

and add following rows to file

```sh
  alias adbe='/home/marco/Android/AndroidDBExporter.sh'
```

replace ```/home/marco/Android/AndroidDBExporter.sh``` with your script location and restart terminal

now you can run script using ```adbe``` command in your terminal
 
##Usage

To export database of your app you must run script with following params:

1. Database name (example MyAppDB)
2. package of your applicatione (example com.example.myapp)

##ISSUE

This script not work for Galaxy S6 and maybe other Samsung devices because run-as command used into this script not work on these devices.






