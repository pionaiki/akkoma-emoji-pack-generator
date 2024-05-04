#!/bin/bash

if [ -z "$1" ]; then echo "Please give the directory as an argument"; exit 0; fi

location=$1

echo "" > $location/pack.json

for filename in $(ls $location)
do
  # If you need a different file extension you can add them to this line
  if [ $filename == *.png ] || [ $filename == *.gif ] || [ $filename == *.webp ]
  then
    echo "\"${filename%.*}\": \"$filename\"," >> $location/pack.json
  fi
done

tmpout=$(echo "$a" | sed "$ s/,$//" $location/pack.json)

echo "{\"files\":{" > $location/pack.json
echo $tmpout >> $location/pack.json
echo "},\"pack\":{}}" >> $location/pack.json

echo "-> Emoji package file (re)created at $location/pack.json"
echo "-> Remember to run \`chown -R akkoma $location\`"
