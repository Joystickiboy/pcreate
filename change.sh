#!/bin/bash

# $1 = markdown file name
# $2 = report title

search_patt="XXX"
replace_file_name=$1
replace_title=$2

sed -i "s/$search_patt/$replace_file_name/g" "Makefile"
sed -i "s/$search_patt/$replace_title/g" "metadata.yaml"

touch $1

rm -rf .git/

echo "Done"
