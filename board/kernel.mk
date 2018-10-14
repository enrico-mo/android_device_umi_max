# Kernel informations
#TARGET_KERNEL_SOURCE := kernel/umi/MAX
BOARD_KERNEL_IMAGE_NAME = Image.gz
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm64-linux-android-
#TARGET_KERNEL_CONFIG := twrp_defconfig
#TARGET_KERNEL_DEVICE_DEFCONFIG := device_umi_MAX

TARGET_PREBUILT_KERNEL := device/umi/MAX/prebuilts/kernel

# KERNEL params
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 enforcing=0 androidboot.selinux=permissive
#BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KMODULES := true
#COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK # 20180824 - Unsupported on omni-7.1 sources ERROR: build/core/config.mk:655: COMMON_GLOBAL_C(PP)FLAGS changed
BOARD_MKBOOTIMG_ARGS := --board 1465391499 --ramdisk_offset 0x04f88000 --second_offset 0x00e88000 --tags_offset 0x03f88000
