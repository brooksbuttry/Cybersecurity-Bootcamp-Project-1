#!bin/bash




cat 0312_Dealer_schedule | awk -F" " '{print $1, $2, $7, $8}' | grep "$2" >> Dealers_working_during_losses

