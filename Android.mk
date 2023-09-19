# Copyright (C) 2008 The Android Open Source Project
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
# HAL module implemenation, not prelinked and stored in
# hw/<LIGHTS_HARDWARE_MODULE_ID>.default.so
include $(CLEAR_VARS)
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS:=optional
LOCAL_PRELINK_MODULE := false
#LOCAL_MULTILIB := 32
LOCAL_MODULE := gps.default
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := gps_zkw.c
#LOCAL_CFLAGS    := -Wall -fvisibility=default -fsigned-char
LOCAL_CFLAGS    := -Wno-unused-parameter  -Wno-unused-variable  -Wno-format -Wno-unused-function
LOCAL_SHARED_LIBRARIES := liblog libc libcutils libm  libhardware libutils
include $(BUILD_SHARED_LIBRARY)

