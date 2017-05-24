# Spacewalk-Offline-Sync-
Stuff about Syncing a Spacewalk server with another offline Spacewalk Server

It's not uncommon to have multiple Spacewalk satellite servers for large environments.  However, it is not common to have a Spacewalk server that resides on a network with no internet connection, such as those in sensative environments. In these cases you need to find a way to sync the servers over the air gap, a sneaker net so-to-speak.  

To accomplish this, I used the Satellite export/import function with a small script written around it.

The Export Script is just that. You run it on your internet connected "Master" server.
Run the Import script on your offline Spacewalk server.
