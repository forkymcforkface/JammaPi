#!/bin/bash

printf "2. Installing Joystick Driver\n"
sudo sh -c "echo 'i2c-dev' >> /etc/modules"
## This is for autoboot driver but Pi hangs
##sudo sh -c "echo 'joypi' >> /etc/modules"
cd joypi
make clean
cd src
# The following 2 lines are due to GCC greater than 5.0.0
rm mcp23017.c
mv mcp23017-5.c mcp23017.c
cd ~/dev/JammaPi/joypi/
make
sudo make install
sudo insmod joypi.ko
cd ..
cd ..
