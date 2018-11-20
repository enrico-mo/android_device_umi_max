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

include device/umi/MAX/mt6755.mk

# Call heap & hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)


PRODUCT_COPY_FILES += device/umi/MAX/rootdir/etc/fstab.mt6755:root/fstab.mt6755
DEVICE_PACKAGE_OVERLAYS += device/umi/MAX/overlay

# MediaTek framework base modules
PRODUCT_PACKAGES += \
    mediatek-common \
    mediatek-framework \
    CustomPropInterface \
    mediatek-telephony-common

# Override the PRODUCT_BOOT_JARS to include the MediaTek system base modules for global access
PRODUCT_BOOT_JARS += \
    mediatek-common \
    mediatek-framework \
    mediatek-telephony-common

#AGPS
PRODUCT_PACKAGES += \
    LocationEM \
    LocationEM2 \
    mtk_agpsd \
    libssladp \
    cacerts_supl \
    AutoDialer
PRODUCT_COPY_FILES += device/umi/MAX/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml

# Audio
PRODUCT_COPY_FILES += \
    device/umi/MAX/configs/audio_em.xml:system/etc/audio_em.xml \
    device/umi/MAX/configs/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio_policy.default \
    libaudio-resampler \
    libaudiopolicymanagerdefault \
    libtinycompress \
    libtinyxml \

#Connectivity combo_tool
PRODUCT_PACKAGES += 6620_launcher
PRODUCT_PACKAGES += 6620_wmt_concurrency
PRODUCT_PACKAGES += 6620_wmt_lpbk
PRODUCT_PACKAGES += wmt_loader
PRODUCT_PACKAGES += stp_dump3

#SPM
PRODUCT_PACKAGES += spm_loader
PRODUCT_PACKAGES += pcm_deepidle.bin
PRODUCT_PACKAGES += pcm_deepidle_by_mp1.bin
PRODUCT_PACKAGES += pcm_suspend.bin
PRODUCT_PACKAGES += pcm_suspend_by_mp1.bin
PRODUCT_PACKAGES += pcm_sodi.bin
PRODUCT_PACKAGES += pcm_sodi_by_mp1.bin
PRODUCT_PACKAGES += pcm_vcorefs_hpm.bin
PRODUCT_PACKAGES += pcm_vcorefs_lpm.bin
PRODUCT_PACKAGES += pcm_vcorefs_ultra.bin

# Telephony
PRODUCT_PACKAGES += muxreport
PRODUCT_PACKAGES += mtkrild
PRODUCT_PACKAGES += mtk-ril
PRODUCT_PACKAGES += libutilrilmtk
PRODUCT_PACKAGES += gsm0710muxd
PRODUCT_PACKAGES += mtkrildmd2
PRODUCT_PACKAGES += mtk-rilmd2
PRODUCT_PACKAGES += librilmtkmd2
PRODUCT_PACKAGES += gsm0710muxdmd2
PRODUCT_PACKAGES += md_minilog_util
PRODUCT_PACKAGES += BSPTelephonyDevTool
PRODUCT_PACKAGES += ppl_agent
PRODUCT_COPY_FILES += device/umi/MAX/configs/apns-conf.xml:system/etc/apns-conf.xml
PRODUCT_COPY_FILES += device/umi/MAX/configs/spn-conf.xml:system/etc/spn-conf.xml

# Inherit common configurations from los sources
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# Vendor product configurations
$(call inherit-product, vendor/umi/MAX/MAX-vendor.mk)
