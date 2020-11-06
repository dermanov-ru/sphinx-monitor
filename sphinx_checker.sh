#!/bin/bash

selected_count=`mysql -h 127.0.0.1 -P 9306 -s -N -e "select count(*) as count_indexed_items_in_bitrix from bitrix"`
# echo $selected_count


if [[ $selected_count -ge 1 ]]
then
	echo "ok"
fi