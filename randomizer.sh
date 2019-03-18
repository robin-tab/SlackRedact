#!/bin/bash
folder=/Users/robin/Downloads/randomized
random_string() { 
  echo "$(date +%s%N)$RANDOM" | awk '{print $1}' 
}

find /Users/robin/Downloads/random/mpdm* -type d | while read DIR; do 
#  mv "$DIR" "$(dirname)$folder/$(random_string)"

  mv "$DIR" "$folder/$(random_string)"
done
