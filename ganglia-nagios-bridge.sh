#!/bin/bash
ENABLED=1

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ $ENABLED -eq 1 ]] ; then
	$DIR/ganglia-nagios-bridge.py
fi
