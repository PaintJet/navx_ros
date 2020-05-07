#!/bin/bash

echo "remap the device serial port(ttyACMX) to  navx"
echo "navx usb connection as /dev/navx, check it using the command : ls -l /dev|grep ttyACM"
echo "start copy navx.rules to  /etc/udev/rules.d/"
echo "`rospack find navx_ros`/udev_scripts/navx.rules"
sudo cp `rospack find navx_ros`/udev_scripts/navx.rules  /etc/udev/rules.d
echo " "
echo "Restarting udev"
echo ""
sudo service udev reload
sudo service udev restart
echo "finish "
