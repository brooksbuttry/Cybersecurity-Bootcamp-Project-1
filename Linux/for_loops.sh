#!/bin/bash

states=( arkansas maine texas idaho minnesota )

for state in ${states[@]}
do
  if [ $state == 'Hawaii' ];
  then
    echo "Hawaii is the best!"
  else
    echo "I'm not a fan of Hawaii."
  fi
done



