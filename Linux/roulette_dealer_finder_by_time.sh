#!bin/bash

#This script will accept two arguments from the command line, and display the dealer working at the specific time.

cat $1_Dealer_schedule | awk -F" " '{print $1, $2, $5, $6}' | grep "$2"
