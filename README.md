# AndroidDBExporter
Simple script to help developers to export Android DB on your pc 
This script works only for debuggable app.

## Installation

To use thi script you need ADB program of Android sdk platform-tools
in order to allow the script to find sdk you must setup ```ANDROID_HOME``` environment var

to do that you can execute the following commands:

####Windows
open PowerShell and execute following commands
```sh
  setx -m ANDROID_HOME "C:\Android\sdk"
```
replace ```C:\Android\sdk``` with your Android SDK location

####Linux
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
replace ```/home/marco/Android/sdk``` with your Android SDK location

####Mac OSX

NOT FINISHED!!!!!

##ISSUE

This script not work for Galaxy S6 and maybe other Samsung devices because run-as command used into this script not work on these devices.





###Optional
