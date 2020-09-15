#!/bin/bash

#Author Mrityunjoy
echo -e "\n"

DOMAIN=$1


echo "To extract all url's from A decompile Folder (Android Recon)"

echo "by Mrityunjoy (sup3r-b0y) Twitter: @mitunjoy1 , HackerOne: https://hackerone.com/sup3r-b0y"

echo "------------------------------------------------------------------------------------------"


echo -e "\n"


echo -e "\n"



echo ""

grep -hERo 'https?://[^/"]+' $1/ | sort

echo ""

echo -e "\n"

echo ""

grep -hERo "(http|https)://[a-zA-Z0-9.]*" $1/ | sort -u

echo ""

echo -e "\n"

echo ""

grep -hERo "(http|https)://[a-zA-Z0-9./?=_-]*" $1/ | sort -u

echo ""

echo -e "\n"

echo ""

grep -hERo "(https?://)[\w\.-/]+[\"'\`]" $1/ | sed 's#"##g' | sort -u

echo ""

echo -e "\n"