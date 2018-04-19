LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := vlc
LOCAL_SRC_FILES_arm := VLC-Android-1.7.5-ARMv7.apk
LOCAL_SRC_FILES_arm64 := VLC-Android-1.7.5-ARMv8.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := debug
LOCAL_MULTILIB := first
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
# only PRESIGNED here can make the update possible
# platform and EXTERNAL will cause INSTALL_FAILED_UPDATE_INCOMPATIBLE error
# and following message in logcat, like
# W PackageManager: Package com.qihoo.yunpan signatures do not match the previously installed version; ignoring!
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := estrong
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := debug
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)
