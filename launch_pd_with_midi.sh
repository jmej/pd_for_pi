#!/bin/bash

# Launch pd and connect it to Teensy midi device for output and a generic usb interface for input
# Based on a script at tedfelix.com/linux/linux-midi.html
# And parts from guitarextended.wordpress.com/2012/08/28/running-pd-on-a-headless-raspberry-pi/


echo "Starting Pd..."
pd -alsamidi -midiindev 1 -midioutdev 1 /home/pi/Desktop/light_organ.pd&

sleep 5

#use aconnect to get the ports
pdin=$(aconnect -i | grep "Pure Data" | cut -d ' ' -f 2)0
pdout=$(aconnect -o | grep "Pure Data" | cut -d ' ' -f 2)1
usbin=$(aconnect -i | grep "USB MIDI Interface" | cut -d ' ' -f 2)0
teensyin=$(aconnect -i | grep "Teensy" | cut -d ' ' -f 2)0

echo pdin: $pdin
echo pdout: $pdout
echo usbin: $usbout
echo teensyin: $teensyin

aconnect $pdout $teensyin
aconnect $usbin $pdin
