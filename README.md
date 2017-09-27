# CheckSumForSENTprotocol

This repository contains Simulink model for realtime 4 and 6 bit CRC check sum for SAE J2716 SENT (Single Edge Nibble Transmission) protocol

For those who want to know about SENT protocol, 
1. https://en.wikipedia.org/wiki/SENT_(protocol)
2. http://standards.sae.org/j2716_201001/

Description
1. CRC4BitCheckSum.mdl: Simulink model for 4 bit CRC check Sum
2. CRC6BitCheckSum.mdl: Simulink model for 6 bit CRC check Sum
3. getCRCtable.m: MATLAB file for generating CRC table (used for Simulink model) with given binary polynomial
