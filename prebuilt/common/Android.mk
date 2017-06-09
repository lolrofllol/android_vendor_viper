LOCAL_PATH := $(call my-dir)

# a wrapper for curl which provides wget syntax, for compatibility
include $(CLEAR_VARS)
LOCAL_MODULE := wget
LOCAL_SRC_FILES := bin/wget
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := substratum
LOCAL_SRC_FILES := apk/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_SUFFIX := .apk
include $(BUILD_PREBUILT)
