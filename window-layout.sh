#!/usr/bin/env bash

if [ -z $@ ]
then
	echo -e "Split\nTabbed\nStacking"
else
	case $1 in
		Split)	# quiet mode required to prevent rofi re-launch
			i3-msg -q layout toggle split
			;;
		Tabbed)
			i3-msg -q layout tabbed
			;;
		Stacking)
			i3-msg -q layout stacking
			;;
		*)
			;;
	esac
fi
