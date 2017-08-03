# Copyright 2006 The Android Open Source Project

# Setting LOCAL_PATH will mess up all-subdir-makefiles, so do it beforehand.

SUBDIR_MAKEFILES := $(call all-named-subdir-makefiles,modules tests native-lib)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := libcutils

LOCAL_INCLUDES += $(LOCAL_PATH)

#LOCAL_CFLAGS  += -DQEMU_HARDWARE
#QEMU_HARDWARE := true

LOCAL_SHARED_LIBRARIES += libdl
LOCAL_SHARED_LIBRARIES += llog

LOCAL_SRC_FILES += hardware.c

LOCAL_MODULE:= libhardware

LOCAL_ALLOW_UNDEFINED_SYMBOLS := true



include $(BUILD_SHARED_LIBRARY)

include $(SUBDIR_MAKEFILES)


include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	native-lib.cpp

LOCAL_SHARED_LIBRARIES := \
	libcutils libhardware

#LOCAL_CFLAGS += -fPIE
#LOCAL_LDFLAGS += -fPIE -pie

LOCAL_MODULE:= native-lib

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)


