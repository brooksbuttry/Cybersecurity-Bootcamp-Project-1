#!/bin/bash


#Create my variable list with the name "filespaths"
filepaths=( /etc/shadow /etc/passwd )


#for loop that searches the file paths of etc and shadow and list the permissions of both filepaths
for file in ${filepaths[@]}
 do ls -l $file
done
