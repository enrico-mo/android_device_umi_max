# Copyright (C) 2016 fire855 <thefire855@gmail.com>
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    mtk_asc.cpp \
    mtk_audio.cpp \
    mtk_audioCompat.c \
    mtk_cam.cpp \
    mtk_fence.cpp \
    mtk_gui.cpp \
    mtk_omx.cpp \
    mtk_ui.cpp 

# only for 64bit libraries
LOCAL_SRC_FILES_64 := mtk_parcel.cpp

LOCAL_SHARED_LIBRARIES := libbinder libutils liblog libgui libui libicuuc
LOCAL_MODULE := libmtk_symbols
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH =
LOCAL_MODULE_RELATIVE_PATH =
include $(BUILD_SHARED_LIBRARY)
