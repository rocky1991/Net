#!/bin/bash

# while test $# -gt 0
# do
# 	case "$1" in 
# 		-s|--server)
			
# 			echo hello
# 			if test $# -gt 0; then
# 				command=$2
# 				shift
# 				echo "$command"
# 				echo another argument
# 			fi
# 			shift
# 			;;
# 		-c|--client)
			
# 			echo hello1
# 			shift
# 		;;


# 		esac
# 	done




######  Initially for interative command, not used in this demo ############
PROMPT='$ '
list_topic='bin/kafka-topics.sh --list --zookeeper localhost:2181'
list_consumer='bin/kafka-consumer-groups.sh  --list --bootstrap-server localhost:9092'
while :
do
  echo -n "$PROMPT"
  read line
  if [ "$line" = 'list_topic' ]
  then
  	eval $list_topic
  elif [ "$line" = 'list_topic' ]
  then
  	ecal $list_consumer
  fi
  done
exit 0
