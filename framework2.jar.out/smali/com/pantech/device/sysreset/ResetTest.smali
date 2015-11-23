.class public Lcom/pantech/device/sysreset/ResetTest;
.super Ljava/lang/Object;
.source "ResetTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "sys reset test"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "skyreset"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public native GetEnableMDMDump(I)I
.end method

.method public native GetEnableRAMDump(I)I
.end method

.method public native GetEnableUSBDump(I)I
.end method

.method public native GetHwResetCount()I
.end method

.method public native GetResetCount(I)I
.end method

.method public native GetSwResetCount(I)I
.end method

.method public native InitResetCount()V
.end method

.method public native ReqSwReset(I)V
.end method

.method public native SSRCmdRequest(II)I
.end method

.method public SaveErrLog(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/pantech/device/sysreset/ResetTest;->SaveErrLog(II)I

    move-result v0

    return v0
.end method

.method public native SaveErrLog(II)I
.end method

.method public native SetEnableMDMDump(I)I
.end method

.method public native SetEnableRAMDump(I)I
.end method

.method public native SetEnableUSBDump(I)I
.end method
