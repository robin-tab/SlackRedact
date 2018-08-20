#!/bin/bash
file="/Users/robin/slackfiles.txt"
while IFS= read -r line
do
        # display $line or do somthing with $line
	cp "$line" /Users/robin/target/
done <"$file"
