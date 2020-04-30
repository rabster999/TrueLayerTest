#!/bin/bash
# A bash script to create folders with files for TrueLayer Test

echo "Rabih is executing the script via Bash"

mkdir -p TrueLayer

<<COMMENT
This is a New Loop for the file running in the Bash script
COMMENT

current_time=$(date "+%Y.%m.%d-%H.%M.%S")
echo "Script Start Time : $current_time" >> TrueLayer/TLTest.txt

(TIMEFORMAT="%E";
totalTime=`time ( sleep $(( (RANDOM % 10) + 1 )) ) 2>&1`;
echo "Process finished after $totalTime seconds";) >> TrueLayer/TLTest.txt

: ${HOSTNAME?} ${USER?} ${HOME?}
  echo
  echo "File Name is TLTest.txt." >> TrueLayer/TLTest.txt
  echo "Name of the machine is $HOSTNAME." >> TrueLayer/TLTest.txt
  echo "This is my PID"  "$$" >> TrueLayer/TLTest.txt
  echo "My user is $USER." >> TrueLayer/TLTest.txt
  echo "Your home directory is $HOME." >> TrueLayer/TLTest.txt
  echo "This is my IP Address"  "$(curl ifconfig.me)" >> TrueLayer/TLTest.txt
  echo "$(hostinfo | grep memory)" >> TrueLayer/TLTest.txt

(echo "Directory Structure:" 
	(echo
		if [ "$1" != "" ]  
   		then cd "$1"
   		fi
		pwd
			ls -R | grep ":$" |   \
   			sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'

		if [ `ls -F -1 | grep "/" | wc -l` = 0 ] 
  		 then echo "   -> no sub-directories"
   		fi
	echo
exit)) >> TrueLayer/TLTest.txt
