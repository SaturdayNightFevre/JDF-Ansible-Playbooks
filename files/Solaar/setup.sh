#!/bin/bash

git clone https://github.com/pwr-Solaar/Solaar.git

cd Solaar

sudo cp rules.d/42-logitech-unify-permissions.rules /etc/udev/rules.d

sudo udevadm control --reload-rules

pip3 install --user .
