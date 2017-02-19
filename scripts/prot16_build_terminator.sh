#!/bin/bash
mkdir -p /home/prot/prot16-output/terminator

for filename in $(ls ~/prot16-builder/db/schemes)
do
  name=$(echo $filename | cut -f 1 -d '.')

  prot16-builder -s ${name} -t terminator -b light > /home/prot/prot16-output/terminator/${name}-light.txt
  tput setaf 4; echo "Preparing ${name} light for Terminator"
  prot16-builder -s ${name} -t terminator -b dark > /home/prot/prot16-output/terminator/${name}-dark.txt
  tput setaf 13; echo "Preparing ${name} dark for Terminator"
done
