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

######## TWRP PARAMS

# TWRP Recovery
RECOVERY_VARIANT := twrp

#
RECOVERY_SDCARD_ON_DATA := true
PRODUCT_COPY_FILES += $(LOCAL_PATH)/mkopt/twrp/twrp.fstab:recovery/root/etc/twrp.fstab
TW_DEFAULT_BRIGHTNESS := 80
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INPUT_BLACKLIST := "hbtp_vm" # DA TESTARE
TW_FLASH_FROM_STORAGE := true
TW_INCLUDE_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_NEW_ION_HEAP := true
TW_NO_SCREEN_BLANK := true
TW_THEME := portrait_hdpi
TWHAVE_SELINUX := true
TW_INCLUDE_NTFS_3G := true
#TW_EXCLUDE_SUPERSU := true
