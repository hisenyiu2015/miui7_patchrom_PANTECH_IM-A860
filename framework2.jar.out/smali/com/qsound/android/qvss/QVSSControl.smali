.class public final Lcom/qsound/android/qvss/QVSSControl;
.super Ljava/lang/Object;
.source "QVSSControl.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "qvss_control_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native get_delay()I
.end method

.method public native get_enable()Z
.end method

.method public native get_highpassFrequency()I
.end method

.method public native get_highpassLevel()I
.end method

.method public native get_inputScale()I
.end method

.method public native get_lowpassFrequency()I
.end method

.method public native get_lowpassLevel()I
.end method

.method public native get_outputType()I
.end method

.method public native get_qrumbleEffectScale()I
.end method

.method public native get_qrumbleEnable()Z
.end method

.method public native get_qrumbleFrequency()I
.end method

.method public native get_qsizzleEffectScale()I
.end method

.method public native get_qsizzleEnable()Z
.end method

.method public native get_qsizzleFrequency()I
.end method

.method public native set_delay(I)Z
.end method

.method public native set_enable(Z)Z
.end method

.method public native set_highpassFrequency(I)Z
.end method

.method public native set_highpassLevel(I)Z
.end method

.method public native set_inputScale(I)Z
.end method

.method public native set_lowpassFrequency(I)Z
.end method

.method public native set_lowpassLevel(I)Z
.end method

.method public native set_outputType(I)Z
.end method

.method public native set_qrumbleEffectScale(I)Z
.end method

.method public native set_qrumbleEnable(Z)Z
.end method

.method public native set_qrumbleFrequency(I)Z
.end method

.method public native set_qsizzleEffectScale(I)Z
.end method

.method public native set_qsizzleEnable(Z)Z
.end method

.method public native set_qsizzleFrequency(I)Z
.end method
