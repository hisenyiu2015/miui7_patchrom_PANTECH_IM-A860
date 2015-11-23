.class public Landroid/vts/motion/SKYMotionCore;
.super Ljava/lang/Object;
.source "SKYMotionCore.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string/jumbo v0, "skymotioncore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native NativeProcessFrame(JI)I
.end method

.method public native NativeRelease()V
.end method

.method public native NativeSetParameter(II)V
.end method

.method public native NativeSetup(I)V
.end method
