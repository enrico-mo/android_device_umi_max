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

# FSTAB
PRODUCT_COPY_FILES += device/umi/MAX/rootdir/etc/fstab.mt6755:root/fstab.mt6755

# MediaTek framework base modules
PRODUCT_PACKAGES += mediatek-common
PRODUCT_PACKAGES += mediatek-framework
PRODUCT_PACKAGES += CustomPropInterface
PRODUCT_PACKAGES += mediatek-telephony-common

# Override the PRODUCT_BOOT_JARS to include the MediaTek system base modules for global access
PRODUCT_BOOT_JARS += mediatek-common
PRODUCT_BOOT_JARS += mediatek-framework
PRODUCT_BOOT_JARS += mediatek-telephony-common

#AGPS
PRODUCT_PACKAGES += LocationEM
PRODUCT_PACKAGES += LocationEM2
PRODUCT_PACKAGES += mtk_agpsd
PRODUCT_PACKAGES += libssladp
PRODUCT_PACKAGES += cacerts_supl
PRODUCT_PACKAGES += AutoDialer
PRODUCT_COPY_FILES += device/umi/MAX/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml

# Audio (TO BE TESTED: audio_policy_NXP.conf)
PRODUCT_PACKAGES += audio.a2dp.default
PRODUCT_PACKAGES += audio.usb.default
PRODUCT_PACKAGES += audio.r_submix.default
PRODUCT_PACKAGES += audio_policy.default
PRODUCT_PACKAGES += libaudio-resampler
PRODUCT_PACKAGES += libaudiopolicymanagerdefault
PRODUCT_PACKAGES += libtinycompress
PRODUCT_PACKAGES += libtinyxml
PRODUCT_COPY_FILES += device/umi/MAX/configs/audio_em.xml:system/etc/audio_em.xml
PRODUCT_COPY_FILES += device/umi/MAX/configs/audio_policy.conf:system/etc/audio_policy.conf
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_device.xml:system/etc/audio_device.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_em.xml:system/etc/audio_em.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/AudioParamOptions.xml:system/etc/audio_param/AudioParamOptions.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/PlaybackACF_AudioParam.xml:system/etc/audio_param/PlaybackACF_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/PlaybackACF_ParamUnitDesc.xml:system/etc/audio_param/PlaybackACF_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/PlaybackDRC_AudioParam.xml:system/etc/audio_param/PlaybackDRC_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/PlaybackDRC_ParamUnitDesc.xml:system/etc/audio_param/PlaybackDRC_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/PlaybackHCF_AudioParam.xml:system/etc/audio_param/PlaybackHCF_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/PlaybackHCF_ParamUnitDesc.xml:system/etc/audio_param/PlaybackHCF_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/PlaybackVolAna_AudioParam.xml:system/etc/audio_param/PlaybackVolAna_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/PlaybackVolAna_ParamUnitDesc.xml:system/etc/audio_param/PlaybackVolAna_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/PlaybackVolDigi_AudioParam.xml:system/etc/audio_param/PlaybackVolDigi_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/PlaybackVolDigi_ParamUnitDesc.xml:system/etc/audio_param/PlaybackVolDigi_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/PlaybackVolUI_AudioParam.xml:system/etc/audio_param/PlaybackVolUI_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/PlaybackVolUI_ParamUnitDesc.xml:system/etc/audio_param/PlaybackVolUI_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/Playback_AudioParam.xml:system/etc/audio_param/Playback_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/Playback_ParamTreeView.xml:system/etc/audio_param/Playback_ParamTreeView.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/Playback_ParamUnitDesc.xml:system/etc/audio_param/Playback_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/RecordDMNR_AudioParam.xml:system/etc/audio_param/RecordDMNR_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/RecordDMNR_ParamUnitDesc.xml:system/etc/audio_param/RecordDMNR_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/RecordFIR_AudioParam.xml:system/etc/audio_param/RecordFIR_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/RecordFIR_ParamUnitDesc.xml:system/etc/audio_param/RecordFIR_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/RecordUI_AudioParam.xml:system/etc/audio_param/RecordUI_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/RecordUI_ParamUnitDesc.xml:system/etc/audio_param/RecordUI_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/RecordVolUI_AudioParam.xml:system/etc/audio_param/RecordVolUI_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/RecordVolUI_ParamUnitDesc.xml:system/etc/audio_param/RecordVolUI_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/RecordVol_AudioParam.xml:system/etc/audio_param/RecordVol_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/RecordVol_ParamUnitDesc.xml:system/etc/audio_param/RecordVol_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/Record_AudioParam.xml:system/etc/audio_param/Record_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/Record_ParamTreeView.xml:system/etc/audio_param/Record_ParamTreeView.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/Record_ParamUnitDesc.xml:system/etc/audio_param/Record_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/SpeechDMNR_AudioParam.xml:system/etc/audio_param/SpeechDMNR_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/SpeechDMNR_ParamUnitDesc.xml:system/etc/audio_param/SpeechDMNR_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/SpeechGeneral_AudioParam.xml:system/etc/audio_param/SpeechGeneral_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/SpeechGeneral_ParamUnitDesc.xml:system/etc/audio_param/SpeechGeneral_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/SpeechMagiClarity_AudioParam.xml:system/etc/audio_param/SpeechMagiClarity_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/SpeechMagiClarity_ParamUnitDesc.xml:system/etc/audio_param/SpeechMagiClarity_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/SpeechUI_AudioParam.xml:system/etc/audio_param/SpeechUI_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/SpeechUI_ParamUnitDesc.xml:system/etc/audio_param/SpeechUI_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/SpeechVolUI_AudioParam.xml:system/etc/audio_param/SpeechVolUI_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/SpeechVolUI_ParamUnitDesc.xml:system/etc/audio_param/SpeechVolUI_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/SpeechVol_AudioParam.xml:system/etc/audio_param/SpeechVol_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/SpeechVol_ParamUnitDesc.xml:system/etc/audio_param/SpeechVol_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/Speech_AudioParam.xml:system/etc/audio_param/Speech_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/Speech_ParamTreeView.xml:system/etc/audio_param/Speech_ParamTreeView.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/Speech_ParamUnitDesc.xml:system/etc/audio_param/Speech_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/VoIPDMNR_AudioParam.xml:system/etc/audio_param/VoIPDMNR_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/VoIPDMNR_ParamUnitDesc.xml:system/etc/audio_param/VoIPDMNR_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/VoIPGeneral_AudioParam.xml:system/etc/audio_param/VoIPGeneral_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/VoIPGeneral_ParamUnitDesc.xml:system/etc/audio_param/VoIPGeneral_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/VoIPUI_AudioParam.xml:system/etc/audio_param/VoIPUI_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/VoIPUI_ParamUnitDesc.xml:system/etc/audio_param/VoIPUI_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/VoIPVolUI_AudioParam.xml:system/etc/audio_param/VoIPVolUI_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/VoIPVolUI_ParamUnitDesc.xml:system/etc/audio_param/VoIPVolUI_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/VoIPVol_AudioParam.xml:system/etc/audio_param/VoIPVol_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/VoIPVol_ParamUnitDesc.xml:system/etc/audio_param/VoIPVol_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/VoIP_AudioParam.xml:system/etc/audio_param/VoIP_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/VoIP_ParamTreeView.xml:system/etc/audio_param/VoIP_ParamTreeView.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/VoIP_ParamUnitDesc.xml:system/etc/audio_param/VoIP_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/VolumeGainMap_AudioParam.xml:system/etc/audio_param/VolumeGainMap_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/VolumeGainMap_ParamUnitDesc.xml:system/etc/audio_param/VolumeGainMap_ParamUnitDesc.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/Volume_AudioParam.xml:system/etc/audio_param/Volume_AudioParam.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_param/Volume_ParamUnitDesc.xml:system/etc/audio_param/Volume_ParamUnitDesc.xml

