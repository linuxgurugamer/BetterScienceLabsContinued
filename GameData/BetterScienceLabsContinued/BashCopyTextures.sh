#!/bin/bash

#
# This script needs to be run on Linux and OSX to copy
# the missing texture files.  Double-clicking on it
# should be sufficient

clear

echo -e "\n\nThis batch file will copy the missing textures from the inaccessable"
echo "Squad/zDeprecated directory for the SXTLT80 part, also known as"
echo "the LV-T80 "Robin" Liquid Fuel Engine"
echo -e "\n\n"
echo "Press return to continue"
read yn

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
mkdir -p $DIR/Squad/Command
cd $DIR/Squad/Command
mkdir Mk1-2Pod
cp ../../../Squad/zDeprecated/Parts/Command/Mk1-2Pod/* Mk1-2Pod
rm Mk1-2Pod/mk1-2CommandPod.cfg

echo -e "\n\nThe files have been copied\n"
echo "Press return to continue"
read yn
