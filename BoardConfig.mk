#
# Copyright (C) 2018 ecSoftware
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
LOCAL_PATH := device/umi/MAX

# Device board elements
include $(LOCAL_PATH)/PlatformConfig.mk
# Device vendor board
-include vendor/umi/MAX/BoardConfigVendor.mk

#######################################################################
# Partitions informations
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27879521280
BOARD_FLASH_BLOCK_SIZE := 131072

# Partitions types
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.mt6755
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Kernel informations
#TARGET_KERNEL_SOURCE := kernel/umi/MAX
BOARD_KERNEL_IMAGE_NAME = Image.gz
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm64-linux-android-
#TARGET_KERNEL_CONFIG := twrp_defconfig
#TARGET_KERNEL_DEVICE_DEFCONFIG := device_umi_MAX

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilts/kernel

# KERNEL params
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 enforcing=0 androidboot.selinux=permissive
#BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KMODULES := true
#COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK # 20180824 - Unsupported on omni-7.1 sources ERROR: build/core/config.mk:655: COMMON_GLOBAL_C(PP)FLAGS changed
BOARD_MKBOOTIMG_ARGS := --board 1465391499 --ramdisk_offset 0x04f88000 --second_offset 0x00e88000 --tags_offset 0x03f88000

# Platform
TARGET_BOOTLOADER_BOARD_NAME := mt6755

# Legacy blobs
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Images
TARGET_NO_BOOTLOADER := true
################################################################################
# Fonts
EXTENDED_FONT_FOOTPRINT := true

# init
TARGET_PROVIDES_INIT_RC := true

# system.prop
#TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.ADB.prop
#TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.LESKAL.prop

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/11270000.usb3/musb-hdrc/gadget/lun%d/file

# Includes
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Audio
BOARD_USES_MTK_AUDIO := true

BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_MEDIA_PROFILES := true
MTK_HARDWARE := true
BOARD_USES_MTK_MEDIA_PROFILES := true
BOARD_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

# Camera and Codecs
BOARD_GLOBAL_CFLAGS += -DMETADATA_CAMERA_SOURCE
USE_CAMERA_STUB := true

# Fix video autoscaling on old OMX decoders
TARGET_OMX_LEGACY_RESCALING := true
TARGET_USES_MEDIA_EXTENSIONS := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# MTK audio
BOARD_USES_MTK_AUDIO := true
USE_XML_AUDIO_POLICY_CONF := 1
USE_CUSTOM_AUDIO_POLICY := 0

# Camera
USE_CAMERA_STUB := true
TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY := mtkcamera_parameters

# Legacy HAL
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# OTA assert
TARGET_OTA_ASSERT_DEVICE := MAX,MAX,c239v55_kw

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
MTK_HWC_VERSION := 1.5.0

# Device display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# GPS
BOARD_GPS_LIBRARIES := true
BOARD_MEDIATEK_USES_GPS := true

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# MTK Hardware
BOARD_USES_MTK_HARDWARE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# WiFi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:= /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP:= AP
WIFI_DRIVER_FW_PATH_STA:= STA
WIFI_DRIVER_FW_PATH_P2P:= P2P

# Selinux
BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy
BOARD_SECCOMP_POLICY := $(LOCAL_PATH)/seccomp

BOARD_GLOBAL_CFLAGS += -DCOMPAT_SENSORS_M

# RIL
BOARD_RIL_CLASS := ../../../device/umi/MAX/ril
BOARD_CONNECTIVITY_MODULE := conn_soc
