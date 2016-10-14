#include "i2c.h"
#include <wiringPi.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <iostream>

#define DSCL 	21 // BCM 16
#define ISCL 	27 // BCM 16
#define DSDA 	0  // BCM 17
#define ISDA 	2  // BCM 27

#define OUT 	1
#define IN  	0
#define DATARAM_DEV_ADDR 0xA2
#define INSTRAM_DEV_ADDR 0xA0

using namespace std;

void DSCL_Direct(){
    pinMode( DSCL, OUTPUT );
}
void ISCL_Direct(){
    pinMode( ISCL, OUTPUT );
}

/******************************************************/
// SCL HIGH or LOW
/******************************************************/
void DSCL_High(){
    digitalWrite( DSCL, HIGH );
}
void DSCL_Low(){
    digitalWrite( DSCL, LOW );
}
void ISCL_High(){
    digitalWrite( ISCL, HIGH );
}
void ISCL_Low(){
    digitalWrite( ISCL, LOW );
}

/******************************************************/
// DSDA & ISDA Direct
/******************************************************/
void DSDA_Direct(int direct){// IN or OUT
    if(direct){
        pinMode( DSDA, OUTPUT );
    } else {
        pinMode( DSDA, INPUT );
    }
}
void ISDA_Direct(int direct){// IN or OUT
    if(direct){
        pinMode( ISDA, OUTPUT );
    } else {
        pinMode( ISDA, INPUT );
    }
}

/******************************************************/
// DSDA & ISDA HIGH or LOW
/******************************************************/
void DSDA_High(){
    digitalWrite( DSDA, HIGH );
}
void DSDA_Low(){
    digitalWrite( DSDA, LOW );
}

void ISDA_High(){
    digitalWrite( ISDA, HIGH );
}
void ISDA_Low(){
    digitalWrite( ISDA, LOW );
}

/******************************************************/
// DSDA & ISDA WriteBit or ReadBit
/******************************************************/
void DSDA_WriteBit(int bit){
    DSDA_Direct( OUT );
    if(bit){
        DSDA_High();
    } else {
        DSDA_Low();
    }
    delay(5);
    DSCL_High();
    delay(5);
    DSCL_Low();
    delay(5);
}
int DSDA_ReadBit(){
    DSDA_Direct( IN );
    DSCL_Low();
    delay(5);
    DSCL_High();
    delay(5);
    return digitalRead( DSDA );
}

void ISDA_WriteBit(int bit){
    ISDA_Direct( OUT );
    if(bit){
        ISDA_High();
    } else {
        ISDA_Low();
    }
    delay(5);
    ISCL_High();
    delay(5);
    ISCL_Low();
    delay(5);
}
int ISDA_ReadBit(){
    ISDA_Direct( IN );
    ISCL_Low();
    delay(5);
    ISCL_High();
    delay(5);
    return digitalRead( ISDA );
}

/******************************************************/
// DSDA & ISDA WriteByte or ReadByte
/******************************************************/
void DSDA_WriteByte(char value){
    int i;
    DSDA_Direct( OUT );
    for(i = 7; i >= 0; i--){
         DSDA_WriteBit( (value >> i) & 1 );
    }
}
int DSDA_ReadByte(){
    int res = 0;
    int i;
    DSDA_Direct( IN );
    for(i = 7; i >= 0; i--){
        res <<= 1;
        res |= DSDA_ReadBit();
    }
    DSCL_Low();
    return res;
}

void ISDA_WriteByte(char value){
    int i;
    ISDA_Direct( OUT );
    for(i = 7; i >= 0; i--){
         ISDA_WriteBit( (value >> i) & 1 );
    }
}
int ISDA_ReadByte(){
    int res = 0;
    int i;
    ISDA_Direct( IN );
    for(i = 7; i >= 0; i--){
        res <<= 1;
        res |= ISDA_ReadBit();
    }
    ISCL_Low();
    return res;
}

