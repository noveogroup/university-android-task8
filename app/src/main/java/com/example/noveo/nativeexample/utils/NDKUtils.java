package com.example.noveo.nativeexample.utils;

public class NDKUtils {
    static {
        System.loadLibrary("nativeoperation");
    }

    private NDKUtils() {
        throw new UnsupportedOperationException();
    }

    private static native String nativeGetMessage(final String name);

    public static String getMessage(final String name) {
        return nativeGetMessage(name);
    }
}
