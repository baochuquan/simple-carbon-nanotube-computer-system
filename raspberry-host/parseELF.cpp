#include "parseELF.h"
#include <iostream>
#include <vector>
#include <iostream>
#include <fstream>

using namespace std;

char getValue(char c){
    if('0' <= c && c <= '9')
        return c - '0';
    if('a' <= c && c <= 'z')
        return c - 'a';
    if('A' <= c && c <= 'Z')
        return c - 'A';
    return 0;
}

char getNum(string str){
    char data;
    int n = str.length();
    if(n >= 2 && str.substr(0, 2) == "0x")
        return getValue(str[2]) * 16 + getValue(str[3]);
    if(0 <= n && n <= 3)
        return getValue(str[0]) * 10 + getValue(str[1]);
    return 0;
}

void parseDataFile(char* filename, vector<char>& dataAdd, vector<char>& dataArr){
    ifstream fin(filename);
    cout << endl;
    cout << "parse Data, getting ADDRESS & DATA ...." << endl;

    cout << "Data" << endl;
    cout << "======================" << endl;
    while( fin ){
        int len;
        int addr, data;
        string str;
        
        // Address
        fin >> str;
        len = str.length();
        if( len >= 1 && str[0] == '@' ){
            if( len == 5 && str.substr(1, 2) == "0x" ){
                addr = getNum( str.substr(1, 4) );
            } else {
                addr = getNum( str.substr(1, len-1) );
            }
            cout << "Address: " << addr;
            dataAdd.push_back( addr );
        }

        // Data
        fin >> str;
        len = str.length();
        if( len >= 1 && str[0] != '@' ){
            if( len == 4 && str.substr(0, 2) == "0x" ){
                data = getNum( str );
            } else {
                data = getNum( str );
            }
            cout << "    Data: " << data << endl;
            dataArr.push_back( data );
        }
    }

    cout << "======================" << endl;
}

void parseTargetFile(char* filename, vector<OneInst>& instArr){
    ifstream fin(filename, ios::binary);
    cout << endl;
    cout << "parse ELF, getting INSTRUCTIONS ...." << endl;
    
    OneInst inst;
    int i, length, instNum;

    // To get the length of file and the num of instructions.
    fin.seekg(0, fin.end);
    length = fin.tellg();
    fin.seekg(0, fin.beg);
    instNum = length / 2;  // bytes/2
    cout << "Instruction num: " << instNum << endl;
    cout << "======================" << endl;

    // To put the instructions into a vector, and print them.
    instArr.push_back(0);
    cout << "PC:0" << "       Inst: 0000" << endl;
    for(i = 0; i < instNum; i++){
        fin.read((char*)&inst, sizeof(OneInst));
        cout << "PC:" << i+1 << "       Inst: "<< hex << inst << endl;
        instArr.push_back(inst);
    }
    cout << "======================" << endl;
}

