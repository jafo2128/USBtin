/********************************************************************
 File: eeprom.h
 
 Description:
 This file will read and write data to the eeprom of a pic18f14k50
 
 Authors and Copyright:
 John Broadbent <john.broadbent.ky@gmail.com>
 (c) 2012, Thomas Fischl <tfischl@gmx.de>

 Device: PIC18F14K50
 Compiler: Microchip MPLAB XC8 C Compiler V1.20

 License:
 This file is open source. You can use it or parts of it in own
 open source projects. For closed or commercial projects you have to
 contact the authors listed above to get the permission for using
 this source code.

 ********************************************************************/

#define UNIQUE_ID_ADDR 0
#define EEP_SETUP_ADDR 2
#define EEP_SETUP_LEN 3

 unsigned char readEEROM(unsigned char addr);
 void writeEEROM(unsigned char addr, unsigned char data);
 
 unsigned char getUniqueID();
 void setUniqueID(unsigned char ID);


