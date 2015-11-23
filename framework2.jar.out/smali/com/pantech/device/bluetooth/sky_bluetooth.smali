.class public Lcom/pantech/device/bluetooth/sky_bluetooth;
.super Ljava/lang/Object;
.source "sky_bluetooth.java"


# static fields
.field private static final BT_CMD_COEX:I = 0x3

.field private static final BT_CMD_DISABLE:I = 0x1

.field private static final BT_CMD_ENABLE:I = 0x0

.field private static final BT_CMD_IS_ENABLED:I = 0x2

.field private static final BT_CMD_POWER_OFF:I = 0x8

.field private static final BT_CMD_POWER_ON:I = 0x7

.field private static final BT_CMD_SSP_DEBUG_MODE_OFF:I = 0x6

.field private static final BT_CMD_SSP_DEBUG_MODE_ON:I = 0x5

.field private static final BT_CMD_TEST_MODE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "sky_bluetooth"


# instance fields
.field private mSky_common:Lcom/pantech/common/sky_common;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "sky_bluetooth"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/pantech/common/sky_common;

    invoke-direct {v0}, Lcom/pantech/common/sky_common;-><init>()V

    iput-object v0, p0, Lcom/pantech/device/bluetooth/sky_bluetooth;->mSky_common:Lcom/pantech/common/sky_common;

    .line 66
    return-void
.end method

.method static native sky_bluetooth_ble_rf_test_mode_java(Z)I
.end method

.method static native sky_bluetooth_get_bd_addr_java()Ljava/lang/String;
.end method

.method static native sky_bluetooth_hci_snoop_log_java(Z)I
.end method

.method static native sky_bluetooth_java(I)I
.end method

.method static native sky_bluetooth_scan_java()Ljava/lang/String;
.end method

.method static native sky_bluetooth_send_hci_cmd_java(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static native sky_bluetooth_toggle_kernel_log_java(Ljava/lang/String;Z)I
.end method

.method static native sky_bluetooth_toggle_liba2dp_log_java(I)I
.end method

.method static native sky_bluetooth_toggle_log_java(I)I
.end method


# virtual methods
.method public sky_bt_coex()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_java(I)I

    move-result v0

    return v0
.end method

.method public sky_bt_disable()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_java(I)I

    move-result v0

    return v0
.end method

.method public sky_bt_enable()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_java(I)I

    move-result v0

    return v0
.end method

.method public sky_bt_get_bd_addr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    const-string v0, "sky_bluetooth"

    const-string v1, "sky_bluetooth_get_bd_addr()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_get_bd_addr_java()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sky_bt_hci_snoop_log(Z)I
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 154
    const-string v1, "sky_bluetooth"

    const-string v2, "sky_bt_hci_snoop_log()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 156
    invoke-static {p1}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_hci_snoop_log_java(Z)I

    move-result v1

    .line 161
    :goto_0
    return v1

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/pantech/device/bluetooth/sky_bluetooth;->mSky_common:Lcom/pantech/common/sky_common;

    const-string v2, "/system/xbin/hcidump"

    invoke-virtual {v1, v2}, Lcom/pantech/common/sky_common;->get_pid_from_process_name(Ljava/lang/String;)I

    move-result v0

    .line 160
    .local v0, "pid":I
    const-string v1, "sky_bluetooth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/pantech/device/bluetooth/sky_bluetooth;->mSky_common:Lcom/pantech/common/sky_common;

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Lcom/pantech/common/sky_common;->sky_common_signal_to_process(II)I

    move-result v1

    goto :goto_0
.end method

.method public sky_bt_is_enabled()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_java(I)I

    move-result v0

    return v0
.end method

.method public sky_bt_le_rf_test_mode(Z)I
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 111
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 112
    invoke-static {p1}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_ble_rf_test_mode_java(Z)I

    move-result v1

    .line 118
    :goto_0
    return v1

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/pantech/device/bluetooth/sky_bluetooth;->mSky_common:Lcom/pantech/common/sky_common;

    const-string v2, "/system/bin/wdsdaemon"

    invoke-virtual {v1, v2}, Lcom/pantech/common/sky_common;->get_pid_from_process_name(Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, "pid":I
    const-string v1, "sky_bluetooth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/pantech/device/bluetooth/sky_bluetooth;->mSky_common:Lcom/pantech/common/sky_common;

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Lcom/pantech/common/sky_common;->sky_common_signal_to_process(II)I

    .line 118
    invoke-static {p1}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_ble_rf_test_mode_java(Z)I

    move-result v1

    goto :goto_0
.end method

.method public sky_bt_power_off()I
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_java(I)I

    move-result v0

    return v0
.end method

.method public sky_bt_power_on()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_java(I)I

    move-result v0

    return v0
.end method

.method public sky_bt_scan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_scan_java()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sky_bt_send_hci_cmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "hci_cmd"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v0, "sky_bluetooth"

    const-string v1, "sky_bt_send_hci_cmd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p1}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_send_hci_cmd_java(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sky_bt_ssp_debug_mode_off()I
    .locals 2

    .prologue
    .line 94
    const-string v0, "sky_bluetooth"

    const-string v1, "SSP_DEBUG_OFF!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_java(I)I

    move-result v0

    return v0
.end method

.method public sky_bt_ssp_debug_mode_on()I
    .locals 2

    .prologue
    .line 89
    const-string v0, "sky_bluetooth"

    const-string v1, "SSP_DEBUG_ON!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_java(I)I

    move-result v0

    return v0
.end method

.method public sky_bt_test_mode()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_java(I)I

    move-result v0

    return v0
.end method

.method public sky_bt_toggle_bt_stack_log(Z)I
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 131
    const-string v0, "sky_bluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sky_bt_toggle_bt_stack_log  state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/pantech/device/bluetooth/sky_bluetooth;->mSky_common:Lcom/pantech/common/sky_common;

    const-string v1, "bluetooth.bluez.log.enable"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/pantech/common/sky_common;->sky_common_set_property(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 135
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pantech/device/bluetooth/sky_bluetooth;->mSky_common:Lcom/pantech/common/sky_common;

    const-string v1, "bluetooth.bluez.log.enable"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/pantech/common/sky_common;->sky_common_set_property(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public sky_bt_toggle_kernel_log(Ljava/lang/String;Z)I
    .locals 3
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 144
    const-string v0, "sky_bluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sky_bt_toggle_kernel_log   state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {p1, p2}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_toggle_kernel_log_java(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public sky_bt_toggle_liba2dp_log(I)I
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 139
    const-string v0, "sky_bluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sky_bt_toggle_liba2dp_log  state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {p1}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_toggle_liba2dp_log_java(I)I

    move-result v0

    return v0
.end method

.method public sky_bt_toggle_log(I)I
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 123
    const-string v0, "sky_bluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sky_bt_toggle_log  pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/pantech/device/bluetooth/sky_bluetooth;->sky_bluetooth_toggle_log_java(I)I

    move-result v0

    goto :goto_0
.end method
