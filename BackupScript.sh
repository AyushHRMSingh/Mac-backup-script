#!/bin/zsh
# importing variables from config.sh
source config.sh

cd

a=$(date '+%Y-%m-%d';)

# creating a folder with current date
mkdir "$destinationfolder/$a"

# copying files by iterating over list of files
for folder in ${filelist[@]}
do
    echo $folder
    cp -v -R "$folder" "$destinationfolder/$a"
done