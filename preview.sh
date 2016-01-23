#!/bin/bash

# to check the preview of the current set boot splash screen

chk_root () {
  if [ ! $( id -u ) -eq 0 ]; then
    echo Must be run as root
    exit
  fi
}

chk_root

if [ $(dpkg-query -W -f='${Status}' plymouth-x11 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
	echo "installing plymouth-x11"
  	apt-get install plymouth-x11
else
	echo "plymouth-x11 alredy installed"
fi

echo "enter the duration of preview"
read DURATION

plymouthd; plymouth --show-splash ; for ((I=0; I<$DURATION; I++)); do plymouth --update=test$I ; sleep 1; done; plymouth quit
