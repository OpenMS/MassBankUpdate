# Usage

## 1. Downloading Massbank
```     
git clone https://github.com/MassBank/MassBank-data
```
## 2. Copying all the individual Massbank records into allMBFiles folder
For windows :     
http://stackoverflow.com/questions/585091/using-xcopy-to-copy-files-from-several-directories-to-one-directory

For Mac/Unix :     
http://unix.stackexchange.com/questions/67503/move-all-files-with-a-certain-extension-from-multiple-subdirectories-into-one-di

## 3. use python script to generate mzML
```     
python parseMBFiles.py allMBFiles/
```

As docker conversion from https://github.com/MassBank/MassBank-data
all-in-one. From within the checked-out working copy of MassBankUpdate:

```
docker run --rm -v $PWD:/MBU hroest/openms-pyopenms-v2.2.0 /MBU/convert-massbank.sh'
```

Note : For updating MB2HMDBmapping.csv you need to update HMDB first : 
https://github.com/epoyraz/updateHMDB
