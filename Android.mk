#
# Copyright (C) 2022 The LeafOS Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CERTIFICATE := platform
LOCAL_MODULE := TrichromeChrome64
LOCAL_MODULE_CLASS := APPS
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Browser2
LOCAL_SRC_FILES := prebuilt/$(TARGET_ARCH)_TrichromeChrome64.apk.xz.001
LOCAL_REQUIRED_MODULES := TrichromeLibrary64
include vendor/leaf/build/core/7z_prebuilt.mk

include $(CLEAR_VARS)
LOCAL_CERTIFICATE := platform
LOCAL_MODULE := TrichromeLibrary64
LOCAL_MODULE_CLASS := APPS
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Browser2
LOCAL_SRC_FILES := prebuilt/$(TARGET_ARCH)_TrichromeLibrary64.apk.xz.001
include vendor/leaf/build/core/7z_prebuilt.mk

include $(CLEAR_VARS)
LOCAL_CERTIFICATE := platform
LOCAL_MODULE := TrichromeWebView64
LOCAL_MODULE_CLASS := APPS
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_OVERRIDES_PACKAGES := webview
LOCAL_SRC_FILES := prebuilt/$(TARGET_ARCH)_TrichromeWebView64.apk.xz.001
LOCAL_REQUIRED_MODULES := TrichromeLibrary64
include vendor/leaf/build/core/7z_prebuilt.mk
