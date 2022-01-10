#!/bin/bash

status="`git status | grep "nothing to commit"`"

if [ "$status" == "" ]; then
	read -p "Please, enter a commit description: " m
	git add *
	git commit -m "$m"
	git push origin
else echo "$status"
fi
echo
read -p "Press enter to continue..."