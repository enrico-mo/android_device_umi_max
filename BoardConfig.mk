#
# Copyright (C) 2016 The CyanogenMod Project
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

# Device vendor board
-include vendor/umi/MAX/BoardConfigVendor.mk

#######################################################################

# EGL
BOARD_EGL_CFG := device/umi/MAX/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# system.prop
TARGET_SYSTEM_PROP := device/umi/MAX/system.prop

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/11270000.usb3/musb-hdrc/gadget/lun%d/file

# MTK audio
BOARD_USES_MTK_AUDIO := true

# Camera
USE_CAMERA_STUB := true

# OTA assert
TARGET_OTA_ASSERT_DEVICE := MAX,MAX,UMI,UMI

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

#Use dlmalloc instead of jemalloc for mallocs
MALLOC_SVELTE := true

# Display
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 1
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
MTK_HWC_SUPPORT := yes
MTK_HWC_VERSION := 1.4.1

# GPS
BOARD_GPS_LIBRARIES := true
BOARD_MEDIATEK_USES_GPS := true

# CM hardware
BOARD_HARDWARE_CLASS := device/umi/MAX/cmhw

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# MTK Hardware
BOARD_USES_MTK_HARDWARE := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/umi/MAX/bluetooth

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true

# WiFi
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Selinux
BOARD_SEPOLICY_DIRS := device/umi/MAX/sepolicy
BOARD_SECCOMP_POLICY := device/umi/MAX/seccomp

# RIL
BOARD_RIL_CLASS := ../../../device/umi/MAX/ril
BOARD_CONNECTIVITY_MODULE := conn_soc

# Platform
TARGET_BOOTLOADER_BOARD_NAME := mt6755
TARGET_NO_BOOTLOADER := true

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

TARGET_PREBUILT_KERNEL := device/umi/MAX/prebuilts/kernel

# KERNEL params
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 enforcing=0 androidboot.selinux=permissive
#BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KMODULES := true
#COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK # 20180824 - Unsupported on omni-7.1 sources ERROR: build/core/config.mk:655: COMMON_GLOBAL_C(PP)FLAGS changed
BOARD_MKBOOTIMG_ARGS := --board 1465391499 --ramdisk_offset 0x04f88000 --second_offset 0x00e88000 --tags_offset 0x03f88000

# Partitions informations
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3489660928
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27074214912
BOARD_FLASH_BLOCK_SIZE := 131072

# Partitions types
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_RECOVERY_FSTAB := device/umi/MAX/rootdir/fstab.mt6755
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP Recovery
#RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
#
RECOVERY_SDCARD_ON_DATA := true
PRODUCT_COPY_FILES += device/umi/MAX/rootdir/recovery/twrp.fstab:recovery/root/etc/twrp.fstab
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
