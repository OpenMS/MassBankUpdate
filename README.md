# Usage

## 0. Get dependencies

```
pip install numpy
pip install pyopenms
```

## 1. Downloading Massbank
```     
git clone https://github.com/MassBank/MassBank-data.git
```
## 2. Copying all the individual Massbank records into allMBFiles folder
For windows :     
http://stackoverflow.com/questions/585091/using-xcopy-to-copy-files-from-several-directories-to-one-directory

For Mac/Unix :     
http://unix.stackexchange.com/questions/67503/move-all-files-with-a-certain-extension-from-multiple-subdirectories-into-one-di

Or: 
`find  /path/to/MassBank-data/ -name "*.txt" | xargs -I % ln -s % allMBFiles`

## 3. use python script to generate mzML
```     
python parseMBFiles.py allMBFiles/
```

Note : For updating MB2HMDBmapping.csv you need to update HMDB first : 
https://github.com/epoyraz/updateHMDB
