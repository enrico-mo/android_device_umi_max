#
# Copyright (C) 2016 The LineageOS Project
# Copyright (C) 2018 ecSoftware
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Device path
LOCAL_PATH := device/umi/MAX


# Variants
#TARGET_OTA_ASSERT_DEVICE := MAX,max,UMI,umi,c239v55_kw
TARGET_OTA_ASSERT_DEVICE := MAX,MAX,UMI,UMI

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216 #(16 MB)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 #(16 MB)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3489660928 #(3.3 GB)
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832 #(430 MB)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11439946752 # (10.9 GB)
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Kernel
#BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
#LZMA_RAMDISK_TARGETS := boot,recovery
#TARGET_KERNEL_SOURCE := kernel/umi/MAX
#TARGET_KERNEL_CONFIG := lineage_max_defconfig
#TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_HEADER_ARCH := arm64
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
#TARGET_USES_64_BIT_BINDER := true
#MTK_APPENDED_DTB_SUPPORT := true

# Prebuilt bootimg
#BOARD_CUSTOM_BOOTIMG := true

# Prebuilt kernel
LOCAL_KERNEL := device/umi/MAX/prebuilt/kernel/Image.gz-dtb
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# MTK Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Screen
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

########################################################################################################

# Include Device vendor board
include vendor/umi/MAX/BoardConfigVendor.mk

# inherit from common umi's mt6755
-include device/umi/mt6755-common/BoardConfigCommon.mk
