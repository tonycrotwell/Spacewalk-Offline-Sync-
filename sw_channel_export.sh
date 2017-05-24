#!/bin/bash

#This script grabs the list of Spacewalk channels, then exports each of them in order. Then 
#creates a tarball of the files for transport

#The awk statement should read for fieled 2 that is not like | and field 2 not like = print field 2.
#Thanks Mike Hanna for your "awk"wardness!

#Grab the directory path for placement of exported files

echo "What is the directory path for placement of exported files?"
read DIRECTORY

for channel in `spacewalk-repo-sync --list | awk '$2 !~ /\|/ && $2 !~ /=/ { print $2 }' |sort -u`
   do
      rhn-satellite-exporter -c $channel --dir=$DIRECTORY/$channel
    done
tar –czvf ISS-EXPORT-$date.tar.gz $DIRECTORY/export
echo “Export Complete”
exit 0