# Bluetooth configuration files
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf.debug:system/etc/bluetooth/bt_stack.conf.debug
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf.sqc:system/etc/bluetooth/bt_stack.conf.sqc

# Camera
PRODUCT_PACKAGES += Snap
PRODUCT_PACKAGES += mtkcamera_parameters
PRODUCT_PROPERTY_OVERRIDES += camera2.portability.force_api=1

PRODUCT_COPY_FILES += $(LOCAL_PATH)/camera/camerasize.xml:system/etc/camerasize.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml

#Connectivity combo_tool
PRODUCT_PACKAGES += 6620_launcher
PRODUCT_PACKAGES += 6620_wmt_concurrency
PRODUCT_PACKAGES += 6620_wmt_lpbk
PRODUCT_PACKAGES += wmt_loader
PRODUCT_PACKAGES += stp_dump3

# Charger
PRODUCT_PACKAGES += charger

# Dalvik
PRODUCT_TAGS += dalvik.gc.type-precise

# DHCPCD
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/umi/MAX/overlay

# Ramdisk (REMOVED: init.nvdata.rc)
PRODUCT_PACKAGES += enableswap.sh
PRODUCT_PACKAGES += factory_init.project.rc
PRODUCT_PACKAGES += factory_init.rc
PRODUCT_PACKAGES += fstab.mt6755
PRODUCT_PACKAGES += init.rc
PRODUCT_PACKAGES += init.aee.rc
PRODUCT_PACKAGES += init.modem.rc
PRODUCT_PACKAGES += init.mt6755.rc
PRODUCT_PACKAGES += init.mt6755.usb.rc
PRODUCT_PACKAGES += libvcodec_utilityinit.project.rc
PRODUCT_PACKAGES += init.xlog.rc
PRODUCT_PACKAGES += meta_init.modem.rc
PRODUCT_PACKAGES += meta_init.project.rc
PRODUCT_PACKAGES += meta_init.rc
PRODUCT_PACKAGES += ueventd.mt6755.rc
PRODUCT_PACKAGES += init.recovery.mt6755.rc

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
