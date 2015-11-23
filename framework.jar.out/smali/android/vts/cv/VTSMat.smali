.class public Landroid/vts/cv/VTSMat;
.super Ljava/lang/Object;
.source "VTSMat.java"


# instance fields
.field public final nativeObj:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "skymotioncore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Landroid/vts/cv/VTSMat;->NativeVTSMat1()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/vts/cv/VTSMat;->nativeObj:J

    .line 10
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "rows"    # I
    .param p2, "cols"    # I
    .param p3, "channel"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1, p2, p3}, Landroid/vts/cv/VTSMat;->NativeVTSMat2(III)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/vts/cv/VTSMat;->nativeObj:J

    .line 16
    return-void
.end method

.method private static native NativeVTSGet1(J[BI)V
.end method

.method private static native NativeVTSMat1()J
.end method

.method private static native NativeVTSMat2(III)J
.end method

.method private static native NativeVTSPut1(J[BI)V
.end method

.method private static native NativeVTSRelease(J)V
.end method


# virtual methods
.method public get(II[B)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "data"    # [B

    .prologue
    .line 24
    iget-wide v0, p0, Landroid/vts/cv/VTSMat;->nativeObj:J

    array-length v2, p3

    invoke-static {v0, v1, p3, v2}, Landroid/vts/cv/VTSMat;->NativeVTSGet1(J[BI)V

    .line 25
    return-void
.end method

.method public getNativeObjAddr()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Landroid/vts/cv/VTSMat;->nativeObj:J

    return-wide v0
.end method

.method public put(II[B)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "data"    # [B

    .prologue
    .line 20
    iget-wide v0, p0, Landroid/vts/cv/VTSMat;->nativeObj:J

    array-length v2, p3

    invoke-static {v0, v1, p3, v2}, Landroid/vts/cv/VTSMat;->NativeVTSPut1(J[BI)V

    .line 21
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Landroid/vts/cv/VTSMat;->nativeObj:J

    invoke-static {v0, v1}, Landroid/vts/cv/VTSMat;->NativeVTSRelease(J)V

    .line 30
    return-void
.end method
