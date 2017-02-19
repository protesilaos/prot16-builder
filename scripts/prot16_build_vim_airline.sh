#!/bin/bash
mkdir -p /home/prot/prot16-output/vim-airline

for filename in $(ls ~/prot16-builder/db/schemes)
do
  name=$(echo $filename | cut -f 1 -d '.')

  prot16-builder -s ${name} -t vim-airline -b light > /home/prot/prot16-output/vim-airline/${name}_light.vim
  tput setaf 1; echo "Preparing ${name} light for Vim airline"
  prot16-builder -s ${name} -t vim-airline -b dark > /home/prot/prot16-output/vim-airline/${name}_dark.vim
  tput setaf 2; echo "Preparing ${name} dark for Vim airline"
done
