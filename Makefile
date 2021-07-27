
# c编译生成文件夹
BUILD_DIR = Build

# C源文件
USER_C_SOURCES = $(wildcard Source/User/*.c)
STDPERIPH_C_SOURCES = $(wildcard Source/Std_Lib/Src/*.c)
DEVICE_C_SOURCES = $(wildcard Source/Device/Src/*.c)
DRIVER_C_SOURCES = $(wildcard Source/Driver/Src/*.c)

C_SOURCES = $(USER_C_SOURCES) $(STDPERIPH_C_SOURCES) $(DEVICE_C_SOURCES) $(DRIVER_C_SOURCES)

#######################################
# binaries
#######################################
CC = sdcc

#######################################
# CFLAGS
#######################################
CPU = -mstm8

# C_DEFS = \
# -DUSE_STDPERIPH_DRIVER

# C includes
C_INCLUDES = \
-ISource/User \
-ISource/Std_Lib/Inc \
-ISource/Device/Inc \
-ISource/Driver/Inc

# C Libraries
C_LIBRARIES = \
-LSource/Std_Lib/Lib

CFLAGS = $(CPU) $(C_INCLUDES)

#######################################
#OpenOCD
#######################################
OCD_LINK_FILE = stlink-dap.cfg#烧录器配置文件，用于普通买到的烧录器
# OCD_LINK_FILE = stlink-v2-1.cfg	#烧录器配置文件，用于stm32f4discovery
OCD_CHIP_FILE = stm8s003.cfg	#芯片配置文件

#######################################
# 开始编译
#######################################
USER_OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(USER_C_SOURCES:.c=.rel)))
STDPERIPH_OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(STDPERIPH_C_SOURCES:.c=.rel)))
DEVICE_OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(DEVICE_C_SOURCES:.c=.rel)))
DRIVER_OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(DRIVER_C_SOURCES:.c=.rel)))

OBJECTS = $(USER_OBJECTS) $(STDPERIPH_OBJECTS) $(DEVICE_OBJECTS) $(DRIVER_OBJECTS)

.PHONY: all \
debug release \
user stdperiph device driver\
burn link

all: debug release
# user stdperiph device driver\
# $(BUILD_DIR)/main.elf $(BUILD_DIR)/main.ihx \

debug: $(BUILD_DIR)/Debug/main.elf

release: $(BUILD_DIR)/Release/main.ihx

$(BUILD_DIR)/Debug/main.elf: $(BUILD_DIR)/Debug/main.rel \
$(BUILD_DIR)/Debug/stm8s_gpio.rel $(BUILD_DIR)/Debug/stm8s_clk.rel $(BUILD_DIR)/Debug/stm8s_spi.rel $(BUILD_DIR)/Debug/stm8s_uart1.rel $(BUILD_DIR)/Debug/stm8s_beep.rel \
$(BUILD_DIR)/Debug/stm8s_exti.rel $(BUILD_DIR)/Debug/stm8s_itc.rel $(BUILD_DIR)/Debug/stm8s_tim4.rel \
$(BUILD_DIR)/Debug/soft_i2c.rel \
$(BUILD_DIR)/Debug/nixie.rel $(BUILD_DIR)/Debug/ds3231.rel $(BUILD_DIR)/Debug/gps.rel
	$(CC) $(CFLAGS) --debug --opt-code-size --out-fmt-elf -o $@ $^

$(BUILD_DIR)/Release/main.ihx: $(BUILD_DIR)/Release/main.rel \
$(BUILD_DIR)/Release/stm8s_gpio.rel $(BUILD_DIR)/Release/stm8s_clk.rel $(BUILD_DIR)/Release/stm8s_spi.rel $(BUILD_DIR)/Release/stm8s_uart1.rel $(BUILD_DIR)/Release/stm8s_beep.rel \
$(BUILD_DIR)/Release/stm8s_exti.rel $(BUILD_DIR)/Release/stm8s_itc.rel $(BUILD_DIR)/Release/stm8s_tim4.rel \
$(BUILD_DIR)/Release/soft_i2c.rel \
$(BUILD_DIR)/Release/nixie.rel $(BUILD_DIR)/Release/ds3231.rel $(BUILD_DIR)/Release/gps.rel
	$(CC) $(CFLAGS) --opt-code-size --out-fmt-ihx -o $@ $^

$(BUILD_DIR)/Debug/%.rel: %.c
	$(CC) -c $(CFLAGS) --debug --out-fmt-elf --opt-code-size -o $@ $<

$(BUILD_DIR)/Release/%.rel: %.c
	$(CC) -c $(CFLAGS) --opt-code-size -o $@ $<

vpath %.c $(sort $(dir $(USER_C_SOURCES)))

user: $(USER_OBJECTS)
	@echo \<\<\<\<\<User File Compile Completely\>\>\>\>\>

vpath %.c $(sort $(dir $(STDPERIPH_C_SOURCES)))

stdperiph: $(STDPERIPH_OBJECTS)
	@echo \<\<\<\<\<Standard Peripheral Library Compile Completely\>\>\>\>\>

vpath %.c $(sort $(dir $(DEVICE_C_SOURCES)))

device: $(DEVICE_OBJECTS)
	@echo \<\<\<\<\<Device Compile Completely\>\>\>\>\>

vpath %.c $(sort $(dir $(DRIVER_C_SOURCES)))

driver: $(DEVICE_OBJECTS)
	@echo \<\<\<\<\<Driver Compile Completely\>\>\>\>\>

burn:
	./Tools/stm8flash -c stlinkv2 -d /dev/ttyUSB0 -p stm8s003f3 -w Build/Release/main.ihx

link: 
	./Tools/OpenOCD-20210407-0.10.0/bin/openocd -f interface/stlink-dap.cfg -f target/stm8s003.cfg -c "init" -c "reset halt"


# sdcc -mstm8 --debug --out-fmt-elf -o main.elf Source/User/main.c