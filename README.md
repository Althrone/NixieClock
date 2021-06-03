# Nixie Clock Firmware

使用STM8S003F3P3控制的辉光管时钟，编程、编译、烧录软件均开源。

Editor: VSCode</br>
Compiler: SDCC</br>
Programmer: stm8flash</br>
Debugger: OpenOCD, STM8 Debugger for vscode</br>
EDA: KiCad

这个工程最主要的目的是对stm8芯片进行轻量化开发，现在多数初学者开发单片机都是不同芯片装不同IDE，体积臃肿，而且工作后如果从事这一行有可能被查水表。使用该方法可以使得程序全部在VSCode上编辑，只需要安装不同的编译器、烧录器和调试器即可。

VSCode不说了，最强IDE(雾。

SDCC支持多种8位机的编译。[SDCC官网](http://sdcc.sourceforge.net/)`←鼠标中键点击以打开新窗口，下同`

stm8flash在GitHub可以下载，但是在Windows环境下使用MinGW64对烧录器进行编译的时候需要修改stm8flash的源代码才能进行编译，我已经在工程中放出修改后的程序，Linux环境下直接make就行了。你也可以自行下载源代码，然后进行更改。[stm8flash下载地址](https://github.com/vdudouyt/stm8flash)

调试器使用OpenOCD和VSCode上的STM8 Debugger插件，注意这里的OpenOCD是在www.gnutoolchains.com这个网站下载的，而不是sourceforge.net下载的软件包。[OpenOCD下载地址](https://www.gnutoolchains.com/arm-eabi/openocd/)

注1：GitHub文件下载后文件名都会变成xxxx-master，其实它是代表不同分支，不喜欢的话可以把后缀删掉。（前提是如果你下了其他分支你能搞清楚区别）

注2：stm的单片机开发主要有寄存器开发、标准库开发和hal库开发三种方法，现在st主推hal库开发，因为STM32CubeMX是他家现在主推的产品。~~这个工程主要以寄存器开发为主，因为是为一个闹钟的项目服务的，如有必要我也会在工程中添加标准库和hal库。~~ SB寄存器开发，我换标准库了。

注3：这个工程很可能只针对s003和s103来编写，因为我的项目是用s003来做的，103是最小系统拿来试手的。其他部分欢迎各位老哥补充。

注4：由于SDCC比较傻逼，没有用到的函数也会编译进烧录代码，所以标准库我注释掉非常多函数，大家注意。

## 文件树
├─Build（编译后的文件都存放在这里）</br>
│  ├─Debug（调试版本的代码）</br>
│  └─Release（真正烧录到单片机上的代码）</br>
├─Source（.c和.h文件都存放在这里）</br>
│  ├─Device（板载设备，实现某种硬件的功能）</br>
│  ├─Driver（驱动程序，例如模拟iic）</br>
│  ├─Std_Lib（stm8的标准库）</br>
│  │  ├─Inc</br>
│  │  ├─Lib（由于SDCC有64Kb重定位限制，所以讲标准库做成库，节省调试信息）</br>
│  │  ├─Src</br>
│  │  └─Unuse（不使用的库函数）</br>
│  └─User（用户的程序存放在这里）</br>
└─Tools</br>
│  └─OpenOCD-20210407-0.10.0（调试工具）</br>
│  └─stm8flash.exe（编译好的烧录软件）

## 更新进度
|时间|更新内容|
|-|-|
|2020/7/23|tools文件夹中新增了适用于Windows的stm8flash，里面包含一个编译好的可执行文件，你也可以自行下载主分支的程序和我这个程序进行对比，详见tools\stm8flash-master内的README-FIX.txt文件。|
|2020/7/28|stm8s103的Memory map差不多弄好了，GPIO和外设以及一堆乱七八糟的玩意好糟心，我到时候看看有没有什么好的软件弄个思维导图。|
|2020/8/1|八 一 献 礼（雾，103所有外设寄存器基本更新完毕，stm8s103.h里面包含的头文件基本都齐全的，建议用的时候对着参考手册和数据手册来弄，接下来会新增一个demo文件夹，存放一些设计过程中有趣的例程。|
|2020/8/2|久 等 了，source文件夹新增demo文件夹，目前存放了一个pb5led用定时器定时一秒的led闪烁例程，这表明着芯片基本调通，下一步就是看看如何debug了，我在VSCode的扩展应用里面找到了一个对应的debuger，但是下下来用不了，看看如何调教。|
|2020/9/29|十 一 献 礼，sb寄存器开发我扔了，现在已经支持标准库开发，我迟点把makefile写好一点，现在这个太拉跨。|
|2020/10/9|国庆结束后的第一天，终于有突破性成果|
|2021/4/16|旧板子测试了spi，模拟iic驱动ds3231，过两天拿gps模块测试，其实基本这个钟就差不多做好了，就是画板子麻烦。|

![IMG_6853.JPG](\Image\IMG_6853.JPG)

## BUG
|所在文件|解释|
|-|-|
|chip/stm8s103.h|参考手册（319页）中I2C的寄存器只到I2C_TRISER，但是数据手册（35页）在这个寄存器后面还有一个I2C_PECR，不知道有什么用的，以后用到的时候请注意。|
|source/USER/stm8s_conf.h|第90行的宏定义我注释掉了，#define USE_FULL_ASSERT，不知道为什么不注释的话会报错，?ASlink-Warning-Undefined Global '_assert_failed' referenced by module 'xxxxxx'|
|Source/Device/Src/ds3231.c|ds3231不知道为什么不能连续读取寄存器。|

## 关于烧录的问题
由于这个芯片Flash比较小，只有8Kb，所以我一直很留意生成的代码的大小，实际上.ihx文件的大小并不代表真正烧录的大小，因为其中包含烧录信息。  
真正烧录大小是你输入完make burn之后显示的东西
```
./Tools/stm8flash -c stlinkv2 -d /dev/ttyUSB0 -p stm8s003f3 -w Build/Release/main.ihx
Determine FLASH area
Due to its file extension (or lack thereof), "Build/Release/main.ihx" is considered as INTEL HEX format!
3496 bytes at 0x8000... OK
Bytes written: 3496
```
这样就是3.4Kb，只要这里不超出8Kb就行，即使超出了，它也会报错的

## 关于调试的问题
要先make link，然后再按F5  
在插件的扩展设置里面要添加OpenOCD的路径
```
Stm8-debug: Open Ocd Path
OpenOCD executable file path
D:\STM8Project\tools\OpenOCD-20200729-0.10.0\bin\openocd.exe//按自己的路径填写
```
launch.json请按照下面进行设置：
```
{
    "version": "0.2.0",
    "configurations": [
        {
            "type": "stm8-debug",
            "request": "launch",
            "name": "Launch Program",
            "serverType": "stm8-sdcc",
            "executable": "${workspaceRoot}/Build/Debug/main.elf",//这里填写你生成的elf的位置
            "cpu": "STM8S003F3",
            "openOcdConfigs": [
                "interface/stlink.cfg",
                "target/stm8s003.cfg"
            ]
        }
    ]
}
```

注：调试信息显示的是八进制，很神秘

## 关于中科微电子GPS

```
24 50 43 41 53 30 30 2A 30 31 0D 0A//保存代码
```

## 按钮功能记录

|按键|1|2|3|4|
|-|-|-|-|-|
|功能|enter<br/>confirm|mode<br/>show|+|-|

1 长按1之后显示小时数字快闪，此时为进入模式，默认调整小时，此时按+-调整小时

2 长按1之后可以连续按2，依次为小时调整，分钟调整，秒调整（不写，建议掐表），然后是年调整（四位），月日调整（一起显示），GPS校时模式，倒计时模式，闹钟模式。

3 手动调整年月日时分秒可以按+-键调整，长按1写入

4 GPS校时模式会不断获取GPS信号，然后显示分秒，长按1写入

5 不按1直接按2，熄灭状态下先亮起时分，然后依次按下显示年，月日，不按之后回到时分，然后熄灭

6 倒计时模式最大99分钟99秒，默认显示00，00，设置好倒计时时长后长按1开始倒计时，到时间就响，按任意键关掉

7 闹钟默认两个，使用3231的寄存器来存储，到点就响，按任意键关掉

8 直接按+开始记录，连续按+自动增加排名，最后一个按-结束，连续按-显示第一个人的分秒，第一个人的毫秒（最高位显示逗号），然后一直按到结束为止。

9 长按234任意一个进入世界线显示模式，滚动显示

10 默认整点+半点报时，半点响一下（低音），整点响对应的次数，十二小时制，最后一下高音。

10例 假设10点的报时，从9点59分51秒开始响第一下，第十下高音+长音，就是10点整