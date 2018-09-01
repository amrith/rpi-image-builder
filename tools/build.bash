#!/bin/bash
#
# Copyright Amrith Kumar, 2017
#
# All Rights Reserved.
#
#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.
#

# This is a sample build script, I use this to build images for my own
# use. You will want to change the SSID and the WIFI passphrase,
# they are just for illustrative purposes.

# unset RPI_VERBOSE

if [ -o RPI_VERBOSE ]; then set -ex; else set -e; fi

export RPI_SECURE_USER_NAME=$(whoami)
export ELEMENTS_PATH=./rpi-image-builder/elements
export RPI_SSID=${RPI_SSID:-"devnet7"}
export RPI_WIFI_PASSPHRASE=${RPI_WIFI_PASSPHRASE:-"m3hABitHNVm6wtKCyoiNy"}
export RPI_MAKE_RPI_USER=N
export DIB_DISTRO_NAME=stretch
export DIB_RELEASE=stretch

time disk-image-create -x rpi-debian-core rpi-generic -a armhf -o debian -t raw -n

time disk-image-create rpi-raspbian-core rpi-generic -a armhf -o raspbian -t raw -n
