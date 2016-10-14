# Carbon Core Computer System
---
Author: Chuquan Bao
Date  : 2016-09-22

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
