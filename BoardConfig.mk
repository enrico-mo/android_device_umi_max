#
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2018 Enrico Caporali
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Device path
DEVICE_TREE := device/umi/MAX

#################################################################

# Device vendor board
#-include vendor/umi/MAX/BoardConfigVendor.mk

# Platform
TARGET_BOARD_PLATFORM := mt6755
TARGET_BOARD_PLATFORM_GPU := mali-t860mp2

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Architecture Extensions
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true

# Kernel
#TARGET_KERNEL_SOURCE := kernel/umi/MAX
BOARD_KERNEL_IMAGE_NAME = Image.gz
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm64-linux-android-#TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm64-linux-android-
#TARGET_KERNEL_CONFIG := twrp_defconfig
#TARGET_KERNEL_DEVICE_DEFCONFIG := device_umi_MAX

TARGET_PREBUILT_KERNEL := device/umi/MAX/kernel
TARGET_RECOVERY_FSTAB := device/umi/MAX/rootdir/fstab.mt6755

# KERNEL params
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 enforcing=0 androidboot.selinux=permissive
#BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KMODULES := true
#COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK # 20180824 - Unsupported on omni-7.1 sources ERROR: build/core/config.mk:655: COMMON_GLOBAL_C(PP)FLAGS changed
BOARD_MKBOOTIMG_ARGS := --board 1465391499 --ramdisk_offset 0x04f88000 --second_offset 0x00e88000 --tags_offset 0x03f88000

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3489660928
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27074214912
BOARD_FLASH_BLOCK_SIZE := 131072

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP Recovery
#RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi

#
RECOVERY_SDCARD_ON_DATA := true
PRODUCT_COPY_FILES += device/umi/MAX/rootdir/etc/twrp.fstab:recovery/root/etc/twrp.fstab
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 80
TW_DEFAULT_EXTERNAL_STORAGE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INPUT_BLACKLIST := "hbtp_vm" # DA TESTARE
TW_FLASH_FROM_STORAGE := true
TW_INCLUDE_CRYPTO := true
TW_NEW_ION_HEAP := true
TW_NO_SCREEN_BLANK := true
TWHAVE_SELINUX := true
TW_INCLUDE_NTFS_3G := true
#TW_EXCLUDE_SUPERSU := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_DEVICE_VERSION := 0
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness/
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp

# Debug flags
#BOARD_KERNEL_CMDLINE += debug
#TWRP_INCLUDE_LOGCAT := true
#TARGET_USES_LOGD := true
#TW_CRYPTO_SYSTEM_VOLD_DEBUG := true
#TARGET_RECOVERY_DEVICE_MODULES += strace
#TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_OUT_OPTIONAL_EXECUTABLES)/strace
