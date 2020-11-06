#!/bin/bash

# Restart sphinx and searchd. Check is it ok

service sphinxsearch stop
service sphinxsearch start

searchd --stop
sleep 1
searchd

echo ""
sleep 1
mysql -h 127.0.0.1 -P 9306 -e "select count(*) as count_indexed_items_in_bitrix from bitrix"

echo ""
echo "Restart Sphinx and searchd - Done"