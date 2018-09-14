LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_QCOM_BLUETOOTH_VARIANT),bt-caf)

include $(LOCAL_PATH)/libbt-vendor/Android.mk

#include $(LOCAL_PATH)/tools/Android.mk

ifeq ($(TARGET_USE_QTI_BT_STACK),true)
include $(TMP_LOCAL_PATH)/bthost_ipc/Android.mk
endif #TARGET_USE_QTI_BT_STACK

endif
