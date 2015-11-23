.class public Lcom/pantech/device/wifi_log/Pantech_Wifi_Log;
.super Ljava/lang/Object;
.source "Pantech_Wifi_Log.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "pantech wifi log"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "pantech_wifi_log"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native native_Get_Save_Event_Log_Flag()I
.end method

.method static native native_Get_Save_Kernel_Log_Flag()I
.end method

.method static native native_Get_Save_System_Log_Flag()I
.end method

.method static native native_Set_WIFI_Framework_layer_level(II)V
.end method

.method static native native_Set_WIFI_Kernel_layer_level(II)V
.end method


# virtual methods
.method public Get_Save_Event_Log_Flag()I
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/pantech/device/wifi_log/Pantech_Wifi_Log;->native_Get_Save_Event_Log_Flag()I

    move-result v0

    return v0
.end method

.method public Get_Save_Kernel_Log_Flag()I
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/pantech/device/wifi_log/Pantech_Wifi_Log;->native_Get_Save_Kernel_Log_Flag()I

    move-result v0

    return v0
.end method

.method public Get_Save_System_Log_Flag()I
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/pantech/device/wifi_log/Pantech_Wifi_Log;->native_Get_Save_System_Log_Flag()I

    move-result v0

    return v0
.end method

.method public Set_WIFI_Framework_layer_level(II)V
    .locals 0
    .param p1, "layer"    # I
    .param p2, "level"    # I

    .prologue
    .line 41
    invoke-static {p1, p2}, Lcom/pantech/device/wifi_log/Pantech_Wifi_Log;->native_Set_WIFI_Framework_layer_level(II)V

    .line 42
    return-void
.end method

.method public Set_WIFI_Kernel_layer_level(II)V
    .locals 0
    .param p1, "layer"    # I
    .param p2, "level"    # I

    .prologue
    .line 56
    invoke-static {p1, p2}, Lcom/pantech/device/wifi_log/Pantech_Wifi_Log;->native_Set_WIFI_Kernel_layer_level(II)V

    .line 57
    return-void
.end method
