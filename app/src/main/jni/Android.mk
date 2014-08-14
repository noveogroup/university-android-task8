LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# имя модуля, который будет вызываться в Java при помощи System.loadLibrary()
LOCAL_MODULE    := nativeoperation

# Add all source file names to be included in lib separated by a whitespace
LOCAL_SRC_FILES := nativeoperation.cpp

# статические библиотеки, уже скомпиленные за нас
LOCAL_STATIC_LIBRARIES := cpufeatures

# добавим библиотеку для логирования
LOCAL_LDLIBS := -llog
LOCAL_CFLAGS := -g

include $(BUILD_SHARED_LIBRARY)
