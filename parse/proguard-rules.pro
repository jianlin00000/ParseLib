# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
#指定代码压缩等级为5级（0-7级）
-optimizationpasses 5
# 指定不忽略非公共库的类、类成员
-dontskipnonpubliclibraryclasses
-dontskipnonpubliclibraryclassmembers
# 避免混淆内部类、泛型、匿名类
-keepattributes InnerClasses,Signature,EnclosingMethod

# 抛出异常时保留代码行号
-keepattributes SourceFile,LineNumberTable
#如果使用了上一行配置，还需要添加如下配置将源文件重命名为SourceFile，以便通过鼠标点击直达源文件：
-renamesourcefileattribute SourceFile
# 不混淆包含native方法的类的类名以及native方法名
-keepclasseswithmembernames class * {
native <methods>;
}
#保留support下的所有类及其内部类
-keep class android.support.** {*;}
# 指定混淆采用的算法，后面的参数是一个过滤器
# 这个过滤器是谷歌推荐的算法，一般不做更改
-optimizations !code/simplification/cast,!field/*,!class/merging/*

#忽略警告
-ignorewarnings