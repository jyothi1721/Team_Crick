#!/bin/bash
#cloning github repository
git clone https://github.com/jyothi1721/Team_Crick

#create a csv file containing team details
echo 'Team CrickDARWIN' >>Team_Crick.csv;
echo ' ' >>Team_Crick.csv;
echo ' ' >>Team_Crick.csv;
echo 'Name, Email, Slack_Username, Biostack' >>Team_Crick.csv;


#generating the csv files

for FILE1 in Team_Crick/Jyothi*;do gcc $FILE1 -o $FILE1.txt; ./$FILE1.txt >>Team_Crick.csv; done;

for FILE2 in Team_Crick/Josphat*;do python3 $FILE2 >>Team_Crick.csv; done;

for FILE3 in Team_Crick/KV*;do Rscript $FILE3 >>Team_Crick.csv; done;

for FILE4 in Team_Crick/Nourhan*;do python3 $FILE4 >>Team_Crick.csv; done;

for FILE5 in Team_Crick/Pratiksha*;do Rscript $FILE5 >>Team_Crick.csv; done;

for FILE6 in Team_Crick/Samgle*;do node $FILE6; cat Details.txt >>Team_Crick.csv; done;

for FILE7 in Team_Crick/Yash*;do clang -o $FILE7 >>Team_Crick.csv; done;
