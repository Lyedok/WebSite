#!/bin/bash
if ["`git status | grep "nothing to commit"`" != ""]; then
	read -p "Please, enter a commit description:" m
	git add *
	git commit -m "$m"
	git push origin
else echo "Nothing to commit"
fi
echo
read -p "Press enter to continue..."