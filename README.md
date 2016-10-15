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
<div align=center><img src="http://chuquan-public-r-001.oss-cn-shanghai.aliyuncs.com/github-images/carboncore001.png"/></div>

### Carbon Core(CPU)
It is implemented with CNT actually, but it is implemented with FPGA in this repos.  
The figure below shows the interface of Carbon Core.  
<div align="center"><img src="http://chuquan-public-r-001.oss-cn-shanghai.aliyuncs.com/github-images/carboncore002.png"/></div>

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

**Note**: The INSTSEG and DATASEG is not invalid in this version. 

### Coordinator
Carbon Core is a very simple CPU, to some extent you can consider it as an ALU with PC. So it need data RAM, instruction RAM, and a supplemental decoder. Therefore, Coordinator was created here. The figure below shows the interface of Coordinator crudely, the left interfaces connect with Carbon Core, while the right connect with Raspberry.  
<div align="center"><img src="http://chuquan-public-r-001.oss-cn-shanghai.aliyuncs.com/github-images/carboncore003.png"/></div>  
Coordinator contains a 8 bit data RAM with 256 address space, and a 16 bit instruction RAM with 256 address space, both of these has its own RAM controller.  In addition, it has an supplemental decoder and a controller. What's more, it provide a clock generator that generates 4 clock with same frequency bu different phase, two of these are provided to Carbon Core, and the others are for decoder.  The figure below shown more detail about Coordinator.  
<div align="center"><img src="http://chuquan-public-r-001.oss-cn-shanghai.aliyuncs.com/github-images/carboncore004.png"/></div>


## How to use test this system ?

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
