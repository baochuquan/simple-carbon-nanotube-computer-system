这是我研究生期间做的一个项目——碳纳米管计算机。然而此项目暂时告一段落，后续的研究将不再以此为基础，但具有一定的参考价值。

# 项目背景
2013年，斯坦福大学研制出了世界上第一个碳纳米管计算机系统，该系统由178个碳纳米管晶体管（CNTFET，Carbon-nontube Field-effect-transistor）组成。这一个只包含一条```SUBNEG```指令（subtract and branch if negative）的单指令计算机系统。这个CNTFET计算机是一个试验性的成果，只能执行1位的操作。当然，也不存在显示器和键盘。

在摩尔定律即将失效的今天，基于硅的集成电路几乎已经到达其工艺的极限，此时集成电路产业迫切需要一种新型材料来打破产业的瓶颈。这样一款碳纳米管计算机的出现时极具里程碑意义的。因此，该研究成果的相关论文也被Nature所收录。

# 项目介绍
项目目标：实现一个相对完整的计算机系统，用户可以在该系统上运行自己编写的程序。当然，系统所使用的CPU则是使用碳纳米管的相关工艺制造而成的。

该系统所使用的CPU的指令系统和微结构由我和一个博士师弟设计，由另一团队进行物理实现。此外，我负责设计并实现该计算机系统的完整结构，包括软硬件协同设计与实现。

## 整体结构
如下图所示，该系统主要由以下三部分组成：  

![](http://chuquan-public-r-001.oss-cn-shanghai.aliyuncs.com/github-images/carboncore001.png?x-oss-process=image/resize,w_500)

整个系统由五大部分组成：
- Carbon Core:采用碳纳米管实现的 CPU。
- Coordinator:采用 FPGA 实现，其辅助 Carbon Core CPU 完成了指令和数
据存储，产生所需时钟，并完成与输入输出控制 CPU 异步通信等功能。
- External Controller:使用树莓派(Raspberry Pi)作为输入输出控制 CPU，
其上运行 Linux 操作系统。
- Monitor:显示器，用户获得系统信息的方式。
- Keyboard:键盘，用户输入命令的方式。


### Carbon Core

**指令系统**  
该系统的CPU以世界上第一个8位处理器Intel 8008的设计为参考，针对碳纳米管CPU制造技术特点进行了裁剪和优化。CPU的指令系统如下表所示：  

|助记符|指令编码|指令描述|
|:---|:---:|:---|
|MOV C|0000 0000|acc = C|
|MOV [C]|0000 0001|acc = DRAM[C]|
|MOVn|0000 0101|DRAM[C = acc|
|ADD C|0000 1000|acc = acc + C|
|ADD [C]|0000 1001|acc = acc + DRAM[C]|
|ADDn [C]|0000 1101|DRAM[C] = acc + DRAM[C]|
|SUB C|0001 0000|acc = acc - C|
|SUB [C]|0001 0001|acc = acc - DRAM[C]|
|SUBn [C]|0001 0101|DRAM[C] = acc - DRAM[C]|
|RSB C|0001 1000|acc = C - acc|
|RSB [C]|0001 1001|acc = DRAM[C] - acc|
|RSBn [C]|0001 1101|DRAM[C] = DRAM[C] - acc|
|DATASEG C|0010 1000|DATASEG = C |
|INSTSEG C|0010 1001|INSTSEG = C |
|JR C|0010 1100|PC = acc, INSTSEG = C|
|B C|0011 0000|PC = PC + C|
|BZ C|0011 0001|如果acc = 0，PC = PC + C|
|BNZ C|0011 0010|如果acc != 0，PC = PC + C|
|END|0011 1111|停机操作|

**微体系结构**  
如下图所示为该CPU的为体系结构。其中包括算术逻辑单元ALU、指令译码器DEC、程序计数器PC、分支判断逻辑等。CPU由两个同频不同象的时钟控制运行。  

![](http://chuquan-public-r-001.oss-cn-shanghai.aliyuncs.com/blog-images/carboncore005.png?x-oss-process=image/resize,w_500)

### Coordinator
光有CPU是无法运行程序的，因此，需要为其定制设计一个外围的辅助电路。如下图所示为辅助电路模块Coordinator的内部实现，主要包含了7大部件：  
- Clock Generator：时钟发生器，时钟源来自FPGA时钟源，向Decoder和Carbon Core CPU提供时钟。
- Decoder：辅助Carbon Core CPU进行译码、寻址、读写RAM。
- Main Controller：传递外部控制器的控制信号，从而可能告知Decoder和Carbon Core CPU；此外，在捕获到END指令后会向外部控制器发送程序运行完毕信号。
- IRAM Controller：控制Decoder对IRAM的读操作。
- DRAM Controller：控制Decoder对DRAM的读写操作。
- IRAM：一个包含256个双字节存储单元的RAM，用于存储指令，内部包含基于I2C的指令收发协议。
- DRAM：一个包含256个单字节存储单元的RAM，用于存储数据，内部包含基于I2C的数据收发协议。

![](http://chuquan-public-r-001.oss-cn-shanghai.aliyuncs.com/blog-images/carboncore006.png?x-oss-process=image/resize,w_500)

### Raspberry
项目使用树莓派作为外部控制器，在树莓派上进行编程，目前只能进行汇编编程。当然，程序需要遵循Carbon Core CPU的指令系统。使用我们编写的一个简单的汇编器进行编译，通过控制程序即可让Carbon Core CPU执行你所编写的程序。

```raspberry-host/mainController.cpp```文件包含整个系统软件控制程序的入口函数。

**编译**  
直接运行```rasberry-host```目录下的```build.sh```脚本即可编译控制程序：  
```bash
$ ./build.sh
```

**运行**  
如果想要运行整个系统，则需要搭建相关的电路系统，并使用FPGA实现```sparntan6-fpga```目录中的硬件设计。项目还提供了碳纳米管CPU的硬件设计，普通用户虽然无法使用碳纳米管来实现该CPU，但是可以使用FPGA来实现。当然，还需要树莓派、显示器、键盘才能让整个系统运行起来。

当系统搭建完毕之后，即可运行以下命令：  
```bash
$ sudo ./mainController > run.log
```

由于系统的运行涉及到树莓派GPIO的初始化做操，因此需要root权限才能正确运行该系统。另外，运行生成的```run.log```文件记录系统执行程序时的相关信息。

## 其他补充
### 电平转换
由于Carbon Core的工作电压是2V，而我们的树莓派、FPGA的工作电压均为5V，所以在协同工作时需要加入电平转换模块。如下图所示，便是我们设计的电平转换电路。

![](http://chuquan-public-r-001.oss-cn-shanghai.aliyuncs.com/blog-images/carboncore009.png?x-oss-process=image/resize,w_500)

### 系统展示
![](http://chuquan-public-r-001.oss-cn-shanghai.aliyuncs.com/blog-images/carboncore007.png?x-oss-process=image/resize,w_500)

![](http://chuquan-public-r-001.oss-cn-shanghai.aliyuncs.com/blog-images/carboncore008.png?x-oss-process=image/resize,w_500)

### 碳纳米管CPU
![](http://chuquan-public-r-001.oss-cn-shanghai.aliyuncs.com/blog-images/carboncore010.png?x-oss-process=image/resize,w_500)

![](http://chuquan-public-r-001.oss-cn-shanghai.aliyuncs.com/blog-images/carboncore011.png?x-oss-process=image/resize,w_500)
