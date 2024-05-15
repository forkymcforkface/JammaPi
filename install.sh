#!/bin/bash

printf "2. Installing Joystick Driver\n"
sudo sh -c "echo 'i2c-dev' >> /etc/modules"
## This is for autoboot driver but Pi hangs
##sudo sh -c "echo 'joypi' >> /etc/modules"
cd joypi
make clean
sudo make install
sudo insmod joypi.ko
