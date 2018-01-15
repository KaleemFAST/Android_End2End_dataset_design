#!/bin/bash
cd /media/kaleem/Suleman/All_APKs
for i in /media/kaleem/Suleman/DataSet/*
do
  apktool d -r -s $i
done
