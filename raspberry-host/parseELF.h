#ifndef __PARSEELF_H__
#define __PARSEELF_H__

#include <vector>

typedef unsigned short OneInst;

using namespace std;

void parseDataFile(char* filename, vector<char>& dataAdd, vector<char>& dataArr);
void parseTargetFile(char* filename, vector<OneInst>& instArr);


#endif


