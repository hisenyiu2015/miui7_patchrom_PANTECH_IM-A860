.class public Lcom/pantech/test/ExtStorageTest;
.super Ljava/lang/Object;
.source "ExtStorageTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtStorageTest"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "ExtStorageTest"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static native ExternalStorage_GetDetectionCnt(I)I
.end method

.method static native ExternalStorage_SetDetectionCnt(II)I
.end method


# virtual methods
.method public GetDetectionCnt(I)I
    .locals 1
    .param p1, "storagetype"    # I

    .prologue
    .line 44
    invoke-static {p1}, Lcom/pantech/test/ExtStorageTest;->ExternalStorage_GetDetectionCnt(I)I

    move-result v0

    return v0
.end method

.method public SetDetectionCnt(II)I
    .locals 1
    .param p1, "storagetype"    # I
    .param p2, "adjust"    # I

    .prologue
    .line 40
    invoke-static {p1, p2}, Lcom/pantech/test/ExtStorageTest;->ExternalStorage_SetDetectionCnt(II)I

    move-result v0

    return v0
.end method
