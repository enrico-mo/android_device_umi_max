#
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

# TWRP elements. ENABLED ONLY IN RECOVERY COMPILATION
#include $(LOCAL_PATH)/twrp.mk
# Display properties
include $(LOCAL_PATH)/display.mk
# Wifi properties
include $(LOCAL_PATH)/mtk-wifi.mk
# Prebuilt BOOTIMG
-include $(LOCAL_PATH)/prebuilt_bootimg.mk
# Prebuilt KERNEL
-include $(LOCAL_PATH)/prebuilt_kernel.mk
# Kernel Sources
#TARGET_KERNEL_SOURCE := kernel / umi / MAX
#TARGET_KERNEL_CONFIG := lineageos_MAX_defconfig

# Device vendor board
-include vendor/umi/MAX/BoardConfigVendor.mk

# Keyswitch ???
PRODUCT_PACKAGES += \
	KeySwitch

# Ramdisk
PRODUCT_PACKAGES += $(LOCAL_PATH)/rootdir/etc/init.recovery.mt6755.rc:root/init.recovery.mt6755.rc

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

#Use dlmalloc instead of jemalloc for mallocs
MALLOC_IMPL := dlmalloc

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.mt6755
TARGET_RECOVERY_QCOM_RTC_FIX := true

# TARGET FLAGS
TARGET_BOARD_PLATFORM := MT6755
TARGET_BOARD_SUFFIX := _64
TARGET_BOARD_PLATFORM_GPU := mali-t860mp2
TARGET_USES_64_BIT_BINDER := true
TARGET_BOOTLOADER_BOARD_NAME := UMI_MAX
TARGET_NO_BOOTLOADER := true

# build.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/build.prop #

TARGET_USERIMAGES_USE_EXT4 := true

# OTA assert
TARGET_OTA_ASSERT_DEVICE := MAX,MAX,UMI,UMI

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a9


# Architecture Extensions
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Resolution & Bootanimation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# BOARD FLAGS
# KERNEL
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KMODULES := true
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Partitions informations
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3489660928
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27074214912
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_SUPPRESS_SECURE_ERASE := true

BOARD_FLASH_BLOCK_SIZE := 0
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# EGL
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg #
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# init
TARGET_PROVIDES_INIT_RC := true

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/11270000.usb3/musb-hdrc/gadget/lun%d/file

# GPS
BOARD_GPS_LIBRARIES := true
BOARD_MEDIATEK_USES_GPS := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true

# Camera
USE_CAMERA_STUB := true

# Audio
#BOARD_USES_MTK_AUDIO := true
# DA TESTARE
HAVE_HTC_AUDIO_DRIVER := false
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_TINY_ALSA_AUDIO := true

# CM hardware
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw #

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# MTK Hardware
BOARD_USES_MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

# SELinux
BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy #

# RIL
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril
BOARD_CONNECTIVITY_MODULE := conn_soc
