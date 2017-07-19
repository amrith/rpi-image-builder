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

set -xe

[ ! -z $1 ]
[ -e $1 ]

BOOT_O=$(parted $1 unit b print | grep '^ 1' | awk '{print $2}' | sed 's/B$//')
ROOT_O=$(parted $1 unit b print | grep '^ 2' | awk '{print $2}' | sed 's/B$//')

BOOTDEVICE=$(losetup --show -o ${BOOT_O} -f $1)
ROOTDEVICE=$(losetup --show -o ${ROOT_O} -f $1)

mkdir /tmp/root
mkdir /tmp/boot

mount ${BOOTDEVICE} /tmp/boot
mount ${ROOTDEVICE} /tmp/root