/******************************************************/
// DSDA & ISDA WriteDoubleByte or ReadDoubleByte
/******************************************************/
void DSDA_WriteDoubleByte(int value){
    int i;
    DSDA_Direct( OUT );
    for(i = 15; i >= 0; i--){
         DSDA_WriteBit( (value >> i) & 1 );
    }
}
int DSDA_ReadDoubleByte(){
    int res = 0;
    int i;
    DSDA_Direct( IN );
    for(i = 15; i >= 0; i--){
        res <<= 1;
        res |= DSDA_ReadBit();
    }
    DSCL_Low();
    return res;
}
void ISDA_WriteDoubleByte(int value){
    int i;
    ISDA_Direct( OUT );
    for(i = 15; i >= 0; i--){
         ISDA_WriteBit( (value >> i) & 1 );
    }
}
int ISDA_ReadDoubleByte(){
    int res = 0;
    int i;
    ISDA_Direct( IN );
    for(i = 15; i >= 0; i--){
        res <<= 1;
        res |= ISDA_ReadBit();
    }
    ISCL_Low();
    return res;
}
/******************************************************/
// IIC basic functions
/******************************************************/
void IIC_Start(int sda){
    if(sda == DSDA){
        DSDA_Direct( OUT );

        DSDA_High();
    	delay(5);
        DSCL_High();
    	delay(5);
        DSDA_Low();
    	delay(5);
        DSCL_Low();
    	delay(5);
    } else {
        ISDA_Direct( OUT );

        ISDA_High();
    	delay(5);
        ISCL_High();
    	delay(5);
        ISDA_Low();
    	delay(5);
        ISCL_Low();
    	delay(5);
    }
}
void IIC_Stop(int sda){
    if(sda == DSDA){
        DSDA_Direct( OUT );

        DSCL_Low();
    	delay(5);
        DSDA_Low();
    	delay(5);
        DSCL_High();
    	delay(5);
        DSDA_High();
    	delay(5);
    } else {
        ISDA_Direct( OUT );

        ISCL_Low();
    	delay(5);
        ISDA_Low();
    	delay(5);
        ISCL_High();
    	delay(5);
        ISDA_High();
    	delay(5);
    }
}
void IIC_SendACK(int sda){ //ack = 0
    if(sda == DSDA){
        DSDA_Direct( OUT );

        DSDA_Low();
    	delay(5);
        DSCL_High();
    	delay(5);
        DSCL_Low();
    	delay(5);
    } else {
        ISDA_Direct( OUT );

        ISDA_Low();
    	delay(5);
        ISCL_High();
    	delay(5);
        ISCL_Low();
    	delay(5);
    }
}
void IIC_SendNACK(int sda){
    if(sda == DSDA){
        DSDA_Direct( OUT );

        DSDA_High();
    	delay(5);
        DSCL_High();
    	delay(5);
        DSCL_Low();
    	delay(5);
    } else {
        ISDA_Direct( OUT );

        ISDA_High();
    	delay(5);
        ISCL_High();
    	delay(5);
        ISCL_Low();
    	delay(5);
    }
}
int IIC_GetACK(int sda){
    if(sda == DSDA){
        DSDA_Direct( IN );

        DSCL_High();
    	delay(5);
        if(digitalRead( DSDA )){
            DSCL_Low();
            return 0;
        } else {
            DSCL_Low();
            return 1;
        }
    } else {
        ISDA_Direct( IN );

        ISCL_High();
    	delay(5);
        if(digitalRead( ISDA )){
            ISCL_Low();
            return 0;
        } else {
            ISCL_Low();
            return 1;
        }

    }
}

/******************************************************/
// IIC INST ReadByte & WriteByte
/******************************************************/
int IIC_INST_ReadByte(int addr){
    int res;
    while(1){
        IIC_Start(ISDA);
        ISDA_WriteByte( INSTRAM_DEV_ADDR & 0xFE );
        if(!IIC_GetACK(ISDA)){
            cout << "                                        ";
            cout << "Write INSTRAM_DEV_ADDR GetACK Error.  R1" << endl;
            IIC_Stop(ISDA);
            continue; }

        ISDA_WriteByte( addr );
        if(!IIC_GetACK(ISDA)){
            cout << "                                        ";
            cout << "Write addr GetACK Error.      R2" << endl;
            IIC_Stop(ISDA);
            continue; }

        IIC_Start(ISDA);
        ISDA_WriteByte( INSTRAM_DEV_ADDR | 1 );
        if(!IIC_GetACK(ISDA)){
            cout << "                                        ";
            cout << "Write INSTRAM_DEV_ADDR GetACK Error.  R3" << endl;
            IIC_Stop(ISDA);
            continue; }

        res = ISDA_ReadDoubleByte();
        IIC_SendNACK(ISDA);

        IIC_Stop(ISDA);
        cout << "INST Read :   0x" << hex << addr << " => 0x" << res << endl;
        break;
    }
    return res;
}

