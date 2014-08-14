APP_STL := gnustl_static

# Указывает для какой архитектуры процессоров собирать модули
APP_ABI := armeabi armeabi-v7a

APP_CPPFLAGS += -frtti

APP_CPPFLAGS += -fexceptions

APP_CPPFLAGS += -DANDROID

# Используется для оптимизации при сборке модулей (debug or release)
APP_OPTIM := release
