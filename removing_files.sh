#!/bin/bash

#Variables
#Directory in quotes
directory='/mnt/a85704a5-4eb4-4935-b5c8-0d096ea8d4da/lost+found/'

#Start Script
echo "Check if directory is empty.." 
sleep 3
#look for empty dir
if [ "$(ls -A ${directory})" ] 
then
	echo "Directory is not empty.."
	echo "removing everything from ${directory}"
	sleep 2
	rm "${directory}"/*
	sleep 2
	echo "removing hidden files.."
	rm -r "${directory}"/*
	sleep 2
	echo "removing folders.."
	rm -rf "${directory}"/*
	sleep 2
	echo "Everything successfully removed.."
	sleep 2
else 
	echo "Directory is already empty..."
		
fi
	echo "Goodbye!"
