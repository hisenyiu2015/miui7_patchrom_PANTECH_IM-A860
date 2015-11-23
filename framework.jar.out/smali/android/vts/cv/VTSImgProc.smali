.class public Landroid/vts/cv/VTSImgProc;
.super Ljava/lang/Object;
.source "VTSImgProc.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "skymotioncore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method private static native NativeVTSCvtColor(JJI)V
.end method

.method private static native NativeVTSResize(JJ)V
.end method

.method public static cvtColor(Landroid/vts/cv/VTSMat;Landroid/vts/cv/VTSMat;I)V
    .locals 4
    .param p0, "src"    # Landroid/vts/cv/VTSMat;
    .param p1, "dst"    # Landroid/vts/cv/VTSMat;
    .param p2, "code"    # I

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/vts/cv/VTSMat;->getNativeObjAddr()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/vts/cv/VTSMat;->getNativeObjAddr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroid/vts/cv/VTSImgProc;->NativeVTSCvtColor(JJI)V

    .line 16
    return-void
.end method

.method public static resize(Landroid/vts/cv/VTSMat;Landroid/vts/cv/VTSMat;II)V
    .locals 4
    .param p0, "src"    # Landroid/vts/cv/VTSMat;
    .param p1, "dst"    # Landroid/vts/cv/VTSMat;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 11
    invoke-virtual {p0}, Landroid/vts/cv/VTSMat;->getNativeObjAddr()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/vts/cv/VTSMat;->getNativeObjAddr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/vts/cv/VTSImgProc;->NativeVTSResize(JJ)V

    .line 12
    return-void
.end method
