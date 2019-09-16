#!/bin/bash
folder=${1?Error: no folder given}
file=${2?Error: no file given}
exdir=${3:-}
mkdir -p $exdir/$folder
exdir=${exdir}$folder/${file}
cp $folder/${file}.ash ${exdir}.sh

sed -i 's/printn/echo -n/g' ${exdir}.sh