#!/bin/bash
cd /media/kaleem/Suleman/All_APKs
for i in /media/kaleem/Suleman/DataSet/*
do
  apktool d -r -s $i
done

j=0
source=file.dex
for i in /media/kaleem/Suleman/All_APKs/*
do 
  cd $i
  if [ -f $source ] 
  then
      j=$(( j+1 ))
       mv "$source" "$(printf "%u" $j).dex"
       cp "$(printf "%u" $j).dex" "/media/kaleem/Suleman/Dexfiles"
  fi
cd ..
done

j=0
for i in /home/res-p157004/Dataset/res-p157004/Done/*.dex
do
echo $i
java -jar ddx1.26.jar -o -d /home/res-p157004/Dataset/res-p157004/Dexdr_output $i
xxd -p $i > /home/res-p157004/Dataset/res-p157004/d.txt
tr -d '\n' < /home/res-p157004/Dataset/res-p157004/d.txt>/home/res-p157004/Dataset/res-p157004/m.txt
j=$(( j+1 ))
touch "$(printf "%u" $j)".txt 
python /home/res-p157004/Dataset/Ist.py "$(printf "%u" $j)".txt 
mv $i /home/res-p157004/Dataset/res-p157004/Done
rm -rf /home/res-p157004/Dataset/res-p157004/Dexdr_output/*
echo $j > /home/res-p157004/Dataset/res-p157004/value.txt
done

