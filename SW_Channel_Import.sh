#!/bin/bash

## Script to import Spacewalk Channels to Offline SW server

##Grab import directory
#We know the channel directory name from our export script.

echo "What is the directory path of your export tarball?"
read DIRECTORY

echo "What is the name of your tarball?"
read TARBALL

tar -xzvf $DIRECTORY/$TARBALL

cd $DIRECTORY/channels

for channel in `cat channel.list`
   do
      satellite-sync -c $channel --mount-point $DIRECTORY/channels/$channel
   done
fi   


