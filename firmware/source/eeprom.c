/********************************************************************
 File: eeprom.c

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
#include <htc.h>
#include "eeprom.h"


 
 unsigned char readEEROM(unsigned char addr)
 {
   unsigned char data;
   EEADR = addr;//set the address 
   EECON1 = 0x00;//clear the EEPGD bit
   EECON1 = 0x01;//set the RD bit
   data = EEDATA;
   return data;
 }
 
 void writeEEROM(unsigned char addr, unsigned char data)
 {
   EEADR = addr;//set the address 
   EEDATA = data;//set the data 

   EECON1 = 0x04;//set WREN
   INTCON =  INTCON & 0x7F;// clear the global intrupt
   EECON2 = 0x55;// ?
   EECON2 = 0xAA;//?
   EECON1 = 0x02;//
   INTCON =  INTCON | 0x7F;//clear the global intrupt
 }
 
 
 void setUniqueID(unsigned char ID)
 {
	 writeEEROM(UNIQUE_ID_ADDR,ID);
 }
 
 unsigned char getUniqueID()
 {
	 return readEEROM(UNIQUE_ID_ADDR);
 }
 
 