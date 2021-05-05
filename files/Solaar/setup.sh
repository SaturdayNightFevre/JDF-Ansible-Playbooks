#!/bin/bash

git clone https://github.com/pwr-Solaar/Solaar.git

cd Solaar

cp rules.d/42-logitech-unify-permissions.rules /etc/udev/rules.d

udevadm control --reload-rules

pip install --user .
