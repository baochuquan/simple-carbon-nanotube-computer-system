# Carbon Core Computer System
---
Author: Chuquan Bao
Mail: baochuquan@163.com
Site: chuquan.me
Date  : 2016-10-14

## What is Carbon Core Computer System ?
In 2013, the first carbon nanotube computer was born in Stanford which was composed of 178 CNTFETs(carbon nanotube field-effect-transistors). It was a one-instruction-set computer, implementing the SUBNEG(subtract and branch if negative). This CNTFET computer was a experimental works that it could only do 1 bit operations. It has neither monitor nor keyboard.   
The target of this project is to implement a complete computer system that user can run some task programmed by them self, in which, the CPU is implemented with carbon nanotube.  

### Carbon Core(CPU)
It is implemented with CNT actually, but it is implemented with FPGA in this repos.  
Carbon Core is a very simple CPU, it has an accumulator--acc and an 8 bit adder as its ALU. We designed an 8 bit simple ISA for it, as shown in the table below:  

| Instruction Encoding | Instruction Format | Meaning |
| :--- | :--- | :--- |
| 00_0000_00_xxxx_xxxx | MOV C |  | 
| 00_0000_01_xxxx_xxxx | MOV [C] |  | 
| 00_0001_01_xxxx_xxxx | MOVn [C] |  | 
|||
| 00_0010_00_xxxx_xxxx | ADD D |  | 
| 00_0010_01_xxxx_xxxx | ADD [C] |  | 
| 00_0011_01_xxxx_xxxx | ADDn [C] |  | 
|||
| 00_0100_00_xxxx_xxxx | SUB C |  | 
| 00_0100_01_xxxx_xxxx | SUB [C] |  | 
| 00_0101_01_xxxx_xxxx | SUBn [C] |  | 
|||
| 00_0110_00_xxxx_xxxx | RSB C |  | 
| 00_0110_01_xxxx_xxxx | RSB [C] |  | 
| 00_0111_01_xxxx_xxxx | RSBn [C] |  | 
|||
| 00_1010_00_xxxx_xxxx | DATASEG C |  | 
| 00_1010_01_xxxx_xxxx | INSTSEG C |  | 
|||
| 00_1011_00_xxxx_xxxx | JR C |  | 
| 00_1100_00_xxxx_xxxx | B C |  | 
| 00_1100_01_xxxx_xxxx | BZ C |  | 
| 00_1100_10_xxxx_xxxx | BNZ C |  | 
|||
| 00_1111_11_xxxx_xxxx | END |  | 


## Compiler
---
Compiler is implemented by a python program named **compiler.py**  
### How to use Compiler.py
The linux compiler command like the follow command: 
 
> python ./compiler.py *resourcefilename* *[targetfilename]*  

The command above will generate a target file named **a.out** by default. And the content of target file is consisted of binary data which present the compiled instructions.  

## Main Controller  
---
The file named **mainController.cpp** is the main file which include the entry function of the whole program.  

### How to compile the project
The bash file named **build.sh** is the build bash script. Follow the command below to build this project:  

> ./build.sh  

The command above will generate a exacutive file named **mainController**.  

### How to run this program
Following the command below:  

> sudo ./mainController  

Because of the GPIO initialization operation, you need a root privilege to run this program correctly.
