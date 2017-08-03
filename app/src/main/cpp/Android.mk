LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := native-lib.cpp

#LOCAL_SHARED_LIBRARIES := \
#	libcutils libhardware

#LOCAL_LDLIBS := -Llibs \
#        -lcutils -lhardware

#LOCAL_LDLIBS := -lcutils
#LOCAL_LDLIBS += -lhardware

LOCAL_SHARED_LIBRARIES := libcutils
LOCAL_SHARED_LIBRARIES += libhardware

LOCAL_MODULE:= native-lib

LOCAL_MODULE_TAGS := optional

LOCAL_ALLOW_UNDEFINED_SYMBOLS := true

include $(BUILD_SHARED_LIBRARY)