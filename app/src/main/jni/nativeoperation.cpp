#include "com_example_noveo_nativeexample_utils_NDKUtils.h"
#include <android/log.h>
#include <string>

#define LOG_TAG "native_log"
#define LOGD(x...) __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG,x)

#ifdef __cplusplus
extern "C" {
#endif

JNIEXPORT jstring JNICALL Java_com_example_noveo_nativeexample_utils_NDKUtils_nativeGetMessage(
    JNIEnv* env, 
    jclass cls, 
    jstring jname
) {
    const char *buff = env->GetStringUTFChars(jname, 0);
    std::string name(buff);
    env->ReleaseStringUTFChars(jname, buff);

    std::string result = "Hello, " + name;
    
    LOGD("nativeGetMessage: %s", result.c_str());

    jstring jresult = env->NewStringUTF(result.c_str());
    return jresult;
}

}
