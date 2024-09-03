#!/bin/bash

if [ $# -ne 1 ] ; then
	echo "Usage: $0 <ko|en>"
	exit 1
fi
LANGUAGE="$1"

case $LANGUAGE in
	'ko') export LANG=ko_KR.UTF-8 ;;
	'en') export LANG=en_US.UTF-8 ;;
	*) echo "[ FAIL ] The language not chaged."
	   exit 2 ;;
esac

localectl set-locale $LANG
reboot

