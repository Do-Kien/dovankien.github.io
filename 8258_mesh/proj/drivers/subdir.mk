################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../proj/drivers/rf_pa.c \
../proj/drivers/usb.c 

OBJS += \
./proj/drivers/rf_pa.o \
./proj/drivers/usb.o 


# Each subdirectory must supply rules for building sources it contributes
proj/drivers/%.o: ../proj/drivers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TC32 Compiler'
	tc32-elf-gcc -ffunction-sections -fdata-sections -I"D:\Telink_IDE\sig_mesh_sdk\telink_sig_mesh_sdk_v3.2.1\firmware" -I"D:\Telink_IDE\sig_mesh_sdk\telink_sig_mesh_sdk_v3.2.1\firmware\vendor\common\mi_api\libs" -I"D:\Telink_IDE\sig_mesh_sdk\telink_sig_mesh_sdk_v3.2.1\firmware\vendor\common\mi_api\mijia_ble_api" -D__PROJECT_MESH__=1 -DCHIP_TYPE=CHIP_TYPE_8258 -Wall -O2 -fpack-struct -fshort-enums -finline-small-functions -std=gnu99 -fshort-wchar -fms-extensions -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


