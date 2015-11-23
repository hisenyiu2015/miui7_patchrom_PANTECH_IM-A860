.class public final Lcom/pantech/wifi/log/Blackbox;
.super Ljava/lang/Object;
.source "Blackbox.java"


# static fields
.field public static final LOGCAT_MAIN:I = 0x1

.field public static final LOGCAT_WIFI:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "blackbox_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native BLACKBOX(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public static e(Ljava/lang/String;I)I
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "log"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/pantech/wifi/log/Blackbox;->BLACKBOX(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "log"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0, p1, p2}, Lcom/pantech/wifi/log/Blackbox;->BLACKBOX(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method
