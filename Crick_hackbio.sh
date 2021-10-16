#!/bin/bash

Packages should be equal to or above the following: Python 3.8.10, BASH 5.0.17(1), R 3.6 (DescTools package installed)

Run the command: "$./Crick_hackbio.sh" in the terminal'

#Downloading repo to local machine
git clone https://github.com/jyothi1721/Team_Crick.git
cd Team_Crick
list1=*.sh
listsh=()


#To avoid the bash script meant for csv creating being executedfor i in $list1;do	if [ $i != "einstein_Hackbio.sh" ]	then		chmod +x $i		listsh+=( $i )	fi;done touch einstein_Hackbio.csv
for i in $list1;
do
        if [ $i != "Team_Crick.sh" ]
        then
                 chmod +x $i
                 listsh+=( $i )
        fi;
done

touch Team_Crick.csv
