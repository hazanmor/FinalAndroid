LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := openssl
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/lib/libssl.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := opencrypto
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/lib/libcrypto.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := openssl_static
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/lib/libssl.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := opencrypto_static
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/lib/libcrypto.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := helloJNI
LOCAL_SRC_FILES := helloJNI.c
LOCAL_STATIC_LIBRARIES := opencrypto_static openssl_static
LOCAL_SHARED_LIBRARIES := opencrypto openssl
include $(BUILD_SHARED_LIBRARY)