#!/bin/sh

##
## Download snapshot of MassBank data
##

cd /tmp
git clone https://github.com/MassBank/MassBank-data.git

##
## Collect all MassBank files in one folder
##

cd /MBU

## Nuke MB collection directory
rm -rf allMBFiles/
mkdir allMBFiles

find /tmp/MassBank-data -name "*.txt" | xargs -I filename ln -s filename allMBFiles/

##
## actual conversion
##

python parseMBFiles.py allMBFiles/

