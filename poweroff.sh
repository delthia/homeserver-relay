#!/usr/bin/bash

if wget --http-user="username" --http-password="password" -q -O- http://sonoff.box/switch/avoid_next_poweroff | grep "ON" > /dev/null
then
	break
else
	poweroff
fi
