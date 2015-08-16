opt subtitle "Microchip Technology Omniscient Code Generator v1.35 (Free mode) build 201507080246"

opt pagewidth 120

	opt lm

	processor	18F14K50
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP0 equ 0F53h ;# 
# 182 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP1 equ 0F54h ;# 
# 313 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP2 equ 0F55h ;# 
# 444 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP3 equ 0F56h ;# 
# 575 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP4 equ 0F57h ;# 
# 706 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP5 equ 0F58h ;# 
# 837 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP6 equ 0F59h ;# 
# 968 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP7 equ 0F5Ah ;# 
# 1099 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEIE equ 0F5Bh ;# 
# 1149 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UADDR equ 0F5Ch ;# 
# 1212 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UFRML equ 0F5Dh ;# 
# 1281 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UFRMH equ 0F5Eh ;# 
# 1320 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEIR equ 0F5Fh ;# 
# 1370 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UIE equ 0F60h ;# 
# 1425 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UCFG equ 0F61h ;# 
# 1487 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UIR equ 0F62h ;# 
# 1542 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
USTAT equ 0F63h ;# 
# 1592 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UCON equ 0F64h ;# 
# 1642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SRCON0 equ 0F68h ;# 
# 1712 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SRCON1 equ 0F69h ;# 
# 1773 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CM2CON0 equ 0F6Bh ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CM2CON1 equ 0F6Ch ;# 
# 1903 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CM1CON0 equ 0F6Dh ;# 
# 1972 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPMSK equ 0F6Fh ;# 
# 1977 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPMASK equ 0F6Fh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SLRCON equ 0F76h ;# 
# 2140 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WPUA equ 0F77h ;# 
# 2172 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WPUB equ 0F78h ;# 
# 2210 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IOCA equ 0F79h ;# 
# 2254 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IOCB equ 0F7Ah ;# 
# 2292 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ANSEL equ 0F7Eh ;# 
# 2336 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ANSELH equ 0F7Fh ;# 
# 2373 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PORTA equ 0F80h ;# 
# 2509 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PORTB equ 0F81h ;# 
# 2660 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PORTC equ 0F82h ;# 
# 2956 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
LATA equ 0F89h ;# 
# 3062 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
LATB equ 0F8Ah ;# 
# 3171 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
LATC equ 0F8Bh ;# 
# 3303 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TRISA equ 0F92h ;# 
# 3308 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
DDRA equ 0F92h ;# 
# 3384 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TRISB equ 0F93h ;# 
# 3389 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
DDRB equ 0F93h ;# 
# 3513 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TRISC equ 0F94h ;# 
# 3518 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
DDRC equ 0F94h ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
OSCTUNE equ 0F9Bh ;# 
# 3803 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIE1 equ 0F9Dh ;# 
# 3876 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIR1 equ 0F9Eh ;# 
# 3949 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IPR1 equ 0F9Fh ;# 
# 4022 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIE2 equ 0FA0h ;# 
# 4087 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIR2 equ 0FA1h ;# 
# 4152 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IPR2 equ 0FA2h ;# 
# 4217 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EECON1 equ 0FA6h ;# 
# 4282 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EECON2 equ 0FA7h ;# 
# 4288 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EEDATA equ 0FA8h ;# 
# 4294 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EEADR equ 0FA9h ;# 
# 4355 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCSTA equ 0FABh ;# 
# 4360 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCSTA1 equ 0FABh ;# 
# 4564 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXSTA equ 0FACh ;# 
# 4569 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXSTA1 equ 0FACh ;# 
# 4861 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXREG equ 0FADh ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXREG1 equ 0FADh ;# 
# 4872 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCREG equ 0FAEh ;# 
# 4877 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCREG1 equ 0FAEh ;# 
# 4883 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SPBRG equ 0FAFh ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SPBRG1 equ 0FAFh ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SPBRGH equ 0FB0h ;# 
# 4900 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T3CON equ 0FB1h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR3 equ 0FB2h ;# 
# 5014 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR3L equ 0FB2h ;# 
# 5020 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR3H equ 0FB3h ;# 
# 5026 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ECCP1AS equ 0FB6h ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PWM1CON equ 0FB7h ;# 
# 5176 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
BAUDCON equ 0FB8h ;# 
# 5181 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
BAUDCTL equ 0FB8h ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PSTRCON equ 0FB9h ;# 
# 5384 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
REFCON0 equ 0FBAh ;# 
# 5389 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
VREFCON0 equ 0FBAh ;# 
# 5461 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
REFCON1 equ 0FBBh ;# 
# 5466 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
VREFCON1 equ 0FBBh ;# 
# 5596 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
REFCON2 equ 0FBCh ;# 
# 5601 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
VREFCON2 equ 0FBCh ;# 
# 5681 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCP1CON equ 0FBDh ;# 
# 5762 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCPR1 equ 0FBEh ;# 
# 5768 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCPR1L equ 0FBEh ;# 
# 5774 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCPR1H equ 0FBFh ;# 
# 5780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADCON2 equ 0FC0h ;# 
# 5850 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADCON1 equ 0FC1h ;# 
# 5896 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADCON0 equ 0FC2h ;# 
# 6018 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADRES equ 0FC3h ;# 
# 6024 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADRESL equ 0FC3h ;# 
# 6030 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADRESH equ 0FC4h ;# 
# 6036 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPCON2 equ 0FC5h ;# 
# 6097 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPCON1 equ 0FC6h ;# 
# 6166 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPSTAT equ 0FC7h ;# 
# 6405 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPADD equ 0FC8h ;# 
# 6411 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPBUF equ 0FC9h ;# 
# 6417 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T2CON equ 0FCAh ;# 
# 6487 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PR2 equ 0FCBh ;# 
# 6492 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
MEMCON equ 0FCBh ;# 
# 6596 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR2 equ 0FCCh ;# 
# 6602 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T1CON equ 0FCDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR1 equ 0FCEh ;# 
# 6712 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR1L equ 0FCEh ;# 
# 6718 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR1H equ 0FCFh ;# 
# 6724 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCON equ 0FD0h ;# 
# 6856 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WDTCON equ 0FD1h ;# 
# 6883 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
OSCCON2 equ 0FD2h ;# 
# 6914 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
OSCCON equ 0FD3h ;# 
# 6992 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T0CON equ 0FD5h ;# 
# 7061 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR0 equ 0FD6h ;# 
# 7067 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR0L equ 0FD6h ;# 
# 7073 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR0H equ 0FD7h ;# 
# 7079 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
STATUS equ 0FD8h ;# 
# 7157 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR2 equ 0FD9h ;# 
# 7163 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR2L equ 0FD9h ;# 
# 7169 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR2H equ 0FDAh ;# 
# 7175 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PLUSW2 equ 0FDBh ;# 
# 7181 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PREINC2 equ 0FDCh ;# 
# 7187 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTDEC2 equ 0FDDh ;# 
# 7193 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTINC2 equ 0FDEh ;# 
# 7199 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INDF2 equ 0FDFh ;# 
# 7205 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
BSR equ 0FE0h ;# 
# 7211 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR1 equ 0FE1h ;# 
# 7217 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR1L equ 0FE1h ;# 
# 7223 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR1H equ 0FE2h ;# 
# 7229 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PLUSW1 equ 0FE3h ;# 
# 7235 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PREINC1 equ 0FE4h ;# 
# 7241 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTDEC1 equ 0FE5h ;# 
# 7247 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTINC1 equ 0FE6h ;# 
# 7253 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INDF1 equ 0FE7h ;# 
# 7259 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WREG equ 0FE8h ;# 
# 7270 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR0 equ 0FE9h ;# 
# 7276 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR0L equ 0FE9h ;# 
# 7282 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR0H equ 0FEAh ;# 
# 7288 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PLUSW0 equ 0FEBh ;# 
# 7294 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PREINC0 equ 0FECh ;# 
# 7300 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTDEC0 equ 0FEDh ;# 
# 7306 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTINC0 equ 0FEEh ;# 
# 7312 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INDF0 equ 0FEFh ;# 
# 7318 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INTCON3 equ 0FF0h ;# 
# 7409 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INTCON2 equ 0FF1h ;# 
# 7478 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INTCON equ 0FF2h ;# 
# 7624 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PROD equ 0FF3h ;# 
# 7630 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PRODL equ 0FF3h ;# 
# 7636 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PRODH equ 0FF4h ;# 
# 7642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TABLAT equ 0FF5h ;# 
# 7650 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTR equ 0FF6h ;# 
# 7656 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTRL equ 0FF6h ;# 
# 7662 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTRH equ 0FF7h ;# 
# 7668 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTRU equ 0FF8h ;# 
# 7676 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCLAT equ 0FF9h ;# 
# 7683 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PC equ 0FF9h ;# 
# 7689 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCL equ 0FF9h ;# 
# 7695 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCLATH equ 0FFAh ;# 
# 7701 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCLATU equ 0FFBh ;# 
# 7707 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
STKPTR equ 0FFCh ;# 
# 7780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOS equ 0FFDh ;# 
# 7786 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOSL equ 0FFDh ;# 
# 7792 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOSH equ 0FFEh ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP0 equ 0F53h ;# 
# 182 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP1 equ 0F54h ;# 
# 313 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP2 equ 0F55h ;# 
# 444 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP3 equ 0F56h ;# 
# 575 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP4 equ 0F57h ;# 
# 706 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP5 equ 0F58h ;# 
# 837 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP6 equ 0F59h ;# 
# 968 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP7 equ 0F5Ah ;# 
# 1099 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEIE equ 0F5Bh ;# 
# 1149 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UADDR equ 0F5Ch ;# 
# 1212 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UFRML equ 0F5Dh ;# 
# 1281 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UFRMH equ 0F5Eh ;# 
# 1320 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEIR equ 0F5Fh ;# 
# 1370 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UIE equ 0F60h ;# 
# 1425 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UCFG equ 0F61h ;# 
# 1487 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UIR equ 0F62h ;# 
# 1542 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
USTAT equ 0F63h ;# 
# 1592 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UCON equ 0F64h ;# 
# 1642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SRCON0 equ 0F68h ;# 
# 1712 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SRCON1 equ 0F69h ;# 
# 1773 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CM2CON0 equ 0F6Bh ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CM2CON1 equ 0F6Ch ;# 
# 1903 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CM1CON0 equ 0F6Dh ;# 
# 1972 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPMSK equ 0F6Fh ;# 
# 1977 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPMASK equ 0F6Fh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SLRCON equ 0F76h ;# 
# 2140 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WPUA equ 0F77h ;# 
# 2172 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WPUB equ 0F78h ;# 
# 2210 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IOCA equ 0F79h ;# 
# 2254 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IOCB equ 0F7Ah ;# 
# 2292 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ANSEL equ 0F7Eh ;# 
# 2336 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ANSELH equ 0F7Fh ;# 
# 2373 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PORTA equ 0F80h ;# 
# 2509 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PORTB equ 0F81h ;# 
# 2660 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PORTC equ 0F82h ;# 
# 2956 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
LATA equ 0F89h ;# 
# 3062 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
LATB equ 0F8Ah ;# 
# 3171 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
LATC equ 0F8Bh ;# 
# 3303 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TRISA equ 0F92h ;# 
# 3308 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
DDRA equ 0F92h ;# 
# 3384 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TRISB equ 0F93h ;# 
# 3389 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
DDRB equ 0F93h ;# 
# 3513 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TRISC equ 0F94h ;# 
# 3518 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
DDRC equ 0F94h ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
OSCTUNE equ 0F9Bh ;# 
# 3803 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIE1 equ 0F9Dh ;# 
# 3876 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIR1 equ 0F9Eh ;# 
# 3949 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IPR1 equ 0F9Fh ;# 
# 4022 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIE2 equ 0FA0h ;# 
# 4087 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIR2 equ 0FA1h ;# 
# 4152 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IPR2 equ 0FA2h ;# 
# 4217 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EECON1 equ 0FA6h ;# 
# 4282 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EECON2 equ 0FA7h ;# 
# 4288 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EEDATA equ 0FA8h ;# 
# 4294 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EEADR equ 0FA9h ;# 
# 4355 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCSTA equ 0FABh ;# 
# 4360 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCSTA1 equ 0FABh ;# 
# 4564 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXSTA equ 0FACh ;# 
# 4569 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXSTA1 equ 0FACh ;# 
# 4861 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXREG equ 0FADh ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXREG1 equ 0FADh ;# 
# 4872 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCREG equ 0FAEh ;# 
# 4877 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCREG1 equ 0FAEh ;# 
# 4883 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SPBRG equ 0FAFh ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SPBRG1 equ 0FAFh ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SPBRGH equ 0FB0h ;# 
# 4900 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T3CON equ 0FB1h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR3 equ 0FB2h ;# 
# 5014 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR3L equ 0FB2h ;# 
# 5020 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR3H equ 0FB3h ;# 
# 5026 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ECCP1AS equ 0FB6h ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PWM1CON equ 0FB7h ;# 
# 5176 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
BAUDCON equ 0FB8h ;# 
# 5181 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
BAUDCTL equ 0FB8h ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PSTRCON equ 0FB9h ;# 
# 5384 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
REFCON0 equ 0FBAh ;# 
# 5389 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
VREFCON0 equ 0FBAh ;# 
# 5461 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
REFCON1 equ 0FBBh ;# 
# 5466 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
VREFCON1 equ 0FBBh ;# 
# 5596 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
REFCON2 equ 0FBCh ;# 
# 5601 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
VREFCON2 equ 0FBCh ;# 
# 5681 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCP1CON equ 0FBDh ;# 
# 5762 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCPR1 equ 0FBEh ;# 
# 5768 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCPR1L equ 0FBEh ;# 
# 5774 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCPR1H equ 0FBFh ;# 
# 5780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADCON2 equ 0FC0h ;# 
# 5850 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADCON1 equ 0FC1h ;# 
# 5896 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADCON0 equ 0FC2h ;# 
# 6018 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADRES equ 0FC3h ;# 
# 6024 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADRESL equ 0FC3h ;# 
# 6030 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADRESH equ 0FC4h ;# 
# 6036 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPCON2 equ 0FC5h ;# 
# 6097 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPCON1 equ 0FC6h ;# 
# 6166 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPSTAT equ 0FC7h ;# 
# 6405 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPADD equ 0FC8h ;# 
# 6411 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPBUF equ 0FC9h ;# 
# 6417 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T2CON equ 0FCAh ;# 
# 6487 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PR2 equ 0FCBh ;# 
# 6492 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
MEMCON equ 0FCBh ;# 
# 6596 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR2 equ 0FCCh ;# 
# 6602 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T1CON equ 0FCDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR1 equ 0FCEh ;# 
# 6712 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR1L equ 0FCEh ;# 
# 6718 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR1H equ 0FCFh ;# 
# 6724 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCON equ 0FD0h ;# 
# 6856 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WDTCON equ 0FD1h ;# 
# 6883 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
OSCCON2 equ 0FD2h ;# 
# 6914 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
OSCCON equ 0FD3h ;# 
# 6992 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T0CON equ 0FD5h ;# 
# 7061 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR0 equ 0FD6h ;# 
# 7067 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR0L equ 0FD6h ;# 
# 7073 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR0H equ 0FD7h ;# 
# 7079 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
STATUS equ 0FD8h ;# 
# 7157 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR2 equ 0FD9h ;# 
# 7163 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR2L equ 0FD9h ;# 
# 7169 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR2H equ 0FDAh ;# 
# 7175 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PLUSW2 equ 0FDBh ;# 
# 7181 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PREINC2 equ 0FDCh ;# 
# 7187 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTDEC2 equ 0FDDh ;# 
# 7193 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTINC2 equ 0FDEh ;# 
# 7199 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INDF2 equ 0FDFh ;# 
# 7205 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
BSR equ 0FE0h ;# 
# 7211 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR1 equ 0FE1h ;# 
# 7217 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR1L equ 0FE1h ;# 
# 7223 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR1H equ 0FE2h ;# 
# 7229 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PLUSW1 equ 0FE3h ;# 
# 7235 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PREINC1 equ 0FE4h ;# 
# 7241 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTDEC1 equ 0FE5h ;# 
# 7247 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTINC1 equ 0FE6h ;# 
# 7253 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INDF1 equ 0FE7h ;# 
# 7259 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WREG equ 0FE8h ;# 
# 7270 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR0 equ 0FE9h ;# 
# 7276 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR0L equ 0FE9h ;# 
# 7282 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR0H equ 0FEAh ;# 
# 7288 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PLUSW0 equ 0FEBh ;# 
# 7294 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PREINC0 equ 0FECh ;# 
# 7300 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTDEC0 equ 0FEDh ;# 
# 7306 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTINC0 equ 0FEEh ;# 
# 7312 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INDF0 equ 0FEFh ;# 
# 7318 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INTCON3 equ 0FF0h ;# 
# 7409 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INTCON2 equ 0FF1h ;# 
# 7478 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INTCON equ 0FF2h ;# 
# 7624 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PROD equ 0FF3h ;# 
# 7630 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PRODL equ 0FF3h ;# 
# 7636 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PRODH equ 0FF4h ;# 
# 7642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TABLAT equ 0FF5h ;# 
# 7650 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTR equ 0FF6h ;# 
# 7656 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTRL equ 0FF6h ;# 
# 7662 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTRH equ 0FF7h ;# 
# 7668 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTRU equ 0FF8h ;# 
# 7676 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCLAT equ 0FF9h ;# 
# 7683 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PC equ 0FF9h ;# 
# 7689 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCL equ 0FF9h ;# 
# 7695 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCLATH equ 0FFAh ;# 
# 7701 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCLATU equ 0FFBh ;# 
# 7707 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
STKPTR equ 0FFCh ;# 
# 7780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOS equ 0FFDh ;# 
# 7786 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOSL equ 0FFDh ;# 
# 7792 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOSH equ 0FFEh ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP0 equ 0F53h ;# 
# 182 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP1 equ 0F54h ;# 
# 313 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP2 equ 0F55h ;# 
# 444 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP3 equ 0F56h ;# 
# 575 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP4 equ 0F57h ;# 
# 706 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP5 equ 0F58h ;# 
# 837 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP6 equ 0F59h ;# 
# 968 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP7 equ 0F5Ah ;# 
# 1099 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEIE equ 0F5Bh ;# 
# 1149 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UADDR equ 0F5Ch ;# 
# 1212 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UFRML equ 0F5Dh ;# 
# 1281 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UFRMH equ 0F5Eh ;# 
# 1320 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEIR equ 0F5Fh ;# 
# 1370 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UIE equ 0F60h ;# 
# 1425 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UCFG equ 0F61h ;# 
# 1487 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UIR equ 0F62h ;# 
# 1542 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
USTAT equ 0F63h ;# 
# 1592 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UCON equ 0F64h ;# 
# 1642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SRCON0 equ 0F68h ;# 
# 1712 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SRCON1 equ 0F69h ;# 
# 1773 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CM2CON0 equ 0F6Bh ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CM2CON1 equ 0F6Ch ;# 
# 1903 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CM1CON0 equ 0F6Dh ;# 
# 1972 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPMSK equ 0F6Fh ;# 
# 1977 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPMASK equ 0F6Fh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SLRCON equ 0F76h ;# 
# 2140 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WPUA equ 0F77h ;# 
# 2172 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WPUB equ 0F78h ;# 
# 2210 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IOCA equ 0F79h ;# 
# 2254 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IOCB equ 0F7Ah ;# 
# 2292 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ANSEL equ 0F7Eh ;# 
# 2336 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ANSELH equ 0F7Fh ;# 
# 2373 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PORTA equ 0F80h ;# 
# 2509 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PORTB equ 0F81h ;# 
# 2660 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PORTC equ 0F82h ;# 
# 2956 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
LATA equ 0F89h ;# 
# 3062 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
LATB equ 0F8Ah ;# 
# 3171 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
LATC equ 0F8Bh ;# 
# 3303 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TRISA equ 0F92h ;# 
# 3308 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
DDRA equ 0F92h ;# 
# 3384 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TRISB equ 0F93h ;# 
# 3389 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
DDRB equ 0F93h ;# 
# 3513 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TRISC equ 0F94h ;# 
# 3518 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
DDRC equ 0F94h ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
OSCTUNE equ 0F9Bh ;# 
# 3803 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIE1 equ 0F9Dh ;# 
# 3876 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIR1 equ 0F9Eh ;# 
# 3949 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IPR1 equ 0F9Fh ;# 
# 4022 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIE2 equ 0FA0h ;# 
# 4087 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIR2 equ 0FA1h ;# 
# 4152 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IPR2 equ 0FA2h ;# 
# 4217 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EECON1 equ 0FA6h ;# 
# 4282 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EECON2 equ 0FA7h ;# 
# 4288 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EEDATA equ 0FA8h ;# 
# 4294 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EEADR equ 0FA9h ;# 
# 4355 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCSTA equ 0FABh ;# 
# 4360 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCSTA1 equ 0FABh ;# 
# 4564 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXSTA equ 0FACh ;# 
# 4569 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXSTA1 equ 0FACh ;# 
# 4861 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXREG equ 0FADh ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXREG1 equ 0FADh ;# 
# 4872 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCREG equ 0FAEh ;# 
# 4877 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCREG1 equ 0FAEh ;# 
# 4883 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SPBRG equ 0FAFh ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SPBRG1 equ 0FAFh ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SPBRGH equ 0FB0h ;# 
# 4900 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T3CON equ 0FB1h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR3 equ 0FB2h ;# 
# 5014 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR3L equ 0FB2h ;# 
# 5020 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR3H equ 0FB3h ;# 
# 5026 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ECCP1AS equ 0FB6h ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PWM1CON equ 0FB7h ;# 
# 5176 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
BAUDCON equ 0FB8h ;# 
# 5181 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
BAUDCTL equ 0FB8h ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PSTRCON equ 0FB9h ;# 
# 5384 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
REFCON0 equ 0FBAh ;# 
# 5389 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
VREFCON0 equ 0FBAh ;# 
# 5461 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
REFCON1 equ 0FBBh ;# 
# 5466 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
VREFCON1 equ 0FBBh ;# 
# 5596 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
REFCON2 equ 0FBCh ;# 
# 5601 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
VREFCON2 equ 0FBCh ;# 
# 5681 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCP1CON equ 0FBDh ;# 
# 5762 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCPR1 equ 0FBEh ;# 
# 5768 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCPR1L equ 0FBEh ;# 
# 5774 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCPR1H equ 0FBFh ;# 
# 5780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADCON2 equ 0FC0h ;# 
# 5850 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADCON1 equ 0FC1h ;# 
# 5896 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADCON0 equ 0FC2h ;# 
# 6018 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADRES equ 0FC3h ;# 
# 6024 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADRESL equ 0FC3h ;# 
# 6030 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADRESH equ 0FC4h ;# 
# 6036 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPCON2 equ 0FC5h ;# 
# 6097 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPCON1 equ 0FC6h ;# 
# 6166 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPSTAT equ 0FC7h ;# 
# 6405 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPADD equ 0FC8h ;# 
# 6411 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPBUF equ 0FC9h ;# 
# 6417 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T2CON equ 0FCAh ;# 
# 6487 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PR2 equ 0FCBh ;# 
# 6492 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
MEMCON equ 0FCBh ;# 
# 6596 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR2 equ 0FCCh ;# 
# 6602 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T1CON equ 0FCDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR1 equ 0FCEh ;# 
# 6712 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR1L equ 0FCEh ;# 
# 6718 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR1H equ 0FCFh ;# 
# 6724 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCON equ 0FD0h ;# 
# 6856 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WDTCON equ 0FD1h ;# 
# 6883 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
OSCCON2 equ 0FD2h ;# 
# 6914 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
OSCCON equ 0FD3h ;# 
# 6992 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T0CON equ 0FD5h ;# 
# 7061 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR0 equ 0FD6h ;# 
# 7067 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR0L equ 0FD6h ;# 
# 7073 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR0H equ 0FD7h ;# 
# 7079 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
STATUS equ 0FD8h ;# 
# 7157 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR2 equ 0FD9h ;# 
# 7163 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR2L equ 0FD9h ;# 
# 7169 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR2H equ 0FDAh ;# 
# 7175 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PLUSW2 equ 0FDBh ;# 
# 7181 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PREINC2 equ 0FDCh ;# 
# 7187 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTDEC2 equ 0FDDh ;# 
# 7193 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTINC2 equ 0FDEh ;# 
# 7199 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INDF2 equ 0FDFh ;# 
# 7205 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
BSR equ 0FE0h ;# 
# 7211 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR1 equ 0FE1h ;# 
# 7217 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR1L equ 0FE1h ;# 
# 7223 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR1H equ 0FE2h ;# 
# 7229 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PLUSW1 equ 0FE3h ;# 
# 7235 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PREINC1 equ 0FE4h ;# 
# 7241 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTDEC1 equ 0FE5h ;# 
# 7247 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTINC1 equ 0FE6h ;# 
# 7253 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INDF1 equ 0FE7h ;# 
# 7259 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WREG equ 0FE8h ;# 
# 7270 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR0 equ 0FE9h ;# 
# 7276 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR0L equ 0FE9h ;# 
# 7282 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR0H equ 0FEAh ;# 
# 7288 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PLUSW0 equ 0FEBh ;# 
# 7294 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PREINC0 equ 0FECh ;# 
# 7300 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTDEC0 equ 0FEDh ;# 
# 7306 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTINC0 equ 0FEEh ;# 
# 7312 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INDF0 equ 0FEFh ;# 
# 7318 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INTCON3 equ 0FF0h ;# 
# 7409 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INTCON2 equ 0FF1h ;# 
# 7478 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INTCON equ 0FF2h ;# 
# 7624 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PROD equ 0FF3h ;# 
# 7630 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PRODL equ 0FF3h ;# 
# 7636 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PRODH equ 0FF4h ;# 
# 7642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TABLAT equ 0FF5h ;# 
# 7650 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTR equ 0FF6h ;# 
# 7656 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTRL equ 0FF6h ;# 
# 7662 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTRH equ 0FF7h ;# 
# 7668 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTRU equ 0FF8h ;# 
# 7676 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCLAT equ 0FF9h ;# 
# 7683 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PC equ 0FF9h ;# 
# 7689 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCL equ 0FF9h ;# 
# 7695 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCLATH equ 0FFAh ;# 
# 7701 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCLATU equ 0FFBh ;# 
# 7707 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
STKPTR equ 0FFCh ;# 
# 7780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOS equ 0FFDh ;# 
# 7786 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOSL equ 0FFDh ;# 
# 7792 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOSH equ 0FFEh ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP0 equ 0F53h ;# 
# 182 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP1 equ 0F54h ;# 
# 313 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP2 equ 0F55h ;# 
# 444 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP3 equ 0F56h ;# 
# 575 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP4 equ 0F57h ;# 
# 706 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP5 equ 0F58h ;# 
# 837 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP6 equ 0F59h ;# 
# 968 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP7 equ 0F5Ah ;# 
# 1099 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEIE equ 0F5Bh ;# 
# 1149 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UADDR equ 0F5Ch ;# 
# 1212 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UFRML equ 0F5Dh ;# 
# 1281 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UFRMH equ 0F5Eh ;# 
# 1320 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEIR equ 0F5Fh ;# 
# 1370 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UIE equ 0F60h ;# 
# 1425 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UCFG equ 0F61h ;# 
# 1487 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UIR equ 0F62h ;# 
# 1542 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
USTAT equ 0F63h ;# 
# 1592 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UCON equ 0F64h ;# 
# 1642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SRCON0 equ 0F68h ;# 
# 1712 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SRCON1 equ 0F69h ;# 
# 1773 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CM2CON0 equ 0F6Bh ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CM2CON1 equ 0F6Ch ;# 
# 1903 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CM1CON0 equ 0F6Dh ;# 
# 1972 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPMSK equ 0F6Fh ;# 
# 1977 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPMASK equ 0F6Fh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SLRCON equ 0F76h ;# 
# 2140 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WPUA equ 0F77h ;# 
# 2172 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WPUB equ 0F78h ;# 
# 2210 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IOCA equ 0F79h ;# 
# 2254 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IOCB equ 0F7Ah ;# 
# 2292 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ANSEL equ 0F7Eh ;# 
# 2336 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ANSELH equ 0F7Fh ;# 
# 2373 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PORTA equ 0F80h ;# 
# 2509 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PORTB equ 0F81h ;# 
# 2660 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PORTC equ 0F82h ;# 
# 2956 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
LATA equ 0F89h ;# 
# 3062 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
LATB equ 0F8Ah ;# 
# 3171 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
LATC equ 0F8Bh ;# 
# 3303 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TRISA equ 0F92h ;# 
# 3308 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
DDRA equ 0F92h ;# 
# 3384 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TRISB equ 0F93h ;# 
# 3389 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
DDRB equ 0F93h ;# 
# 3513 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TRISC equ 0F94h ;# 
# 3518 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
DDRC equ 0F94h ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
OSCTUNE equ 0F9Bh ;# 
# 3803 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIE1 equ 0F9Dh ;# 
# 3876 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIR1 equ 0F9Eh ;# 
# 3949 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IPR1 equ 0F9Fh ;# 
# 4022 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIE2 equ 0FA0h ;# 
# 4087 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIR2 equ 0FA1h ;# 
# 4152 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IPR2 equ 0FA2h ;# 
# 4217 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EECON1 equ 0FA6h ;# 
# 4282 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EECON2 equ 0FA7h ;# 
# 4288 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EEDATA equ 0FA8h ;# 
# 4294 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EEADR equ 0FA9h ;# 
# 4355 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCSTA equ 0FABh ;# 
# 4360 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCSTA1 equ 0FABh ;# 
# 4564 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXSTA equ 0FACh ;# 
# 4569 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXSTA1 equ 0FACh ;# 
# 4861 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXREG equ 0FADh ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXREG1 equ 0FADh ;# 
# 4872 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCREG equ 0FAEh ;# 
# 4877 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCREG1 equ 0FAEh ;# 
# 4883 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SPBRG equ 0FAFh ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SPBRG1 equ 0FAFh ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SPBRGH equ 0FB0h ;# 
# 4900 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T3CON equ 0FB1h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR3 equ 0FB2h ;# 
# 5014 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR3L equ 0FB2h ;# 
# 5020 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR3H equ 0FB3h ;# 
# 5026 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ECCP1AS equ 0FB6h ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PWM1CON equ 0FB7h ;# 
# 5176 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
BAUDCON equ 0FB8h ;# 
# 5181 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
BAUDCTL equ 0FB8h ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PSTRCON equ 0FB9h ;# 
# 5384 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
REFCON0 equ 0FBAh ;# 
# 5389 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
VREFCON0 equ 0FBAh ;# 
# 5461 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
REFCON1 equ 0FBBh ;# 
# 5466 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
VREFCON1 equ 0FBBh ;# 
# 5596 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
REFCON2 equ 0FBCh ;# 
# 5601 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
VREFCON2 equ 0FBCh ;# 
# 5681 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCP1CON equ 0FBDh ;# 
# 5762 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCPR1 equ 0FBEh ;# 
# 5768 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCPR1L equ 0FBEh ;# 
# 5774 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCPR1H equ 0FBFh ;# 
# 5780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADCON2 equ 0FC0h ;# 
# 5850 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADCON1 equ 0FC1h ;# 
# 5896 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADCON0 equ 0FC2h ;# 
# 6018 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADRES equ 0FC3h ;# 
# 6024 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADRESL equ 0FC3h ;# 
# 6030 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADRESH equ 0FC4h ;# 
# 6036 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPCON2 equ 0FC5h ;# 
# 6097 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPCON1 equ 0FC6h ;# 
# 6166 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPSTAT equ 0FC7h ;# 
# 6405 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPADD equ 0FC8h ;# 
# 6411 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPBUF equ 0FC9h ;# 
# 6417 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T2CON equ 0FCAh ;# 
# 6487 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PR2 equ 0FCBh ;# 
# 6492 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
MEMCON equ 0FCBh ;# 
# 6596 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR2 equ 0FCCh ;# 
# 6602 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T1CON equ 0FCDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR1 equ 0FCEh ;# 
# 6712 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR1L equ 0FCEh ;# 
# 6718 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR1H equ 0FCFh ;# 
# 6724 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCON equ 0FD0h ;# 
# 6856 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WDTCON equ 0FD1h ;# 
# 6883 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
OSCCON2 equ 0FD2h ;# 
# 6914 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
OSCCON equ 0FD3h ;# 
# 6992 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T0CON equ 0FD5h ;# 
# 7061 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR0 equ 0FD6h ;# 
# 7067 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR0L equ 0FD6h ;# 
# 7073 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR0H equ 0FD7h ;# 
# 7079 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
STATUS equ 0FD8h ;# 
# 7157 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR2 equ 0FD9h ;# 
# 7163 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR2L equ 0FD9h ;# 
# 7169 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR2H equ 0FDAh ;# 
# 7175 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PLUSW2 equ 0FDBh ;# 
# 7181 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PREINC2 equ 0FDCh ;# 
# 7187 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTDEC2 equ 0FDDh ;# 
# 7193 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTINC2 equ 0FDEh ;# 
# 7199 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INDF2 equ 0FDFh ;# 
# 7205 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
BSR equ 0FE0h ;# 
# 7211 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR1 equ 0FE1h ;# 
# 7217 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR1L equ 0FE1h ;# 
# 7223 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR1H equ 0FE2h ;# 
# 7229 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PLUSW1 equ 0FE3h ;# 
# 7235 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PREINC1 equ 0FE4h ;# 
# 7241 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTDEC1 equ 0FE5h ;# 
# 7247 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTINC1 equ 0FE6h ;# 
# 7253 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INDF1 equ 0FE7h ;# 
# 7259 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WREG equ 0FE8h ;# 
# 7270 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR0 equ 0FE9h ;# 
# 7276 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR0L equ 0FE9h ;# 
# 7282 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR0H equ 0FEAh ;# 
# 7288 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PLUSW0 equ 0FEBh ;# 
# 7294 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PREINC0 equ 0FECh ;# 
# 7300 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTDEC0 equ 0FEDh ;# 
# 7306 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTINC0 equ 0FEEh ;# 
# 7312 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INDF0 equ 0FEFh ;# 
# 7318 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INTCON3 equ 0FF0h ;# 
# 7409 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INTCON2 equ 0FF1h ;# 
# 7478 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INTCON equ 0FF2h ;# 
# 7624 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PROD equ 0FF3h ;# 
# 7630 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PRODL equ 0FF3h ;# 
# 7636 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PRODH equ 0FF4h ;# 
# 7642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TABLAT equ 0FF5h ;# 
# 7650 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTR equ 0FF6h ;# 
# 7656 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTRL equ 0FF6h ;# 
# 7662 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTRH equ 0FF7h ;# 
# 7668 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTRU equ 0FF8h ;# 
# 7676 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCLAT equ 0FF9h ;# 
# 7683 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PC equ 0FF9h ;# 
# 7689 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCL equ 0FF9h ;# 
# 7695 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCLATH equ 0FFAh ;# 
# 7701 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCLATU equ 0FFBh ;# 
# 7707 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
STKPTR equ 0FFCh ;# 
# 7780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOS equ 0FFDh ;# 
# 7786 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOSL equ 0FFDh ;# 
# 7792 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOSH equ 0FFEh ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP0 equ 0F53h ;# 
# 182 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP1 equ 0F54h ;# 
# 313 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP2 equ 0F55h ;# 
# 444 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP3 equ 0F56h ;# 
# 575 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP4 equ 0F57h ;# 
# 706 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP5 equ 0F58h ;# 
# 837 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP6 equ 0F59h ;# 
# 968 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEP7 equ 0F5Ah ;# 
# 1099 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEIE equ 0F5Bh ;# 
# 1149 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UADDR equ 0F5Ch ;# 
# 1212 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UFRML equ 0F5Dh ;# 
# 1281 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UFRMH equ 0F5Eh ;# 
# 1320 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UEIR equ 0F5Fh ;# 
# 1370 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UIE equ 0F60h ;# 
# 1425 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UCFG equ 0F61h ;# 
# 1487 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UIR equ 0F62h ;# 
# 1542 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
USTAT equ 0F63h ;# 
# 1592 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
UCON equ 0F64h ;# 
# 1642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SRCON0 equ 0F68h ;# 
# 1712 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SRCON1 equ 0F69h ;# 
# 1773 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CM2CON0 equ 0F6Bh ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CM2CON1 equ 0F6Ch ;# 
# 1903 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CM1CON0 equ 0F6Dh ;# 
# 1972 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPMSK equ 0F6Fh ;# 
# 1977 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPMASK equ 0F6Fh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SLRCON equ 0F76h ;# 
# 2140 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WPUA equ 0F77h ;# 
# 2172 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WPUB equ 0F78h ;# 
# 2210 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IOCA equ 0F79h ;# 
# 2254 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IOCB equ 0F7Ah ;# 
# 2292 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ANSEL equ 0F7Eh ;# 
# 2336 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ANSELH equ 0F7Fh ;# 
# 2373 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PORTA equ 0F80h ;# 
# 2509 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PORTB equ 0F81h ;# 
# 2660 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PORTC equ 0F82h ;# 
# 2956 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
LATA equ 0F89h ;# 
# 3062 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
LATB equ 0F8Ah ;# 
# 3171 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
LATC equ 0F8Bh ;# 
# 3303 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TRISA equ 0F92h ;# 
# 3308 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
DDRA equ 0F92h ;# 
# 3384 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TRISB equ 0F93h ;# 
# 3389 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
DDRB equ 0F93h ;# 
# 3513 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TRISC equ 0F94h ;# 
# 3518 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
DDRC equ 0F94h ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
OSCTUNE equ 0F9Bh ;# 
# 3803 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIE1 equ 0F9Dh ;# 
# 3876 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIR1 equ 0F9Eh ;# 
# 3949 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IPR1 equ 0F9Fh ;# 
# 4022 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIE2 equ 0FA0h ;# 
# 4087 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PIR2 equ 0FA1h ;# 
# 4152 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
IPR2 equ 0FA2h ;# 
# 4217 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EECON1 equ 0FA6h ;# 
# 4282 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EECON2 equ 0FA7h ;# 
# 4288 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EEDATA equ 0FA8h ;# 
# 4294 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
EEADR equ 0FA9h ;# 
# 4355 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCSTA equ 0FABh ;# 
# 4360 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCSTA1 equ 0FABh ;# 
# 4564 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXSTA equ 0FACh ;# 
# 4569 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXSTA1 equ 0FACh ;# 
# 4861 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXREG equ 0FADh ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TXREG1 equ 0FADh ;# 
# 4872 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCREG equ 0FAEh ;# 
# 4877 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCREG1 equ 0FAEh ;# 
# 4883 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SPBRG equ 0FAFh ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SPBRG1 equ 0FAFh ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SPBRGH equ 0FB0h ;# 
# 4900 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T3CON equ 0FB1h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR3 equ 0FB2h ;# 
# 5014 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR3L equ 0FB2h ;# 
# 5020 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR3H equ 0FB3h ;# 
# 5026 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ECCP1AS equ 0FB6h ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PWM1CON equ 0FB7h ;# 
# 5176 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
BAUDCON equ 0FB8h ;# 
# 5181 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
BAUDCTL equ 0FB8h ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PSTRCON equ 0FB9h ;# 
# 5384 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
REFCON0 equ 0FBAh ;# 
# 5389 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
VREFCON0 equ 0FBAh ;# 
# 5461 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
REFCON1 equ 0FBBh ;# 
# 5466 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
VREFCON1 equ 0FBBh ;# 
# 5596 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
REFCON2 equ 0FBCh ;# 
# 5601 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
VREFCON2 equ 0FBCh ;# 
# 5681 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCP1CON equ 0FBDh ;# 
# 5762 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCPR1 equ 0FBEh ;# 
# 5768 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCPR1L equ 0FBEh ;# 
# 5774 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
CCPR1H equ 0FBFh ;# 
# 5780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADCON2 equ 0FC0h ;# 
# 5850 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADCON1 equ 0FC1h ;# 
# 5896 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADCON0 equ 0FC2h ;# 
# 6018 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADRES equ 0FC3h ;# 
# 6024 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADRESL equ 0FC3h ;# 
# 6030 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
ADRESH equ 0FC4h ;# 
# 6036 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPCON2 equ 0FC5h ;# 
# 6097 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPCON1 equ 0FC6h ;# 
# 6166 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPSTAT equ 0FC7h ;# 
# 6405 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPADD equ 0FC8h ;# 
# 6411 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
SSPBUF equ 0FC9h ;# 
# 6417 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T2CON equ 0FCAh ;# 
# 6487 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PR2 equ 0FCBh ;# 
# 6492 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
MEMCON equ 0FCBh ;# 
# 6596 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR2 equ 0FCCh ;# 
# 6602 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T1CON equ 0FCDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR1 equ 0FCEh ;# 
# 6712 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR1L equ 0FCEh ;# 
# 6718 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR1H equ 0FCFh ;# 
# 6724 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
RCON equ 0FD0h ;# 
# 6856 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WDTCON equ 0FD1h ;# 
# 6883 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
OSCCON2 equ 0FD2h ;# 
# 6914 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
OSCCON equ 0FD3h ;# 
# 6992 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
T0CON equ 0FD5h ;# 
# 7061 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR0 equ 0FD6h ;# 
# 7067 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR0L equ 0FD6h ;# 
# 7073 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TMR0H equ 0FD7h ;# 
# 7079 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
STATUS equ 0FD8h ;# 
# 7157 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR2 equ 0FD9h ;# 
# 7163 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR2L equ 0FD9h ;# 
# 7169 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR2H equ 0FDAh ;# 
# 7175 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PLUSW2 equ 0FDBh ;# 
# 7181 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PREINC2 equ 0FDCh ;# 
# 7187 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTDEC2 equ 0FDDh ;# 
# 7193 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTINC2 equ 0FDEh ;# 
# 7199 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INDF2 equ 0FDFh ;# 
# 7205 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
BSR equ 0FE0h ;# 
# 7211 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR1 equ 0FE1h ;# 
# 7217 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR1L equ 0FE1h ;# 
# 7223 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR1H equ 0FE2h ;# 
# 7229 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PLUSW1 equ 0FE3h ;# 
# 7235 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PREINC1 equ 0FE4h ;# 
# 7241 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTDEC1 equ 0FE5h ;# 
# 7247 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTINC1 equ 0FE6h ;# 
# 7253 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INDF1 equ 0FE7h ;# 
# 7259 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
WREG equ 0FE8h ;# 
# 7270 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR0 equ 0FE9h ;# 
# 7276 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR0L equ 0FE9h ;# 
# 7282 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
FSR0H equ 0FEAh ;# 
# 7288 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PLUSW0 equ 0FEBh ;# 
# 7294 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PREINC0 equ 0FECh ;# 
# 7300 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTDEC0 equ 0FEDh ;# 
# 7306 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
POSTINC0 equ 0FEEh ;# 
# 7312 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INDF0 equ 0FEFh ;# 
# 7318 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INTCON3 equ 0FF0h ;# 
# 7409 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INTCON2 equ 0FF1h ;# 
# 7478 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
INTCON equ 0FF2h ;# 
# 7624 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PROD equ 0FF3h ;# 
# 7630 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PRODL equ 0FF3h ;# 
# 7636 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PRODH equ 0FF4h ;# 
# 7642 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TABLAT equ 0FF5h ;# 
# 7650 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTR equ 0FF6h ;# 
# 7656 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTRL equ 0FF6h ;# 
# 7662 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTRH equ 0FF7h ;# 
# 7668 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TBLPTRU equ 0FF8h ;# 
# 7676 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCLAT equ 0FF9h ;# 
# 7683 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PC equ 0FF9h ;# 
# 7689 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCL equ 0FF9h ;# 
# 7695 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCLATH equ 0FFAh ;# 
# 7701 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
PCLATU equ 0FFBh ;# 
# 7707 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
STKPTR equ 0FFCh ;# 
# 7780 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOS equ 0FFDh ;# 
# 7786 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOSL equ 0FFDh ;# 
# 7792 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOSH equ 0FFEh ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.35\include\pic18f14k50.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_clock_getMS
	FNCALL	_main,_clock_init
	FNCALL	_main,_clock_process
	FNCALL	_main,_mcp2515_init
	FNCALL	_main,_mcp2515_receive_message
	FNCALL	_main,_parseLine
	FNCALL	_main,_sendHex
	FNCALL	_main,_usb_chReceived
	FNCALL	_main,_usb_getch
	FNCALL	_main,_usb_init
	FNCALL	_main,_usb_process
	FNCALL	_main,_usb_putch
	FNCALL	_parseLine,_clock_reset
	FNCALL	_parseLine,_getUniqueID
	FNCALL	_parseLine,_mcp2515_bit_modify
	FNCALL	_parseLine,_mcp2515_read_register
	FNCALL	_parseLine,_mcp2515_set_SJA1000_filter_code
	FNCALL	_parseLine,_mcp2515_set_SJA1000_filter_mask
	FNCALL	_parseLine,_mcp2515_set_bittiming
	FNCALL	_parseLine,_mcp2515_write_register
	FNCALL	_parseLine,_parseHex
	FNCALL	_parseLine,_sendByteHex
	FNCALL	_parseLine,_sendHex
	FNCALL	_parseLine,_setUniqueID
	FNCALL	_parseLine,_transmitStd
	FNCALL	_parseLine,_usb_putch
	FNCALL	_transmitStd,_mcp2515_send_message
	FNCALL	_transmitStd,_parseHex
	FNCALL	_mcp2515_send_message,_mcp2515_read_status
	FNCALL	_mcp2515_send_message,_spi_transmit
	FNCALL	_mcp2515_read_status,_spi_transmit
	FNCALL	_setUniqueID,_writeEEROM
	FNCALL	_sendByteHex,_sendHex
	FNCALL	_sendHex,_usb_putstr
	FNCALL	_usb_putstr,_usb_putch
	FNCALL	_usb_putch,_usb_process
	FNCALL	_usb_process,_usb_handleDescriptorRequest
	FNCALL	_usb_process,_usb_sendProcess
	FNCALL	_usb_process,_usb_txprocess
	FNCALL	_usb_handleDescriptorRequest,_usb_loadDescriptor
	FNCALL	_usb_loadDescriptor,_usb_sendProcess
	FNCALL	_mcp2515_set_bittiming,_mcp2515_write_register
	FNCALL	_mcp2515_set_SJA1000_filter_mask,_mcp2515_write_register
	FNCALL	_mcp2515_set_SJA1000_filter_code,_mcp2515_write_register
	FNCALL	_mcp2515_read_register,_spi_transmit
	FNCALL	_getUniqueID,_readEEROM
	FNCALL	_mcp2515_receive_message,_mcp2515_bit_modify
	FNCALL	_mcp2515_receive_message,_mcp2515_rx_status
	FNCALL	_mcp2515_receive_message,_spi_transmit
	FNCALL	_mcp2515_rx_status,_spi_transmit
	FNCALL	_mcp2515_bit_modify,_spi_transmit
	FNCALL	_mcp2515_init,_mcp2515_write_register
	FNCALL	_mcp2515_init,_spi_transmit
	FNCALL	_mcp2515_write_register,_spi_transmit
	FNCALL	_clock_init,_clock_reset
	FNROOT	_main
	global	_usb_config_desc
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"usb_cdc.c"
	line	94
