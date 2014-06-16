#!/bin/bash
ENABLED=1

LOCKFILE=/tmp/ganglia-nagios-bridge.lock
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ $ENABLED -eq 1 ]] ; then
	if [[ ! -f $LOCKFILE ]] ; then
		touch $LOCKFILE
		$DIR/ganglia-nagios-bridge.py
		rm -rf $LOCKFILE
	fi
fi
