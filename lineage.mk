#
# Copyright (C) 2016 The CyanogenMod Project
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

# Release name
#PRODUCT_RELEASE_NAME := MAX

# Device product elements
include device/umi/MAX/product/*.mk

# Dalvik heap & hwui memory configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)

# Vendor product configurations
$(call inherit-product-if-exists, vendor/umi/MAX/MAX-vendor.mk)

# Common overlays
DEVICE_PACKAGE_OVERLAYS += device/umi/MAX/overlay

# Product common configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Device display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Define time zone data path
ifneq ($(wildcard bionic/libc/zoneinfo),)
    TZDATAPATH := bionic/libc/zoneinfo
else ifneq ($(wildcard system/timezone),)
    TZDATAPATH := system/timezone/output_data/iana
endif

# Time Zone data for Recovery
ifdef TZDATAPATH
PRODUCT_COPY_FILES += \
    $(TZDATAPATH)/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata
endif

# Device identifier
PRODUCT_BRAND := UMI
PRODUCT_DEVICE := MAX
PRODUCT_MANUFACTURER := UMI
PRODUCT_MODEL := MAX
PRODUCT_NAME := lineage_MAX
PRODUCT_RELEASE_NAME := MAX

# Vendor property
PRODUCT_RESTRICT_VENDOR_FILES := false
