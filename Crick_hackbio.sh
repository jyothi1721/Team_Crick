#!/bin/bash

#Packages should be equal to or above the following: Python 3.8.10, BASH 5.0.17(1), R 3.6 (DescTools package installed)

Run the command: "$./Crick_hackbio.sh"

#Downloading repo to local machine
git clone https://github.com/jyothi1721/Team_Crick.git
cd Team_Crick
list1=*.sh
listsh=()


#To avoid the bash script meant for csv creating being executed
for i in $list1;
do
        if [ $i != "Crick_hackbio.sh" ]
        then
                 chmod +x $i
                 listsh+=( $i )
        fi;
done

touch Crick_hackbio.csv

#Executing files
for f in *.py;do python "$f">>Crick_hackbio.csv;done
for f in *.C;do out1=${f:0:-2}
		gcc $f -o $out1
		./$out1 >>Crick_hackbio.csv;done
for f in $listsh;do ./"$f">>Crick_hackbio.csv;done
wget https://cran.r-project.org/src/contrib/DescTools_0.99.42.tar.gz
R CMD INSTALL --no-lock DescTools_0.99.42.tar.gz
for f in *.R;do Rscript "$f">>Crick_hackbio.csv;done
for f in *.js;do node "$f">>Crick_hackbio.csv;done
for f in *.C++;do clang -o $out1 $f
                  ./$out1>>Crick_hackbio.csv
echo "Completed succesfully"
