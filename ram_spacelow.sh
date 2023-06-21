#!/bin/bash
To="pramodsingh500@gmail.com"
ram_free=$(free -mt| grep Total: |awk '{print $4}')

if [ $ram_free -le 700 ]
then
  echo "sending mail because your ram free size is less than 700"
  echo "subject:warning, Ram free Size is LOW"|sendmail $To
fi
