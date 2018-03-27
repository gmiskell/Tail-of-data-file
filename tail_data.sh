#!/bin/bash

# make sure computer is connected to the internet
nmcli c show

# select the UUID and enter it after the below text
nmcli c up uuid <uuid here>

# set working directory
cd /home/

# download files (here url_list.txt is a list of the different URLs to download) and put into a temp folder
wget -i ./Georgia/url_list.txt -P ./temp/

# change working directory to temp folder
cd ./temp/

# make copies of these with the latest rows only and save in latest file (here last 10000 lines)
for filename in *.dat;
do
(head -n1 $filename; tail -n10000 $filename) > ../latest/latest-$filename;
done

# delete the contents in the temp folder (make sure in temp folder by setting this by absolute path)
cd /home/temp/
rm -f *

# return working directory
cd ..

