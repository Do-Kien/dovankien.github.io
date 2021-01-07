################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include vendor/mesh/subdir.mk
-include vendor/common/subdir.mk
-include vendor/common/nl_api/subdir.mk
-include vendor/common/mi_api/subdir.mk
-include vendor/common/mi_api/mijia_ble_api/subdir.mk
-include vendor/common/mi_api/mi_vendor/subdir.mk
-include vendor/common/mi_api/libs/third_party/pt/subdir.mk
-include vendor/common/mi_api/libs/third_party/micro-ecc/subdir.mk
-include vendor/common/mi_api/libs/third_party/mbedtls/subdir.mk
-include vendor/common/mi_api/libs/mijia_profiles/subdir.mk
-include vendor/common/mi_api/libs/subdir.mk
-include vendor/common/mi_api/libs/mesh_auth/subdir.mk
-include vendor/common/mi_api/libs/gatt_dfu/subdir.mk
-include vendor/common/mi_api/libs/cryptography/mja1/subdir.mk
-include vendor/common/mi_api/libs/cryptography/subdir.mk
-include vendor/common/mi_api/libs/common/subdir.mk
-include proj/mcu_spec/subdir.mk
-include proj/mcu/subdir.mk
-include proj/drivers/subdir.mk
-include proj/common/subdir.mk
-include proj/app/subdir.mk
-include drivers/8258/subdir.mk
-include boot/8258/subdir.mk
-include objects.mk

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LST += \
8258_mesh.lst \

FLASH_IMAGE += \

SIZEDUMMY += \
sizedummy \


# All Target
all: pre-build main-build

# Main-build Target
main-build: Code_Light.elf secondary-outputs

# Tool invocations
Code_Light.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: TC32 C Linker'
	tc32-elf-ld --gc-sections -L"D:\Telink_IDE\sig_mesh_sdk\telink_sig_mesh_sdk_v3.2.1\firmware\proj_lib" -T ../boot.link -o"Code_Light.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

8258_mesh.lst: Code_Light.elf
	@echo 'Invoking: TC32 Create Extended Listing'
	tc32-elf-objdump -x -D -l -S Code_Light.elf  >"8258_mesh.lst"
	@echo 'Finished building: $@'
	@echo ' '

: Code_Light.elf
	@echo 'Create Flash image (binary format)'
	tc32-elf-objcopy -O binary Code_Light.elf
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: Code_Light.elf
	@echo 'Invoking: Print Size'
	tc32-elf-size -t Code_Light.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(LST)$(SIZEDUMMY) Code_Light.elf
	-@echo ' '

pre-build:
	-"D:\Telink_IDE\sig_mesh_sdk\telink_sig_mesh_sdk_v3.2.1\firmware/getver.sh"
	-@echo ' '

post-build:
	-"D:\Telink_IDE\sig_mesh_sdk\telink_sig_mesh_sdk_v3.2.1\firmware/tl_check_fw.sh"   8258_mesh   Code_Light
	-@echo ' '

secondary-outputs: $(LST) $(FLASH_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY: main-build pre-build post-build

-include ../makefile.targets
