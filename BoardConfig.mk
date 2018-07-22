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
include $(LOCAL_PATH)/PlatformConfig.mk
include $(LOCAL_PATH)/board/*.mk

# TWRP. ENABLED ONLY IN RECOVERY COMPILATION
#include $(LOCAL_PATH)/mkopt/twrp/twrp.mk

# Prebuilt BOOTIMG & KERNEL
include $(LOCAL_PATH)/mkopt/kernel/prebuilt/prebuilt_kernel.mk
#-include $(LOCAL_PATH)/mkopt/kernel/sources/kernel.mk

PRODUCT_PACKAGES += $(LOCAL_PATH)/rootdir/etc/init.recovery.mt6755.rc:root/init.recovery.mt6755.rc

TARGET_SYSTEM_PROP := $(LOCAL_PATH)/build.prop

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true

PRODUCT_PACKAGES += \
    KeySwitch \
    RemovePackages

BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
EXTENDED_FONT_FOOTPRINT := true
TARGET_PROVIDES_INIT_RC := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/11270000.usb3/musb-hdrc/gadget/lun%d/file
