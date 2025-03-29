#!/bin/bash

# Toggle DND
	if [ "$(makoctl mode)" == "dnd" ]; then
	# DND IS ON
		echo " "
	else
	# DND IS OFF
		echo " "
	fi