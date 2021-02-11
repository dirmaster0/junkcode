#!/bin/bash

echo What IP to lookup?
read IP
echo "Looking in IP Tables..."
sudo iptables -L | grep $IP
echo "Finished!"
