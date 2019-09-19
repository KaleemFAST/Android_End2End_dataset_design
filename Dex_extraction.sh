#!/bin/bash
cd /directory1/directory2/directory3/All_APKs  #path to the apks folder
for i in DataSet/*
do
  apktool d -r -s $i   # Apktool is a reverse engineering tool for Android apks  
done
