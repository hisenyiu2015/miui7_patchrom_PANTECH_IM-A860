.class public final Lcom/android/server/usb/UsbPantechDevice;
.super Ljava/lang/Object;
.source "UsbPantechDevice.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final PC_MODE:Ljava/lang/String; = "pc_mode"

.field private static final PROP_USB_CURRENT:Ljava/lang/String; = "persist.pantech.usb.current"

.field private static final PROP_USB_DEFAULT:Ljava/lang/String; = "persist.pantech.usb.default"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected isAOPSettings:Z

.field private mBlockPopup:Z

.field private mCallState:I

.field protected mContext:Landroid/content/Context;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field protected mbPluggedUsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/server/usb/UsbPantechDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbPantechDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v2, p0, Lcom/android/server/usb/UsbPantechDevice;->mBlockPopup:Z

    .line 67
    iput v2, p0, Lcom/android/server/usb/UsbPantechDevice;->mCallState:I

    .line 69
    new-instance v1, Lcom/android/server/usb/UsbPantechDevice$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbPantechDevice$1;-><init>(Lcom/android/server/usb/UsbPantechDevice;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbPantechDevice;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 37
    iput-object p1, p0, Lcom/android/server/usb/UsbPantechDevice;->mContext:Landroid/content/Context;

    .line 39
    iput-boolean v2, p0, Lcom/android/server/usb/UsbPantechDevice;->isAOPSettings:Z

    .line 41
    iget-object v1, p0, Lcom/android/server/usb/UsbPantechDevice;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 43
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/server/usb/UsbPantechDevice;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 45
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/server/usb/UsbPantechDevice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/usb/UsbPantechDevice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbPantechDevice;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/android/server/usb/UsbPantechDevice;->mCallState:I

    return p1
.end method

.method private showUsbStorageAcitivity()V
    .locals 8

    .prologue
    .line 162
    sget-object v5, Lcom/android/server/usb/UsbPantechDevice;->TAG:Ljava/lang/String;

    const-string v6, "[+] showUsbStorageAcitivity"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v5, "persist.sys.usb.config"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "currentMode":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->get2ndExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "strExternalSD":Ljava/lang/String;
    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 167
    .local v0, "commaIndex":I
    if-lez v0, :cond_0

    .line 168
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 170
    :cond_0
    sget-object v5, Lcom/android/server/usb/UsbPantechDevice;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showUsbStorageAcitivity currentMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v5, "mass_storage"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 175
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "com.android.systemui"

    const-string v6, "com.android.systemui.usb.UsbStorageActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const/high16 v5, 0x10080000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbPantechDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 182
    sget-object v5, Lcom/android/server/usb/UsbPantechDevice;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showUsbStorageAcitivity   start UsbStorageActivity currentMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    sget-object v5, Lcom/android/server/usb/UsbPantechDevice;->TAG:Ljava/lang/String;

    const-string v6, "[-] showUsbStorageAcitivity"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 183
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/usb/UsbPantechDevice;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showUsbStorageAcitivity Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public changeForcedPCMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    const-string v1, "persist.pantech.usb.pc_mode"

    const-string v2, "diag,diag_mdm,serial_hsic,obex"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "usbModeKey":Ljava/lang/String;
    const-string v1, "persist.pantech.usb.default"

    const-string v2, "pc_mode"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "persist.pantech.usb.current"

    const-string v2, "pc_mode"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-object v0
.end method

.method public isBlockUsbSettingsPopup(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/usb/UsbPantechDevice;->mBlockPopup:Z

    .line 81
    return-void
.end method

.method public showAskOnPopup()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 95
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbPantechDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_settings_when_usb_connected"

    invoke-static {v4, v5}, Lcom/pantech/providers/skysettings/SKYSystem;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 96
    sget-object v4, Lcom/android/server/usb/UsbPantechDevice;->TAG:Ljava/lang/String;

    const-string v5, "AOT Show Setting  = FALSE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :goto_0
    return v3

    .line 99
    :cond_1
    sget-object v4, Lcom/android/server/usb/UsbPantechDevice;->TAG:Ljava/lang/String;

    const-string v5, "AOT Show Setting  = TRUE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    const-string v4, "gsm.sktsubscription.mode"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    sget-object v4, Lcom/android/server/usb/UsbPantechDevice;->TAG:Ljava/lang/String;

    const-string v5, "showAskOnPopup card_type return - skip showAskOnPopup"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    iget v4, p0, Lcom/android/server/usb/UsbPantechDevice;->mCallState:I

    if-eqz v4, :cond_3

    .line 126
    sget-object v4, Lcom/android/server/usb/UsbPantechDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initTelephonyListener mCallState :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/usb/UsbPantechDevice;->mCallState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " return false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_3
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    .line 137
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/usb/UsbPantechDevice;->mBlockPopup:Z

    if-nez v4, :cond_0

    .line 142
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.UsbSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const/high16 v3, 0x34000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usb/UsbPantechDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    sget-object v3, Lcom/android/server/usb/UsbPantechDevice;->TAG:Ljava/lang/String;

    const-string v4, "runUsbSettingsActivity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    :goto_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbPantechDevice;->showUsbStorageAcitivity()V

    .line 157
    const/4 v3, 0x1

    goto :goto_0

    .line 151
    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/usb/UsbPantechDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runUsbSettingsActivity Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
