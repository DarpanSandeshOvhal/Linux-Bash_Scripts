#!/bin/bash

#this is a bash script file which check for files with user requirement to search files and  then count them in a directroy";


#echo "Entry_message";


working_direc=$(pwd);
echo "$working_direc";

#---------------------
if [ -d "$1" ];then

  echo "Directory is present";

else 
	echo "Directory is not present";
	exit 1 
fi 
#--------------------
cd "$1"
#--------------------
read -p "input file extension  " file_ex; 
#--------------------

#--------------------
count=$(ls -n *.$file_ex | wc -l);
echo "There are in total > $count Files";
#------------------- 
echo "after this input the word which you want to find inside all the files which you are searhing for";
#-------------------
read word
#echo "there are $(wc -l) lines inside > "; 
 
cat *.$file_ex | grep -i "$word" | wc -l 
