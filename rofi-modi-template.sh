#!/usr/bin/env bash

#	Basic rofi custom modi script template
#
#	Usage:
#		Enable modi:
#			rofi -modi "<name>:<path/to/script>"
#		Run rofi showing only a custom modi:
#			rofi -modi "<name>:<path/to/script>" -show <name>
#
#		<name> can contain spaces, but it must be enclosed in quotes when used with -show
#			rofi -modi "<modiname>:<path/to/script>" -show <modiname>
#			rofi -modi "<modi name>:<path/to/script>" -show "<modi name>"
#
#	Structure:
#		Run rofi without any arguments
#		if [no arguments given]
#		then print options to stdout, separated by newlines;
#			 rofi re-launches with the options now printed to stdout
#		else run command(s) for option given as first given argument

if [ -z $@ ]	# test if no arguments were given
then
	# print options;
	# option strings can contain spaces
	echo -e "Option1\nOption2\n...\nOptionN"
else
	case $1 in
		Option1)
			# command(s) for opt. 1
			;;
		Option2)
			# command(s) for opt. 2
			;;

		# ...

		OptionN)
			# command(s) for opt. N
			;;
		*)
			;;
	esac
fi
