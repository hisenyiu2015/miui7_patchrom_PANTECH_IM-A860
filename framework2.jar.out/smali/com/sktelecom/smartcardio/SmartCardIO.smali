.class public Lcom/sktelecom/smartcardio/SmartCardIO;
.super Ljava/lang/Object;
.source "SmartCardIO.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "uca-ril"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native connect()I
.end method

.method public native disconnect()I
.end method

.method public native getATR([B)I
.end method

.method public native getChannel()I
.end method

.method public native transmit([B[B)I
.end method
