#include <wiringPi.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <iostream>
#include <vector>

#include "i2c.h"
#include "parseELF.h"

#define EN	22
#define RESET	23
#define CACK 	24
#define IICING 	25

using namespace std;

bool cack_flag = false;

void interruptHandler(void){
    if(cack_flag == true)
        return ;
    else 
       cack_flag = true;
    cout << "++++++++++++++++++++++" << endl;
    cout << "Receive CACK signal!!!" << endl;
    cout << "++++++++++++++++++++++" << endl;
  
    // To disable arbon Core
    cout << "Set En = 0 to disable Carbon core." << endl;
    digitalWrite( EN, LOW );
    cout << "Set RESET = 1 to disable clock generator." << endl;
    digitalWrite( RESET, HIGH );
    
    // To get the result from DATA memoryA
    cout << "Set IICING = 1 to get the result." << endl;
    digitalWrite( IICING, HIGH );
    cout << "======================" << endl;
    cout << "Get Result from DRAM." << endl;
    cout << "======================" << endl;
    int i;
    for(i = 0; i < 10; i++){
        int readData = IIC_DATA_ReadByte( i );
    }
    cout << "======================" << endl;
    cout << "Get Result from IRAM." << endl;
    cout << "======================" << endl;
    for(i = 0; i < 10; i++){
        int readData = IIC_INST_ReadByte( i );
    }
}

/******************************************************/
// Entry Function
/******************************************************/
int main(){
    char filename01[50];
    char filename02[50];
    vector<OneInst> instArr;
    vector<char> dataArr;
    vector<char> dataAdd;
    int instNum, dataNum;
    int readInst, readData;
    int i, j;
    
    // To setup Pi.
    if(wiringPiSetup() == -1){
        printf("Error");
        exit(1);
    }

    // To check ELF parsing. 
    cout << "Please input the name of a target binary file: ";
    cin >> filename01;
    cout << "Please input the name of a data file: ";
    cin >> filename02;
    parseTargetFile(filename01, instArr);
    parseDataFile(filename02, dataAdd, dataArr);
    instNum = instArr.size();
    dataNum = dataArr.size();

    cout << "instNum length: " << instNum << endl;
    cout << "dataNum length: " << dataNum << endl;
    cout << "======================" << endl;
    cout << "======================" << endl;
    
    // To set CACK port.
    cout << "Set CACK = input." << endl;
    delay( 10 );
    pinMode( CACK, INPUT );

    // To register interrupt to deal with END instruction 
    cout << "Set CACK callback function." << endl;
    wiringPiISR(CACK, INT_EDGE_RISING, &interruptHandler);

    // Set EN = 0 to disable Carbon Core & Decoder
    cout << "Set EN to launch carbon core." << endl;
    pinMode( EN, OUTPUT );
    digitalWrite( EN, LOW );

    // To enable clk generator
    cout << "Set RESET = 0 to launch clock generator." << endl;
    pinMode( RESET, OUTPUT );
    digitalWrite( RESET, LOW );

    // To begin IIC communicating.
    cout << "Set IICING = 1 to allow iic communicate." << endl; 
    pinMode( IICING, OUTPUT );
    digitalWrite( IICING, HIGH );

    // To setup IIC protocol.
    cout << "Set ISCL & DSCL output." << endl;
    ISCL_Direct();
    DSCL_Direct();

    // To Write Data. 
    cout << "======================" << endl;
    cout << "Writing Data." << endl;
    for(i = 0; i < dataNum; i++){
        do {
            IIC_DATA_WriteByte( dataAdd[i], dataArr[i] );
            readData = IIC_DATA_ReadByte( dataAdd[i] );
        } while(readData != dataArr[i]);
        if(readData == dataArr[i]){
            cout << "-----------" << endl;
        }
    }
    delay( 10 );

    // To Write Instructions.
    cout << "======================" << endl;
    cout << "Writing Instructions." << endl;
    for(i = 0; i < instNum; i++){
        do {
            IIC_INST_WriteByte( i, instArr[i] );
            readInst = IIC_INST_ReadByte( i );
        } while(readInst != instArr[i]);
        if(readInst == instArr[i]){
            cout << "-----------" << endl;
        }
    }
    delay( 10 );

    cout << "======================" << endl;
    



    // Clear IICING to close iic communication. 
    cout <<  "Set IICING = 0 to close iic communication." << endl; 
    digitalWrite( IICING, LOW );

    // To enable Carbon Core & Decoder
    cout << "Set EN = 1 to launch carbon core." << endl;
    pinMode( EN, OUTPUT );
    digitalWrite( EN, HIGH );

    // To waitting    
    while(1){

    }

     return 0;
}
