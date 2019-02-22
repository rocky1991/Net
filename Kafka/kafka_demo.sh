#!/bin/bash

while test $# -gt 0
do
	case "$1" in 
		-s|--server)
			
			echo hello
			if test $# -gt 0; then
				command=$2
				shift
				echo "$command"
				echo another argument
			fi
			shift
			;;
		-c|--client)
			
			echo hello1
			shift
		;;


		esac
	done




#######  Initially for interative command, not used in this demo ############
# PROMPT='$ '
# command1='ls'
# while :
# do
#   echo -n "$MY_PROMPT"
#   read line
#   if [ "$line" = 'command1' ]
#   then
#   	eval $command1
#   fi
#   done

# exit 0
