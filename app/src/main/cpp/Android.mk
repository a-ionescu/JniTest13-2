LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	native-lib.cpp

LOCAL_LDLIBS := -Llibs \
        -lcutils -lhardware

LOCAL_MODULE:= native-lib

LOCAL_MODULE_TAGS := optional



include $(BUILD_SHARED_LIBRARY)