int IIC_INST_WriteByte(int addr, int value){
    while(1){
        IIC_Start(ISDA);
        ISDA_WriteByte( INSTRAM_DEV_ADDR & 0xFE );
        if(!IIC_GetACK(ISDA)){
            cout << "                                        ";
            cout << "Write INSTRAM_DEV_ADDR GetACK Error.  W1" << endl;
            IIC_Stop(ISDA);
            continue; }

        ISDA_WriteByte( addr );
        if(!IIC_GetACK(ISDA)){
            cout << "                                        ";
            cout << "Write addr GetACK Error.      W2" << endl;
            IIC_Stop(ISDA);
            continue; }

        ISDA_WriteDoubleByte( value );
        if(!IIC_GetACK(ISDA)){
            cout << "                                        ";
            cout << "Write value GetACK Error.     W3" << endl;
            IIC_Stop(ISDA);
            continue; }

        IIC_Stop(ISDA);
        cout << "INST Write:   0x" << hex << addr << " => 0x" << value << endl;
        break;
    }
    return 0;
}

/******************************************************/
// IIC DATA ReadByte & WriteByte
/******************************************************/
int IIC_DATA_ReadByte(int addr){
    int res;
    while(1){
        IIC_Start(DSDA);
        DSDA_WriteByte( DATARAM_DEV_ADDR & 0xFE );
        if(!IIC_GetACK(DSDA)){
            cout << "                                        ";
            cout << "Write DATARAM_DEV_ADDR GetACK Error.  R1" << endl;
	    IIC_Stop(DSDA);
            continue; }

        DSDA_WriteByte( addr );
        if(!IIC_GetACK(DSDA)){
            cout << "                                        ";
            cout << "Write addr GetACK Error.      R2" << endl;
	    IIC_Stop(DSDA);
            continue; }

        IIC_Start(DSDA);
        DSDA_WriteByte( DATARAM_DEV_ADDR | 1 );

        if(!IIC_GetACK(DSDA)){
            cout << "                                        ";
            cout << "Write DATARAM_DEV_ADDR GetACK Error.  R3" << endl;
	    IIC_Stop(DSDA);
            continue; }

        res = DSDA_ReadByte();
        IIC_SendNACK(DSDA);

        IIC_Stop(DSDA);
        cout << "DATA Read :   0x" << hex << addr << " => 0x" << res << endl;
        break;
    }
    return res;
}

int IIC_DATA_WriteByte(int addr, int value){
    while(1){
        IIC_Start(DSDA);
        DSDA_WriteByte( DATARAM_DEV_ADDR & 0xFE );
        if(!IIC_GetACK(DSDA)){
            cout << "                                        ";
            cout << "Write DATARAM_DEV_ADDR GetACK Error.  W1" << endl;
	    IIC_Stop(DSDA);
            continue; }

        DSDA_WriteByte( addr );
        if(!IIC_GetACK(DSDA)){
            cout << "                                        ";
            cout << "Write addr GetACK Error.      W2" << endl;
	    IIC_Stop(DSDA);
            continue; }

        DSDA_WriteByte( value );
        if(!IIC_GetACK(DSDA)){
            cout << "                                        ";
            cout << "Write value GetACK Error.     W3" << endl;
	    IIC_Stop(DSDA);
            continue; }

        IIC_Stop(DSDA);
        cout << "DATA Write:   0x" << hex << addr << " => 0x" << value << endl;
        break;
    }
    return 0;
}

