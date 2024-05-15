# JammaPi

sudo sh -c "echo 'i2c-dev' >> /etc/modules"

cd joypi
sudo make
sudo make install
sudo insmod joypi.ko
