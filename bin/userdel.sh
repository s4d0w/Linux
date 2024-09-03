#!/bin/bash

cat /root/bin/passwd.txt | awk '{print $1}' | while read UNAME
do
    userdel -r $UNAME
done