_usb_config_desc:
	db	low(09h)
	db	low(02h)
	db	low(043h)
	db	low(0)
	db	low(02h)
	db	low(01h)
	db	low(0)
	db	low(080h)
	db	low(032h)
	db	low(09h)
	db	low(04h)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(02h)
	db	low(02h)
	db	low(01h)
	db	low(0)
	db	low(05h)
	db	low(024h)
	db	low(0)
	db	low(010h)
	db	low(01h)
	db	low(04h)
	db	low(024h)
	db	low(02h)
	db	low(02h)
	db	low(05h)
	db	low(024h)
	db	low(06h)
	db	low(0)
	db	low(01h)
	db	low(05h)
	db	low(024h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(07h)
	db	low(05h)
	db	low(082h)
	db	low(03h)
	db	low(08h)
	db	low(0)
	db	low(02h)
	db	low(09h)
	db	low(04h)
	db	low(01h)
	db	low(0)
	db	low(02h)
	db	low(0Ah)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(07h)
	db	low(05h)
	db	low(03h)
	db	low(02h)
	db	low(08h)
	db	low(0)
	db	low(0)
	db	low(07h)
	db	low(05h)
	db	low(081h)
	db	low(02h)
	db	low(040h)
	db	low(0)
	db	low(0)
	global __end_of_usb_config_desc
__end_of_usb_config_desc:
	global	_usb_string_manuf
psect	smallconst
	file	"usb_cdc.c"
	line	186
_usb_string_manuf:
	db	low(036h)
	db	low(03h)
	db	low(04Dh)
	db	low(0)
	db	low(069h)
	db	low(0)
	db	low(063h)
	db	low(0)
	db	low(072h)
	db	low(0)
	db	low(06Fh)
	db	low(0)
	db	low(063h)
	db	low(0)
	db	low(068h)
	db	low(0)
	db	low(069h)
	db	low(0)
	db	low(070h)
	db	low(0)
	db	low(020h)
	db	low(0)
	db	low(054h)
	db	low(0)
	db	low(065h)
	db	low(0)
	db	low(063h)
	db	low(0)
	db	low(068h)
	db	low(0)
	db	low(06Eh)
	db	low(0)
	db	low(06Fh)
	db	low(0)
	db	low(06Ch)
	db	low(0)
	db	low(06Fh)
	db	low(0)
	db	low(067h)
	db	low(0)
	db	low(079h)
	db	low(0)
	db	low(02Ch)
	db	low(0)
	db	low(020h)
	db	low(0)
	db	low(049h)
	db	low(0)
	db	low(06Eh)
	db	low(0)
	db	low(063h)
	db	low(0)
	db	low(02Eh)
	db	low(0)
	global __end_of_usb_string_manuf
__end_of_usb_string_manuf:
	global	_usb_dev_desc
psect	smallconst
	file	"usb_cdc.c"
	line	77
_usb_dev_desc:
	db	low(012h)
	db	low(01h)
	db	low(0)
	db	low(02h)
	db	low(02h)
	db	low(0)
	db	low(0)
	db	low(08h)
	db	low(0D8h)
	db	low(04h)
	db	low(0Ah)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(02h)
	db	low(0)
	db	low(01h)
	global __end_of_usb_dev_desc
__end_of_usb_dev_desc:
	global	_usb_string_product
psect	smallconst
	file	"usb_cdc.c"
	line	217
_usb_string_product:
	db	low(0Eh)
	db	low(03h)
	db	low(055h)
	db	low(0)
	db	low(053h)
	db	low(0)
	db	low(042h)
	db	low(0)
	db	low(074h)
	db	low(0)
	db	low(069h)
	db	low(0)
	db	low(06Eh)
	db	low(0)
	global __end_of_usb_string_product
__end_of_usb_string_product:
	global	_usb_string_0
psect	smallconst
	file	"usb_cdc.c"
	line	180
_usb_string_0:
	db	low(04h)
	db	low(03h)
	db	low(09h)
	db	low(04h)
	global __end_of_usb_string_0
__end_of_usb_string_0:
	global	_usb_config_desc
	global	_usb_string_manuf
	global	_usb_dev_desc
	global	_usb_string_product
	global	_usb_string_0
	global	_linecoding
	global	_usb_sendbuffer
	global	_clock_lastclock
	global	_clock_msticker
	global	_configured
	global	_usb_sendleft
	global	_dolinecoding
	global	_state
	global	_txbuffer_bytesleft
	global	_txbuffer_writepos
	global	_usb_config
	global	_usb_getchpos
	global	_usb_setaddress
	global	_txbuffer
	global	_timestamping
	global	_ep

	DABS	1,512,32,_ep
	global	_UADDR
_UADDR	set	0xF5C
	global	_UEP0
_UEP0	set	0xF53
	global	_UEP1
_UEP1	set	0xF54
	global	_UEP2
_UEP2	set	0xF55
	global	_UEP3
_UEP3	set	0xF56
	global	_TMR0
_TMR0	set	0xFD6
	global	_ANSEL
_ANSEL	set	0xF7E
	global	_ANSELH
_ANSELH	set	0xF7F
	global	_EEADR
_EEADR	set	0xFA9
	global	_EECON1
_EECON1	set	0xFA6
	global	_EECON2
_EECON2	set	0xFA7
	global	_EEDATA
_EEDATA	set	0xFA8
	global	_INTCON
_INTCON	set	0xFF2
	global	_LATBbits
_LATBbits	set	0xF8A
	global	_LATCbits
_LATCbits	set	0xF8B
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_PORTAbits
_PORTAbits	set	0xF80
	global	_PORTCbits
_PORTCbits	set	0xF82
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_SSPCON1
_SSPCON1	set	0xFC6
	global	_SSPSTAT
_SSPSTAT	set	0xFC7
	global	_SSPSTATbits
_SSPSTATbits	set	0xFC7
	global	_T0CON
_T0CON	set	0xFD5
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_TRISCbits
_TRISCbits	set	0xF94
	global	_UCFG
_UCFG	set	0xF61
	global	_UCON
_UCON	set	0xF64
	global	_UCONbits
_UCONbits	set	0xF64
	global	_UIRbits
_UIRbits	set	0xF62
	global	_USTAT
_USTAT	set	0xF63
	global	_ep0out_buffer

	DABS	1,640,8,_ep0out_buffer
	global	_ep0in_buffer

	DABS	1,648,8,_ep0in_buffer
	global	_ep2in_buffer

	DABS	1,664,8,_ep2in_buffer
	global	_ep1in_buffer

	DABS	1,680,64,_ep1in_buffer
	global	_ep3out_buffer

	DABS	1,672,8,_ep3out_buffer
; #config settings
	file	"main.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_linecoding
_linecoding:
       ds      7
	global	_usb_sendbuffer
_usb_sendbuffer:
       ds      3
	global	_clock_lastclock
_clock_lastclock:
       ds      2
	global	_clock_msticker
_clock_msticker:
       ds      2
	global	_configured
_configured:
       ds      2
	global	_usb_sendleft
_usb_sendleft:
       ds      2
	global	_dolinecoding
_dolinecoding:
       ds      1
	global	_state
_state:
       ds      1
	global	_txbuffer_bytesleft
_txbuffer_bytesleft:
       ds      1
	global	_txbuffer_writepos
_txbuffer_writepos:
       ds      1
	global	_usb_config
_usb_config:
       ds      1
	global	_usb_getchpos
_usb_getchpos:
       ds      1
	global	_usb_setaddress
_usb_setaddress:
       ds      1
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
	global	_txbuffer
_txbuffer:
       ds      128
	global	_timestamping
_timestamping:
       ds      1
	file	"main.as"
	line	#
psect	cinit
; Clear objects allocated to BANK1 (129 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	129
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (25 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	25
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	main@line
main@line:	; 100 bytes @ 0x0
	ds   100
	global	main@timestamp
main@timestamp:	; 2 bytes @ 0x64
	ds   2
	global	main@idlen
main@idlen:	; 1 bytes @ 0x66
	ds   1
	global	main@type
main@type:	; 1 bytes @ 0x67
	ds   1
	global	main@i
main@i:	; 1 bytes @ 0x68
	ds   1
	global	main@ch
main@ch:	; 1 bytes @ 0x69
	ds   1
	global	main@linepos
main@linepos:	; 1 bytes @ 0x6A
	ds   1
	global	main@canmsg
main@canmsg:	; 14 bytes @ 0x6B
	ds   14
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	parseLine@value
parseLine@value:	; 1 bytes @ 0x0
	ds   1
	global	parseLine@id
parseLine@id:	; 1 bytes @ 0x1
	ds   1
	global	parseLine@id_508
parseLine@id_508:	; 1 bytes @ 0x2
	ds   1
	global	parseLine@status
parseLine@status:	; 1 bytes @ 0x3
	ds   1
	global	parseLine@cnf1
parseLine@cnf1:	; 4 bytes @ 0x4
	ds   4
	global	parseLine@cnf2
parseLine@cnf2:	; 4 bytes @ 0x8
	ds   4
	global	parseLine@cnf3
parseLine@cnf3:	; 4 bytes @ 0xC
	ds   4
	global	parseLine@address
parseLine@address:	; 4 bytes @ 0x10
	ds   4
	global	parseLine@address_493
parseLine@address_493:	; 4 bytes @ 0x14
	ds   4
	global	parseLine@data
parseLine@data:	; 4 bytes @ 0x18
	ds   4
	global	parseLine@stamping
parseLine@stamping:	; 4 bytes @ 0x1C
	ds   4
	global	parseLine@am0
parseLine@am0:	; 4 bytes @ 0x20
	ds   4
	global	parseLine@am1
parseLine@am1:	; 4 bytes @ 0x24
	ds   4
	global	parseLine@am2
parseLine@am2:	; 4 bytes @ 0x28
	ds   4
	global	parseLine@am3
parseLine@am3:	; 4 bytes @ 0x2C
	ds   4
	global	parseLine@ac0
parseLine@ac0:	; 4 bytes @ 0x30
	ds   4
	global	parseLine@ac1
parseLine@ac1:	; 4 bytes @ 0x34
	ds   4
	global	parseLine@ac2
parseLine@ac2:	; 4 bytes @ 0x38
	ds   4
	global	parseLine@ac3
parseLine@ac3:	; 4 bytes @ 0x3C
	ds   4
	global	parseLine@flags
parseLine@flags:	; 1 bytes @ 0x40
	ds   1
	global	parseLine@result
parseLine@result:	; 1 bytes @ 0x41
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_usb_putch:	; 0 bytes @ 0x0
?_clock_reset:	; 0 bytes @ 0x0
??_clock_reset:	; 0 bytes @ 0x0
?_setUniqueID:	; 0 bytes @ 0x0
?_mcp2515_init:	; 0 bytes @ 0x0
?_clock_init:	; 0 bytes @ 0x0
??_clock_init:	; 0 bytes @ 0x0
?_usb_init:	; 0 bytes @ 0x0
??_usb_init:	; 0 bytes @ 0x0
?_usb_process:	; 0 bytes @ 0x0
?_clock_process:	; 0 bytes @ 0x0
??_clock_process:	; 0 bytes @ 0x0
??_usb_getch:	; 0 bytes @ 0x0
??_usb_chReceived:	; 0 bytes @ 0x0
?_sendByteHex:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_usb_sendProcess:	; 0 bytes @ 0x0
??_usb_sendProcess:	; 0 bytes @ 0x0
?_usb_txprocess:	; 0 bytes @ 0x0
??_usb_txprocess:	; 0 bytes @ 0x0
??_spi_transmit:	; 0 bytes @ 0x0
??_readEEROM:	; 0 bytes @ 0x0
?_writeEEROM:	; 0 bytes @ 0x0
?_mcp2515_read_register:	; 1 bytes @ 0x0
?_getUniqueID:	; 1 bytes @ 0x0
?_usb_getch:	; 1 bytes @ 0x0
?_usb_chReceived:	; 1 bytes @ 0x0
?_parseHex:	; 1 bytes @ 0x0
?_spi_transmit:	; 1 bytes @ 0x0
?_mcp2515_read_status:	; 1 bytes @ 0x0
?_mcp2515_rx_status:	; 1 bytes @ 0x0
?_readEEROM:	; 1 bytes @ 0x0
	global	?_clock_getMS
?_clock_getMS:	; 2 bytes @ 0x0
	global	usb_txprocess@i
usb_txprocess@i:	; 1 bytes @ 0x0
	global	usb_getch@ch
usb_getch@ch:	; 1 bytes @ 0x0
	global	spi_transmit@c
spi_transmit@c:	; 1 bytes @ 0x0
	global	readEEROM@addr
readEEROM@addr:	; 1 bytes @ 0x0
	global	writeEEROM@data
writeEEROM@data:	; 1 bytes @ 0x0
	global	parseHex@line
parseHex@line:	; 2 bytes @ 0x0
	ds   1
??_mcp2515_read_register:	; 0 bytes @ 0x1
?_mcp2515_write_register:	; 0 bytes @ 0x1
?_mcp2515_bit_modify:	; 0 bytes @ 0x1
??_mcp2515_read_status:	; 0 bytes @ 0x1
??_mcp2515_rx_status:	; 0 bytes @ 0x1
??_writeEEROM:	; 0 bytes @ 0x1
	global	usb_txprocess@readpos
usb_txprocess@readpos:	; 1 bytes @ 0x1
	global	mcp2515_write_register@data
mcp2515_write_register@data:	; 1 bytes @ 0x1
	global	mcp2515_read_register@address
mcp2515_read_register@address:	; 1 bytes @ 0x1
	global	mcp2515_bit_modify@mask
mcp2515_bit_modify@mask:	; 1 bytes @ 0x1
	global	mcp2515_read_status@status
mcp2515_read_status@status:	; 1 bytes @ 0x1
	global	mcp2515_rx_status@status
mcp2515_rx_status@status:	; 1 bytes @ 0x1
	global	readEEROM@data
readEEROM@data:	; 1 bytes @ 0x1
	global	writeEEROM@addr
writeEEROM@addr:	; 1 bytes @ 0x1
	ds   1
??_mcp2515_write_register:	; 0 bytes @ 0x2
??_setUniqueID:	; 0 bytes @ 0x2
??_getUniqueID:	; 0 bytes @ 0x2
??_clock_getMS:	; 0 bytes @ 0x2
?_mcp2515_send_message:	; 1 bytes @ 0x2
	global	parseHex@len
parseHex@len:	; 1 bytes @ 0x2
	global	usb_sendProcess@i
usb_sendProcess@i:	; 1 bytes @ 0x2
	global	usb_txprocess@count
usb_txprocess@count:	; 1 bytes @ 0x2
	global	mcp2515_write_register@address
mcp2515_write_register@address:	; 1 bytes @ 0x2
	global	mcp2515_read_register@data
mcp2515_read_register@data:	; 1 bytes @ 0x2
	global	mcp2515_bit_modify@data
mcp2515_bit_modify@data:	; 1 bytes @ 0x2
	global	setUniqueID@ID
setUniqueID@ID:	; 1 bytes @ 0x2
	global	mcp2515_send_message@p_canmsg
mcp2515_send_message@p_canmsg:	; 2 bytes @ 0x2
	ds   1
?_mcp2515_set_bittiming:	; 0 bytes @ 0x3
??_mcp2515_bit_modify:	; 0 bytes @ 0x3
?_mcp2515_set_SJA1000_filter_mask:	; 0 bytes @ 0x3
?_mcp2515_set_SJA1000_filter_code:	; 0 bytes @ 0x3
??_mcp2515_init:	; 0 bytes @ 0x3
	global	mcp2515_bit_modify@address
mcp2515_bit_modify@address:	; 1 bytes @ 0x3
	global	mcp2515_init@dummy
mcp2515_init@dummy:	; 1 bytes @ 0x3
	global	mcp2515_set_SJA1000_filter_mask@amr1
mcp2515_set_SJA1000_filter_mask@amr1:	; 1 bytes @ 0x3
	global	mcp2515_set_SJA1000_filter_code@acr1
mcp2515_set_SJA1000_filter_code@acr1:	; 1 bytes @ 0x3
	global	mcp2515_set_bittiming@cnf2
mcp2515_set_bittiming@cnf2:	; 1 bytes @ 0x3
	global	parseHex@value
parseHex@value:	; 2 bytes @ 0x3
	global	usb_sendProcess@length
usb_sendProcess@length:	; 2 bytes @ 0x3
	ds   1
??_mcp2515_send_message:	; 0 bytes @ 0x4
?_mcp2515_receive_message:	; 1 bytes @ 0x4
	global	mcp2515_set_SJA1000_filter_mask@amr2
mcp2515_set_SJA1000_filter_mask@amr2:	; 1 bytes @ 0x4
	global	mcp2515_set_SJA1000_filter_code@acr2
mcp2515_set_SJA1000_filter_code@acr2:	; 1 bytes @ 0x4
	global	mcp2515_set_bittiming@cnf3
mcp2515_set_bittiming@cnf3:	; 1 bytes @ 0x4
	global	mcp2515_receive_message@p_canmsg
mcp2515_receive_message@p_canmsg:	; 2 bytes @ 0x4
	ds   1
??_mcp2515_set_bittiming:	; 0 bytes @ 0x5
??_parseHex:	; 0 bytes @ 0x5
?_usb_loadDescriptor:	; 1 bytes @ 0x5
	global	mcp2515_set_SJA1000_filter_mask@amr3
mcp2515_set_SJA1000_filter_mask@amr3:	; 1 bytes @ 0x5
	global	mcp2515_set_SJA1000_filter_code@acr3
mcp2515_set_SJA1000_filter_code@acr3:	; 1 bytes @ 0x5
	global	mcp2515_set_bittiming@cnf1
mcp2515_set_bittiming@cnf1:	; 1 bytes @ 0x5
	global	usb_loadDescriptor@descbuffer
usb_loadDescriptor@descbuffer:	; 2 bytes @ 0x5
	ds   1
??_mcp2515_set_SJA1000_filter_mask:	; 0 bytes @ 0x6
??_mcp2515_set_SJA1000_filter_code:	; 0 bytes @ 0x6
??_mcp2515_receive_message:	; 0 bytes @ 0x6
	global	mcp2515_set_SJA1000_filter_mask@amr0
mcp2515_set_SJA1000_filter_mask@amr0:	; 1 bytes @ 0x6
	global	mcp2515_set_SJA1000_filter_code@acr0
mcp2515_set_SJA1000_filter_code@acr0:	; 1 bytes @ 0x6
	ds   1
	global	usb_loadDescriptor@size
usb_loadDescriptor@size:	; 2 bytes @ 0x7
	ds   2
	global	usb_loadDescriptor@length
usb_loadDescriptor@length:	; 2 bytes @ 0x9
	ds   2
??_usb_loadDescriptor:	; 0 bytes @ 0xB
?_usb_handleDescriptorRequest:	; 1 bytes @ 0xB
	global	usb_handleDescriptorRequest@index
usb_handleDescriptorRequest@index:	; 1 bytes @ 0xB
	global	mcp2515_receive_message@temp
mcp2515_receive_message@temp:	; 4 bytes @ 0xB
	ds   1
	global	mcp2515_send_message@i
mcp2515_send_message@i:	; 1 bytes @ 0xC
	global	usb_handleDescriptorRequest@length
usb_handleDescriptorRequest@length:	; 2 bytes @ 0xC
	ds   1
	global	mcp2515_send_message@status
mcp2515_send_message@status:	; 1 bytes @ 0xD
	ds   1
??_usb_handleDescriptorRequest:	; 0 bytes @ 0xE
	global	usb_handleDescriptorRequest@type
usb_handleDescriptorRequest@type:	; 1 bytes @ 0xE
	global	mcp2515_send_message@address
mcp2515_send_message@address:	; 1 bytes @ 0xE
	ds   1
??_usb_process:	; 0 bytes @ 0xF
?_transmitStd:	; 1 bytes @ 0xF
	global	mcp2515_receive_message@i
mcp2515_receive_message@i:	; 1 bytes @ 0xF
	global	transmitStd@line
transmitStd@line:	; 2 bytes @ 0xF
	ds   1
	global	mcp2515_receive_message@address
mcp2515_receive_message@address:	; 1 bytes @ 0x10
	ds   1
??_transmitStd:	; 0 bytes @ 0x11
	global	usb_process@i
usb_process@i:	; 1 bytes @ 0x11
	global	mcp2515_receive_message@status
mcp2515_receive_message@status:	; 1 bytes @ 0x11
	ds   1
	global	usb_process@i_678
usb_process@i_678:	; 1 bytes @ 0x12
	ds   1
	global	_transmitStd$481
_transmitStd$481:	; 1 bytes @ 0x13
	global	usb_process@i_679
usb_process@i_679:	; 1 bytes @ 0x13
	ds   1
??_usb_putch:	; 0 bytes @ 0x14
	global	transmitStd@idlen
transmitStd@idlen:	; 1 bytes @ 0x14
	global	usb_putch@ch
usb_putch@ch:	; 1 bytes @ 0x14
	ds   1
?_usb_putstr:	; 0 bytes @ 0x15
	global	transmitStd@i
transmitStd@i:	; 1 bytes @ 0x15
	global	usb_putstr@s
usb_putstr@s:	; 2 bytes @ 0x15
	ds   1
	global	transmitStd@temp
transmitStd@temp:	; 4 bytes @ 0x16
	ds   1
??_usb_putstr:	; 0 bytes @ 0x17
?_sendHex:	; 0 bytes @ 0x17
	global	sendHex@value
sendHex@value:	; 4 bytes @ 0x17
	ds   3
	global	transmitStd@canmsg
transmitStd@canmsg:	; 14 bytes @ 0x1A
	ds   1
	global	sendHex@len
sendHex@len:	; 1 bytes @ 0x1B
	ds   1
??_sendHex:	; 0 bytes @ 0x1C
	ds   4
	global	sendHex@s
sendHex@s:	; 20 bytes @ 0x20
	ds   20
	global	sendHex@hex
sendHex@hex:	; 1 bytes @ 0x34
	ds   1
??_sendByteHex:	; 0 bytes @ 0x35
	global	sendByteHex@value
sendByteHex@value:	; 1 bytes @ 0x35
	ds   1
?_parseLine:	; 0 bytes @ 0x36
	global	parseLine@line
parseLine@line:	; 2 bytes @ 0x36
	ds   2
??_parseLine:	; 0 bytes @ 0x38
	ds   1
??_main:	; 0 bytes @ 0x39
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    157
;!    Data        0
;!    BSS         154
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     58      83
;!    BANK0           160     66      66
;!    BANK1           256    121     250
;!    BANK2hl           8      0       0
;!    BANK2l           96      0       0
;!    BANK2hh          24      0       0

;!
;!Pointer List with Targets:
;!
;!    mcp2515_receive_message@p_canmsg	PTR struct . size(2) Largest target is 14
;!		 -> main@canmsg(BANK1[14]), 
;!
;!    mcp2515_send_message@p_canmsg	PTR struct . size(2) Largest target is 14
;!		 -> transmitStd@canmsg(COMRAM[14]), 
;!
;!    usb_putstr@s	PTR unsigned char  size(2) Largest target is 20
;!		 -> sendHex@s(COMRAM[20]), 
;!
;!    usb_loadDescriptor@descbuffer	PTR const unsigned char  size(2) Largest target is 67
;!		 -> usb_string_product(CODE[14]), usb_string_manuf(CODE[54]), usb_string_0(CODE[4]), usb_config_desc(CODE[67]), 
;!		 -> usb_dev_desc(CODE[18]), 
;!
;!    usb_sendbuffer	PTR const unsigned char  size(3) Largest target is 16383
;!		 -> usb_string_product(CODE[14]), usb_string_manuf(CODE[54]), usb_string_0(CODE[4]), usb_config_desc(CODE[67]), 
;!		 -> usb_dev_desc(CODE[18]), ROM(CODE[16383]), 
;!
;!    parseLine@line	PTR unsigned char  size(2) Largest target is 100
;!		 -> main@line(BANK1[100]), 
;!
;!    transmitStd@line	PTR unsigned char  size(2) Largest target is 100
;!		 -> main@line(BANK1[100]), 
;!
;!    parseHex@line	PTR unsigned char  size(2) Largest target is 100
;!		 -> main@line(BANK1[100]), 
;!
;!    parseHex@value	PTR unsigned long  size(2) Largest target is 4
;!		 -> parseLine@ac3(BANK0[4]), parseLine@ac2(BANK0[4]), parseLine@ac1(BANK0[4]), parseLine@ac0(BANK0[4]), 
;!		 -> parseLine@am3(BANK0[4]), parseLine@am2(BANK0[4]), parseLine@am1(BANK0[4]), parseLine@am0(BANK0[4]), 
;!		 -> parseLine@stamping(BANK0[4]), parseLine@data(BANK0[4]), parseLine@address_493(BANK0[4]), parseLine@address(BANK0[4]), 
;!		 -> parseLine@cnf3(BANK0[4]), parseLine@cnf2(BANK0[4]), parseLine@cnf1(BANK0[4]), transmitStd@temp(COMRAM[4]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_parseLine
;!    _parseLine->_sendByteHex
;!    _transmitStd->_mcp2515_send_message
;!    _mcp2515_send_message->_mcp2515_read_status
;!    _mcp2515_read_status->_spi_transmit
;!    _setUniqueID->_writeEEROM
;!    _sendByteHex->_sendHex
;!    _sendHex->_usb_putstr
;!    _usb_putstr->_usb_putch
;!    _usb_putch->_usb_process
;!    _usb_process->_usb_handleDescriptorRequest
;!    _usb_handleDescriptorRequest->_usb_loadDescriptor
;!    _usb_loadDescriptor->_usb_sendProcess
;!    _mcp2515_set_bittiming->_mcp2515_write_register
;!    _mcp2515_set_SJA1000_filter_mask->_mcp2515_write_register
;!    _mcp2515_set_SJA1000_filter_code->_mcp2515_write_register
;!    _mcp2515_read_register->_spi_transmit
;!    _getUniqueID->_readEEROM
;!    _mcp2515_receive_message->_mcp2515_bit_modify
;!    _mcp2515_rx_status->_spi_transmit
;!    _mcp2515_bit_modify->_spi_transmit
;!    _mcp2515_init->_mcp2515_write_register
;!    _mcp2515_write_register->_spi_transmit
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_parseLine
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2hl
;!
;!    None.
;!
;!Critical Paths under _main in BANK2l
;!
;!    None.
;!
;!Critical Paths under _main in BANK2hh
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                               122   122      0   43145
;!                                             57 COMRAM     1     1      0
;!                                              0 BANK1    121   121      0
;!                        _clock_getMS
;!                         _clock_init
;!                      _clock_process
;!                       _mcp2515_init
;!            _mcp2515_receive_message
;!                          _parseLine
;!                            _sendHex
;!                     _usb_chReceived
;!                          _usb_getch
;!                           _usb_init
;!                        _usb_process
;!                          _usb_putch
;! ---------------------------------------------------------------------------------
;! (1) _usb_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _usb_getch                                            1     1      0      23
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _usb_chReceived                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _parseLine                                           69    67      2   31422
;!                                             54 COMRAM     3     1      2
;!                                              0 BANK0     66    66      0
;!                        _clock_reset
;!                        _getUniqueID
;!                 _mcp2515_bit_modify
;!              _mcp2515_read_register
;!    _mcp2515_set_SJA1000_filter_code
;!    _mcp2515_set_SJA1000_filter_mask
;!              _mcp2515_set_bittiming
;!             _mcp2515_write_register
;!                           _parseHex
;!                        _sendByteHex
;!                            _sendHex
;!                        _setUniqueID
;!                        _transmitStd
;!                          _usb_putch
;! ---------------------------------------------------------------------------------
;! (2) _transmitStd                                         25    23      2    5129
;!                                             15 COMRAM    25    23      2
;!               _mcp2515_send_message
;!                           _parseHex
;! ---------------------------------------------------------------------------------
;! (3) _parseHex                                             9     4      5    3809
;!                                              0 COMRAM     9     4      5
;! ---------------------------------------------------------------------------------
;! (3) _mcp2515_send_message                                13    11      2     622
;!                                              2 COMRAM    13    11      2
;!                _mcp2515_read_status
;!                       _spi_transmit
;! ---------------------------------------------------------------------------------
;! (4) _mcp2515_read_status                                  1     1      0      45
;!                                              1 COMRAM     1     1      0
;!                       _spi_transmit
;! ---------------------------------------------------------------------------------
;! (2) _setUniqueID                                          1     1      0     130
;!                                              2 COMRAM     1     1      0
;!                         _writeEEROM
;! ---------------------------------------------------------------------------------
;! (3) _writeEEROM                                           2     1      1     108
;!                                              0 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (2) _sendByteHex                                          1     1      0    3229
;!                                             53 COMRAM     1     1      0
;!                            _sendHex
;! ---------------------------------------------------------------------------------
;! (1) _sendHex                                             30    25      5    3207
;!                                             23 COMRAM    30    25      5
;!                         _usb_putstr
;! ---------------------------------------------------------------------------------
;! (2) _usb_putstr                                           2     0      2    2165
;!                                             21 COMRAM     2     0      2
;!                          _usb_putch
;! ---------------------------------------------------------------------------------
;! (1) _usb_putch                                            1     1      0    2056
;!                                             20 COMRAM     1     1      0
;!                        _usb_process
;! ---------------------------------------------------------------------------------
;! (2) _usb_process                                          5     5      0    2034
;!                                             15 COMRAM     5     5      0
;!        _usb_handleDescriptorRequest
;!                    _usb_sendProcess
;!                      _usb_txprocess
;! ---------------------------------------------------------------------------------
;! (3) _usb_txprocess                                        3     3      0     183
;!                                              0 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (3) _usb_handleDescriptorRequest                          4     1      3    1489
;!                                             11 COMRAM     4     1      3
;!                 _usb_loadDescriptor
;! ---------------------------------------------------------------------------------
;! (4) _usb_loadDescriptor                                   6     0      6    1207
;!                                              5 COMRAM     6     0      6
;!                    _usb_sendProcess
;! ---------------------------------------------------------------------------------
;! (3) _usb_sendProcess                                      5     5      0     114
;!                                              0 COMRAM     5     5      0
;! ---------------------------------------------------------------------------------
;! (2) _mcp2515_set_bittiming                                3     1      2    3716
;!                                              3 COMRAM     3     1      2
;!             _mcp2515_write_register
;! ---------------------------------------------------------------------------------
;! (2) _mcp2515_set_SJA1000_filter_mask                      4     1      3    2650
;!                                              3 COMRAM     4     1      3
;!             _mcp2515_write_register
;! ---------------------------------------------------------------------------------
;! (2) _mcp2515_set_SJA1000_filter_code                      4     1      3    2738
;!                                              3 COMRAM     4     1      3
;!             _mcp2515_write_register
;! ---------------------------------------------------------------------------------
;! (2) _mcp2515_read_register                                2     2      0      67
;!                                              1 COMRAM     2     2      0
;!                       _spi_transmit
;! ---------------------------------------------------------------------------------
;! (2) _getUniqueID                                          0     0      0      45
;!                          _readEEROM
;! ---------------------------------------------------------------------------------
;! (3) _readEEROM                                            2     2      0      45
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _mcp2515_receive_message                             14    12      2    1417
;!                                              4 COMRAM    14    12      2
;!                 _mcp2515_bit_modify
;!                  _mcp2515_rx_status
;!                       _spi_transmit
;! ---------------------------------------------------------------------------------
;! (2) _mcp2515_rx_status                                    1     1      0      45
;!                                              1 COMRAM     1     1      0
;!                       _spi_transmit
;! ---------------------------------------------------------------------------------
;! (2) _mcp2515_bit_modify                                   3     1      2     728
;!                                              1 COMRAM     3     1      2
;!                       _spi_transmit
;! ---------------------------------------------------------------------------------
;! (1) _mcp2515_init                                         1     1      0    2438
;!                                              3 COMRAM     1     1      0
;!             _mcp2515_write_register
;!                       _spi_transmit
;! ---------------------------------------------------------------------------------
;! (2) _mcp2515_write_register                               2     1      1    2370
;!                                              1 COMRAM     2     1      1
;!                       _spi_transmit
;! ---------------------------------------------------------------------------------
;! (4) _spi_transmit                                         1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _clock_process                                        2     2      0       0
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _clock_init                                           0     0      0       0
;!                        _clock_reset
;! ---------------------------------------------------------------------------------
;! (2) _clock_reset                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _clock_getMS                                          2     0      2       0
;!                                              0 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _clock_getMS
;!   _clock_init
;!     _clock_reset
;!   _clock_process
;!   _mcp2515_init
;!     _mcp2515_write_register
;!       _spi_transmit
;!     _spi_transmit
;!   _mcp2515_receive_message
;!     _mcp2515_bit_modify
;!       _spi_transmit
;!     _mcp2515_rx_status
;!       _spi_transmit
;!     _spi_transmit
;!   _parseLine
;!     _clock_reset
;!     _getUniqueID
;!       _readEEROM
;!     _mcp2515_bit_modify
;!       _spi_transmit
;!     _mcp2515_read_register
;!       _spi_transmit
;!     _mcp2515_set_SJA1000_filter_code
;!       _mcp2515_write_register
;!         _spi_transmit
;!     _mcp2515_set_SJA1000_filter_mask
;!       _mcp2515_write_register
;!         _spi_transmit
;!     _mcp2515_set_bittiming
;!       _mcp2515_write_register
;!         _spi_transmit
;!     _mcp2515_write_register
;!       _spi_transmit
;!     _parseHex
;!     _sendByteHex
;!       _sendHex
;!         _usb_putstr
;!           _usb_putch
;!             _usb_process
;!               _usb_handleDescriptorRequest
;!                 _usb_loadDescriptor
;!                   _usb_sendProcess
;!               _usb_sendProcess
;!               _usb_txprocess
;!     _sendHex
;!       _usb_putstr
;!         _usb_putch
;!           _usb_process
;!             _usb_handleDescriptorRequest
;!               _usb_loadDescriptor
;!                 _usb_sendProcess
;!             _usb_sendProcess
;!             _usb_txprocess
;!     _setUniqueID
;!       _writeEEROM
;!     _transmitStd
;!       _mcp2515_send_message
;!         _mcp2515_read_status
;!           _spi_transmit
;!         _spi_transmit
;!       _parseHex
;!     _usb_putch
;!       _usb_process
;!         _usb_handleDescriptorRequest
;!           _usb_loadDescriptor
;!             _usb_sendProcess
;!         _usb_sendProcess
;!         _usb_txprocess
;!   _sendHex
;!     _usb_putstr
;!       _usb_putch
;!         _usb_process
;!           _usb_handleDescriptorRequest
;!             _usb_loadDescriptor
;!               _usb_sendProcess
;!           _usb_sendProcess
;!           _usb_txprocess
;!   _usb_chReceived
;!   _usb_getch
;!   _usb_init
;!   _usb_process
;!     _usb_handleDescriptorRequest
;!       _usb_loadDescriptor
;!         _usb_sendProcess
;!     _usb_sendProcess
;!     _usb_txprocess
;!   _usb_putch
;!     _usb_process
;!       _usb_handleDescriptorRequest
;!         _usb_loadDescriptor
;!           _usb_sendProcess
;!       _usb_sendProcess
;!       _usb_txprocess
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAMl            1FF      0       0      18        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK1           100      0       0       7        0.0%
;!BANK1              100     79      FA       8       97.7%
;!BITBANK0            A0      0       0       5        0.0%
;!BANK0               A0     42      42       6       41.3%
;!BIGRAMhl            60      0       0      17        0.0%
;!BITBANK2l           60      0       0      14        0.0%
;!BANK2l              60      0       0      10        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     3A      53       1       87.4%
;!BIGRAMhhh           18      0       0      15        0.0%
;!BITBANK2hh          18      0       0      11        0.0%
;!BANK2hh             18      0       0      12        0.0%
;!BIGRAMhhl            8      0       0      16        0.0%
;!BITBANK2hl           8      0       0      13        0.0%
;!BANK2hl              8      0       0       9        0.0%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     18F       3        0.0%
;!DATA                 0      0     18F       4        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 373 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1  104[BANK1 ] unsigned char 
;;  timestamp       2  100[BANK1 ] unsigned short 
;;  type            1  103[BANK1 ] unsigned char 
;;  idlen           1  102[BANK1 ] unsigned char 
;;  canmsg         14  107[BANK1 ] struct .
;;  ch              1  105[BANK1 ] unsigned char 
;;  line          100    0[BANK1 ] unsigned char [100]
;;  linepos         1  106[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0     121       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         1       0     121       0       0       0
;;Total ram usage:      122 bytes
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_clock_getMS
;;		_clock_init
;;		_clock_process
;;		_mcp2515_init
;;		_mcp2515_receive_message
;;		_parseLine
;;		_sendHex
;;		_usb_chReceived
;;		_usb_getch
;;		_usb_init
;;		_usb_process
;;		_usb_putch
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"main.c"
	line	373
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	373
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 22
	line	376
	
l2866:
	call	_mcp2515_init	;wreg free
	line	379
	
l2868:
	movlw	low(030h)
	movwf	((c:4051)),c	;volatile
	line	382
	
l2870:
	movlw	low(0)
	movwf	((c:3966)),c	;volatile
	line	383
	
l2872:
	movlw	low(0)
	movwf	((c:3967)),c	;volatile
	line	384
	
l2874:
	bcf	((c:3987)),c,5	;volatile
	line	385
	
l2876:
	bcf	((c:3978)),c,5	;volatile
	line	388
	
l2878:
	call	_clock_init	;wreg free
	line	389
	
l2880:
	call	_usb_init	;wreg free
	line	392
	
l2882:
	movlw	low(0)
	movlb	1	; () banked
	movwf	((main@linepos))&0ffh
	goto	l2884
	line	394
	
l164:; BSR set to: 1

	line	397
	
l2884:
	call	_usb_process	;wreg free
	line	398
	
l2886:
	call	_clock_process	;wreg free
	line	401
	goto	l2906
	
l166:
	line	402
	
l2888:
	call	_usb_getch	;wreg free
	movlb	1	; () banked
	movwf	((main@ch))&0ffh
	line	404
	
l2890:; BSR set to: 1

		movlw	13
	movlb	1	; () banked
	xorwf	((main@ch))&0ffh,w
	btfss	status,2
	goto	u2401
	goto	u2400

u2401:
	goto	l2898
u2400:
	line	405
	
l2892:; BSR set to: 1

	movlb	1	; () banked
	movf	((main@linepos))&0ffh,w
	mullw	01h
	movlw	low(main@line)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(main@line)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	406
	
l2894:; BSR set to: 1

		movlw	low(main@line)
	movwf	((c:parseLine@line)),c
	movlw	high(main@line)
	movwf	((c:parseLine@line+1)),c

	call	_parseLine	;wreg free
	line	407
	
l2896:
	movlw	low(0)
	movlb	1	; () banked
	movwf	((main@linepos))&0ffh
	line	408
	goto	l2906
	
l167:; BSR set to: 1

	
l2898:; BSR set to: 1

		movlw	10
	movlb	1	; () banked
	xorwf	((main@ch))&0ffh,w
	btfsc	status,2
	goto	u2411
	goto	u2410

u2411:
	goto	l2906
u2410:
	line	409
	
l2900:; BSR set to: 1

	movlb	1	; () banked
	movf	((main@linepos))&0ffh,w
	mullw	01h
	movlw	low(main@line)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(main@line)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(main@ch),indf2

	line	410
	
l2902:; BSR set to: 1

		movlw	063h-0
	movlb	1	; () banked
	cpfslt	((main@linepos))&0ffh
	goto	u2421
	goto	u2420

u2421:
	goto	l2906
u2420:
	
l2904:; BSR set to: 1

	movlb	1	; () banked
	incf	((main@linepos))&0ffh
	goto	l2906
	
l170:; BSR set to: 1

	goto	l2906
	line	411
	
l169:; BSR set to: 1

	goto	l2906
	line	413
	
l168:; BSR set to: 1

	goto	l2906
	
l165:; BSR set to: 1

	line	401
	
l2906:
	call	_usb_chReceived	;wreg free
	iorlw	0
	btfss	status,2
	goto	u2431
	goto	u2430
u2431:
	goto	l2888
u2430:
	goto	l2908
	
l171:
	line	416
	
l2908:
	movf	((c:_state)),c,w	;volatile
	btfsc	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l2952
u2440:
	
l2910:
	btfsc	((c:3970)),c,2	;volatile
	goto	u2451
	goto	u2450
u2451:
	goto	l2952
u2450:
	goto	l2950
	line	420
	
l2912:
	goto	l2950
	
l174:
	line	423
	
l2914:
	call	_clock_getMS	;wreg free
	movff	0+?_clock_getMS,(main@timestamp)
	movff	1+?_clock_getMS,(main@timestamp+1)
	line	425
	
l2916:
	movlb	1	; () banked
	btfss	(0+(main@canmsg+04h))&0ffh,0
	goto	u2461
	goto	u2460
u2461:
	goto	l2920
u2460:
	
l2918:; BSR set to: 1

	movlw	low(072h)
	movlb	1	; () banked
	movwf	((main@type))&0ffh
	goto	l2922
	line	426
	
l175:; BSR set to: 1

	
l2920:; BSR set to: 1

	movlw	low(074h)
	movlb	1	; () banked
	movwf	((main@type))&0ffh
	goto	l2922
	
l176:; BSR set to: 1

	line	428
	
l2922:; BSR set to: 1

	movlb	1	; () banked
	btfss	(0+(main@canmsg+04h))&0ffh,1
	goto	u2471
	goto	u2470
u2471:
	goto	l2928
u2470:
	line	429
	
l2924:; BSR set to: 1

	movlw	(020h)&0ffh
	movlb	1	; () banked
	subwf	((main@type))&0ffh
	line	430
	
l2926:; BSR set to: 1

	movlw	low(08h)
	movlb	1	; () banked
	movwf	((main@idlen))&0ffh
	line	431
	goto	l2930
	
l177:; BSR set to: 1

	line	432
	
l2928:; BSR set to: 1

	movlw	low(03h)
	movlb	1	; () banked
	movwf	((main@idlen))&0ffh
	goto	l2930
	line	433
	
l178:; BSR set to: 1

	line	435
	
l2930:; BSR set to: 1

	movlb	1	; () banked
	movf	((main@type))&0ffh,w
	
	call	_usb_putch
	line	436
	
l2932:
	movff	(main@canmsg),(c:sendHex@value)
	movff	(main@canmsg+1),(c:sendHex@value+1)
	movff	(main@canmsg+2),(c:sendHex@value+2)
	movff	(main@canmsg+3),(c:sendHex@value+3)
	movff	(main@idlen),(c:sendHex@len)
	call	_sendHex	;wreg free
	line	438
	
l2934:
	movlb	1	; () banked
	movf	(0+(main@canmsg+05h))&0ffh,w
	movwf	((c:sendHex@value)),c
	clrf	((c:sendHex@value+1)),c
	clrf	((c:sendHex@value+2)),c
	clrf	((c:sendHex@value+3)),c

	movlw	low(01h)
	movwf	((c:sendHex@len)),c
	call	_sendHex	;wreg free
	line	440
	
l2936:
	movlb	1	; () banked
	btfsc	(0+(main@canmsg+04h))&0ffh,0
	goto	u2481
	goto	u2480
u2481:
	goto	l2946
u2480:
	line	442
	
l2938:; BSR set to: 1

	movlw	low(0)
	movlb	1	; () banked
	movwf	((main@i))&0ffh
	goto	l2944
	
l181:; BSR set to: 1

	line	443
	
l2940:; BSR set to: 1

	movlb	1	; () banked
	movf	((main@i))&0ffh,w
	mullw	01h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(main@canmsg)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(main@canmsg)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(??_main+0+0)&0ffh,c
	movf	((??_main+0+0)),c,w
	movwf	((c:sendHex@value)),c
	clrf	((c:sendHex@value+1)),c
	clrf	((c:sendHex@value+2)),c
	clrf	((c:sendHex@value+3)),c

	movlw	low(02h)
	movwf	((c:sendHex@len)),c
	call	_sendHex	;wreg free
	line	442
	
l2942:
	movlb	1	; () banked
	incf	((main@i))&0ffh
	goto	l2944
	
l180:; BSR set to: 1

	
l2944:; BSR set to: 1

	movlb	1	; () banked
		movf	(0+(main@canmsg+05h))&0ffh,w
	movlb	1	; () banked
	subwf	((main@i))&0ffh,w
	btfss	status,0
	goto	u2491
	goto	u2490

u2491:
	goto	l2940
u2490:
	goto	l2946
	
l182:; BSR set to: 1

	goto	l2946
	line	445
	
l179:; BSR set to: 1

	line	447
	
l2946:; BSR set to: 1

	movlb	1	; () banked
	movf	((_timestamping))&0ffh,w
	btfsc	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l183
u2500:
	line	448
	
l2948:; BSR set to: 1

	movff	(main@timestamp),(c:sendHex@value)
	movff	(main@timestamp+1),(c:sendHex@value+1)
	clrf	((c:sendHex@value+2)),c
	clrf	((c:sendHex@value+3)),c

	movlw	low(04h)
	movwf	((c:sendHex@len)),c
	call	_sendHex	;wreg free
	line	449
	
l183:
	line	451
	movlw	(0Dh)&0ffh
	
	call	_usb_putch
	goto	l2950
	line	452
	
l173:
	line	420
	
l2950:
		movlw	low(main@canmsg)
	movwf	((c:mcp2515_receive_message@p_canmsg)),c
	movlw	high(main@canmsg)
	movwf	((c:mcp2515_receive_message@p_canmsg+1)),c

	call	_mcp2515_receive_message	;wreg free
	iorlw	0
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l2914
u2510:
	goto	l2952
	
l184:
	goto	l2952
	line	453
	
l172:
	line	456
	
l2952:
	movf	((c:_state)),c,w	;volatile
	btfss	status,2
	goto	u2521
	goto	u2520
u2521:
	clrf	(??_main+0+0)&0ffh,c
	incf	(??_main+0+0)&0ffh,c
	goto	u2538
u2520:
	clrf	(??_main+0+0)&0ffh,c
u2538:
	swapf	(??_main+0+0),c
	rlncf	(??_main+0+0),c
	movf	((c:3978)),c,w	;volatile
	xorwf	(??_main+0+0),c,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_main+0+0),c,w
	movwf	((c:3978)),c	;volatile
	line	459
	
l2954:
	btfsc	((c:3968)),c,3	;volatile
	goto	u2541
	goto	u2540
u2541:
	goto	l2884
u2540:
	line	460
	
l2956:
	movlw	low(0)
	movwf	((c:3940)),c	;volatile
	line	461
	
l2958:
	movlw	250
u2557:
	nop
decfsz	wreg,f
	goto	u2557

	line	462
# 462 "main.c"
reset ;# 
psect	text0
	goto	l2884
	line	463
	
l185:
	goto	l2884
	line	464
	
l186:
	line	394
	goto	l2884
	
l187:
	line	465
	
l188:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_usb_init

;; *************** function _usb_init *****************
;; Defined at:
;;		line 419 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"usb_cdc.c"
	line	419
global __ptext1
__ptext1:
psect	text1
	file	"usb_cdc.c"
	line	419
	global	__size_of_usb_init
	__size_of_usb_init	equ	__end_of_usb_init-_usb_init
	
_usb_init:
;incstack = 0
	opt	stack 30
	line	420
	
l2776:
	movlw	low(080h)
	movlb	2	; () banked
	movwf	((512))&0ffh	;volatile
	line	421
	movlw	low(08h)
	movlb	2	; () banked
	movwf	(0+(512+01h))&0ffh	;volatile
	line	422
	movlw	low(080h)
	movlb	2	; () banked
	movwf	(0+(512+02h))&0ffh	;volatile
	line	423
	movlw	low(02h)
	movlb	2	; () banked
	movwf	(0+(512+03h))&0ffh	;volatile
	line	425
	movlw	low(0)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	426
	movlw	low(08h)
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	427
	movlw	low(088h)
	movlb	2	; () banked
	movwf	(0+(512+06h))&0ffh	;volatile
	line	428
	movlw	low(02h)
	movlb	2	; () banked
	movwf	(0+(512+07h))&0ffh	;volatile
	line	430
	movlw	low(040h)
	movlb	2	; () banked
	movwf	(0+(512+0Ch))&0ffh	;volatile
	line	431
	movlw	low(040h)
	movlb	2	; () banked
	movwf	(0+(512+0Dh))&0ffh	;volatile
	line	432
	movlw	low(0A8h)
	movlb	2	; () banked
	movwf	(0+(512+0Eh))&0ffh	;volatile
	line	433
	movlw	low(02h)
	movlb	2	; () banked
	movwf	(0+(512+0Fh))&0ffh	;volatile
	line	435
	movlw	low(0)
	movlb	2	; () banked
	movwf	(0+(512+014h))&0ffh	;volatile
	line	436
	movlw	low(08h)
	movlb	2	; () banked
	movwf	(0+(512+015h))&0ffh	;volatile
	line	437
	movlw	low(098h)
	movlb	2	; () banked
	movwf	(0+(512+016h))&0ffh	;volatile
	line	438
	movlw	low(02h)
	movlb	2	; () banked
	movwf	(0+(512+017h))&0ffh	;volatile
	line	440
	movlw	low(080h)
	movlb	2	; () banked
	movwf	(0+(512+018h))&0ffh	;volatile
	line	441
	movlw	low(08h)
	movlb	2	; () banked
	movwf	(0+(512+019h))&0ffh	;volatile
	line	442
	movlw	low(0A0h)
	movlb	2	; () banked
	movwf	(0+(512+01Ah))&0ffh	;volatile
	line	443
	movlw	low(02h)
	movlb	2	; () banked
	movwf	(0+(512+01Bh))&0ffh	;volatile
	line	445
	movlw	low(016h)
	movlb	15	; () banked
	movwf	((3923))&0ffh	;volatile
	line	446
	movlw	low(01Ah)
	movlb	15	; () banked
	movwf	((3924))&0ffh	;volatile
	line	447
	movlw	low(01Ah)
	movlb	15	; () banked
	movwf	((3925))&0ffh	;volatile
	line	448
	movlw	low(01Ch)
	movlb	15	; () banked
	movwf	((3926))&0ffh	;volatile
	line	450
	movlw	low(014h)
	movwf	((c:3937)),c	;volatile
	line	451
	movlw	low(08h)
	movwf	((c:3940)),c	;volatile
	line	452
	
l318:; BSR set to: 15

	return	;funcret
	opt stack 0
GLOBAL	__end_of_usb_init
	__end_of_usb_init:
	signat	_usb_init,88
	global	_usb_getch

;; *************** function _usb_getch *****************
;; Defined at:
;;		line 403 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ch              1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	line	403
global __ptext2
__ptext2:
psect	text2
	file	"usb_cdc.c"
	line	403
	global	__size_of_usb_getch
	__size_of_usb_getch	equ	__end_of_usb_getch-_usb_getch
	
_usb_getch:; BSR set to: 15

;incstack = 0
	opt	stack 30
	line	404
	
l2788:
	goto	l2790
	
l312:
	goto	l2790
	
l311:
	goto	l2790
	
l313:
	line	406
	
l2790:
	movf	((c:_usb_getchpos)),c,w
	mullw	01h
	movlw	low(672)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(672)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:usb_getch@ch)),c
	line	407
	
l2792:
	incf	((c:_usb_getchpos)),c
	line	408
	
l2794:
	movf	((c:_usb_getchpos)),c,w
	movlb	2	; () banked
xorwf	(0+(512+019h))&0ffh,w	;volatile
	btfss	status,2
	goto	u2271
	goto	u2270

u2271:
	goto	l314
u2270:
	line	409
	
l2796:; BSR set to: 2

	movlw	low(08h)
	movlb	2	; () banked
	movwf	(0+(512+019h))&0ffh	;volatile
	line	410
	movlw	low(080h)
	movlb	2	; () banked
	movwf	(0+(512+018h))&0ffh	;volatile
	line	411
	movlw	low(0)
	movwf	((c:_usb_getchpos)),c
	line	412
	
l314:; BSR set to: 2

	line	413
	movf	((c:usb_getch@ch)),c,w
	goto	l315
	
l2798:; BSR set to: 2

	line	414
	
l315:; BSR set to: 2

	return	;funcret
	opt stack 0
GLOBAL	__end_of_usb_getch
	__end_of_usb_getch:
	signat	_usb_getch,89
	global	_usb_chReceived

;; *************** function _usb_chReceived *****************
;; Defined at:
;;		line 394 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	line	394
global __ptext3
__ptext3:
psect	text3
	file	"usb_cdc.c"
	line	394
	global	__size_of_usb_chReceived
	__size_of_usb_chReceived	equ	__end_of_usb_chReceived-_usb_chReceived
	
_usb_chReceived:; BSR set to: 2

;incstack = 0
	opt	stack 30
	line	395
	
l2800:
	movlb	2	; () banked
	
	movlb	2	; () banked
	btfss	(0+(512+018h))&0ffh,(7)&7	;volatile
	goto	u2281
	goto	u2280
u2281:
	movlw	1
	goto	u2290
u2280:
	movlw	0
u2290:
	goto	l308
	
l2802:; BSR set to: 2

	line	396
	
l308:; BSR set to: 2

	return	;funcret
	opt stack 0
GLOBAL	__end_of_usb_chReceived
	__end_of_usb_chReceived:
	signat	_usb_chReceived,89
	global	_parseLine

;; *************** function _parseLine *****************
;; Defined at:
;;		line 178 in file "main.c"
;; Parameters:    Size  Location     Type
;;  line            2   54[COMRAM] PTR unsigned char 
;;		 -> main@line(100), 
;; Auto vars:     Size  Location     Type
;;  value           1    0[BANK0 ] unsigned char 
;;  id              1    2[BANK0 ] unsigned char 
;;  id              1    1[BANK0 ] unsigned char 
;;  ac3             4   60[BANK0 ] unsigned long 
;;  ac2             4   56[BANK0 ] unsigned long 
;;  ac1             4   52[BANK0 ] unsigned long 
;;  ac0             4   48[BANK0 ] unsigned long 
;;  am3             4   44[BANK0 ] unsigned long 
;;  am2             4   40[BANK0 ] unsigned long 
;;  am1             4   36[BANK0 ] unsigned long 
;;  am0             4   32[BANK0 ] unsigned long 
;;  stamping        4   28[BANK0 ] unsigned long 
;;  flags           1   64[BANK0 ] unsigned char 
;;  status          1    3[BANK0 ] unsigned char 
;;  data            4   24[BANK0 ] unsigned long 
;;  address         4   20[BANK0 ] unsigned long 
;;  address         4   16[BANK0 ] unsigned long 
;;  cnf3            4   12[BANK0 ] unsigned long 
;;  cnf2            4    8[BANK0 ] unsigned long 
;;  cnf1            4    4[BANK0 ] unsigned long 
;;  result          1   65[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         2       0       0       0       0       0
;;      Locals:         0      66       0       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         3      66       0       0       0       0
;;Total ram usage:       69 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_clock_reset
;;		_getUniqueID
;;		_mcp2515_bit_modify
;;		_mcp2515_read_register
;;		_mcp2515_set_SJA1000_filter_code
;;		_mcp2515_set_SJA1000_filter_mask
;;		_mcp2515_set_bittiming
;;		_mcp2515_write_register
;;		_parseHex
;;		_sendByteHex
;;		_sendHex
;;		_setUniqueID
;;		_transmitStd
;;		_usb_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"main.c"
	line	178
global __ptext4
__ptext4:
psect	text4
	file	"main.c"
	line	178
	global	__size_of_parseLine
	__size_of_parseLine	equ	__end_of_parseLine-_parseLine
	
_parseLine:; BSR set to: 2

;incstack = 0
	opt	stack 22
	line	180
	
l2544:
	movlw	low(07h)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	line	182
	goto	l2748
	line	183
	
l106:; BSR set to: 0

	line	184
	
l2546:; BSR set to: 0

	movf	((c:_state)),c,w	;volatile
	btfss	status,2
	goto	u1931
	goto	u1930
u1931:
	goto	l2750
u1930:
	goto	l2588
	line	186
	
l2548:; BSR set to: 0

	goto	l2588
	line	187
	
l109:; BSR set to: 0

	
l2550:; BSR set to: 0

	movlw	low(0ADh)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(06h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0FBh)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2552:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	188
	
l111:; BSR set to: 0

	
l2554:; BSR set to: 0

	movlw	low(0ADh)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(06h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0DDh)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2556:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	189
	
l112:; BSR set to: 0

	
l2558:; BSR set to: 0

	movlw	low(0ADh)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(06h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0CBh)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2560:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	190
	
l113:; BSR set to: 0

	
l2562:; BSR set to: 0

	movlw	low(0ADh)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(06h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0C5h)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2564:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	191
	
l114:; BSR set to: 0

	
l2566:; BSR set to: 0

	movlw	low(0A4h)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(04h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0C5h)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2568:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	192
	
l115:; BSR set to: 0

	
l2570:; BSR set to: 0

	movlw	low(0A4h)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(04h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0C2h)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2572:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	193
	
l116:; BSR set to: 0

	
l2574:; BSR set to: 0

	movlw	low(09Ah)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(03h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0C1h)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2576:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	194
	
l117:; BSR set to: 0

	
l2578:; BSR set to: 0

	movlw	low(0A3h)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(04h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0C0h)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2580:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	195
	
l118:; BSR set to: 0

	
l2582:; BSR set to: 0

	movlw	low(09Ah)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(03h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0C0h)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2584:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	196
	
l2586:; BSR set to: 0

	goto	l2750
	line	186
	
l108:; BSR set to: 0

	
l2588:; BSR set to: 0

	lfsr	2,01h
	movf	((c:parseLine@line)),c,w
	addwf	fsr2l
	movf	((c:parseLine@line+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	; Switch size 1, requested type "space"
; Number of cases is 9, Range of values is 48 to 56
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           28    15 (average)
;	Chosen strategy is simple_byte

	xorlw	48^0	; case 48
	skipnz
	goto	l2550
	xorlw	49^48	; case 49
	skipnz
	goto	l2554
	xorlw	50^49	; case 50
	skipnz
	goto	l2558
	xorlw	51^50	; case 51
	skipnz
	goto	l2562
	xorlw	52^51	; case 52
	skipnz
	goto	l2566
	xorlw	53^52	; case 53
	skipnz
	goto	l2570
	xorlw	54^53	; case 54
	skipnz
	goto	l2574
	xorlw	55^54	; case 55
	skipnz
	goto	l2578
	xorlw	56^55	; case 56
	skipnz
	goto	l2582
	goto	l2750

	line	196
	
l110:; BSR set to: 0

	goto	l2750
	line	198
	
l107:; BSR set to: 0

	line	199
	goto	l2750
	line	200
	
l120:; BSR set to: 0

	line	201
	
l2590:; BSR set to: 0

	movf	((c:_state)),c,w	;volatile
	btfss	status,2
	goto	u1941
	goto	u1940
u1941:
	goto	l2750
u1940:
	line	204
	
l2592:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:parseLine@line)),c,w
	movwf	((c:parseHex@line)),c
	movlw	high(01h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
		movlw	low(parseLine@cnf1)
	movwf	((c:parseHex@value)),c
	movlw	high(parseLine@cnf1)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1951
	goto	u1950
u1951:
	goto	l2750
u1950:
	
l2594:
	movlw	low(03h)
	addwf	((c:parseLine@line)),c,w
	movwf	((c:parseHex@line)),c
	movlw	high(03h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
		movlw	low(parseLine@cnf2)
	movwf	((c:parseHex@value)),c
	movlw	high(parseLine@cnf2)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1961
	goto	u1960
u1961:
	goto	l2750
u1960:
	
l2596:
	movlw	low(05h)
	addwf	((c:parseLine@line)),c,w
	movwf	((c:parseHex@line)),c
	movlw	high(05h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
		movlw	low(parseLine@cnf3)
	movwf	((c:parseHex@value)),c
	movlw	high(parseLine@cnf3)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1971
	goto	u1970
u1971:
	goto	l2750
u1970:
	line	205
	
l2598:
	movff	(parseLine@cnf2),(c:mcp2515_set_bittiming@cnf2)
	movff	(parseLine@cnf3),(c:mcp2515_set_bittiming@cnf3)
	movlb	0	; () banked
	movf	((parseLine@cnf1))&0ffh,w
	
	call	_mcp2515_set_bittiming
	line	206
	
l2600:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	207
	
l122:; BSR set to: 0

	goto	l2750
	line	208
	
l121:; BSR set to: 0

	line	209
	goto	l2750
	line	210
	
l123:; BSR set to: 0

	line	213
	
l2602:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:parseLine@line)),c,w
	movwf	((c:parseHex@line)),c
	movlw	high(01h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
		movlw	low(parseLine@address)
	movwf	((c:parseHex@value)),c
	movlw	high(parseLine@address)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1981
	goto	u1980
u1981:
	goto	l2750
u1980:
	line	214
	
l2604:
	movlb	0	; () banked
	movf	((parseLine@address))&0ffh,w
	
	call	_mcp2515_read_register
	movlb	0	; () banked
	movwf	((parseLine@value))&0ffh
	line	215
	
l2606:; BSR set to: 0

	movlb	0	; () banked
	movf	((parseLine@value))&0ffh,w
	
	call	_sendByteHex
	line	216
	
l2608:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	217
	
l124:; BSR set to: 0

	line	219
	goto	l2750
	line	220
	
l125:; BSR set to: 0

	line	223
	
l2610:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:parseLine@line)),c,w
	movwf	((c:parseHex@line)),c
	movlw	high(01h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
		movlw	low(parseLine@address_493)
	movwf	((c:parseHex@value)),c
	movlw	high(parseLine@address_493)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1991
	goto	u1990
u1991:
	goto	l2750
u1990:
	
l2612:
	movlw	low(03h)
	addwf	((c:parseLine@line)),c,w
	movwf	((c:parseHex@line)),c
	movlw	high(03h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
		movlw	low(parseLine@data)
	movwf	((c:parseHex@value)),c
	movlw	high(parseLine@data)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l2750
u2000:
	line	224
	
l2614:
	movff	(parseLine@data),(c:mcp2515_write_register@data)
	movlb	0	; () banked
	movf	((parseLine@address_493))&0ffh,w
	
	call	_mcp2515_write_register
	line	225
	
l2616:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	226
	
l126:; BSR set to: 0

	line	229
	goto	l2750
	line	230
	
l127:; BSR set to: 0

	line	232
	
l2618:; BSR set to: 0

	movlw	(056h)&0ffh
	
	call	_usb_putch
	line	233
	movlw	(01h)&0ffh
	
	call	_sendByteHex
	line	234
	movlw	(0)&0ffh
	
	call	_sendByteHex
	line	235
	
l2620:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	line	237
	goto	l2750
	line	238
	
l128:; BSR set to: 0

	line	240
	
l2622:; BSR set to: 0

	movlw	(076h)&0ffh
	
	call	_usb_putch
	line	241
	movlw	(01h)&0ffh
	
	call	_sendByteHex
	line	242
	movlw	(04h)&0ffh
	
	call	_sendByteHex
	line	243
	
l2624:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	line	245
	goto	l2750
	line	246
	
l129:; BSR set to: 0

	line	248
	
l2626:; BSR set to: 0

	movlw	(04Eh)&0ffh
	
	call	_usb_putch
	line	249
	movlw	low(0FFFFh)
	movwf	((c:sendHex@value)),c
	movlw	high(0FFFFh)
	movwf	((c:sendHex@value+1)),c
	movlw	low highword(0FFFFh)
	movwf	((c:sendHex@value+2)),c
	movlw	high highword(0FFFFh)
	movwf	((c:sendHex@value+3)),c
	movlw	low(04h)
	movwf	((c:sendHex@len)),c
	call	_sendHex	;wreg free
	line	250
	
l2628:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	line	252
	goto	l2750
	line	253
	
l130:; BSR set to: 0

	line	254
	
l2630:; BSR set to: 0

	movf	((c:_state)),c,w	;volatile
	btfss	status,2
	goto	u2011
	goto	u2010
u2011:
	goto	l2750
u2010:
	line	256
	
l2632:; BSR set to: 0

	movlw	low(0E0h)
	movwf	((c:mcp2515_bit_modify@mask)),c
	movlw	low(0)
	movwf	((c:mcp2515_bit_modify@data)),c
	movlw	(0Fh)&0ffh
	
	call	_mcp2515_bit_modify
	line	258
	call	_clock_reset	;wreg free
	line	260
	
l2634:
	movlw	low(01h)
	movwf	((c:_state)),c	;volatile
	line	261
	
l2636:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	262
	
l131:; BSR set to: 0

	line	263
	goto	l2750
	line	264
	
l132:; BSR set to: 0

	line	265
	
l2638:; BSR set to: 0

	movf	((c:_state)),c,w	;volatile
	btfss	status,2
	goto	u2021
	goto	u2020
u2021:
	goto	l2750
u2020:
	line	267
	
l2640:; BSR set to: 0

	movlw	low(0E0h)
	movwf	((c:mcp2515_bit_modify@mask)),c
	movlw	low(040h)
	movwf	((c:mcp2515_bit_modify@data)),c
	movlw	(0Fh)&0ffh
	
	call	_mcp2515_bit_modify
	line	269
	
l2642:
	movlw	low(01h)
	movwf	((c:_state)),c	;volatile
	line	270
	
l2644:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	271
	
l133:; BSR set to: 0

	line	272
	goto	l2750
	line	273
	
l134:; BSR set to: 0

	line	274
	
l2646:; BSR set to: 0

	movf	((c:_state)),c,w	;volatile
	btfss	status,2
	goto	u2031
	goto	u2030
u2031:
	goto	l2750
u2030:
	line	276
	
l2648:; BSR set to: 0

	movlw	low(0E0h)
	movwf	((c:mcp2515_bit_modify@mask)),c
	movlw	low(060h)
	movwf	((c:mcp2515_bit_modify@data)),c
	movlw	(0Fh)&0ffh
	
	call	_mcp2515_bit_modify
	line	278
	
l2650:
	movlw	low(02h)
	movwf	((c:_state)),c	;volatile
	line	279
	
l2652:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	280
	
l135:; BSR set to: 0

	line	281
	goto	l2750
	line	282
	
l136:; BSR set to: 0

	line	283
	
l2654:; BSR set to: 0

	movf	((c:_state)),c,w	;volatile
	btfsc	status,2
	goto	u2041
	goto	u2040
u2041:
	goto	l2750
u2040:
	line	285
	
l2656:; BSR set to: 0

	movlw	low(0E0h)
	movwf	((c:mcp2515_bit_modify@mask)),c
	movlw	low(080h)
	movwf	((c:mcp2515_bit_modify@data)),c
	movlw	(0Fh)&0ffh
	
	call	_mcp2515_bit_modify
	line	287
	
l2658:
	movlw	low(0)
	movwf	((c:_state)),c	;volatile
	line	288
	
l2660:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	289
	
l137:; BSR set to: 0

	line	290
	goto	l2750
	line	291
	
l138:; BSR set to: 0

	goto	l2662
	line	292
	
l139:; BSR set to: 0

	goto	l2662
	line	293
	
l140:; BSR set to: 0

	goto	l2662
	line	294
	
l141:; BSR set to: 0

	line	295
	
l2662:; BSR set to: 0

		decf	((c:_state)),c,w	;volatile
	btfss	status,2
	goto	u2051
	goto	u2050

u2051:
	goto	l2750
u2050:
	line	297
	
l2664:; BSR set to: 0

		movff	(c:parseLine@line),(c:transmitStd@line)
	movff	(c:parseLine@line+1),(c:transmitStd@line+1)

	call	_transmitStd	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2061
	goto	u2060
u2061:
	goto	l2750
u2060:
	line	298
	
l2666:
	movff	(c:parseLine@line),fsr2l
	movff	(c:parseLine@line+1),fsr2h
		movlw	05Ah-0
	cpfslt	indf2
	goto	u2071
	goto	u2070

u2071:
	goto	l2670
u2070:
	
l2668:
	movlw	(05Ah)&0ffh
	
	call	_usb_putch
	goto	l2672
	line	299
	
l144:
	
l2670:
	movlw	(07Ah)&0ffh
	
	call	_usb_putch
	goto	l2672
	
l145:
	line	300
	
l2672:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	301
	
l143:; BSR set to: 0

	goto	l2750
	line	303
	
l142:; BSR set to: 0

	line	304
	goto	l2750
	line	305
	
l146:; BSR set to: 0

	line	307
	
l2674:; BSR set to: 0

	movlw	(02Dh)&0ffh
	
	call	_mcp2515_read_register
	movlb	0	; () banked
	movwf	((parseLine@flags))&0ffh
	line	308
	
l2676:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((parseLine@status))&0ffh
	line	310
	
l2678:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((parseLine@flags))&0ffh,(0)&7
	goto	u2081
	goto	u2080
u2081:
	goto	l2682
u2080:
	
l2680:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(2/8)+(parseLine@status))&0ffh,(2)&7
	goto	l2682
	
l147:; BSR set to: 0

	line	311
	
l2682:; BSR set to: 0

	movff	(parseLine@flags),??_parseLine+0+0
	movlw	0C0h
	andwf	(??_parseLine+0+0),c
	btfsc	status,2
	goto	u2091
	goto	u2090
u2091:
	goto	l2686
u2090:
	
l2684:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(3/8)+(parseLine@status))&0ffh,(3)&7
	goto	l2686
	
l148:; BSR set to: 0

	line	312
	
l2686:; BSR set to: 0

	movff	(parseLine@flags),??_parseLine+0+0
	movlw	018h
	andwf	(??_parseLine+0+0),c
	btfsc	status,2
	goto	u2101
	goto	u2100
u2101:
	goto	l2690
u2100:
	
l2688:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(5/8)+(parseLine@status))&0ffh,(5)&7
	goto	l2690
	
l149:; BSR set to: 0

	line	313
	
l2690:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((parseLine@flags))&0ffh,(5)&7
	goto	u2111
	goto	u2110
u2111:
	goto	l2694
u2110:
	
l2692:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(7/8)+(parseLine@status))&0ffh,(7)&7
	goto	l2694
	
l150:; BSR set to: 0

	line	315
	
l2694:; BSR set to: 0

	movlw	(046h)&0ffh
	
	call	_usb_putch
	line	316
	
l2696:
	movlb	0	; () banked
	movf	((parseLine@status))&0ffh,w
	
	call	_sendByteHex
	line	317
	
l2698:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	line	319
	goto	l2750
	line	320
	
l151:; BSR set to: 0

	line	323
	
l2700:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:parseLine@line)),c,w
	movwf	((c:parseHex@line)),c
	movlw	high(01h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(01h)
	movwf	((c:parseHex@len)),c
		movlw	low(parseLine@stamping)
	movwf	((c:parseHex@value)),c
	movlw	high(parseLine@stamping)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l2750
u2120:
	line	324
	
l2702:
	movlb	0	; () banked
	movf	((parseLine@stamping))&0ffh,w
	movlb	0	; () banked
iorwf	((parseLine@stamping+1))&0ffh,w
	movlb	0	; () banked
iorwf	((parseLine@stamping+2))&0ffh,w
	movlb	0	; () banked
iorwf	((parseLine@stamping+3))&0ffh,w
	btfss	status,2
	goto	u2131
	goto	u2130

u2131:
	movlw	1
	goto	u2140
u2130:
	movlw	0
u2140:
	movlb	1	; () banked
	movwf	((_timestamping))&0ffh
	line	325
	
l2704:; BSR set to: 1

	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	326
	
l152:; BSR set to: 0

	line	328
	goto	l2750
	line	329
	
l153:; BSR set to: 0

	line	330
	
l2706:; BSR set to: 0

	movf	((c:_state)),c,w	;volatile
	btfss	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l2750
u2150:
	line	333
	
l2708:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:parseLine@line)),c,w
	movwf	((c:parseHex@line)),c
	movlw	high(01h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
		movlw	low(parseLine@am0)
	movwf	((c:parseHex@value)),c
	movlw	high(parseLine@am0)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2161
	goto	u2160
u2161:
	goto	l2750
u2160:
	
l2710:
	movlw	low(03h)
	addwf	((c:parseLine@line)),c,w
	movwf	((c:parseHex@line)),c
	movlw	high(03h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
		movlw	low(parseLine@am1)
	movwf	((c:parseHex@value)),c
	movlw	high(parseLine@am1)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2171
	goto	u2170
u2171:
	goto	l2750
u2170:
	
l2712:
	movlw	low(05h)
	addwf	((c:parseLine@line)),c,w
	movwf	((c:parseHex@line)),c
	movlw	high(05h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
		movlw	low(parseLine@am2)
	movwf	((c:parseHex@value)),c
	movlw	high(parseLine@am2)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2181
	goto	u2180
u2181:
	goto	l2750
u2180:
	
l2714:
	movlw	low(07h)
	addwf	((c:parseLine@line)),c,w
	movwf	((c:parseHex@line)),c
	movlw	high(07h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
		movlw	low(parseLine@am3)
	movwf	((c:parseHex@value)),c
	movlw	high(parseLine@am3)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2191
	goto	u2190
u2191:
	goto	l2750
u2190:
	line	334
	
l2716:
	movff	(parseLine@am1),(c:mcp2515_set_SJA1000_filter_mask@amr1)
	movff	(parseLine@am2),(c:mcp2515_set_SJA1000_filter_mask@amr2)
	movff	(parseLine@am3),(c:mcp2515_set_SJA1000_filter_mask@amr3)
	movlb	0	; () banked
	movf	((parseLine@am0))&0ffh,w
	
	call	_mcp2515_set_SJA1000_filter_mask
	line	335
	
l2718:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	336
	
l155:; BSR set to: 0

	goto	l2750
	line	337
	
l154:; BSR set to: 0

	line	338
	goto	l2750
	line	339
	
l156:; BSR set to: 0

	line	340
	
l2720:; BSR set to: 0

	movf	((c:_state)),c,w	;volatile
	btfss	status,2
	goto	u2201
	goto	u2200
u2201:
	goto	l2750
u2200:
	line	343
	
l2722:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:parseLine@line)),c,w
	movwf	((c:parseHex@line)),c
	movlw	high(01h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
		movlw	low(parseLine@ac0)
	movwf	((c:parseHex@value)),c
	movlw	high(parseLine@ac0)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2211
	goto	u2210
u2211:
	goto	l2750
u2210:
	
l2724:
	movlw	low(03h)
	addwf	((c:parseLine@line)),c,w
	movwf	((c:parseHex@line)),c
	movlw	high(03h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
		movlw	low(parseLine@ac1)
	movwf	((c:parseHex@value)),c
	movlw	high(parseLine@ac1)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2221
	goto	u2220
u2221:
	goto	l2750
u2220:
	
l2726:
	movlw	low(05h)
	addwf	((c:parseLine@line)),c,w
	movwf	((c:parseHex@line)),c
	movlw	high(05h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
		movlw	low(parseLine@ac2)
	movwf	((c:parseHex@value)),c
	movlw	high(parseLine@ac2)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l2750
u2230:
	
l2728:
	movlw	low(07h)
	addwf	((c:parseLine@line)),c,w
	movwf	((c:parseHex@line)),c
	movlw	high(07h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
		movlw	low(parseLine@ac3)
	movwf	((c:parseHex@value)),c
	movlw	high(parseLine@ac3)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2241
	goto	u2240
u2241:
	goto	l2750
u2240:
	line	344
	
l2730:
	movff	(parseLine@ac1),(c:mcp2515_set_SJA1000_filter_code@acr1)
	movff	(parseLine@ac2),(c:mcp2515_set_SJA1000_filter_code@acr2)
	movff	(parseLine@ac3),(c:mcp2515_set_SJA1000_filter_code@acr3)
	movlb	0	; () banked
	movf	((parseLine@ac0))&0ffh,w
	
	call	_mcp2515_set_SJA1000_filter_code
	line	345
	
l2732:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2750
	line	346
	
l158:; BSR set to: 0

	goto	l2750
	line	347
	
l157:; BSR set to: 0

	line	348
	goto	l2750
	line	349
	
l159:; BSR set to: 0

	line	351
	
l2734:; BSR set to: 0

	lfsr	2,01h
	movf	((c:parseLine@line)),c,w
	addwf	fsr2l
	movf	((c:parseLine@line+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movwf	((parseLine@id))&0ffh
	line	352
	
l2736:; BSR set to: 0

	movlb	0	; () banked
	movf	((parseLine@id))&0ffh,w
	
	call	_setUniqueID
	line	353
	
l2738:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	line	354
	goto	l2750
	line	356
	
l160:; BSR set to: 0

	line	358
	
l2740:; BSR set to: 0

	call	_getUniqueID	;wreg free
	movlb	0	; () banked
	movwf	((parseLine@id_508))&0ffh
	line	359
	
l2742:; BSR set to: 0

	movlb	0	; () banked
	movf	((parseLine@id_508))&0ffh,w
	
	call	_sendByteHex
	line	360
	
l2744:
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	line	361
	goto	l2750
	line	364
	
l2746:; BSR set to: 0

	goto	l2750
	line	182
	
l105:; BSR set to: 0

	
l2748:; BSR set to: 0

	movff	(c:parseLine@line),fsr2l
	movff	(c:parseLine@line+1),fsr2h
	movf	indf2,w
	; Switch size 1, requested type "space"
; Number of cases is 21, Range of values is 67 to 118
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           64    33 (average)
;	Chosen strategy is simple_byte

	xorlw	67^0	; case 67
	skipnz
	goto	l2654
	xorlw	70^67	; case 70
	skipnz
	goto	l2674
	xorlw	71^70	; case 71
	skipnz
	goto	l2602
	xorlw	76^71	; case 76
	skipnz
	goto	l2646
	xorlw	77^76	; case 77
	skipnz
	goto	l2720
	xorlw	78^77	; case 78
	skipnz
	goto	l2626
	xorlw	79^78	; case 79
	skipnz
	goto	l2630
	xorlw	81^79	; case 81
	skipnz
	goto	l2734
	xorlw	82^81	; case 82
	skipnz
	goto	l2662
	xorlw	83^82	; case 83
	skipnz
	goto	l2546
	xorlw	84^83	; case 84
	skipnz
	goto	l2662
	xorlw	86^84	; case 86
	skipnz
	goto	l2618
	xorlw	87^86	; case 87
	skipnz
	goto	l2610
	xorlw	90^87	; case 90
	skipnz
	goto	l2700
	xorlw	108^90	; case 108
	skipnz
	goto	l2638
	xorlw	109^108	; case 109
	skipnz
	goto	l2706
	xorlw	113^109	; case 113
	skipnz
	goto	l2740
	xorlw	114^113	; case 114
	skipnz
	goto	l2662
	xorlw	115^114	; case 115
	skipnz
	goto	l2590
	xorlw	116^115	; case 116
	skipnz
	goto	l2662
	xorlw	118^116	; case 118
	skipnz
	goto	l2622
	goto	l2750

	line	364
	
l119:; BSR set to: 0

	line	366
	
l2750:
	movlb	0	; () banked
	movf	((parseLine@result))&0ffh,w
	
	call	_usb_putch
	line	367
	
l161:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_parseLine
	__end_of_parseLine:
	signat	_parseLine,4216
	global	_transmitStd

;; *************** function _transmitStd *****************
;; Defined at:
;;		line 140 in file "main.c"
;; Parameters:    Size  Location     Type
;;  line            2   15[COMRAM] PTR unsigned char 
;;		 -> main@line(100), 
;; Auto vars:     Size  Location     Type
;;  i               1   21[COMRAM] unsigned char 
;;  canmsg         14   26[COMRAM] struct .
;;  temp            4   22[COMRAM] unsigned long 
;;  idlen           1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         2       0       0       0       0       0
;;      Locals:        21       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0
;;      Totals:        25       0       0       0       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_mcp2515_send_message
;;		_parseHex
;; This function is called by:
;;		_parseLine
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	line	140
global __ptext5
__ptext5:
psect	text5
	file	"main.c"
	line	140
	global	__size_of_transmitStd
	__size_of_transmitStd	equ	__end_of_transmitStd-_transmitStd
	
_transmitStd:
;incstack = 0
	opt	stack 26
	line	145
	
l2430:
	movlw	low(01h)
	movwf	((c:_transmitStd$481)),c
	
l2432:
	movff	(c:transmitStd@line),fsr2l
	movff	(c:transmitStd@line+1),fsr2h
	movlw	114
	xorwf	postinc2,w
	btfsc	status,2
	goto	u1841
	goto	u1840

u1841:
	goto	l2438
u1840:
	
l2434:
	movff	(c:transmitStd@line),fsr2l
	movff	(c:transmitStd@line+1),fsr2h
	movlw	82
	xorwf	postinc2,w
	btfsc	status,2
	goto	u1851
	goto	u1850

u1851:
	goto	l2438
u1850:
	
l2436:
	movlw	low(0)
	movwf	((c:_transmitStd$481)),c
	goto	l2438
	
l92:
	
l2438:
	btfsc	(c:_transmitStd$481),c,0
	bra	u1865
	bcf	(0+((c:transmitStd@canmsg)+04h)),c,0
	bra	u1866
	u1865:
	bsf	(0+((c:transmitStd@canmsg)+04h)),c,0
	u1866:

	line	148
	
l2440:
	movff	(c:transmitStd@line),fsr2l
	movff	(c:transmitStd@line+1),fsr2h
		movlw	05Ah-0
	cpfslt	indf2
	goto	u1871
	goto	u1870

u1871:
	goto	l93
u1870:
	line	149
	
l2442:
	bsf	(0+((c:transmitStd@canmsg)+04h)),c,1
	line	150
	
l2444:
	movlw	low(08h)
	movwf	((c:transmitStd@idlen)),c
	line	151
	goto	l2448
	
l93:
	line	152
	bcf	(0+((c:transmitStd@canmsg)+04h)),c,1
	line	153
	
l2446:
	movlw	low(03h)
	movwf	((c:transmitStd@idlen)),c
	goto	l2448
	line	154
	
l94:
	line	156
	
l2448:
	movlw	low(01h)
	addwf	((c:transmitStd@line)),c,w
	movwf	((c:parseHex@line)),c
	movlw	high(01h)
	addwfc	((c:transmitStd@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movff	(c:transmitStd@idlen),(c:parseHex@len)
		movlw	low(transmitStd@temp)
	movwf	((c:parseHex@value)),c
	movlw	high(transmitStd@temp)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfss	status,2
	goto	u1881
	goto	u1880
u1881:
	goto	l95
u1880:
	
l2450:
	movlw	(0)&0ffh
	goto	l96
	
l2452:
	goto	l96
	
l95:
	line	157
	movff	(c:transmitStd@temp),(c:transmitStd@canmsg)
	movff	(c:transmitStd@temp+1),(c:transmitStd@canmsg+1)
	movff	(c:transmitStd@temp+2),(c:transmitStd@canmsg+2)
	movff	(c:transmitStd@temp+3),(c:transmitStd@canmsg+3)
	line	159
	
l2454:
	movf	((c:transmitStd@idlen)),c,w
	movwf	(??_transmitStd+0+0)&0ffh,c
	clrf	(??_transmitStd+0+0+1)&0ffh,c

	movlw	01h
	addwf	(??_transmitStd+0+0),c
	movlw	0
	addwfc	(??_transmitStd+0+1),c
	movf	(??_transmitStd+0+0),c,w
	addwf	((c:transmitStd@line)),c,w
	movwf	((c:parseHex@line)),c
	movf	(??_transmitStd+0+1),c,w
	addwfc	((c:transmitStd@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(01h)
	movwf	((c:parseHex@len)),c
		movlw	low(transmitStd@temp)
	movwf	((c:parseHex@value)),c
	movlw	high(transmitStd@temp)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfss	status,2
	goto	u1891
	goto	u1890
u1891:
	goto	l97
u1890:
	
l2456:
	movlw	(0)&0ffh
	goto	l96
	
l2458:
	goto	l96
	
l97:
	line	160
	movff	(c:transmitStd@temp),0+((c:transmitStd@canmsg)+05h)
	line	162
	btfsc	(0+((c:transmitStd@canmsg)+04h)),c,0
	goto	u1901
	goto	u1900
u1901:
	goto	l2474
u1900:
	line	164
	
l2460:
	movlw	low(0)
	movwf	((c:transmitStd@i)),c
	goto	l2472
	
l100:
	line	165
	
l2462:
	movf	((c:transmitStd@i)),c,w
	mullw	02h
	movf	((c:transmitStd@idlen)),c,w
	movwf	(??_transmitStd+0+0)&0ffh,c
	clrf	(??_transmitStd+0+0+1)&0ffh,c

	movf	(prodl),c,w
	addwf	(??_transmitStd+0+0),c
	movf	(prodh),c,w
	addwfc	(??_transmitStd+0+1),c
	movlw	02h
	addwf	(??_transmitStd+0+0),c
	movlw	0
	addwfc	(??_transmitStd+0+1),c
	movf	(??_transmitStd+0+0),c,w
	addwf	((c:transmitStd@line)),c,w
	movwf	((c:parseHex@line)),c
	movf	(??_transmitStd+0+1),c,w
	addwfc	((c:transmitStd@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
		movlw	low(transmitStd@temp)
	movwf	((c:parseHex@value)),c
	movlw	high(transmitStd@temp)
	movwf	((c:parseHex@value+1)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfss	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l2468
u1910:
	
l2464:
	movlw	(0)&0ffh
	goto	l96
	
l2466:
	goto	l96
	
l101:
	line	166
	
l2468:
	movf	((c:transmitStd@i)),c,w
	mullw	01h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(transmitStd@canmsg)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(transmitStd@canmsg)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	(c:transmitStd@temp),indf2

	line	164
	
l2470:
	incf	((c:transmitStd@i)),c
	goto	l2472
	
l99:
	
l2472:
		movf	(0+((c:transmitStd@canmsg)+05h)),c,w
	subwf	((c:transmitStd@i)),c,w
	btfss	status,0
	goto	u1921
	goto	u1920

u1921:
	goto	l2462
u1920:
	goto	l2474
	
l102:
	goto	l2474
	line	168
	
l98:
	line	170
	
l2474:
		movlw	low(transmitStd@canmsg)
	movwf	((c:mcp2515_send_message@p_canmsg)),c
	movlw	high(transmitStd@canmsg)
	movwf	((c:mcp2515_send_message@p_canmsg+1)),c

	call	_mcp2515_send_message	;wreg free
	goto	l96
	
l2476:
	line	171
	
l96:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_transmitStd
	__end_of_transmitStd:
	signat	_transmitStd,4217
	global	_parseHex

;; *************** function _parseHex *****************
;; Defined at:
;;		line 83 in file "main.c"
;; Parameters:    Size  Location     Type
;;  line            2    0[COMRAM] PTR unsigned char 
;;		 -> main@line(100), 
;;  len             1    2[COMRAM] unsigned char 
;;  value           2    3[COMRAM] PTR unsigned long 
;;		 -> parseLine@ac3(4), parseLine@ac2(4), parseLine@ac1(4), parseLine@ac0(4), 
;;		 -> parseLine@am3(4), parseLine@am2(4), parseLine@am1(4), parseLine@am0(4), 
;;		 -> parseLine@stamping(4), parseLine@data(4), parseLine@address_493(4), parseLine@address(4), 
;;		 -> parseLine@cnf3(4), parseLine@cnf2(4), parseLine@cnf1(4), transmitStd@temp(4), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         5       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_transmitStd
;;		_parseLine
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	line	83
global __ptext6
__ptext6:
psect	text6
	file	"main.c"
	line	83
	global	__size_of_parseHex
	__size_of_parseHex	equ	__end_of_parseHex-_parseHex
	
_parseHex:
;incstack = 0
	opt	stack 28
	line	84
	
l2282:
	movff	(c:parseHex@value),fsr2l
	movff	(c:parseHex@value+1),fsr2h
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postdec2,c

	line	85
	goto	l2314
	
l68:
	line	86
	
l2284:
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l2290
u1590:
	
l2286:
	movlw	(0)&0ffh
	goto	l70
	
l2288:
	goto	l70
	
l69:
	line	87
	
l2290:
	movff	(c:parseHex@value),fsr2l
	movff	(c:parseHex@value+1),fsr2h
	movlw	04h
u1605:
	bcf	status,0
	rlcf	postinc2
	rlcf	postinc2
	rlcf	postinc2
	rlcf	postdec2
	decf	fsr2
	decf	fsr2
	decfsz	wreg
	goto	u1605
	line	88
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
		movlw	030h-1
	cpfsgt	indf2
	goto	u1611
	goto	u1610

u1611:
	goto	l2296
u1610:
	
l2292:
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
		movlw	03Ah-0
	cpfslt	indf2
	goto	u1621
	goto	u1620

u1621:
	goto	l2296
u1620:
	line	89
	
l2294:
	movlw	low(0FFD0h)
	movwf	(??_parseHex+0+0)&0ffh,c
	movlw	high(0FFD0h)
	movwf	1+(??_parseHex+0+0)&0ffh,c
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
	movf	indf2,w
	movwf	(??_parseHex+2+0)&0ffh,c
	clrf	(??_parseHex+2+0+1)&0ffh,c

	movf	(??_parseHex+0+0),c,w
	addwf	(??_parseHex+2+0),c
	movf	(??_parseHex+0+1),c,w
	addwfc	(??_parseHex+2+1),c
	movff	(c:parseHex@value),fsr2l
	movff	(c:parseHex@value+1),fsr2h
	movf	(??_parseHex+2+0),c,w
	addwf	postinc2
	movf	(??_parseHex+2+1),c,w
	addwfc	postinc2
	movlw	0
	addwfc	postinc2
	addwfc	postinc2

	line	90
	goto	l2312
	
l71:
	
l2296:
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
		movlw	041h-1
	cpfsgt	indf2
	goto	u1631
	goto	u1630

u1631:
	goto	l2302
u1630:
	
l2298:
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
		movlw	047h-0
	cpfslt	indf2
	goto	u1641
	goto	u1640

u1641:
	goto	l2302
u1640:
	line	91
	
l2300:
	movlw	low(0FFC9h)
	movwf	(??_parseHex+0+0)&0ffh,c
	movlw	high(0FFC9h)
	movwf	1+(??_parseHex+0+0)&0ffh,c
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
	movf	indf2,w
	movwf	(??_parseHex+2+0)&0ffh,c
	clrf	(??_parseHex+2+0+1)&0ffh,c

	movf	(??_parseHex+0+0),c,w
	addwf	(??_parseHex+2+0),c
	movf	(??_parseHex+0+1),c,w
	addwfc	(??_parseHex+2+1),c
	movff	(c:parseHex@value),fsr2l
	movff	(c:parseHex@value+1),fsr2h
	movf	(??_parseHex+2+0),c,w
	addwf	postinc2
	movf	(??_parseHex+2+1),c,w
	addwfc	postinc2
	movlw	0
	addwfc	postinc2
	addwfc	postinc2

	line	92
	goto	l2312
	
l73:
	
l2302:
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
		movlw	061h-1
	cpfsgt	indf2
	goto	u1651
	goto	u1650

u1651:
	goto	l2308
u1650:
	
l2304:
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
		movlw	067h-0
	cpfslt	indf2
	goto	u1661
	goto	u1660

u1661:
	goto	l2308
u1660:
	line	93
	
l2306:
	movlw	low(0FFA9h)
	movwf	(??_parseHex+0+0)&0ffh,c
	movlw	high(0FFA9h)
	movwf	1+(??_parseHex+0+0)&0ffh,c
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
	movf	indf2,w
	movwf	(??_parseHex+2+0)&0ffh,c
	clrf	(??_parseHex+2+0+1)&0ffh,c

	movf	(??_parseHex+0+0),c,w
	addwf	(??_parseHex+2+0),c
	movf	(??_parseHex+0+1),c,w
	addwfc	(??_parseHex+2+1),c
	movff	(c:parseHex@value),fsr2l
	movff	(c:parseHex@value+1),fsr2h
	movf	(??_parseHex+2+0),c,w
	addwf	postinc2
	movf	(??_parseHex+2+1),c,w
	addwfc	postinc2
	movlw	0
	addwfc	postinc2
	addwfc	postinc2

	line	94
	goto	l2312
	
l75:
	
l2308:
	movlw	(0)&0ffh
	goto	l70
	
l2310:
	goto	l70
	
l76:
	goto	l2312
	
l74:
	goto	l2312
	
l72:
	line	95
	
l2312:
	infsnz	((c:parseHex@line)),c
	incf	((c:parseHex@line+1)),c
	goto	l2314
	line	96
	
l67:
	line	85
	
l2314:
	decf	((c:parseHex@len)),c
		incf	((c:parseHex@len)),c,w
	btfss	status,2
	goto	u1671
	goto	u1670

u1671:
	goto	l2284
u1670:
	goto	l2316
	
l77:
	line	97
	
l2316:
	movlw	(01h)&0ffh
	goto	l70
	
l2318:
	line	98
	
l70:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_parseHex
	__end_of_parseHex:
	signat	_parseHex,12409
	global	_mcp2515_send_message

;; *************** function _mcp2515_send_message *****************
;; Defined at:
;;		line 280 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  p_canmsg        2    2[COMRAM] PTR struct .
;;		 -> transmitStd@canmsg(14), 
;; Auto vars:     Size  Location     Type
;;  i               1   12[COMRAM] unsigned char 
;;  address         1   14[COMRAM] unsigned char 
;;  status          1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         2       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0
;;      Temps:          8       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_mcp2515_read_status
;;		_spi_transmit
;; This function is called by:
;;		_transmitStd
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"mcp2515.c"
	line	280
global __ptext7
__ptext7:
psect	text7
	file	"mcp2515.c"
	line	280
	global	__size_of_mcp2515_send_message
	__size_of_mcp2515_send_message	equ	__end_of_mcp2515_send_message-_mcp2515_send_message
	
_mcp2515_send_message:
;incstack = 0
	opt	stack 26
	line	282
	
l2336:
	call	_mcp2515_read_status	;wreg free
	movwf	((c:mcp2515_send_message@status)),c
	line	286
	
l2338:
	lfsr	2,05h
	movf	((c:mcp2515_send_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_send_message@p_canmsg+1)),c,w
	addwfc	fsr2h
		movlw	09h-1
	cpfsgt	indf2
	goto	u1711
	goto	u1710

u1711:
	goto	l418
u1710:
	
l2340:
	movlw	(0)&0ffh
	goto	l419
	
l2342:
	goto	l419
	
l418:
	line	289
	
	btfsc	((c:mcp2515_send_message@status)),c,(2)&7
	goto	u1721
	goto	u1720
u1721:
	goto	l420
u1720:
	line	290
	
l2344:
	movlw	low(0)
	movwf	((c:mcp2515_send_message@address)),c
	line	291
	goto	l421
	
l420:
	
	btfsc	((c:mcp2515_send_message@status)),c,(4)&7
	goto	u1731
	goto	u1730
u1731:
	goto	l422
u1730:
	line	292
	
l2346:
	movlw	low(02h)
	movwf	((c:mcp2515_send_message@address)),c
	line	293
	goto	l421
	
l422:
	
	btfsc	((c:mcp2515_send_message@status)),c,(6)&7
	goto	u1741
	goto	u1740
u1741:
	goto	l2350
u1740:
	line	294
	
l2348:
	movlw	low(04h)
	movwf	((c:mcp2515_send_message@address)),c
	line	295
	goto	l421
	
l424:
	line	297
	
l2350:
	movlw	(0)&0ffh
	goto	l419
	
l2352:
	goto	l419
	line	298
	
l425:
	goto	l421
	
l423:
	
l421:
	line	301
	bcf	((c:3979)),c,6	;volatile
	line	303
	
l2354:
	movf	((c:mcp2515_send_message@address)),c,w
	iorlw	low(040h)
	
	call	_spi_transmit
	line	305
	
l2356:
	lfsr	2,04h
	movf	((c:mcp2515_send_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_send_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	btfss	c:indf2,1
	goto	u1751
	goto	u1750
u1751:
	goto	l2364
u1750:
	line	306
	
l2358:
	movff	(c:mcp2515_send_message@p_canmsg),fsr2l
	movff	(c:mcp2515_send_message@p_canmsg+1),fsr2h
	movff	postinc2,??_mcp2515_send_message+0+0
	movff	postinc2,??_mcp2515_send_message+0+0+1
	movff	postinc2,??_mcp2515_send_message+0+0+2
	movff	postinc2,??_mcp2515_send_message+0+0+3
	movlw	015h+1
	goto	u1760
u1765:
	bcf	status,0
	rrcf	(??_mcp2515_send_message+0+3),c
	rrcf	(??_mcp2515_send_message+0+2),c
	rrcf	(??_mcp2515_send_message+0+1),c
	rrcf	(??_mcp2515_send_message+0+0),c
u1760:
	decfsz	wreg
	goto	u1765
	movf	(??_mcp2515_send_message+0+0),c,w
	
	call	_spi_transmit
	line	307
	movff	(c:mcp2515_send_message@p_canmsg),fsr2l
	movff	(c:mcp2515_send_message@p_canmsg+1),fsr2h
	movff	postinc2,??_mcp2515_send_message+0+0
	movff	postinc2,??_mcp2515_send_message+0+0+1
	movff	postinc2,??_mcp2515_send_message+0+0+2
	movff	postinc2,??_mcp2515_send_message+0+0+3
	movlw	010h+1
	goto	u1770
u1775:
	bcf	status,0
	rrcf	(??_mcp2515_send_message+0+3),c
	rrcf	(??_mcp2515_send_message+0+2),c
	rrcf	(??_mcp2515_send_message+0+1),c
	rrcf	(??_mcp2515_send_message+0+0),c
u1770:
	decfsz	wreg
	goto	u1775
	movlw	03h
	andwf	(??_mcp2515_send_message+0+0),c
	movff	(c:mcp2515_send_message@p_canmsg),fsr2l
	movff	(c:mcp2515_send_message@p_canmsg+1),fsr2h
	movff	postinc2,??_mcp2515_send_message+4+0
	movff	postinc2,??_mcp2515_send_message+4+0+1
	movff	postinc2,??_mcp2515_send_message+4+0+2
	movff	postinc2,??_mcp2515_send_message+4+0+3
	movlw	0Dh+1
	goto	u1780
u1785:
	bcf	status,0
	rrcf	(??_mcp2515_send_message+4+3),c
	rrcf	(??_mcp2515_send_message+4+2),c
	rrcf	(??_mcp2515_send_message+4+1),c
	rrcf	(??_mcp2515_send_message+4+0),c
u1780:
	decfsz	wreg
	goto	u1785
	movf	(??_mcp2515_send_message+4+0),c,w
	andlw	low(0E0h)
	iorwf	(??_mcp2515_send_message+0+0),c,w
	iorlw	low(08h)
	
	call	_spi_transmit
	line	308
	
l2360:
	movff	(c:mcp2515_send_message@p_canmsg),fsr2l
	movff	(c:mcp2515_send_message@p_canmsg+1),fsr2h
	movff	postinc2,??_mcp2515_send_message+0+0
	movff	postinc2,??_mcp2515_send_message+0+0+1
	movff	postinc2,??_mcp2515_send_message+0+0+2
	movff	postinc2,??_mcp2515_send_message+0+0+3
	movff	??_mcp2515_send_message+0+1,??_mcp2515_send_message+0+0
	movff	??_mcp2515_send_message+0+2,??_mcp2515_send_message+0+1
	movff	??_mcp2515_send_message+0+3,??_mcp2515_send_message+0+2
	clrf	(??_mcp2515_send_message+0+3),c
	movf	(??_mcp2515_send_message+0+0),c,w
	
	call	_spi_transmit
	line	309
	
l2362:
	movff	(c:mcp2515_send_message@p_canmsg),fsr2l
	movff	(c:mcp2515_send_message@p_canmsg+1),fsr2h
	movf	indf2,w
	
	call	_spi_transmit
	line	310
	goto	l2370
	
l426:
	line	311
	
l2364:
	movff	(c:mcp2515_send_message@p_canmsg),fsr2l
	movff	(c:mcp2515_send_message@p_canmsg+1),fsr2h
	movff	postinc2,??_mcp2515_send_message+0+0
	movff	postinc2,??_mcp2515_send_message+0+0+1
	movff	postinc2,??_mcp2515_send_message+0+0+2
	movff	postinc2,??_mcp2515_send_message+0+0+3
	movlw	03h+1
	goto	u1790
u1795:
	bcf	status,0
	rrcf	(??_mcp2515_send_message+0+3),c
	rrcf	(??_mcp2515_send_message+0+2),c
	rrcf	(??_mcp2515_send_message+0+1),c
	rrcf	(??_mcp2515_send_message+0+0),c
u1790:
	decfsz	wreg
	goto	u1795
	movf	(??_mcp2515_send_message+0+0),c,w
	
	call	_spi_transmit
	line	312
	movff	(c:mcp2515_send_message@p_canmsg),fsr2l
	movff	(c:mcp2515_send_message@p_canmsg+1),fsr2h
	movf	indf2,w
	movwf	(??_mcp2515_send_message+0+0)&0ffh,c
	movlw	05h
	movwf	(??_mcp2515_send_message+1+0)&0ffh,c
u1805:
	bcf	status,0
	rlcf	((??_mcp2515_send_message+0+0)),c
	decfsz	(??_mcp2515_send_message+1+0)&0ffh,c
	goto	u1805
	movf	((??_mcp2515_send_message+0+0)),c,w
	
	call	_spi_transmit
	line	313
	
l2366:
	movlw	(0)&0ffh
	
	call	_spi_transmit
	line	314
	
l2368:
	movlw	(0)&0ffh
	
	call	_spi_transmit
	goto	l2370
	line	315
	
l427:
	line	318
	
l2370:
	lfsr	2,04h
	movf	((c:mcp2515_send_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_send_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	btfss	c:indf2,0
	goto	u1811
	goto	u1810
u1811:
	goto	l2374
u1810:
	line	319
	
l2372:
	lfsr	2,05h
	movf	((c:mcp2515_send_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_send_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	iorlw	low(040h)
	
	call	_spi_transmit
	line	320
	goto	l429
	
l428:
	line	321
	
l2374:
	lfsr	2,05h
	movf	((c:mcp2515_send_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_send_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	
	call	_spi_transmit
	line	323
	
l2376:
	movlw	low(0)
	movwf	((c:mcp2515_send_message@i)),c
	goto	l2382
	
l431:
	line	324
	
l2378:
	movf	((c:mcp2515_send_message@i)),c,w
	mullw	01h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movf	(prodl),c,w
	addwf	((c:mcp2515_send_message@p_canmsg)),c,w
	movwf	c:fsr2l
	movf	(prodh),c,w
	addwfc	((c:mcp2515_send_message@p_canmsg+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	
	call	_spi_transmit
	line	323
	
l2380:
	incf	((c:mcp2515_send_message@i)),c
	goto	l2382
	
l430:
	
l2382:
	lfsr	2,05h
	movf	((c:mcp2515_send_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_send_message@p_canmsg+1)),c,w
	addwfc	fsr2h
		movf	postinc2,w
	subwf	((c:mcp2515_send_message@i)),c,w
	btfss	status,0
	goto	u1821
	goto	u1820

u1821:
	goto	l2378
u1820:
	goto	l429
	
l432:
	line	326
	
l429:
	line	329
	bsf	((c:3979)),c,6	;volatile
	line	331
	nop
	line	334
	bcf	((c:3979)),c,6	;volatile
	line	335
	
l2384:
	movf	((c:mcp2515_send_message@address)),c,w
	btfss	status,2
	goto	u1831
	goto	u1830
u1831:
	goto	l2388
u1830:
	
l2386:
	movlw	low(01h)
	movwf	((c:mcp2515_send_message@address)),c
	goto	l2388
	
l433:
	line	336
	
l2388:
	movf	((c:mcp2515_send_message@address)),c,w
	iorlw	low(080h)
	
	call	_spi_transmit
	line	338
	
l2390:
	bsf	((c:3979)),c,6	;volatile
	line	340
	
l2392:
	movlw	(01h)&0ffh
	goto	l419
	
l2394:
	line	341
	
l419:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_mcp2515_send_message
	__end_of_mcp2515_send_message:
	signat	_mcp2515_send_message,4217
	global	_mcp2515_read_status

;; *************** function _mcp2515_read_status *****************
;; Defined at:
;;		line 239 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  status          1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_spi_transmit
;; This function is called by:
;;		_mcp2515_send_message
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	line	239
global __ptext8
__ptext8:
psect	text8
	file	"mcp2515.c"
	line	239
	global	__size_of_mcp2515_read_status
	__size_of_mcp2515_read_status	equ	__end_of_mcp2515_read_status-_mcp2515_read_status
	
_mcp2515_read_status:
;incstack = 0
	opt	stack 26
	line	242
	
l2272:
	bcf	((c:3979)),c,6	;volatile
	line	244
	
l2274:
	movlw	(0A0h)&0ffh
	
	call	_spi_transmit
	line	245
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	((c:mcp2515_read_status@status)),c
	line	248
	
l2276:
	bsf	((c:3979)),c,6	;volatile
	line	250
	
l2278:
	movf	((c:mcp2515_read_status@status)),c,w
	goto	l412
	
l2280:
	line	251
	
l412:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_mcp2515_read_status
	__end_of_mcp2515_read_status:
	signat	_mcp2515_read_status,89
	global	_setUniqueID

;; *************** function _setUniqueID *****************
;; Defined at:
;;		line 50 in file "eeprom.c"
;; Parameters:    Size  Location     Type
;;  ID              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ID              1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_writeEEROM
;; This function is called by:
;;		_parseLine
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"eeprom.c"
	line	50
global __ptext9
__ptext9:
psect	text9
	file	"eeprom.c"
	line	50
	global	__size_of_setUniqueID
	__size_of_setUniqueID	equ	__end_of_setUniqueID-_setUniqueID
	
_setUniqueID:
;incstack = 0
	opt	stack 28
	movwf	((c:setUniqueID@ID)),c
	line	52
	
l2528:
	movff	(c:setUniqueID@ID),(c:writeEEROM@data)
	movlw	(0)&0ffh
	
	call	_writeEEROM
	line	53
	
l491:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_setUniqueID
	__end_of_setUniqueID:
	signat	_setUniqueID,4216
	global	_writeEEROM

;; *************** function _writeEEROM *****************
;; Defined at:
;;		line 36 in file "eeprom.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  data            1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         1       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setUniqueID
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	line	36
global __ptext10
__ptext10:
psect	text10
	file	"eeprom.c"
	line	36
	global	__size_of_writeEEROM
	__size_of_writeEEROM	equ	__end_of_writeEEROM-_writeEEROM
	
_writeEEROM:
;incstack = 0
	opt	stack 28
	movwf	((c:writeEEROM@addr)),c
	line	38
	
l2414:
	movff	(c:writeEEROM@addr),(c:4009)	;volatile
	line	39
	
l2416:
	movff	(c:writeEEROM@data),(c:4008)	;volatile
	line	41
	
l2418:
	movlw	low(04h)
	movwf	((c:4006)),c	;volatile
	line	42
	
l2420:
	movf	((c:4082)),c,w	;volatile
	andlw	low(07Fh)
	movwf	((c:4082)),c	;volatile
	line	43
	
l2422:
	movlw	low(055h)
	movwf	((c:4007)),c	;volatile
	line	44
	
l2424:
	movlw	low(0AAh)
	movwf	((c:4007)),c	;volatile
	line	45
	
l2426:
	movlw	low(02h)
	movwf	((c:4006)),c	;volatile
	line	46
	movf	((c:4082)),c,w	;volatile
	iorlw	low(07Fh)
	movwf	((c:4082)),c	;volatile
	line	47
	
l488:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_writeEEROM
	__end_of_writeEEROM:
	signat	_writeEEROM,8312
	global	_sendByteHex

;; *************** function _sendByteHex *****************
;; Defined at:
;;		line 130 in file "main.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1   53[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_sendHex
;; This function is called by:
;;		_parseLine
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"main.c"
	line	130
global __ptext11
__ptext11:
psect	text11
	file	"main.c"
	line	130
	global	__size_of_sendByteHex
	__size_of_sendByteHex	equ	__end_of_sendByteHex-_sendByteHex
	
_sendByteHex:
;incstack = 0
	opt	stack 22
	movwf	((c:sendByteHex@value)),c
	line	132
	
l2428:
	movf	((c:sendByteHex@value)),c,w
	movwf	((c:sendHex@value)),c
	clrf	((c:sendHex@value+1)),c
	clrf	((c:sendHex@value+2)),c
	clrf	((c:sendHex@value+3)),c

	movlw	low(02h)
	movwf	((c:sendHex@len)),c
	call	_sendHex	;wreg free
	line	133
	
l88:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_sendByteHex
	__end_of_sendByteHex:
	signat	_sendByteHex,4216
	global	_sendHex

;; *************** function _sendHex *****************
;; Defined at:
;;		line 106 in file "main.c"
;; Parameters:    Size  Location     Type
;;  value           4   23[COMRAM] unsigned long 
;;  len             1   27[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  hex             1   52[COMRAM] unsigned char 
;;  s              20   32[COMRAM] unsigned char [20]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         5       0       0       0       0       0
;;      Locals:        21       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0
;;      Totals:        30       0       0       0       0       0
;;Total ram usage:       30 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_usb_putstr
;; This function is called by:
;;		_sendByteHex
;;		_parseLine
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	line	106
global __ptext12
__ptext12:
psect	text12
	file	"main.c"
	line	106
	global	__size_of_sendHex
	__size_of_sendHex	equ	__end_of_sendHex-_sendHex
	
_sendHex:
;incstack = 0
	opt	stack 24
	line	109
	
l2320:
	movf	((c:sendHex@len)),c,w
	mullw	01h
	movlw	low(sendHex@s)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(sendHex@s)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	111
	goto	l2332
	
l81:
	line	113
	
l2322:
	movf	((c:sendHex@value)),c,w
	andlw	low(0Fh)
	movwf	((c:sendHex@hex)),c
	line	114
		movlw	0Ah-1
	cpfsgt	((c:sendHex@hex)),c
	goto	u1681
	goto	u1680

u1681:
	goto	l2326
u1680:
	
l2324:
	movf	((c:sendHex@hex)),c,w
	addlw	low(037h)
	movwf	((c:sendHex@hex)),c
	goto	l2328
	line	115
	
l82:
	
l2326:
	movf	((c:sendHex@hex)),c,w
	addlw	low(030h)
	movwf	((c:sendHex@hex)),c
	goto	l2328
	
l83:
	line	116
	
l2328:
	movf	((c:sendHex@len)),c,w
	mullw	01h
	movlw	low(sendHex@s)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(sendHex@s)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:sendHex@hex),indf2

	line	118
	
l2330:
	movff	(c:sendHex@value),??_sendHex+0+0
	movff	(c:sendHex@value+1),??_sendHex+0+0+1
	movff	(c:sendHex@value+2),??_sendHex+0+0+2
	movff	(c:sendHex@value+3),??_sendHex+0+0+3
	movlw	04h+1
	goto	u1690
u1695:
	bcf	status,0
	rrcf	(??_sendHex+0+3),c
	rrcf	(??_sendHex+0+2),c
	rrcf	(??_sendHex+0+1),c
	rrcf	(??_sendHex+0+0),c
u1690:
	decfsz	wreg
	goto	u1695
	movff	??_sendHex+0+0,(c:sendHex@value)
	movff	??_sendHex+0+1,(c:sendHex@value+1)
	movff	??_sendHex+0+2,(c:sendHex@value+2)
	movff	??_sendHex+0+3,(c:sendHex@value+3)
	goto	l2332
	line	119
	
l80:
	line	111
	
l2332:
	decf	((c:sendHex@len)),c
		incf	((c:sendHex@len)),c,w
	btfss	status,2
	goto	u1701
	goto	u1700

u1701:
	goto	l2322
u1700:
	goto	l2334
	
l84:
	line	121
	
l2334:
		movlw	low(sendHex@s)
	movwf	((c:usb_putstr@s)),c
	movlw	high(sendHex@s)
	movwf	((c:usb_putstr@s+1)),c

	call	_usb_putstr	;wreg free
	line	123
	
l85:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_sendHex
	__end_of_sendHex:
	signat	_sendHex,8312
	global	_usb_putstr

;; *************** function _usb_putstr *****************
;; Defined at:
;;		line 352 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;  s               2   21[COMRAM] PTR unsigned char 
;;		 -> sendHex@s(20), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         2       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_usb_putch
;; This function is called by:
;;		_sendHex
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"usb_cdc.c"
	line	352
global __ptext13
__ptext13:
psect	text13
	file	"usb_cdc.c"
	line	352
	global	__size_of_usb_putstr
	__size_of_usb_putstr	equ	__end_of_usb_putstr-_usb_putstr
	
_usb_putstr:
;incstack = 0
	opt	stack 24
	line	353
	
l2264:
	goto	l2270
	
l290:
	line	354
	
l2266:
	movff	(c:usb_putstr@s),fsr2l
	movff	(c:usb_putstr@s+1),fsr2h
	movf	indf2,w
	
	call	_usb_putch
	line	355
	
l2268:
	infsnz	((c:usb_putstr@s)),c
	incf	((c:usb_putstr@s+1)),c
	goto	l2270
	line	356
	
l289:
	line	353
	
l2270:
	movff	(c:usb_putstr@s),fsr2l
	movff	(c:usb_putstr@s+1),fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u1581
	goto	u1580
u1581:
	goto	l2266
u1580:
	goto	l292
	
l291:
	line	357
	
l292:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_usb_putstr
	__end_of_usb_putstr:
	signat	_usb_putstr,4216
	global	_usb_putch

;; *************** function _usb_putch *****************
;; Defined at:
;;		line 331 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_usb_process
;; This function is called by:
;;		_parseLine
;;		_main
;;		_usb_putstr
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	line	331
global __ptext14
__ptext14:
psect	text14
	file	"usb_cdc.c"
	line	331
	global	__size_of_usb_putch
	__size_of_usb_putch	equ	__end_of_usb_putch-_usb_putch
	
_usb_putch:
;incstack = 0
	opt	stack 26
	movwf	((c:usb_putch@ch)),c
	line	333
	
l2246:
		movlw	128
	xorwf	((c:_txbuffer_bytesleft)),c,w
	btfss	status,2
	goto	u1551
	goto	u1550

u1551:
	goto	l2250
u1550:
	goto	l285
	line	335
	
l2248:
	goto	l285
	line	336
	
l284:
	line	338
	
l2250:
	movf	((c:_txbuffer_writepos)),c,w
	mullw	01h
	movlw	low(_txbuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_txbuffer)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:usb_putch@ch),indf2

	line	339
	
l2252:
	incf	((c:_txbuffer_writepos)),c
	line	340
	
l2254:
		movlw	128
	xorwf	((c:_txbuffer_writepos)),c,w
	btfss	status,2
	goto	u1561
	goto	u1560

u1561:
	goto	l2258
u1560:
	
l2256:
	movlw	low(0)
	movwf	((c:_txbuffer_writepos)),c
	goto	l2258
	
l286:
	line	341
	
l2258:
	incf	((c:_txbuffer_bytesleft)),c
	line	344
	
l2260:
	call	_usb_process	;wreg free
	line	345
	
l285:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_usb_putch
	__end_of_usb_putch:
	signat	_usb_putch,4216
	global	_usb_process

;; *************** function _usb_process *****************
;; Defined at:
;;		line 458 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   18[COMRAM] unsigned char 
;;  i               1   17[COMRAM] unsigned char 
;;  i               1   19[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_usb_handleDescriptorRequest
;;		_usb_sendProcess
;;		_usb_txprocess
;; This function is called by:
;;		_main
;;		_usb_putch
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	line	458
global __ptext15
__ptext15:
psect	text15
	file	"usb_cdc.c"
	line	458
	global	__size_of_usb_process
	__size_of_usb_process	equ	__end_of_usb_process-_usb_process
	
_usb_process:
;incstack = 0
	opt	stack 26
	line	460
	
l2138:
	call	_usb_txprocess	;wreg free
	line	462
	
l2140:
	btfss	((c:3938)),c,3	;volatile
	goto	u1401
	goto	u1400
u1401:
	goto	l360
u1400:
	line	465
	
l2142:
	movf	((c:3939)),c,w	;volatile
	btfss	status,2
	goto	u1411
	goto	u1410
u1411:
	goto	l2232
u1410:
	line	469
	
l2144:
	movlb	2	; () banked
	rrncf	((512))&0ffh,w	;volatile
	rrncf	wreg
	andlw	(0ffh shr 2) & 0ffh
	andlw	low(0Fh)
	xorlw	0Dh
	btfss	status,2
	goto	u1421
	goto	u1420
u1421:
	goto	l2216
u1420:
	line	472
	
l2146:; BSR set to: 2

	movlw	low(0)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	473
	movlw	low(0)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	475
	
l2148:; BSR set to: 2

	movff	(640),??_usb_process+0+0	;volatile
	movlw	060h
	andwf	(??_usb_process+0+0),c
	btfss	status,2
	goto	u1431
	goto	u1430
u1431:
	goto	l2174
u1430:
	goto	l2172
	line	477
	
l2150:; BSR set to: 2

	goto	l2172
	line	478
	
l326:; BSR set to: 2

	line	479
	
l2152:; BSR set to: 2

	movff	0+(640+02h),(c:usb_handleDescriptorRequest@index)	;volatile
	movlb	2	; () banked
	movf	(0+(640+07h))&0ffh,w	;volatile
	movwf	(??_usb_process+0+0)&0ffh,c
	movlb	2	; () banked
	movf	(0+(640+06h))&0ffh,w	;volatile
	movwf	((c:usb_handleDescriptorRequest@length)),c
	movff	??_usb_process+0+0,((c:usb_handleDescriptorRequest@length+1))
	movlb	2	; () banked
	movf	(0+(640+03h))&0ffh,w	;volatile
	
	call	_usb_handleDescriptorRequest
	iorlw	0
	btfss	status,2
	goto	u1441
	goto	u1440
u1441:
	goto	l353
u1440:
	line	480
	
l2154:
	movlw	low(0)
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	481
	movlw	low(0CCh)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	goto	l353
	line	482
	
l327:; BSR set to: 2

	line	483
	goto	l353
	line	484
	
l329:; BSR set to: 2

	line	486
	movff	0+(640+02h),(c:_usb_setaddress)	;volatile
	line	488
	
l2156:; BSR set to: 2

	movlw	low(0)
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	489
	movlw	low(0C8h)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	491
	goto	l353
	line	492
	
l330:; BSR set to: 2

	line	494
	movff	0+(640+02h),(c:_usb_config)	;volatile
	line	495
	
l2158:; BSR set to: 2

	movlw	high(01h)
	movwf	((c:_configured+1)),c
	movlw	low(01h)
	movwf	((c:_configured)),c
	line	496
	movlw	low(0)
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	497
	movlw	low(0C8h)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	498
	goto	l353
	line	500
	
l331:; BSR set to: 2

	line	502
	movff	(c:_usb_config),(648)	;volatile
	line	503
	
l2160:; BSR set to: 2

	movlw	low(01h)
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	504
	movlw	low(0C8h)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	505
	goto	l353
	line	507
	
l332:; BSR set to: 2

	line	509
	
l2162:; BSR set to: 2

	movlw	low(0)
	movlb	2	; () banked
	movwf	((648))&0ffh	;volatile
	line	510
	movlw	low(01h)
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	511
	movlw	low(0C8h)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	512
	goto	l353
	line	514
	
l333:; BSR set to: 2

	goto	l2164
	line	515
	
l334:; BSR set to: 2

	line	516
	
l2164:; BSR set to: 2

	movlw	low(0)
	movlb	2	; () banked
	movwf	((648))&0ffh	;volatile
	line	517
	movlw	low(0)
	movlb	2	; () banked
	movwf	(0+(648+01h))&0ffh	;volatile
	line	518
	movlw	low(02h)
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	519
	movlw	low(0C8h)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	520
	goto	l353
	line	522
	
l335:; BSR set to: 2

	goto	l2166
	line	523
	
l336:; BSR set to: 2

	goto	l2166
	line	524
	
l337:; BSR set to: 2

	line	525
	
l2166:; BSR set to: 2

	movlw	low(0)
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	526
	movlw	low(0C8h)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	527
	goto	l353
	line	528
	
l338:; BSR set to: 2

	line	529
	
l2168:; BSR set to: 2

	movlw	low(0)
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	530
	movlw	low(0CCh)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	531
	goto	l353
	line	533
	
l2170:; BSR set to: 2

	goto	l353
	line	477
	
l325:; BSR set to: 2

	
l2172:; BSR set to: 2

	movlb	2	; () banked
	movf	(0+(640+01h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 10, Range of values is 0 to 18
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           31    16 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l2164
	xorlw	1^0	; case 1
	skipnz
	goto	l2166
	xorlw	3^1	; case 3
	skipnz
	goto	l2166
	xorlw	5^3	; case 5
	skipnz
	goto	l329
	xorlw	6^5	; case 6
	skipnz
	goto	l2152
	xorlw	8^6	; case 8
	skipnz
	goto	l331
	xorlw	9^8	; case 9
	skipnz
	goto	l330
	xorlw	10^9	; case 10
	skipnz
	goto	l2162
	xorlw	17^10	; case 17
	skipnz
	goto	l2166
	xorlw	18^17	; case 18
	skipnz
	goto	l2164
	goto	l2168

	line	533
	
l328:; BSR set to: 2

	line	534
	goto	l353
	
l324:; BSR set to: 2

	
l2174:; BSR set to: 2

	movlb	2	; () banked
	movf	((640))&0ffh,w	;volatile
	andlw	low(060h)
	xorlw	020h
	btfss	status,2
	goto	u1451
	goto	u1450
u1451:
	goto	l353
u1450:
	goto	l2214
	line	535
	
l2176:; BSR set to: 2

	goto	l2214
	line	537
	
l342:; BSR set to: 2

	line	538
	
l2178:; BSR set to: 2

	movlw	low(0)
	movwf	((c:usb_process@i)),c
	
l2180:; BSR set to: 2

		movlw	08h-1
	cpfsgt	((c:usb_process@i)),c
	goto	u1461
	goto	u1460

u1461:
	goto	l2184
u1460:
	goto	l2190
	
l2182:; BSR set to: 2

	goto	l2190
	
l343:; BSR set to: 2

	
l2184:
	movf	((c:usb_process@i)),c,w
	mullw	01h
	movlw	low(648)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(648)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	
l2186:
	incf	((c:usb_process@i)),c
	
l2188:
		movlw	08h-1
	cpfsgt	((c:usb_process@i)),c
	goto	u1471
	goto	u1470

u1471:
	goto	l2184
u1470:
	goto	l2190
	
l344:
	line	539
	
l2190:
	movlw	low(08h)
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	540
	movlw	low(0C8h)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	541
	goto	l353
	line	543
	
l346:; BSR set to: 2

	line	544
	
l2192:; BSR set to: 2

	movlw	low(01h)
	movwf	((c:_dolinecoding)),c
	line	545
	movlw	low(0)
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	546
	movlw	low(0C8h)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	547
	goto	l353
	line	549
	
l347:; BSR set to: 2

	line	552
	
l2194:; BSR set to: 2

	movlw	low(0)
	movwf	((c:usb_process@i_678)),c
	
l2196:; BSR set to: 2

		movlw	07h-1
	cpfsgt	((c:usb_process@i_678)),c
	goto	u1481
	goto	u1480

u1481:
	goto	l2200
u1480:
	goto	l2206
	
l2198:; BSR set to: 2

	goto	l2206
	
l348:; BSR set to: 2

	line	553
	
l2200:
	movf	((c:usb_process@i_678)),c,w
	mullw	01h
	movlw	low(_linecoding)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_linecoding)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:usb_process@i_678)),c,w
	mullw	01h
	movlw	low(648)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlw	high(648)
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	552
	
l2202:
	incf	((c:usb_process@i_678)),c
	
l2204:
		movlw	07h-1
	cpfsgt	((c:usb_process@i_678)),c
	goto	u1491
	goto	u1490

u1491:
	goto	l2200
u1490:
	goto	l2206
	
l349:
	line	556
	
l2206:
	movlw	low(07h)
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	557
	movlw	low(0C8h)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	558
	goto	l353
	line	560
	
l350:; BSR set to: 2

	goto	l2208
	line	561
	
l351:; BSR set to: 2

	line	562
	
l2208:; BSR set to: 2

	movlw	low(0)
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	563
	movlw	low(0C8h)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	564
	goto	l353
	line	565
	
l352:; BSR set to: 2

	line	566
	
l2210:; BSR set to: 2

	movlw	low(0)
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	567
	movlw	low(0CCh)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	568
	goto	l353
	line	569
	
l2212:; BSR set to: 2

	goto	l353
	line	535
	
l341:; BSR set to: 2

	
l2214:; BSR set to: 2

	movlb	2	; () banked
	movf	(0+(640+01h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 34
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l2208
	xorlw	1^0	; case 1
	skipnz
	goto	l2178
	xorlw	32^1	; case 32
	skipnz
	goto	l2192
	xorlw	33^32	; case 33
	skipnz
	goto	l2194
	xorlw	34^33	; case 34
	skipnz
	goto	l2208
	goto	l2210

	line	569
	
l345:; BSR set to: 2

	goto	l353
	line	570
	
l340:; BSR set to: 2

	goto	l353
	line	573
	
l339:; BSR set to: 2

	goto	l353
	
l323:; BSR set to: 2

	line	576
	
l2216:; BSR set to: 2

	movf	((c:_dolinecoding)),c,w
	btfsc	status,2
	goto	u1501
	goto	u1500
u1501:
	goto	l353
u1500:
	line	578
	
l2218:; BSR set to: 2

	movlw	low(0)
	movwf	((c:usb_process@i_679)),c
	
l2220:; BSR set to: 2

		movlw	07h-1
	cpfsgt	((c:usb_process@i_679)),c
	goto	u1511
	goto	u1510

u1511:
	goto	l2224
u1510:
	goto	l2230
	
l2222:; BSR set to: 2

	goto	l2230
	
l355:; BSR set to: 2

	line	579
	
l2224:
	movf	((c:usb_process@i_679)),c,w
	mullw	01h
	movlw	low(640)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(640)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:usb_process@i_679)),c,w
	mullw	01h
	movlw	low(_linecoding)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlw	high(_linecoding)
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	578
	
l2226:
	incf	((c:usb_process@i_679)),c
	
l2228:
		movlw	07h-1
	cpfsgt	((c:usb_process@i_679)),c
	goto	u1521
	goto	u1520

u1521:
	goto	l2224
u1520:
	goto	l2230
	
l356:
	line	581
	
l2230:
	movlw	low(0)
	movwf	((c:_dolinecoding)),c
	goto	l353
	line	582
	
l354:
	line	583
	
l353:
	line	585
	movlw	low(08h)
	movlb	2	; () banked
	movwf	(0+(512+01h))&0ffh	;volatile
	line	586
	movlw	low(080h)
	movlb	2	; () banked
	movwf	((512))&0ffh	;volatile
	line	588
	goto	l2242
	
l322:; BSR set to: 2

	
l2232:
		movlw	4
	xorwf	((c:3939)),c,w	;volatile
	btfss	status,2
	goto	u1531
	goto	u1530

u1531:
	goto	l2242
u1530:
	line	591
	
l2234:
	movf	((c:_usb_setaddress)),c,w
	btfsc	status,2
	goto	u1541
	goto	u1540
u1541:
	goto	l2240
u1540:
	line	592
	
l2236:
	movff	(c:_usb_setaddress),(3932)	;volatile
	line	593
	
l2238:
	movlw	low(0)
	movwf	((c:_usb_setaddress)),c
	goto	l2240
	line	594
	
l359:
	line	596
	
l2240:
	call	_usb_sendProcess	;wreg free
	goto	l2242
	line	598
	
l358:
	goto	l2242
	line	600
	
l357:
	
l2242:
	bcf	((c:3940)),c,4	;volatile
	line	601
	
l2244:
	bcf	((c:3938)),c,3	;volatile
	goto	l360
	line	602
	
l321:
	line	603
	
l360:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_usb_process
	__end_of_usb_process:
	signat	_usb_process,88
	global	_usb_txprocess

;; *************** function _usb_txprocess *****************
;; Defined at:
;;		line 362 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           1    2[COMRAM] unsigned char 
;;  readpos         1    1[COMRAM] unsigned char 
;;  i               1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_usb_process
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	line	362
global __ptext16
__ptext16:
psect	text16
	file	"usb_cdc.c"
	line	362
	global	__size_of_usb_txprocess
	__size_of_usb_txprocess	equ	__end_of_usb_txprocess-_usb_txprocess
	
_usb_txprocess:
;incstack = 0
	opt	stack 28
	line	363
	
l2100:
	movf	((c:_txbuffer_bytesleft)),c,w
	btfss	status,2
	goto	u1331
	goto	u1330
u1331:
	goto	l2104
u1330:
	goto	l296
	
l2102:
	goto	l296
	
l295:
	line	364
	
l2104:
	movf	((c:_configured)),c,w
iorwf	((c:_configured+1)),c,w
	btfss	status,2
	goto	u1341
	goto	u1340

u1341:
	goto	l297
u1340:
	goto	l296
	
l2106:
	goto	l296
	
l297:
	line	365
	movlb	2	; () banked
	
	movlb	2	; () banked
	btfss	(0+(512+0Ch))&0ffh,(7)&7	;volatile
	goto	u1351
	goto	u1350
u1351:
	goto	l298
u1350:
	goto	l296
	
l2108:; BSR set to: 2

	goto	l296
	
l298:; BSR set to: 2

	line	367
	movff	(c:_txbuffer_bytesleft),(c:usb_txprocess@count)
	line	368
	
l2110:; BSR set to: 2

		movlw	040h-1
	cpfsgt	((c:usb_txprocess@count)),c
	goto	u1361
	goto	u1360

u1361:
	goto	l2114
u1360:
	
l2112:; BSR set to: 2

	movlw	low(03Fh)
	movwf	((c:usb_txprocess@count)),c
	goto	l2114
	
l299:; BSR set to: 2

	line	370
	
l2114:; BSR set to: 2

	movf	((c:_txbuffer_bytesleft)),c,w
	sublw	0
	addwf	((c:_txbuffer_writepos)),c,w
	addlw	low(080h)
	andlw	low(07Fh)
	movwf	((c:usb_txprocess@readpos)),c
	line	373
	
l2116:; BSR set to: 2

	movlw	low(0)
	movwf	((c:usb_txprocess@i)),c
	goto	l2128
	
l301:; BSR set to: 2

	line	374
	
l2118:
	movf	((c:usb_txprocess@readpos)),c,w
	mullw	01h
	movlw	low(_txbuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_txbuffer)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:usb_txprocess@i)),c,w
	mullw	01h
	movlw	low(680)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlw	high(680)
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	375
	
l2120:
	incf	((c:usb_txprocess@readpos)),c
	line	376
	
l2122:
		movlw	128
	xorwf	((c:usb_txprocess@readpos)),c,w
	btfss	status,2
	goto	u1371
	goto	u1370

u1371:
	goto	l2126
u1370:
	
l2124:
	movlw	low(0)
	movwf	((c:usb_txprocess@readpos)),c
	goto	l2126
	
l302:
	line	373
	
l2126:
	incf	((c:usb_txprocess@i)),c
	goto	l2128
	
l300:
	
l2128:
		movf	((c:usb_txprocess@count)),c,w
	subwf	((c:usb_txprocess@i)),c,w
	btfss	status,0
	goto	u1381
	goto	u1380

u1381:
	goto	l2118
u1380:
	
l303:
	line	379
	movff	(c:usb_txprocess@count),0+(512+0Dh)	;volatile
	line	380
	
l2130:
	movf	((c:usb_txprocess@count)),c,w
	subwf	((c:_txbuffer_bytesleft)),c
	line	382
	
l2132:
	movlb	2	; () banked
	
	movlb	2	; () banked
	btfss	(0+(512+0Ch))&0ffh,(6)&7	;volatile
	goto	u1391
	goto	u1390
u1391:
	goto	l2136
u1390:
	line	383
	
l2134:; BSR set to: 2

	movlw	low(088h)
	movlb	2	; () banked
	movwf	(0+(512+0Ch))&0ffh	;volatile
	goto	l296
	line	384
	
l304:; BSR set to: 2

	line	385
	
l2136:; BSR set to: 2

	movlw	low(0C8h)
	movlb	2	; () banked
	movwf	(0+(512+0Ch))&0ffh	;volatile
	goto	l296
	
l305:; BSR set to: 2

	line	386
	
l296:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_usb_txprocess
	__end_of_usb_txprocess:
	signat	_usb_txprocess,88
	global	_usb_handleDescriptorRequest

;; *************** function _usb_handleDescriptorRequest *****************
;; Defined at:
;;		line 308 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;  type            1    wreg     unsigned char 
;;  index           1   11[COMRAM] unsigned char 
;;  length          2   12[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;  type            1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         3       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_usb_loadDescriptor
;; This function is called by:
;;		_usb_process
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	line	308
global __ptext17
__ptext17:
psect	text17
	file	"usb_cdc.c"
	line	308
	global	__size_of_usb_handleDescriptorRequest
	__size_of_usb_handleDescriptorRequest	equ	__end_of_usb_handleDescriptorRequest-_usb_handleDescriptorRequest
	
_usb_handleDescriptorRequest:
;incstack = 0
	opt	stack 26
	movwf	((c:usb_handleDescriptorRequest@type)),c
	line	310
	
l2068:
	goto	l2094
	line	311
	
l272:
	line	312
	
l2070:
		movlw	low(_usb_dev_desc)
	movwf	((c:usb_loadDescriptor@descbuffer)),c
	movlw	high(_usb_dev_desc)
	movwf	((c:usb_loadDescriptor@descbuffer+1)),c

	movlw	high(012h)
	movwf	((c:usb_loadDescriptor@size+1)),c
	movlw	low(012h)
	movwf	((c:usb_loadDescriptor@size)),c
	movff	(c:usb_handleDescriptorRequest@length),(c:usb_loadDescriptor@length)
	movff	(c:usb_handleDescriptorRequest@length+1),(c:usb_loadDescriptor@length+1)
	call	_usb_loadDescriptor	;wreg free
	goto	l273
	
l2072:
	goto	l273
	line	313
	
l274:
	line	314
	
l2074:
		movlw	low(_usb_config_desc)
	movwf	((c:usb_loadDescriptor@descbuffer)),c
	movlw	high(_usb_config_desc)
	movwf	((c:usb_loadDescriptor@descbuffer+1)),c

	movlw	high(043h)
	movwf	((c:usb_loadDescriptor@size+1)),c
	movlw	low(043h)
	movwf	((c:usb_loadDescriptor@size)),c
	movff	(c:usb_handleDescriptorRequest@length),(c:usb_loadDescriptor@length)
	movff	(c:usb_handleDescriptorRequest@length+1),(c:usb_loadDescriptor@length+1)
	call	_usb_loadDescriptor	;wreg free
	goto	l273
	
l2076:
	goto	l273
	line	315
	
l275:
	line	316
	goto	l2092
	line	317
	
l277:
	
l2078:
		movlw	low(_usb_string_0)
	movwf	((c:usb_loadDescriptor@descbuffer)),c
	movlw	high(_usb_string_0)
	movwf	((c:usb_loadDescriptor@descbuffer+1)),c

	movlw	high(04h)
	movwf	((c:usb_loadDescriptor@size+1)),c
	movlw	low(04h)
	movwf	((c:usb_loadDescriptor@size)),c
	movff	(c:usb_handleDescriptorRequest@length),(c:usb_loadDescriptor@length)
	movff	(c:usb_handleDescriptorRequest@length+1),(c:usb_loadDescriptor@length+1)
	call	_usb_loadDescriptor	;wreg free
	goto	l273
	
l2080:
	goto	l273
	line	318
	
l278:
	
l2082:
		movlw	low(_usb_string_manuf)
	movwf	((c:usb_loadDescriptor@descbuffer)),c
	movlw	high(_usb_string_manuf)
	movwf	((c:usb_loadDescriptor@descbuffer+1)),c

	movlw	high(036h)
	movwf	((c:usb_loadDescriptor@size+1)),c
	movlw	low(036h)
	movwf	((c:usb_loadDescriptor@size)),c
	movff	(c:usb_handleDescriptorRequest@length),(c:usb_loadDescriptor@length)
	movff	(c:usb_handleDescriptorRequest@length+1),(c:usb_loadDescriptor@length+1)
	call	_usb_loadDescriptor	;wreg free
	goto	l273
	
l2084:
	goto	l273
	line	319
	
l279:
	
l2086:
		movlw	low(_usb_string_product)
	movwf	((c:usb_loadDescriptor@descbuffer)),c
	movlw	high(_usb_string_product)
	movwf	((c:usb_loadDescriptor@descbuffer+1)),c

	movlw	high(0Eh)
	movwf	((c:usb_loadDescriptor@size+1)),c
	movlw	low(0Eh)
	movwf	((c:usb_loadDescriptor@size)),c
	movff	(c:usb_handleDescriptorRequest@length),(c:usb_loadDescriptor@length)
	movff	(c:usb_handleDescriptorRequest@length+1),(c:usb_loadDescriptor@length+1)
	call	_usb_loadDescriptor	;wreg free
	goto	l273
	
l2088:
	goto	l273
	line	320
	
l2090:
	goto	l2096
	line	316
	
l276:
	
l2092:
	movf	((c:usb_handleDescriptorRequest@index)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l2078
	xorlw	1^0	; case 1
	skipnz
	goto	l2082
	xorlw	2^1	; case 2
	skipnz
	goto	l2086
	goto	l2096

	line	320
	
l280:
	line	321
	goto	l2096
	line	310
	
l271:
	
l2094:
	movf	((c:usb_handleDescriptorRequest@type)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l2070
	xorlw	2^1	; case 2
	skipnz
	goto	l2074
	xorlw	3^2	; case 3
	skipnz
	goto	l2092
	goto	l2096

	line	321
	
l281:
	line	323
	
l2096:
	movlw	(0)&0ffh
	goto	l273
	
l2098:
	line	324
	
l273:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_usb_handleDescriptorRequest
	__end_of_usb_handleDescriptorRequest:
	signat	_usb_handleDescriptorRequest,12409
	global	_usb_loadDescriptor

;; *************** function _usb_loadDescriptor *****************
;; Defined at:
;;		line 288 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;  descbuffer      2    5[COMRAM] PTR const unsigned char 
;;		 -> usb_string_product(14), usb_string_manuf(54), usb_string_0(4), usb_config_desc(67), 
;;		 -> usb_dev_desc(18), 
;;  size            2    7[COMRAM] unsigned short 
;;  length          2    9[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         6       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_usb_sendProcess
;; This function is called by:
;;		_usb_handleDescriptorRequest
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	line	288
global __ptext18
__ptext18:
psect	text18
	file	"usb_cdc.c"
	line	288
	global	__size_of_usb_loadDescriptor
	__size_of_usb_loadDescriptor	equ	__end_of_usb_loadDescriptor-_usb_loadDescriptor
	
_usb_loadDescriptor:
;incstack = 0
	opt	stack 26
	line	290
	
l2056:
		movf	((c:usb_loadDescriptor@length)),c,w
	subwf	((c:usb_loadDescriptor@size)),c,w
	movf	((c:usb_loadDescriptor@length+1)),c,w
	subwfb	((c:usb_loadDescriptor@size+1)),c,w
	btfsc	status,0
	goto	u1321
	goto	u1320

u1321:
	goto	l267
u1320:
	line	291
	
l2058:
	movff	(c:usb_loadDescriptor@size),(c:usb_loadDescriptor@length)
	movff	(c:usb_loadDescriptor@size+1),(c:usb_loadDescriptor@length+1)
	
l267:
	line	293
	movff	(c:usb_loadDescriptor@length),(c:_usb_sendleft)
	movff	(c:usb_loadDescriptor@length+1),(c:_usb_sendleft+1)
	line	294
	
l2060:
		movff	(c:usb_loadDescriptor@descbuffer),(c:_usb_sendbuffer)
	movff	(c:usb_loadDescriptor@descbuffer+1),(c:_usb_sendbuffer+1)
	movf	((c:_usb_sendbuffer)),c,w
	iorwf	((c:_usb_sendbuffer+1)),c,w
	btfss	status,2
	movlw	low highword(__mediumconst)
	movwf	((c:_usb_sendbuffer+2)),c

	line	296
	
l2062:
	call	_usb_sendProcess	;wreg free
	line	297
	
l2064:
	movf	((c:usb_loadDescriptor@length)),c,w
	goto	l268
	
l2066:
	line	298
	
l268:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_usb_loadDescriptor
	__end_of_usb_loadDescriptor:
	signat	_usb_loadDescriptor,12409
	global	_usb_sendProcess

;; *************** function _usb_sendProcess *****************
;; Defined at:
;;		line 259 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  length          2    3[COMRAM] unsigned short 
;;  i               1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_usb_loadDescriptor
;;		_usb_process
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	line	259
global __ptext19
__ptext19:
psect	text19
	file	"usb_cdc.c"
	line	259
	global	__size_of_usb_sendProcess
	__size_of_usb_sendProcess	equ	__end_of_usb_sendProcess-_usb_sendProcess
	
_usb_sendProcess:
;incstack = 0
	opt	stack 28
	line	260
	
l2034:
	movf	((c:_usb_sendleft)),c,w
iorwf	((c:_usb_sendleft+1)),c,w
	btfss	status,2
	goto	u1281
	goto	u1280

u1281:
	goto	l257
u1280:
	goto	l258
	
l2036:
	goto	l258
	
l257:
	line	262
	movff	(c:_usb_sendleft),(c:usb_sendProcess@length)
	movff	(c:_usb_sendleft+1),(c:usb_sendProcess@length+1)
	line	263
	
l2038:
		movf	((c:usb_sendProcess@length+1)),c,w
	bnz	u1290
	movlw	9
	subwf	 ((c:usb_sendProcess@length)),c,w
	btfss	status,0
	goto	u1291
	goto	u1290

u1291:
	goto	l259
u1290:
	line	264
	
l2040:
	movlw	high(08h)
	movwf	((c:usb_sendProcess@length+1)),c
	movlw	low(08h)
	movwf	((c:usb_sendProcess@length)),c
	
l259:
	line	267
	movlw	low(0)
	movwf	((c:usb_sendProcess@i)),c
	goto	l2050
	
l261:
	line	268
	
l2042:
	movff	(c:_usb_sendbuffer),tblptrl
	movff	(c:_usb_sendbuffer+1),tblptrh
	movff	(c:_usb_sendbuffer+2),tblptru
	movf	((c:usb_sendProcess@i)),c,w
	mullw	01h
	movlw	low(648)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(648)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	tblrd	*
	
	movff	tablat,indf2
	line	269
	
l2044:
	movlw	low(01h)
	addwf	((c:_usb_sendbuffer)),c
	movlw	high(01h)
	addwfc	((c:_usb_sendbuffer+1)),c
	movlw	low highword(01h)
	addwfc	((c:_usb_sendbuffer+2)),c
	line	270
	
l2046:
	decf	((c:_usb_sendleft)),c
	btfss	status,0
	decf	((c:_usb_sendleft+1)),c
	line	267
	
l2048:
	incf	((c:usb_sendProcess@i)),c
	goto	l2050
	
l260:
	
l2050:
	movf	((c:usb_sendProcess@i)),c,w
	movwf	(??_usb_sendProcess+0+0)&0ffh,c
	clrf	(??_usb_sendProcess+0+0+1)&0ffh,c

		movf	((c:usb_sendProcess@length)),c,w
	subwf	(??_usb_sendProcess+0+0),c,w
	movf	((c:usb_sendProcess@length+1)),c,w
	subwfb	(??_usb_sendProcess+0+1),c,w
	btfss	status,0
	goto	u1301
	goto	u1300

u1301:
	goto	l2042
u1300:
	
l262:
	line	273
	movff	(c:usb_sendProcess@length),0+(512+05h)	;volatile
	line	274
	movlb	2	; () banked
	
	movlb	2	; () banked
	btfss	(0+(512+04h))&0ffh,(6)&7	;volatile
	goto	u1311
	goto	u1310
u1311:
	goto	l2054
u1310:
	line	275
	
l2052:; BSR set to: 2

	movlw	low(088h)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	goto	l258
	line	276
	
l263:; BSR set to: 2

	line	277
	
l2054:; BSR set to: 2

	movlw	low(0C8h)
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	goto	l258
	
l264:; BSR set to: 2

	line	278
	
l258:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_usb_sendProcess
	__end_of_usb_sendProcess:
	signat	_usb_sendProcess,88
	global	_mcp2515_set_bittiming

;; *************** function _mcp2515_set_bittiming *****************
;; Defined at:
;;		line 226 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  cnf1            1    wreg     unsigned char 
;;  cnf2            1    3[COMRAM] unsigned char 
;;  cnf3            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnf1            1    5[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         2       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_mcp2515_write_register
;; This function is called by:
;;		_parseLine
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	file	"mcp2515.c"
	line	226
global __ptext20
__ptext20:
psect	text20
	file	"mcp2515.c"
	line	226
	global	__size_of_mcp2515_set_bittiming
	__size_of_mcp2515_set_bittiming	equ	__end_of_mcp2515_set_bittiming-_mcp2515_set_bittiming
	
_mcp2515_set_bittiming:
;incstack = 0
	opt	stack 27
	movwf	((c:mcp2515_set_bittiming@cnf1)),c
	line	228
	
l2478:
	movff	(c:mcp2515_set_bittiming@cnf1),(c:mcp2515_write_register@data)
	movlw	(02Ah)&0ffh
	
	call	_mcp2515_write_register
	line	229
	movff	(c:mcp2515_set_bittiming@cnf2),(c:mcp2515_write_register@data)
	movlw	(029h)&0ffh
	
	call	_mcp2515_write_register
	line	230
	movff	(c:mcp2515_set_bittiming@cnf3),(c:mcp2515_write_register@data)
	movlw	(028h)&0ffh
	
	call	_mcp2515_write_register
	line	232
	
l409:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_mcp2515_set_bittiming
	__end_of_mcp2515_set_bittiming:
	signat	_mcp2515_set_bittiming,12408
	global	_mcp2515_set_SJA1000_filter_mask

;; *************** function _mcp2515_set_SJA1000_filter_mask *****************
;; Defined at:
;;		line 165 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  amr0            1    wreg     unsigned char 
;;  amr1            1    3[COMRAM] unsigned char 
;;  amr2            1    4[COMRAM] unsigned char 
;;  amr3            1    5[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  amr0            1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         3       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_mcp2515_write_register
;; This function is called by:
;;		_parseLine
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	line	165
global __ptext21
__ptext21:
psect	text21
	file	"mcp2515.c"
	line	165
	global	__size_of_mcp2515_set_SJA1000_filter_mask
	__size_of_mcp2515_set_SJA1000_filter_mask	equ	__end_of_mcp2515_set_SJA1000_filter_mask-_mcp2515_set_SJA1000_filter_mask
	
_mcp2515_set_SJA1000_filter_mask:
;incstack = 0
	opt	stack 27
	movwf	((c:mcp2515_set_SJA1000_filter_mask@amr0)),c
	line	172
	
l2498:
	movf	((c:mcp2515_set_SJA1000_filter_mask@amr0)),c,w
	xorlw	0ffh
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(020h)&0ffh
	
	call	_mcp2515_write_register
	line	173
	movf	((c:mcp2515_set_SJA1000_filter_mask@amr1)),c,w
	xorlw	0ffh
	andlw	low(0E0h)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(021h)&0ffh
	
	call	_mcp2515_write_register
	line	174
	
l2500:
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(022h)&0ffh
	
	call	_mcp2515_write_register
	line	175
	
l2502:
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(023h)&0ffh
	
	call	_mcp2515_write_register
	line	178
	movf	((c:mcp2515_set_SJA1000_filter_mask@amr2)),c,w
	xorlw	0ffh
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(024h)&0ffh
	
	call	_mcp2515_write_register
	line	179
	movf	((c:mcp2515_set_SJA1000_filter_mask@amr3)),c,w
	xorlw	0ffh
	andlw	low(0E0h)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(025h)&0ffh
	
	call	_mcp2515_write_register
	line	180
	
l2504:
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(026h)&0ffh
	
	call	_mcp2515_write_register
	line	181
	
l2506:
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(027h)&0ffh
	
	call	_mcp2515_write_register
	line	183
	
l403:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_mcp2515_set_SJA1000_filter_mask
	__end_of_mcp2515_set_SJA1000_filter_mask:
	signat	_mcp2515_set_SJA1000_filter_mask,16504
	global	_mcp2515_set_SJA1000_filter_code

;; *************** function _mcp2515_set_SJA1000_filter_code *****************
;; Defined at:
;;		line 195 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  acr0            1    wreg     unsigned char 
;;  acr1            1    3[COMRAM] unsigned char 
;;  acr2            1    4[COMRAM] unsigned char 
;;  acr3            1    5[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  acr0            1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         3       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_mcp2515_write_register
;; This function is called by:
;;		_parseLine
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	line	195
global __ptext22
__ptext22:
psect	text22
	file	"mcp2515.c"
	line	195
	global	__size_of_mcp2515_set_SJA1000_filter_code
	__size_of_mcp2515_set_SJA1000_filter_code	equ	__end_of_mcp2515_set_SJA1000_filter_code-_mcp2515_set_SJA1000_filter_code
	
_mcp2515_set_SJA1000_filter_code:
;incstack = 0
	opt	stack 27
	movwf	((c:mcp2515_set_SJA1000_filter_code@acr0)),c
	line	198
	
l2508:
	movff	(c:mcp2515_set_SJA1000_filter_code@acr0),(c:mcp2515_write_register@data)
	movlw	(0)&0ffh
	
	call	_mcp2515_write_register
	line	199
	
l2510:
	movf	((c:mcp2515_set_SJA1000_filter_code@acr1)),c,w
	andlw	low(0E0h)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(01h)&0ffh
	
	call	_mcp2515_write_register
	line	200
	
l2512:
	movff	(c:mcp2515_set_SJA1000_filter_code@acr0),(c:mcp2515_write_register@data)
	movlw	(04h)&0ffh
	
	call	_mcp2515_write_register
	line	201
	movf	((c:mcp2515_set_SJA1000_filter_code@acr1)),c,w
	andlw	low(0E0h)
	iorlw	low(08h)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(05h)&0ffh
	
	call	_mcp2515_write_register
	line	204
	
l2514:
	movff	(c:mcp2515_set_SJA1000_filter_code@acr2),(c:mcp2515_write_register@data)
	movlw	(08h)&0ffh
	
	call	_mcp2515_write_register
	line	205
	
l2516:
	movf	((c:mcp2515_set_SJA1000_filter_code@acr3)),c,w
	andlw	low(0E0h)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(09h)&0ffh
	
	call	_mcp2515_write_register
	line	206
	movff	(c:mcp2515_set_SJA1000_filter_code@acr2),(c:mcp2515_write_register@data)
	movlw	(010h)&0ffh
	
	call	_mcp2515_write_register
	line	207
	
l2518:
	movf	((c:mcp2515_set_SJA1000_filter_code@acr3)),c,w
	andlw	low(0E0h)
	iorlw	low(08h)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(011h)&0ffh
	
	call	_mcp2515_write_register
	line	210
	
l2520:
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(014h)&0ffh
	
	call	_mcp2515_write_register
	line	211
	
l2522:
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(015h)&0ffh
	
	call	_mcp2515_write_register
	line	212
	
l2524:
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(018h)&0ffh
	
	call	_mcp2515_write_register
	line	213
	
l2526:
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(019h)&0ffh
	
	call	_mcp2515_write_register
	line	214
	
l406:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_mcp2515_set_SJA1000_filter_code
	__end_of_mcp2515_set_SJA1000_filter_code:
	signat	_mcp2515_set_SJA1000_filter_code,16504
	global	_mcp2515_read_register

;; *************** function _mcp2515_read_register *****************
;; Defined at:
;;		line 63 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[COMRAM] unsigned char 
;;  data            1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_spi_transmit
;; This function is called by:
;;		_parseLine
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	line	63
global __ptext23
__ptext23:
psect	text23
	file	"mcp2515.c"
	line	63
	global	__size_of_mcp2515_read_register
	__size_of_mcp2515_read_register	equ	__end_of_mcp2515_read_register-_mcp2515_read_register
	
_mcp2515_read_register:
;incstack = 0
	opt	stack 28
	movwf	((c:mcp2515_read_register@address)),c
	line	68
	
l2480:
	bcf	((c:3979)),c,6	;volatile
	line	70
	
l2482:
	movlw	(03h)&0ffh
	
	call	_spi_transmit
	line	71
	movf	((c:mcp2515_read_register@address)),c,w
	
	call	_spi_transmit
	line	72
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	((c:mcp2515_read_register@data)),c
	line	75
	
l2484:
	bsf	((c:3979)),c,6	;volatile
	line	77
	
l2486:
	movf	((c:mcp2515_read_register@data)),c,w
	goto	l388
	
l2488:
	line	78
	
l388:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_mcp2515_read_register
	__end_of_mcp2515_read_register:
	signat	_mcp2515_read_register,4217
	global	_getUniqueID

;; *************** function _getUniqueID *****************
;; Defined at:
;;		line 55 in file "eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_readEEROM
;; This function is called by:
;;		_parseLine
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	file	"eeprom.c"
	line	55
global __ptext24
__ptext24:
psect	text24
	file	"eeprom.c"
	line	55
	global	__size_of_getUniqueID
	__size_of_getUniqueID	equ	__end_of_getUniqueID-_getUniqueID
	
_getUniqueID:
;incstack = 0
	opt	stack 28
	line	57
	
l2530:
	movlw	(0)&0ffh
	
	call	_readEEROM
	goto	l494
	
l2532:
	line	58
	
l494:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_getUniqueID
	__end_of_getUniqueID:
	signat	_getUniqueID,89
	global	_readEEROM

;; *************** function _readEEROM *****************
;; Defined at:
;;		line 26 in file "eeprom.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    0[COMRAM] unsigned char 
;;  data            1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getUniqueID
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	line	26
global __ptext25
__ptext25:
psect	text25
	file	"eeprom.c"
	line	26
	global	__size_of_readEEROM
	__size_of_readEEROM	equ	__end_of_readEEROM-_readEEROM
	
_readEEROM:
;incstack = 0
	opt	stack 28
	movwf	((c:readEEROM@addr)),c
	line	29
	
l2402:
	movff	(c:readEEROM@addr),(c:4009)	;volatile
	line	30
	
l2404:
	movlw	low(0)
	movwf	((c:4006)),c	;volatile
	line	31
	
l2406:
	movlw	low(01h)
	movwf	((c:4006)),c	;volatile
	line	32
	
l2408:
	movff	(c:4008),(c:readEEROM@data)	;volatile
	line	33
	
l2410:
	movf	((c:readEEROM@data)),c,w
	goto	l485
	
l2412:
	line	34
	
l485:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_readEEROM
	__end_of_readEEROM:
	signat	_readEEROM,4217
	global	_mcp2515_receive_message

;; *************** function _mcp2515_receive_message *****************
;; Defined at:
;;		line 349 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  p_canmsg        2    4[COMRAM] PTR struct .
;;		 -> main@canmsg(14), 
;; Auto vars:     Size  Location     Type
;;  i               1   15[COMRAM] unsigned char 
;;  temp            4   11[COMRAM] unsigned long 
;;  status          1   17[COMRAM] unsigned char 
;;  address         1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         2       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_mcp2515_bit_modify
;;		_mcp2515_rx_status
;;		_spi_transmit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	file	"mcp2515.c"
	line	349
global __ptext26
__ptext26:
psect	text26
	file	"mcp2515.c"
	line	349
	global	__size_of_mcp2515_receive_message
	__size_of_mcp2515_receive_message	equ	__end_of_mcp2515_receive_message-_mcp2515_receive_message
	
_mcp2515_receive_message:
;incstack = 0
	opt	stack 28
	line	351
	
l2806:
	call	_mcp2515_rx_status	;wreg free
	movwf	((c:mcp2515_receive_message@status)),c
	line	354
	
l2808:
	
	btfss	((c:mcp2515_receive_message@status)),c,(6)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l436
u2300:
	line	355
	
l2810:
	movlw	low(0)
	movwf	((c:mcp2515_receive_message@address)),c
	line	356
	goto	l2818
	
l436:
	
	btfss	((c:mcp2515_receive_message@status)),c,(7)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l2814
u2310:
	line	357
	
l2812:
	movlw	low(04h)
	movwf	((c:mcp2515_receive_message@address)),c
	line	358
	goto	l2818
	
l438:
	line	360
	
l2814:
	movlw	(0)&0ffh
	goto	l440
	
l2816:
	goto	l440
	line	361
	
l439:
	goto	l2818
	
l437:
	line	363
	
l2818:
	movff	(c:mcp2515_receive_message@status),??_mcp2515_receive_message+0+0
	bcf	status,0
	rrcf	(??_mcp2515_receive_message+0+0),c
	bcf	status,0
	rrcf	(??_mcp2515_receive_message+0+0),c
	bcf	status,0
	rrcf	(??_mcp2515_receive_message+0+0),c

	movlw	01h
	andwf	(??_mcp2515_receive_message+0+0),c
	lfsr	2,04h
	movf	((c:mcp2515_receive_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_receive_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	movf	(c:indf2),c,w
	xorwf	(??_mcp2515_receive_message+0+0),c,w
	andlw	not ((1<<1)-1)
	xorwf	(??_mcp2515_receive_message+0+0),c,w
	movwf	(c:indf2),c
	line	364
	movff	(c:mcp2515_receive_message@status),??_mcp2515_receive_message+0+0
	swapf	(??_mcp2515_receive_message+0+0),c
	movlw	(0ffh shr 4) & 0ffh
	andwf	(??_mcp2515_receive_message+0+0),c
	movlw	01h
	andwf	(??_mcp2515_receive_message+0+0),c
	lfsr	2,04h
	movf	((c:mcp2515_receive_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_receive_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	rlncf	(??_mcp2515_receive_message+0+0),c
	movf	(c:indf2),c,w
	xorwf	(??_mcp2515_receive_message+0+0),c,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_mcp2515_receive_message+0+0),c,w
	movwf	(c:indf2),c
	line	367
	
l2820:
	bcf	((c:3979)),c,6	;volatile
	line	369
	
l2822:
	movf	((c:mcp2515_receive_message@address)),c,w
	iorlw	low(090h)
	
	call	_spi_transmit
	line	371
	
l2824:
	lfsr	2,04h
	movf	((c:mcp2515_receive_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_receive_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	btfss	c:indf2,1
	goto	u2321
	goto	u2320
u2321:
	goto	l2838
u2320:
	line	372
	
l2826:
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	(??_mcp2515_receive_message+0+0)&0ffh,c
	movff	(??_mcp2515_receive_message+0+0),??_mcp2515_receive_message+1+0
	clrf	(??_mcp2515_receive_message+1+0+1)&0ffh,c
	clrf	(??_mcp2515_receive_message+1+0+2)&0ffh,c
	clrf	(??_mcp2515_receive_message+1+0+3)&0ffh,c
	movlw	015h
u2335:
	bcf	status,0
	rlcf	(??_mcp2515_receive_message+1+0),c
	rlcf	(??_mcp2515_receive_message+1+1),c
	rlcf	(??_mcp2515_receive_message+1+2),c
	rlcf	(??_mcp2515_receive_message+1+3),c
	decfsz	wreg
	goto	u2335
	movff	(c:mcp2515_receive_message@p_canmsg),fsr2l
	movff	(c:mcp2515_receive_message@p_canmsg+1),fsr2h
	movff	??_mcp2515_receive_message+1+0,postinc2
	movff	??_mcp2515_receive_message+1+1,postinc2
	movff	??_mcp2515_receive_message+1+2,postinc2
	movff	??_mcp2515_receive_message+1+3,postinc2

	line	373
	
l2828:
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	(??_mcp2515_receive_message+0+0)&0ffh,c
	movf	((??_mcp2515_receive_message+0+0)),c,w
	movwf	((c:mcp2515_receive_message@temp)),c
	clrf	((c:mcp2515_receive_message@temp+1)),c
	clrf	((c:mcp2515_receive_message@temp+2)),c
	clrf	((c:mcp2515_receive_message@temp+3)),c

	line	374
	
l2830:
	movlw	0E0h
	andwf	((c:mcp2515_receive_message@temp)),c,w
	movwf	(??_mcp2515_receive_message+0+0)&0ffh,c
	movlw	0
	andwf	((c:mcp2515_receive_message@temp+1)),c,w
	movwf	1+(??_mcp2515_receive_message+0+0)&0ffh,c
	
	movlw	0
	andwf	((c:mcp2515_receive_message@temp+2)),c,w
	movwf	2+(??_mcp2515_receive_message+0+0)&0ffh,c
	
	movlw	0
	andwf	((c:mcp2515_receive_message@temp+3)),c,w
	movwf	3+(??_mcp2515_receive_message+0+0)&0ffh,c
	movlw	0Dh
u2345:
	bcf	status,0
	rlcf	(??_mcp2515_receive_message+0+0),c
	rlcf	(??_mcp2515_receive_message+0+1),c
	rlcf	(??_mcp2515_receive_message+0+2),c
	rlcf	(??_mcp2515_receive_message+0+3),c
	decfsz	wreg
	goto	u2345
	movff	(c:mcp2515_receive_message@p_canmsg),fsr2l
	movff	(c:mcp2515_receive_message@p_canmsg+1),fsr2h
	movf	(??_mcp2515_receive_message+0+0),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+0+1),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+0+2),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+0+3),c,w
	iorwf	postinc2

	line	375
	
l2832:
	movlw	03h
	andwf	((c:mcp2515_receive_message@temp)),c,w
	movwf	(??_mcp2515_receive_message+0+0)&0ffh,c
	movlw	0
	andwf	((c:mcp2515_receive_message@temp+1)),c,w
	movwf	1+(??_mcp2515_receive_message+0+0)&0ffh,c
	
	movlw	0
	andwf	((c:mcp2515_receive_message@temp+2)),c,w
	movwf	2+(??_mcp2515_receive_message+0+0)&0ffh,c
	
	movlw	0
	andwf	((c:mcp2515_receive_message@temp+3)),c,w
	movwf	3+(??_mcp2515_receive_message+0+0)&0ffh,c
	movff	??_mcp2515_receive_message+0+1,??_mcp2515_receive_message+0+3
	movff	??_mcp2515_receive_message+0+0,??_mcp2515_receive_message+0+2
	clrf	(??_mcp2515_receive_message+0+1),c
	clrf	(??_mcp2515_receive_message+0+0),c
	movff	(c:mcp2515_receive_message@p_canmsg),fsr2l
	movff	(c:mcp2515_receive_message@p_canmsg+1),fsr2h
	movf	(??_mcp2515_receive_message+0+0),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+0+1),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+0+2),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+0+3),c,w
	iorwf	postinc2

	line	376
	
l2834:
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	(??_mcp2515_receive_message+0+0)&0ffh,c
	movff	(??_mcp2515_receive_message+0+0),??_mcp2515_receive_message+1+0
	clrf	(??_mcp2515_receive_message+1+0+1)&0ffh,c
	clrf	(??_mcp2515_receive_message+1+0+2)&0ffh,c
	clrf	(??_mcp2515_receive_message+1+0+3)&0ffh,c
	movff	??_mcp2515_receive_message+1+2,??_mcp2515_receive_message+1+3
	movff	??_mcp2515_receive_message+1+1,??_mcp2515_receive_message+1+2
	movff	??_mcp2515_receive_message+1+0,??_mcp2515_receive_message+1+1
	clrf	(??_mcp2515_receive_message+1+0),c
	movff	(c:mcp2515_receive_message@p_canmsg),fsr2l
	movff	(c:mcp2515_receive_message@p_canmsg+1),fsr2h
	movf	(??_mcp2515_receive_message+1+0),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+1+1),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+1+2),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+1+3),c,w
	iorwf	postinc2

	line	377
	
l2836:
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	(??_mcp2515_receive_message+0+0)&0ffh,c
	movf	((??_mcp2515_receive_message+0+0)),c,w
	movff	(c:mcp2515_receive_message@p_canmsg),fsr2l
	movff	(c:mcp2515_receive_message@p_canmsg+1),fsr2h
	iorwf	postinc2
	movlw	0
	iorwf	postinc2
	iorwf	postinc2
	iorwf	postinc2

	line	378
	goto	l442
	
l441:
	line	379
	
l2838:
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	(??_mcp2515_receive_message+0+0)&0ffh,c
	movff	(??_mcp2515_receive_message+0+0),??_mcp2515_receive_message+1+0
	clrf	(??_mcp2515_receive_message+1+0+1)&0ffh,c
	clrf	(??_mcp2515_receive_message+1+0+2)&0ffh,c
	clrf	(??_mcp2515_receive_message+1+0+3)&0ffh,c
	movlw	03h
u2355:
	bcf	status,0
	rlcf	(??_mcp2515_receive_message+1+0),c
	rlcf	(??_mcp2515_receive_message+1+1),c
	rlcf	(??_mcp2515_receive_message+1+2),c
	rlcf	(??_mcp2515_receive_message+1+3),c
	decfsz	wreg
	goto	u2355
	movff	(c:mcp2515_receive_message@p_canmsg),fsr2l
	movff	(c:mcp2515_receive_message@p_canmsg+1),fsr2h
	movff	??_mcp2515_receive_message+1+0,postinc2
	movff	??_mcp2515_receive_message+1+1,postinc2
	movff	??_mcp2515_receive_message+1+2,postinc2
	movff	??_mcp2515_receive_message+1+3,postinc2

	line	380
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	(??_mcp2515_receive_message+0+0)&0ffh,c
	movlw	05h
	movwf	(??_mcp2515_receive_message+1+0)&0ffh,c
u2365:
	bcf	status,0
	rrcf	((??_mcp2515_receive_message+0+0)),c
	decfsz	(??_mcp2515_receive_message+1+0)&0ffh,c
	goto	u2365
	movf	((??_mcp2515_receive_message+0+0)),c,w
	movff	(c:mcp2515_receive_message@p_canmsg),fsr2l
	movff	(c:mcp2515_receive_message@p_canmsg+1),fsr2h
	iorwf	postinc2
	movlw	0
	iorwf	postinc2
	iorwf	postinc2
	iorwf	postinc2

	line	381
	
l2840:
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	line	382
	
l2842:
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	line	383
	
l442:
	line	386
	lfsr	2,05h
	movf	((c:mcp2515_receive_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_receive_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	andlw	low(0Fh)
	movwf	indf2,c

	line	387
	
l2844:
	lfsr	2,04h
	movf	((c:mcp2515_receive_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_receive_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	btfsc	c:indf2,0
	goto	u2371
	goto	u2370
u2371:
	goto	l443
u2370:
	line	389
	
l2846:
	movlw	low(0)
	movwf	((c:mcp2515_receive_message@i)),c
	goto	l2852
	
l445:
	line	390
	
l2848:
	movf	((c:mcp2515_receive_message@i)),c,w
	mullw	01h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movf	(prodl),c,w
	addwf	((c:mcp2515_receive_message@p_canmsg)),c,w
	movwf	c:fsr2l
	movf	(prodh),c,w
	addwfc	((c:mcp2515_receive_message@p_canmsg+1)),c,w
	movwf	1+c:fsr2l
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	indf2,c

	line	389
	
l2850:
	incf	((c:mcp2515_receive_message@i)),c
	goto	l2852
	
l444:
	
l2852:
	lfsr	2,05h
	movf	((c:mcp2515_receive_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_receive_message@p_canmsg+1)),c,w
	addwfc	fsr2h
		movf	postinc2,w
	subwf	((c:mcp2515_receive_message@i)),c,w
	btfss	status,0
	goto	u2381
	goto	u2380

u2381:
	goto	l2848
u2380:
	goto	l443
	
l446:
	line	392
	
l443:
	line	395
	bsf	((c:3979)),c,6	;volatile
	line	397
	
l2854:
	movf	((c:mcp2515_receive_message@address)),c,w
	btfss	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l2858
u2390:
	
l2856:
	movlw	low(01h)
	movwf	((c:mcp2515_receive_message@address)),c
	goto	l2860
	line	398
	
l447:
	
l2858:
	movlw	low(02h)
	movwf	((c:mcp2515_receive_message@address)),c
	goto	l2860
	
l448:
	line	399
	
l2860:
	movff	(c:mcp2515_receive_message@address),(c:mcp2515_bit_modify@mask)
	movlw	low(0)
	movwf	((c:mcp2515_bit_modify@data)),c
	movlw	(02Ch)&0ffh
	
	call	_mcp2515_bit_modify
	line	401
	
l2862:
	movlw	(01h)&0ffh
	goto	l440
	
l2864:
	line	402
	
l440:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_mcp2515_receive_message
	__end_of_mcp2515_receive_message:
	signat	_mcp2515_receive_message,4217
	global	_mcp2515_rx_status

;; *************** function _mcp2515_rx_status *****************
;; Defined at:
;;		line 259 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  status          1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_spi_transmit
;; This function is called by:
;;		_mcp2515_receive_message
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	line	259
global __ptext27
__ptext27:
psect	text27
	file	"mcp2515.c"
	line	259
	global	__size_of_mcp2515_rx_status
	__size_of_mcp2515_rx_status	equ	__end_of_mcp2515_rx_status-_mcp2515_rx_status
	
_mcp2515_rx_status:
;incstack = 0
	opt	stack 28
	line	262
	
l2534:
	bcf	((c:3979)),c,6	;volatile
	line	264
	
l2536:
	movlw	(0B0h)&0ffh
	
	call	_spi_transmit
	line	265
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	((c:mcp2515_rx_status@status)),c
	line	268
	
l2538:
	bsf	((c:3979)),c,6	;volatile
	line	270
	
l2540:
	movf	((c:mcp2515_rx_status@status)),c,w
	goto	l415
	
l2542:
	line	271
	
l415:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_mcp2515_rx_status
	__end_of_mcp2515_rx_status:
	signat	_mcp2515_rx_status,89
	global	_mcp2515_bit_modify

;; *************** function _mcp2515_bit_modify *****************
;; Defined at:
;;		line 90 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  mask            1    1[COMRAM] unsigned char 
;;  data            1    2[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         2       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_spi_transmit
;; This function is called by:
;;		_parseLine
;;		_mcp2515_receive_message
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	line	90
global __ptext28
__ptext28:
psect	text28
	file	"mcp2515.c"
	line	90
	global	__size_of_mcp2515_bit_modify
	__size_of_mcp2515_bit_modify	equ	__end_of_mcp2515_bit_modify-_mcp2515_bit_modify
	
_mcp2515_bit_modify:
;incstack = 0
	opt	stack 28
	movwf	((c:mcp2515_bit_modify@address)),c
	line	93
	
l2490:
	bcf	((c:3979)),c,6	;volatile
	line	95
	
l2492:
	movlw	(05h)&0ffh
	
	call	_spi_transmit
	line	96
	movf	((c:mcp2515_bit_modify@address)),c,w
	
	call	_spi_transmit
	line	97
	movf	((c:mcp2515_bit_modify@mask)),c,w
	
	call	_spi_transmit
	line	98
	movf	((c:mcp2515_bit_modify@data)),c,w
	
	call	_spi_transmit
	line	101
	
l2494:
	bsf	((c:3979)),c,6	;volatile
	line	102
	
l391:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_mcp2515_bit_modify
	__end_of_mcp2515_bit_modify:
	signat	_mcp2515_bit_modify,12408
	global	_mcp2515_init

;; *************** function _mcp2515_init *****************
;; Defined at:
;;		line 108 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dummy           1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_mcp2515_write_register
;;		_spi_transmit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	line	108
global __ptext29
__ptext29:
psect	text29
	file	"mcp2515.c"
	line	108
	global	__size_of_mcp2515_init
	__size_of_mcp2515_init	equ	__end_of_mcp2515_init-_mcp2515_init
	
_mcp2515_init:
;incstack = 0
	opt	stack 28
	line	113
	
l2752:
	movlw	low(040h)
	movwf	((c:4039)),c	;volatile
	line	114
	movlw	low(021h)
	movwf	((c:4038)),c	;volatile
	line	115
	
l2754:
	movff	(c:4041),(c:mcp2515_init@dummy)	;volatile
	line	116
	movlw	low(0)
	movwf	((c:mcp2515_init@dummy)),c
	line	118
	
l2756:
	bsf	((c:3987)),c,4	;volatile
	line	119
	
l2758:
	bcf	((c:3988)),c,6	;volatile
	line	120
	
l2760:
	bcf	((c:3988)),c,7	;volatile
	line	121
	
l2762:
	bcf	((c:3987)),c,6	;volatile
	line	122
	
l2764:
	bsf	((c:3979)),c,6	;volatile
	line	124
	goto	l394
	
l395:
	
l394:
	incfsz	((c:mcp2515_init@dummy)),c
	
	goto	l394
	
l396:
	line	127
	bcf	((c:3979)),c,6	;volatile
	line	128
	
l2766:
	movlw	(0C0h)&0ffh
	
	call	_spi_transmit
	line	129
	
l2768:
	bsf	((c:3979)),c,6	;volatile
	line	131
	goto	l397
	
l398:
	
l397:
	incfsz	((c:mcp2515_init@dummy)),c
	
	goto	l397
	goto	l2770
	
l399:
	line	133
	
l2770:
	movlw	low(085h)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(0Fh)&0ffh
	
	call	_mcp2515_write_register
	line	136
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(060h)&0ffh
	
	call	_mcp2515_write_register
	line	137
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(070h)&0ffh
	
	call	_mcp2515_write_register
	line	140
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(020h)&0ffh
	
	call	_mcp2515_write_register
	line	141
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(021h)&0ffh
	
	call	_mcp2515_write_register
	line	142
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(022h)&0ffh
	
	call	_mcp2515_write_register
	line	143
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(023h)&0ffh
	
	call	_mcp2515_write_register
	line	144
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(024h)&0ffh
	
	call	_mcp2515_write_register
	line	145
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(025h)&0ffh
	
	call	_mcp2515_write_register
	line	146
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(026h)&0ffh
	
	call	_mcp2515_write_register
	line	147
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(027h)&0ffh
	
	call	_mcp2515_write_register
	line	149
	movlw	low(03h)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(02Bh)&0ffh
	
	call	_mcp2515_write_register
	line	151
	
l400:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_mcp2515_init
	__end_of_mcp2515_init:
	signat	_mcp2515_init,88
	global	_mcp2515_write_register

;; *************** function _mcp2515_write_register *****************
;; Defined at:
;;		line 43 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    1[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         1       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_spi_transmit
;; This function is called by:
;;		_parseLine
;;		_mcp2515_init
;;		_mcp2515_set_SJA1000_filter_mask
;;		_mcp2515_set_SJA1000_filter_code
;;		_mcp2515_set_bittiming
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	line	43
global __ptext30
__ptext30:
psect	text30
	file	"mcp2515.c"
	line	43
	global	__size_of_mcp2515_write_register
	__size_of_mcp2515_write_register	equ	__end_of_mcp2515_write_register-_mcp2515_write_register
	
_mcp2515_write_register:
;incstack = 0
	opt	stack 28
	movwf	((c:mcp2515_write_register@address)),c
	line	46
	
l2396:
	bcf	((c:3979)),c,6	;volatile
	line	48
	
l2398:
	movlw	(02h)&0ffh
	
	call	_spi_transmit
	line	49
	movf	((c:mcp2515_write_register@address)),c,w
	
	call	_spi_transmit
	line	50
	movf	((c:mcp2515_write_register@data)),c,w
	
	call	_spi_transmit
	line	53
	
l2400:
	bsf	((c:3979)),c,6	;volatile
	line	54
	
l385:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_mcp2515_write_register
	__end_of_mcp2515_write_register:
	signat	_mcp2515_write_register,8312
	global	_spi_transmit

;; *************** function _spi_transmit *****************
;; Defined at:
;;		line 30 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_mcp2515_write_register
;;		_mcp2515_read_register
;;		_mcp2515_bit_modify
;;		_mcp2515_init
;;		_mcp2515_read_status
;;		_mcp2515_rx_status
;;		_mcp2515_send_message
;;		_mcp2515_receive_message
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	line	30
global __ptext31
__ptext31:
psect	text31
	file	"mcp2515.c"
	line	30
	global	__size_of_spi_transmit
	__size_of_spi_transmit	equ	__end_of_spi_transmit-_spi_transmit
	
_spi_transmit:
;incstack = 0
	opt	stack 27
	movwf	((c:spi_transmit@c)),c
	line	31
	
l2262:
	movff	(c:spi_transmit@c),(c:4041)	;volatile
	line	32
	goto	l379
	
l380:
	
l379:
	btfss	((c:4039)),c,0	;volatile
	goto	u1571
	goto	u1570
u1571:
	goto	l379
u1570:
	
l381:
	line	33
	movf	((c:4041)),c,w	;volatile
	line	34
	
l382:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_spi_transmit
	__end_of_spi_transmit:
	signat	_spi_transmit,4217
	global	_clock_process

;; *************** function _clock_process *****************
;; Defined at:
;;		line 41 in file "clock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	file	"clock.c"
	line	41
global __ptext32
__ptext32:
psect	text32
	file	"clock.c"
	line	41
	global	__size_of_clock_process
	__size_of_clock_process	equ	__end_of_clock_process-_clock_process
	
_clock_process:
;incstack = 0
	opt	stack 30
	line	42
	
l2778:
	movff	(c:_clock_lastclock),??_clock_process+0+0
	movff	(c:_clock_lastclock+1),??_clock_process+0+0+1
	comf	(??_clock_process+0+0),c
	comf	(??_clock_process+0+1),c
	infsnz	(??_clock_process+0+0),c
	incf	(??_clock_process+0+1),c
	movf	((c:4054)),c,w	;volatile
	addwf	(??_clock_process+0+0),c
	movf	((c:4054+1)),c,w	;volatile
	addwfc	(??_clock_process+0+1),c
		movlw	120
	subwf	 (??_clock_process+0+0),c,w
	movlw	1
	subwfb	(??_clock_process+0+1),c,w
	btfss	status,0
	goto	u2251
	goto	u2250

u2251:
	goto	l466
u2250:
	line	43
	
l2780:
	movlw	low(0177h)
	addwf	((c:_clock_lastclock)),c
	movlw	high(0177h)
	addwfc	((c:_clock_lastclock+1)),c
	line	44
	
l2782:
	infsnz	((c:_clock_msticker)),c
	incf	((c:_clock_msticker+1)),c
	line	45
	
l2784:
		movlw	97
	subwf	 ((c:_clock_msticker)),c,w
	movlw	234
	subwfb	((c:_clock_msticker+1)),c,w
	btfss	status,0
	goto	u2261
	goto	u2260

u2261:
	goto	l466
u2260:
	
l2786:
	movlw	high(0)
	movwf	((c:_clock_msticker+1)),c
	movlw	low(0)
	movwf	((c:_clock_msticker)),c
	goto	l466
	
l465:
	goto	l466
	line	46
	
l464:
	line	47
	
l466:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_clock_process
	__end_of_clock_process:
	signat	_clock_process,88
	global	_clock_init

;; *************** function _clock_init *****************
;; Defined at:
;;		line 30 in file "clock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_clock_reset
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	line	30
global __ptext33
__ptext33:
psect	text33
	file	"clock.c"
	line	30
	global	__size_of_clock_init
	__size_of_clock_init	equ	__end_of_clock_init-_clock_init
	
_clock_init:
;incstack = 0
	opt	stack 29
	line	32
	
l2772:
	call	_clock_reset	;wreg free
	line	35
	
l2774:
	movlw	low(084h)
	movwf	((c:4053)),c	;volatile
	line	36
	
l461:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_clock_init
	__end_of_clock_init:
	signat	_clock_init,88
	global	_clock_reset

;; *************** function _clock_reset *****************
;; Defined at:
;;		line 61 in file "clock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_parseLine
;;		_clock_init
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	line	61
global __ptext34
__ptext34:
psect	text34
	file	"clock.c"
	line	61
	global	__size_of_clock_reset
	__size_of_clock_reset	equ	__end_of_clock_reset-_clock_reset
	
_clock_reset:
;incstack = 0
	opt	stack 29
	line	62
	
l2496:
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	63
	movlw	high(0)
	movwf	((c:_clock_lastclock+1)),c
	movlw	low(0)
	movwf	((c:_clock_lastclock)),c
	line	64
	movlw	high(0)
	movwf	((c:_clock_msticker+1)),c
	movlw	low(0)
	movwf	((c:_clock_msticker)),c
	line	65
	
l472:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_clock_reset
	__end_of_clock_reset:
	signat	_clock_reset,88
	global	_clock_getMS

;; *************** function _clock_getMS *****************
;; Defined at:
;;		line 54 in file "clock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned short 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         2       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	line	54
global __ptext35
__ptext35:
psect	text35
	file	"clock.c"
	line	54
	global	__size_of_clock_getMS
	__size_of_clock_getMS	equ	__end_of_clock_getMS-_clock_getMS
	
_clock_getMS:
;incstack = 0
	opt	stack 30
	line	55
	
l2804:
	movff	(c:_clock_msticker),(c:?_clock_getMS)
	movff	(c:_clock_msticker+1),(c:?_clock_getMS+1)
	line	56
	
l469:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_clock_getMS
	__end_of_clock_getMS:
	signat	_clock_getMS,90
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
