#ifndef __IIC_H__
#define __IIC_H__


void DSCL_Direct();
void ISCL_Direct();
void IIC_Stop();

int IIC_INST_ReadByte(int addr);
int IIC_INST_WriteByte(int addr, int value);
int IIC_DATA_ReadByte(int addr);
int IIC_DATA_WriteByte(int addr, int value);

#endif
