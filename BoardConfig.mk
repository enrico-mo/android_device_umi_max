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
LOCAL_PATH := device/umi/MAX

# Device board elements
include $(LOCAL_PATH)/board/*.mk

# Device vendor board
-include vendor/umi/MAX/BoardConfigVendor.mk

# Common board elements
include $(LOCAL_PATH)/PlatformConfig.mk

# Prebuilt BOOTIMG & KERNEL
include $(LOCAL_PATH)/prebuilts/prebuilt_kernel.mk

#######################################################################

# EGL
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# system.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/11270000.usb3/musb-hdrc/gadget/lun%d/file

# TWRP Recovery
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi

#
RECOVERY_SDCARD_ON_DATA := true
PRODUCT_COPY_FILES += $(LOCAL_PATH)/rootdir/recovery/twrp.fstab:recovery/root/etc/twrp.fstab
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
