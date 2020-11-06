#!/bin/bash

# Try to connect to sphinx. Or restart it.

check_result=`/root/cron/sphinx/sphinx_checker.sh`
# echo $check_result


if [[ $check_result != "ok" ]]
then
    date '+%d/%m/%Y %H:%M:%S'
	echo "Something wrong - try to restart sphinx"
	echo ""

	/root/cron/sphinx/resphinx.sh
fi