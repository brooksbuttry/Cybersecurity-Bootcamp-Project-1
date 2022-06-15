#!bin/sh

#THIS IS A SCRIPT TO FIND TIME, AM/PM, AND THE NAME OF THE ROUTLETTE DEALERS



cat 0310_Dealer_schedule | awk -F" " '{print $1, $2, $5, $6}' | grep "$2" >> Dealers_working_during_losses


