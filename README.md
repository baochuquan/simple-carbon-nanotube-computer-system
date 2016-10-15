# Carbon Core Computer System
---
Author: Chuquan Bao  
Mail: baochuquan@163.com  
Site: [chuquan.me](http://chuquan.me)  
Date  : 2016-10-14  

## What is Carbon Core Computer System ?
In 2013, the first carbon nanotube computer was born in Stanford which was composed of 178 CNTFETs(carbon nanotube field-effect-transistors). It was a one-instruction-set computer, implementing the SUBNEG(subtract and branch if negative). This CNTFET computer was a experimental works that it could only do 1 bit operations. It has neither monitor nor keyboard.   
The target of this project is to implement a complete computer system that user can run some task programmed by them self, in which, the CPU is implemented with carbon nanotube.  

### Frame Work
This computer system was composed of 3 parts: Carbon Core, Coordinator, Raspberry. As shown in the figure below.  
![](http://chuquan-public-r-001.oss-cn-shanghai.aliyuncs.com/github-images/carboncore001.png)

### Carbon Core(CPU)
It is implemented with CNT actually, but it is implemented with FPGA in this repos.  
The figure below shows the interface of Carbon Core.  
![](http://chuquan-public-r-001.oss-cn-shanghai.aliyuncs.com/github-images/carboncore002.png)

Carbon Core is a very simple CPU, it has an accumulator--acc and an 8 bit adder as its ALU. We designed an 8 bit simple ISA for it, as shown in the table below:  

| Instruction Encoding | Instruction Format | Input | Output |
| :--- | :--- | :--- | :--- |
| 00_0000_00_xxxx_xxxx | MOV C | DI = C | DO: -- | 
| 00_0000_01_xxxx_xxxx | MOV [C] | DI = DRAM[C] | DO: -- | 
| 00_0001_01_xxxx_xxxx | MOVn [C] | DI = -- | DO: D_addr = C, DRAM[C] = DO, Write DRAM | 
||||
| 00_0010_00_xxxx_xxxx | ADD D | DI = C | DO: -- |
| 00_0010_01_xxxx_xxxx | ADD [C] | DI = DRAM[C] | DO: -- |
| 00_0011_01_xxxx_xxxx | ADDn [C] | DI = DRAM[C] | DO: D_addr = C, DRAM[C] = DO, Write DRAM |
||||
| 00_0100_00_xxxx_xxxx | SUB C | DI = C | DO: -- |
| 00_0100_01_xxxx_xxxx | SUB [C] | DI = DRAM[C] | DO: -- |
| 00_0101_01_xxxx_xxxx | SUBn [C] | DI = DRAM[C] | DO: D_addr = C, DRAM[C] = DO, Write DRAM |
||||
| 00_0110_00_xxxx_xxxx | RSB C | DI = C | DO: -- |
| 00_0110_01_xxxx_xxxx | RSB [C] | DI = DRAM[C] | DO: -- |
| 00_0111_01_xxxx_xxxx | RSBn [C] | DI = DRAM[C] | DO: D_addr = C, DRAM[C] = DO, Write DRAM |
||||
| 00_1010_00_xxxx_xxxx | DATASEG C | DI = -- | DO: -- , DATASEG = C|
| 00_1010_01_xxxx_xxxx | INSTSEG C | DI = -- | DO: -- , INSTSEG = C|
||||
| 00_1011_00_xxxx_xxxx | JR C | DI = -- | DO: -- |
| 00_1100_00_xxxx_xxxx | B C | DI = --(C) | DO: -- |
| 00_1100_01_xxxx_xxxx | BZ C | DI = --(C) | DO: -- |
| 00_1100_10_xxxx_xxxx | BNZ C | DI = --(C) | DO: -- |
||||
| 00_1111_11_xxxx_xxxx | END |  |  |  

**Note**
(1) The INSTSEG and DATASEG is not invalid in this version. 
(2) Instruction END must exists in the end of every program.

### Coordinator
Carbon Core is a very simple CPU, to some extent you can consider it as an ALU with PC. So it need data RAM, instruction RAM, and a supplemental decoder. Therefore, Coordinator was created here. The figure below shows the interface of Coordinator crudely, the left interfaces connect with Carbon Core, while the right connect with Raspberry.  
![](http://chuquan-public-r-001.oss-cn-shanghai.aliyuncs.com/github-images/carboncore003.png)  

Coordinator contains a 8 bit data RAM with 256 address space, and a 16 bit instruction RAM with 256 address space, both of these has its own RAM controller.  In addition, it has an supplemental decoder and a controller. What's more, it provide a clock generator that generates 4 clock with same frequency bu different phase, two of these are provided to Carbon Core, and the others are for decoder.  The figure below shown more detail about Coordinator.  
![](http://chuquan-public-r-001.oss-cn-shanghai.aliyuncs.com/github-images/carboncore004.png)  


## How to use test this system ?

## Hardware 
### FPGA
My FPGA development borad has about 80 IO extension interface, with Xilinx spartan-6 FPGA chip. See my constrains file in *spartan6-fpga/myucf.ucf*, it can be a reference if you use different FPGA board.  

### Raspberry
What the host I used is Raspberry Pi Model B+ V1.2, this [link](http://pinout.xyz/) define the Raspberry Pinout. The table below shows how I define the Raspberry ports.

| Port name | BCM | wiring Pi pin |
| :--- | :--- | :--- |
| IICING | BCM26 | 25 |
| CACK | BCM19 | 24 |
| RESET | BCM13 | 23 |
| EN | BCM6 | 22 |
| DSCL | BCM5 | 21 |
| ISCL | BCM16 | 27 |
| DSDA | BCM17 | 0 |
| ISDA | BCM27 | 2 |

After you loading the bit file to your FPGA and connecting the wires, you need to know how to compile your assembly program.

## Compiler
Compiler here is implemented by a python program named **compiler.py**  
### How to use Compiler.py
The linux compiler command like the follow command:   

```bash 
python ./compiler.py *resourcefilename* *[targetfilename]*  
```

For example, the **testbench03** is a assembly test program, let's compile it.  
```bash
python ./compiler.py testbench03 test03
```

The command above will generate a target file named **a.out** by default. And the content of target file is consisted of binary data which present the compiled instructions. 

## How to provide origin data ?
You need to create a new file to provide your own data, but you need follow the predefine format. For example:
```
@0x00 01
``` 
The data immediately following **@** is the address you want to write, and the second data in the same line is data you want to provide. The address and dat can be represent with decimal or hexadecimal, but they should be in the range of 0~256.  

See *raspberry-host/test03.dat*, it is an example data file.

## Main Controller  
The file named **mainController.cpp** is the main file which include the entry function of the whole program.  

### How to compile the project
The bash file named **build.sh** is the build bash script. Follow the command below to build this project:  
```bash
./build.sh  
```

The command above will generate a exacutive file named **mainController**.  

### How to run this program
Following the command below:  
```bash
sudo ./mainController > run.log
```

Because of the GPIO initialization operation, you need a root privilege to run this program correctly. The run log information are written in **run.log**.
