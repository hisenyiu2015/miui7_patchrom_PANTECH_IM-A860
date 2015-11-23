.class public Lcom/pantech/device/wifi/SkyWifiTest;
.super Ljava/lang/Object;
.source "SkyWifiTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "sky wifi test"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "sky_wifi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native native_Rx_parameter(II)V
.end method

.method static native native_Tx_parameter_1(I)V
.end method

.method static native native_Tx_parameter_2(III)V
.end method

.method static native native_finalizeWIFI()V
.end method

.method static native native_get_RSSI()I
.end method

.method static native native_get_error_packets()I
.end method

.method static native native_get_mac_packets()I
.end method

.method static native native_get_total_packets()I
.end method

.method static native native_initWIFI()V
.end method

.method static native native_turnOffRx()V
.end method

.method static native native_turnOffTx()V
.end method

.method static native native_turnOff_waveform_tx()V
.end method

.method static native native_turnOnRx()V
.end method

.method static native native_turnOnTx(III)V
.end method

.method static native native_turnOn_waveform_tx(III)V
.end method


# virtual methods
.method public Rx_parameter(II)V
    .locals 0
    .param p1, "bond_low_high"    # I
    .param p2, "channel"    # I

    .prologue
    .line 98
    invoke-static {p1, p2}, Lcom/pantech/device/wifi/SkyWifiTest;->native_Rx_parameter(II)V

    .line 99
    return-void
.end method

.method public Tx_parameter_1(I)V
    .locals 0
    .param p1, "bond_low_high"    # I

    .prologue
    .line 58
    invoke-static {p1}, Lcom/pantech/device/wifi/SkyWifiTest;->native_Tx_parameter_1(I)V

    .line 59
    return-void
.end method

.method public Tx_parameter_2(III)V
    .locals 0
    .param p1, "frame"    # I
    .param p2, "payload"    # I
    .param p3, "spacing"    # I

    .prologue
    .line 63
    invoke-static {p1, p2, p3}, Lcom/pantech/device/wifi/SkyWifiTest;->native_Tx_parameter_2(III)V

    .line 64
    return-void
.end method

.method public finalizeWIFI()V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lcom/pantech/device/wifi/SkyWifiTest;->native_finalizeWIFI()V

    .line 54
    return-void
.end method

.method public get_RSSI()I
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/pantech/device/wifi/SkyWifiTest;->native_get_RSSI()I

    move-result v0

    return v0
.end method

.method public get_error_packets()I
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/pantech/device/wifi/SkyWifiTest;->native_get_error_packets()I

    move-result v0

    return v0
.end method

.method public get_mac_packets()I
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/pantech/device/wifi/SkyWifiTest;->native_get_mac_packets()I

    move-result v0

    return v0
.end method

.method public get_total_packets()I
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/pantech/device/wifi/SkyWifiTest;->native_get_total_packets()I

    move-result v0

    return v0
.end method

.method public initWIFI()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Lcom/pantech/device/wifi/SkyWifiTest;->native_initWIFI()V

    .line 49
    return-void
.end method

.method public turnOffRx()V
    .locals 0

    .prologue
    .line 93
    invoke-static {}, Lcom/pantech/device/wifi/SkyWifiTest;->native_turnOffRx()V

    .line 94
    return-void
.end method

.method public turnOffTx()V
    .locals 0

    .prologue
    .line 73
    invoke-static {}, Lcom/pantech/device/wifi/SkyWifiTest;->native_turnOffTx()V

    .line 74
    return-void
.end method

.method public turnOff_waveform_tx()V
    .locals 0

    .prologue
    .line 83
    invoke-static {}, Lcom/pantech/device/wifi/SkyWifiTest;->native_turnOff_waveform_tx()V

    .line 84
    return-void
.end method

.method public turnOnRx()V
    .locals 0

    .prologue
    .line 88
    invoke-static {}, Lcom/pantech/device/wifi/SkyWifiTest;->native_turnOnRx()V

    .line 89
    return-void
.end method

.method public turnOnTx(III)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "tx_power"    # I
    .param p3, "tx_rate"    # I

    .prologue
    .line 68
    invoke-static {p1, p2, p3}, Lcom/pantech/device/wifi/SkyWifiTest;->native_turnOnTx(III)V

    .line 69
    return-void
.end method

.method public turnOn_waveform_tx(III)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "tx_power"    # I
    .param p3, "bond_low_high"    # I

    .prologue
    .line 78
    invoke-static {p1, p2, p3}, Lcom/pantech/device/wifi/SkyWifiTest;->native_turnOn_waveform_tx(III)V

    .line 79
    return-void
.end method
