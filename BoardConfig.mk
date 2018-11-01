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

include vendor/umi/MAX/BoardConfigVendor.mk

#PRODUCT_PACKAGES += $(LOCAL_PATH)/rootdir/etc/init.recovery.mt6755.rc:root/init.recovery.mt6755.rc
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/build.prop.LITE

# Variants
TARGET_OTA_ASSERT_DEVICE := MAX,MAX,UMI,UMI

#Architecture
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
TARGET_BOARD_PLATFORM := mt6755
TARGET_BOARD_SUFFIX := _64
TARGET_BOARD_PLATFORM_GPU := mali-t860mp2
TARGET_USES_64_BIT_BINDER := true
# Architecture Extensions
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true

#Kernel
#BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
#TARGET_KERNEL_SOURCE := kernel/umi/MAX
#TARGET_KERNEL_CONFIG := lineage_max_defconfig
# DA VERIFICARE (IMPORTATI DA cm-14.0)
#TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

# Prebuilt bootimg
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/prebuilts/boot.img:boot.img
BOARD_CUSTOM_BOOTIMG := true

# Prebuilt kernel
ALL_PREBUILT += \
    $(INSTALLED_KERNEL_TARGET)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/kernel:kernel

# KERNEL params
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 enforcing=0 androidboot.selinux=permissive
#BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x04f88000 --second_offset 0x00e88000 --tags_offset 0x03f88000
TARGET_KMODULES := true
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

#ENABLE_CPUSETS := true
#ENABLE_SCHEDBOOST := true
#BOARD_HAS_NO_REAL_SDCARD := true
#BOARD_HAS_NO_MISC_PARTITION := true
#BOARD_RECOVERY_SWIPE := true
#BOARD_USES_MMCUTILS := true
#BOARD_SUPPRESS_EMMC_WIPE := true

# Audio
BOARD_USES_MTK_AUDIO := true
# DA TESTARE
#HAVE_HTC_AUDIO_DRIVER := false
#BOARD_USES_GENERIC_AUDIO := false
#BOARD_USES_ALSA_AUDIO := true
#BOARD_USES_TINY_ALSA_AUDIO := true
TARGET_CPU_MEMCPY_OPT_DISABLE := true # Disable memcpy opt (for audio libraries)

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Bootanimation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Camera
USE_CAMERA_STUB := true

# Device
USE_MINIKIN := true
MALLOC_IMPL := dlmalloc

# Display
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 1
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
MTK_HWC_SUPPORT := yes
MTK_HWC_VERSION := 1.4.1

# EGL
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
EXTENDED_FONT_FOOTPRINT := true
TARGET_PROVIDES_INIT_RC := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/11270000.usb3/musb-hdrc/gadget/lun%d/file

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_SUPPRESS_SECURE_ERASE := true

# GPS
BOARD_GPS_LIBRARIES := true
BOARD_MEDIATEK_USES_GPS := true

# Hardware
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw
TARGET_PROVIDES_LIBLIGHT := true
BOARD_USES_MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216 #(16 MB)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 #(16 MB)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3489660928 #(3.3 GB)
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832 #(430 MB)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11439946752 # (10.9 GB)

# Platform
TARGET_BOOTLOADER_BOARD_NAME := mt6755
TARGET_NO_BOOTLOADER := true

# Power
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.mt6755
TARGET_RECOVERY_QCOM_RTC_FIX := true
#BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
RECOVERY_SDCARD_ON_DATA := true

# RIL
BOARD_RIL_CLASS := ../../../device/umi/MAX/ril
BOARD_CONNECTIVITY_MODULE := conn_soc

# Screen
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Selinux
BOARD_SEPOLICY_DIRS := \
       $(LOCAL_PATH)/sepolicy

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


#TWRP
#RECOVERY_VARIANT := twrp
PRODUCT_COPY_FILES += $(LOCAL_PATH)/twrp/twrp.fstab:recovery/root/etc/twrp.fstab
TW_DEFAULT_BRIGHTNESS := 80
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_FLASH_FROM_STORAGE := true
TW_INCLUDE_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_NEW_ION_HEAP := true
TW_NO_SCREEN_BLANK := true
TW_THEME := portrait_hdpi
TWHAVE_SELINUX := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
