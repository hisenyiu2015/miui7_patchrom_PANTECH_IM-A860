.class public Lcom/pantech/mdm/RootingDetectJNIInterface;
.super Ljava/lang/Object;
.source "RootingDetectJNIInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TamperDetectJNIInterface"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    :try_start_0
    const-string v1, "RootingDetect"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 16
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 17
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "TamperDetectJNIInterface"

    const-string v2, "WARNING: could not load libTamperDetect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getRootStatus()I
.end method

.method public static native setRootStatus()V
.end method
