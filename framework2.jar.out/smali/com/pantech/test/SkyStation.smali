.class public Lcom/pantech/test/SkyStation;
.super Ljava/lang/Object;
.source "SkyStation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "sky_station"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "sky_station"

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

.method static native java_sky_station_isAutoTestMode()I
.end method

.method static native java_sky_station_setAutoTestMode(I)I
.end method


# virtual methods
.method public isAutoTestMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-static {}, Lcom/pantech/test/SkyStation;->java_sky_station_isAutoTestMode()I

    move-result v0

    .line 50
    .local v0, "ret_status":I
    if-ne v0, v1, :cond_0

    .line 53
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutoTestMode(Z)I
    .locals 1
    .param p1, "bAutoTestMode"    # Z

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/pantech/test/SkyStation;->java_sky_station_setAutoTestMode(I)I

    move-result v0

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/test/SkyStation;->java_sky_station_setAutoTestMode(I)I

    move-result v0

    goto :goto_0
.end method
