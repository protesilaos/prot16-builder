#!/bin/bash
mkdir -p /home/prot/prot16-output/hyper

for filename in $(ls ~/prot16-builder/db/schemes)
do
  name=$(echo $filename | cut -f 1 -d '.')

  prot16-builder -s ${name} -t hyper -b light > /home/prot/prot16-output/hyper/${name}-light.js
  tput setaf 2; echo "Preparing ${name} light for Hyper"
  prot16-builder -s ${name} -t hyper -b dark > /home/prot/prot16-output/hyper/${name}-dark.js
  tput setaf 6; echo "Preparing ${name} dark for Hyper"
done
