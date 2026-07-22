# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# signingConfigs signing config and/or buildTypes signing config entries
# in build.gradle.

-keepattributes *Annotation*
-keep public class * {
   public <methods>;
}

-keepclasseswithmembernames class * {
    native <methods>;
}
