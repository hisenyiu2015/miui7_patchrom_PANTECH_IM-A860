.class public Lcom/android/server/SkyEcomodeService;
.super Landroid/os/ISkyEcomodeService$Stub;
.source "SkyEcomodeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SkyEcomodeService$1;,
        Lcom/android/server/SkyEcomodeService$EcomodeReceiver;,
        Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;,
        Lcom/android/server/SkyEcomodeService$SkyEcoWorkerThread;
    }
.end annotation


# static fields
.field private static final ACTION_CONFIRMED_ECO_MODE:Ljava/lang/String; = "pantech.eco.CONFIRMED"

.field private static final ACT_CHANGE_BRIGHTNESS:Ljava/lang/String; = "com.pantech.intent.action.BRIGHTNESS_CHANGE"

.field private static final CPU_LIMIT_LEVEL:I = 0xf

.field private static final CPU_STATE_10:I = 0xa

.field private static final CPU_STATE_15:I = 0xf

.field private static final CPU_STATE_22:I = 0x16

.field private static final ECO_MODE_IS_OFF:Ljava/lang/String; = "pantech.eco.MODE_OFF"

.field private static final ECO_MODE_IS_ON:Ljava/lang/String; = "pantech.eco.MODE_ON"

.field private static final ECO_SESSION_IS_OFF:Ljava/lang/String; = "pantech.eco.SESSION_OFF"

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final MINIMUM_SCREEN_TIMEOUT_VALUE:I = 0x3a98

.field private static final NO:Ljava/lang/String; = "no"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x2

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static final YES:Ljava/lang/String; = "yes"

.field private static bBootCompleted:Z


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private batteryLevel:I

.field private batteryStatus:I

.field private checkMode:Ljava/lang/String;

.field private currentBatteryLevel:I

.field private currentBatteryStatus:I

.field private mBT:Z

.field private mBatteryLevel:I

.field private mBootCompleteOK:Z

.field private mBr:Z

.field private mBrLevel:I

.field private mBrTimeout:Z

.field private mCheckBattery:Z

.field private mContext:Landroid/content/Context;

.field private mEcomodeReceiver:Landroid/content/BroadcastReceiver;

.field private mGetDataOK:Z

.field private mHandler:Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;

.field private mMode:Z

.field private mNFC:Z

.field private mSessionOn:Z

.field private mWifi:Z

.field private mWorker:Lcom/android/server/SkyEcomodeService$SkyEcoWorkerThread;

.field private nfcAdapter:Landroid/nfc/NfcAdapter;

.field private noButtonClicked:Z

.field private skyCtrlDrv:Lcom/pantech/test/Sky_ctrl_drv;

.field private final swControlPackageName:Ljava/lang/String;

.field private final swControlServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SkyEcomodeService;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/SkyEcomodeService;->bBootCompleted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Landroid/os/ISkyEcomodeService$Stub;-><init>()V

    .line 38
    const-string v0, "SkyEcomodeService"

    iput-object v0, p0, Lcom/android/server/SkyEcomodeService;->TAG:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/android/server/SkyEcomodeService;->mBootCompleteOK:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/server/SkyEcomodeService;->mGetDataOK:Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SkyEcomodeService;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 103
    new-instance v0, Lcom/pantech/test/Sky_ctrl_drv;

    invoke-direct {v0}, Lcom/pantech/test/Sky_ctrl_drv;-><init>()V

    iput-object v0, p0, Lcom/android/server/SkyEcomodeService;->skyCtrlDrv:Lcom/pantech/test/Sky_ctrl_drv;

    .line 106
    iput-boolean v1, p0, Lcom/android/server/SkyEcomodeService;->DEBUG:Z

    .line 108
    const-string v0, "com.pantech.powersaver"

    iput-object v0, p0, Lcom/android/server/SkyEcomodeService;->swControlPackageName:Ljava/lang/String;

    .line 109
    const-string v0, "com.pantech.powersaver.service.ScreenService"

    iput-object v0, p0, Lcom/android/server/SkyEcomodeService;->swControlServiceName:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    .line 114
    new-instance v0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerThread;

    const-string v1, "SkyEcoServiceWorker"

    invoke-direct {v0, p0, v1}, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerThread;-><init>(Lcom/android/server/SkyEcomodeService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SkyEcomodeService;->mWorker:Lcom/android/server/SkyEcomodeService$SkyEcoWorkerThread;

    .line 115
    iget-object v0, p0, Lcom/android/server/SkyEcomodeService;->mWorker:Lcom/android/server/SkyEcomodeService$SkyEcoWorkerThread;

    invoke-virtual {v0}, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerThread;->start()V

    .line 117
    new-instance v0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;-><init>(Lcom/android/server/SkyEcomodeService;)V

    iput-object v0, p0, Lcom/android/server/SkyEcomodeService;->mEcomodeReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SkyEcomodeService;)Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/SkyEcomodeService;->mHandler:Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/SkyEcomodeService;Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;)Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;
    .param p1, "x1"    # Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/server/SkyEcomodeService;->mHandler:Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/server/SkyEcomodeService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/SkyEcomodeService;->setCPUState(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/SkyEcomodeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/server/SkyEcomodeService;->startSWControl()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/SkyEcomodeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/server/SkyEcomodeService;->checkProcess()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/SkyEcomodeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/server/SkyEcomodeService;->batteryStatus:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/SkyEcomodeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/server/SkyEcomodeService;->batteryStatus:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/SkyEcomodeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/server/SkyEcomodeService;->currentBatteryLevel:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/SkyEcomodeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/server/SkyEcomodeService;->currentBatteryLevel:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/SkyEcomodeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/server/SkyEcomodeService;->batteryLevel:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/SkyEcomodeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/server/SkyEcomodeService;->batteryLevel:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/SkyEcomodeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/server/SkyEcomodeService;->noButtonClicked:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/SkyEcomodeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/SkyEcomodeService;->backup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/SkyEcomodeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/SkyEcomodeService;->doWifiBackup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/SkyEcomodeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/SkyEcomodeService;->doBTBackup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/server/SkyEcomodeService;->bBootCompleted:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/SkyEcomodeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/SkyEcomodeService;->doNFCBackup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 36
    sput-boolean p0, Lcom/android/server/SkyEcomodeService;->bBootCompleted:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/SkyEcomodeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/server/SkyEcomodeService;->getDataFromProvider()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/SkyEcomodeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/server/SkyEcomodeService;->mMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/SkyEcomodeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/server/SkyEcomodeService;->currentBatteryStatus:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/SkyEcomodeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/server/SkyEcomodeService;->currentBatteryStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/SkyEcomodeService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/SkyEcomodeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/server/SkyEcomodeService;->mSessionOn:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/SkyEcomodeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/server/SkyEcomodeService;->mCheckBattery:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/SkyEcomodeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SkyEcomodeService;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/server/SkyEcomodeService;->restore()V

    return-void
.end method

.method private backup(Ljava/lang/String;)V
    .locals 12
    .param p1, "choosen"    # Ljava/lang/String;

    .prologue
    .line 662
    iget-object v9, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 664
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v9, "yes"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 698
    iget-boolean v9, p0, Lcom/android/server/SkyEcomodeService;->mBrTimeout:Z

    if-eqz v9, :cond_2

    .line 702
    const-string v9, "eco_backup_timeout_old"

    const-string v10, "screen_off_timeout"

    const/16 v11, 0x7530

    invoke-static {v2, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v2, v9, v10}, Lcom/pantech/providers/skysettings/SKYEco;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 704
    const-string v9, "screen_off_timeout"

    const/16 v10, 0x3a98

    invoke-static {v2, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 709
    :goto_0
    iget-boolean v9, p0, Lcom/android/server/SkyEcomodeService;->mBr:Z

    if-eqz v9, :cond_5

    .line 710
    const/4 v1, 0x0

    .line 713
    .local v1, "autoBrightNess":I
    :try_start_0
    const-string v9, "screen_brightness_mode"

    invoke-static {v2, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 720
    :goto_1
    const/4 v9, 0x1

    if-ne v1, v9, :cond_3

    sget-boolean v9, Lcom/android/server/SkyEcomodeService;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v9, :cond_3

    .line 721
    const/high16 v4, 0x3f800000    # 1.0f

    .line 723
    .local v4, "mOldAutoBrightness":F
    :try_start_1
    const-string v9, "screen_auto_brightness_adj"

    invoke-static {v2, v9}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 730
    :goto_2
    const-string v9, "eco_backup_brightness_old"

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v9, v10}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 744
    .end local v4    # "mOldAutoBrightness":F
    :goto_3
    const-string v9, "screen_brightness"

    iget v10, p0, Lcom/android/server/SkyEcomodeService;->mBrLevel:I

    invoke-static {v2, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 747
    const/4 v9, 0x1

    if-ne v1, v9, :cond_4

    .line 749
    const-string v9, "eco_backup_brightness_auto"

    const/4 v10, 0x1

    invoke-static {v2, v9, v10}, Lcom/pantech/providers/skysettings/SKYEco;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 750
    const-string v9, "screen_brightness_mode"

    const/4 v10, 0x0

    invoke-static {v2, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 757
    :goto_4
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.pantech.intent.action.BRIGHTNESS_CHANGE"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 758
    .local v6, "myIntent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 761
    :try_start_2
    const-string v9, "power"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v7

    .line 762
    .local v7, "power":Landroid/os/IPowerManager;
    if-eqz v7, :cond_0

    .line 764
    iget v9, p0, Lcom/android/server/SkyEcomodeService;->mBrLevel:I

    invoke-interface {v7, v9}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 774
    .end local v1    # "autoBrightNess":I
    .end local v6    # "myIntent":Landroid/content/Intent;
    .end local v7    # "power":Landroid/os/IPowerManager;
    :cond_0
    :goto_5
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.EcoToast"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 775
    .local v0, "IntentToast":Landroid/content/Intent;
    const-string v9, "msg"

    const-string v10, "start_msg"

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    iget-object v9, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 778
    const-string v9, "eco_session_on"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v9, v10}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 809
    .end local v0    # "IntentToast":Landroid/content/Intent;
    :cond_1
    :goto_6
    return-void

    .line 706
    :cond_2
    const-string v9, "eco_backup_timeout_old"

    const/4 v10, 0x0

    invoke-static {v2, v9, v10}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 714
    .restart local v1    # "autoBrightNess":I
    :catch_0
    move-exception v3

    .line 716
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v3}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 727
    .end local v3    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v4    # "mOldAutoBrightness":F
    :catch_1
    move-exception v8

    .line 728
    .local v8, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    .line 733
    .end local v4    # "mOldAutoBrightness":F
    .end local v8    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    const/16 v5, 0xff

    .line 735
    .local v5, "mOldBrightness":I
    :try_start_3
    const-string v9, "screen_brightness"

    invoke-static {v2, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v5

    .line 742
    :goto_7
    const-string v9, "eco_backup_brightness_old"

    invoke-static {v2, v9, v5}, Lcom/pantech/providers/skysettings/SKYEco;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 739
    :catch_2
    move-exception v8

    .line 740
    .restart local v8    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v5, 0xff

    goto :goto_7

    .line 753
    .end local v5    # "mOldBrightness":I
    .end local v8    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    const-string v9, "eco_backup_brightness_auto"

    const/4 v10, 0x0

    invoke-static {v2, v9, v10}, Lcom/pantech/providers/skysettings/SKYEco;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 769
    .end local v1    # "autoBrightNess":I
    :cond_5
    const-string v9, "eco_backup_brightness_auto"

    const/4 v10, 0x0

    invoke-static {v2, v9, v10}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 770
    const-string v9, "eco_backup_brightness_old"

    const/4 v10, 0x0

    invoke-static {v2, v9, v10}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 783
    :cond_6
    const-string v9, "no"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 790
    const-string v9, "eco_backup_sound_old"

    const/4 v10, 0x0

    invoke-static {v2, v9, v10}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 792
    const-string v9, "eco_backup_timeout_old"

    const/4 v10, 0x0

    invoke-static {v2, v9, v10}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 793
    const-string v9, "eco_backup_brightness_old"

    const/4 v10, 0x0

    invoke-static {v2, v9, v10}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 796
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.EcoToast"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 797
    .restart local v0    # "IntentToast":Landroid/content/Intent;
    const-string v9, "msg"

    const-string v10, "need_to_restart"

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    iget-object v9, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 800
    const-string v9, "eco_session_on"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v9, v10}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    .line 766
    .end local v0    # "IntentToast":Landroid/content/Intent;
    .restart local v1    # "autoBrightNess":I
    .restart local v6    # "myIntent":Landroid/content/Intent;
    :catch_3
    move-exception v9

    goto/16 :goto_5
.end method

.method private checkProcess()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 587
    iget-boolean v1, p0, Lcom/android/server/SkyEcomodeService;->mSessionOn:Z

    if-eqz v1, :cond_2

    .line 592
    iget v1, p0, Lcom/android/server/SkyEcomodeService;->batteryStatus:I

    if-ne v1, v2, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget v1, p0, Lcom/android/server/SkyEcomodeService;->batteryLevel:I

    iget v2, p0, Lcom/android/server/SkyEcomodeService;->mBatteryLevel:I

    if-lt v1, v2, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/android/server/SkyEcomodeService;->restore()V

    goto :goto_0

    .line 619
    :cond_2
    iget v1, p0, Lcom/android/server/SkyEcomodeService;->batteryStatus:I

    if-eq v1, v2, :cond_0

    .line 627
    iget v1, p0, Lcom/android/server/SkyEcomodeService;->batteryLevel:I

    iget v2, p0, Lcom/android/server/SkyEcomodeService;->mBatteryLevel:I

    if-ge v1, v2, :cond_0

    .line 635
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EcoConfirmDialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 636
    .local v0, "showDlg":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 637
    iget-object v1, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private doBTBackup(Ljava/lang/String;)V
    .locals 6
    .param p1, "choosen"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1146
    const-string v2, "yes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1147
    iget-object v2, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1148
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/server/SkyEcomodeService;->mBT:Z

    if-nez v2, :cond_1

    .line 1149
    const-string v2, "eco_backup_bt"

    invoke-static {v0, v2, v4}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1179
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 1153
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/SkyEcomodeService;->mBT:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/SkyEcomodeService;->isBTConnected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1154
    invoke-direct {p0}, Lcom/android/server/SkyEcomodeService;->getBTState()I

    move-result v1

    .line 1155
    .local v1, "currentState":I
    const-string v2, "SkyEcomodeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentBTState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    if-nez v1, :cond_2

    .line 1157
    const-string v2, "eco_backup_bt"

    invoke-static {v0, v2, v5}, Lcom/pantech/providers/skysettings/SKYEco;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1160
    :cond_2
    const-string v2, "eco_backup_bt"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/pantech/providers/skysettings/SKYEco;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1161
    invoke-virtual {p0, v5}, Lcom/android/server/SkyEcomodeService;->setBTState(Z)V

    goto :goto_0

    .line 1166
    .end local v1    # "currentState":I
    :cond_3
    const-string v2, "SkyEcomodeService"

    const-string v3, "put null for BT"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const-string v2, "eco_backup_bt"

    invoke-static {v0, v2, v4}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1171
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_4
    const-string v2, "no"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1172
    iget-object v2, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1173
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    const-string v2, "eco_backup_bt"

    invoke-static {v0, v2, v4}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private doNFCBackup(Ljava/lang/String;)V
    .locals 5
    .param p1, "choosen"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1253
    const-string v2, "yes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1254
    iget-object v2, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1255
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/server/SkyEcomodeService;->mNFC:Z

    if-nez v2, :cond_1

    .line 1256
    const-string v2, "eco_backup_nfc"

    invoke-static {v0, v2, v3}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1290
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 1260
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/SkyEcomodeService;->mNFC:Z

    if-eqz v2, :cond_3

    .line 1261
    invoke-direct {p0}, Lcom/android/server/SkyEcomodeService;->getNFCState()I

    move-result v1

    .line 1265
    .local v1, "currentState":I
    if-nez v1, :cond_2

    .line 1266
    const-string v2, "eco_backup_nfc"

    invoke-static {v0, v2, v4}, Lcom/pantech/providers/skysettings/SKYEco;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1269
    :cond_2
    const-string v2, "eco_backup_nfc"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/pantech/providers/skysettings/SKYEco;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1270
    invoke-virtual {p0, v4}, Lcom/android/server/SkyEcomodeService;->setNFCState(Z)V

    goto :goto_0

    .line 1278
    .end local v1    # "currentState":I
    :cond_3
    const-string v2, "eco_backup_nfc"

    invoke-static {v0, v2, v3}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1282
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_4
    const-string v2, "no"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1283
    iget-object v2, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1284
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    const-string v2, "eco_backup_nfc"

    invoke-static {v0, v2, v3}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private doWifiBackup(Ljava/lang/String;)V
    .locals 6
    .param p1, "chosen"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1032
    const-string v2, "yes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1033
    iget-object v2, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1034
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/server/SkyEcomodeService;->mWifi:Z

    if-nez v2, :cond_1

    .line 1035
    const-string v2, "eco_backup_wifi"

    invoke-static {v0, v2, v4}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1065
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 1039
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/SkyEcomodeService;->mWifi:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/SkyEcomodeService;->isAPConnected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/SkyEcomodeService;->getWifiState()I

    move-result v1

    .line 1041
    .local v1, "currentState":I
    const-string v2, "SkyEcomodeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentWiFiState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    if-nez v1, :cond_2

    .line 1043
    const-string v2, "eco_backup_wifi"

    invoke-static {v0, v2, v5}, Lcom/pantech/providers/skysettings/SKYEco;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1046
    :cond_2
    const-string v2, "eco_backup_wifi"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/pantech/providers/skysettings/SKYEco;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1047
    invoke-direct {p0, v5}, Lcom/android/server/SkyEcomodeService;->setWifiState(Z)V

    goto :goto_0

    .line 1052
    .end local v1    # "currentState":I
    :cond_3
    const-string v2, "SkyEcomodeService"

    const-string v3, "put null for wifi"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string v2, "eco_backup_wifi"

    invoke-static {v0, v2, v4}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1057
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_4
    const-string v2, "no"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1058
    iget-object v2, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1059
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    const-string v2, "eco_backup_wifi"

    invoke-static {v0, v2, v4}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private getBTState()I
    .locals 4

    .prologue
    .line 1206
    const/4 v2, 0x0

    .line 1207
    .local v2, "state":I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1209
    .local v0, "mBtAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 1210
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 1211
    .local v1, "s":I
    const/16 v3, 0xc

    if-ne v1, v3, :cond_1

    .line 1212
    const/4 v2, 0x1

    .line 1224
    .end local v1    # "s":I
    :cond_0
    :goto_0
    return v2

    .line 1213
    .restart local v1    # "s":I
    :cond_1
    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    .line 1214
    const/4 v2, 0x0

    goto :goto_0

    .line 1216
    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private getCPUState()I
    .locals 3

    .prologue
    .line 1011
    iget-object v2, p0, Lcom/android/server/SkyEcomodeService;->skyCtrlDrv:Lcom/pantech/test/Sky_ctrl_drv;

    invoke-virtual {v2}, Lcom/pantech/test/Sky_ctrl_drv;->Sky_Ctrl_Get_Eco()I

    move-result v0

    .line 1014
    .local v0, "ecoInfo":I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 1015
    const/16 v1, 0xa

    .line 1023
    .local v1, "mCPUState":I
    :goto_0
    return v1

    .line 1018
    .end local v1    # "mCPUState":I
    :cond_0
    const/16 v1, 0xf

    .restart local v1    # "mCPUState":I
    goto :goto_0
.end method

.method private getDataFromProvider()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 534
    const/4 v1, 0x0

    .line 535
    .local v1, "finished":Z
    iget-object v2, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 537
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "eco_mode_enable"

    invoke-static {v0, v2}, Lcom/pantech/providers/skysettings/SKYEco;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SkyEcomodeService;->checkMode:Ljava/lang/String;

    .line 539
    iget-object v2, p0, Lcom/android/server/SkyEcomodeService;->checkMode:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 540
    const-string v2, "SkyEcomodeService"

    const-string v3, "SKYEco.ECO_MODE_ENABLE == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v1, 0x0

    .line 542
    iput-boolean v4, p0, Lcom/android/server/SkyEcomodeService;->mMode:Z

    .line 572
    :goto_0
    return v1

    .line 545
    :cond_0
    const-string v2, "eco_mode_enable"

    invoke-static {v0, v2}, Lcom/pantech/providers/skysettings/SKYEco;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SkyEcomodeService;->mMode:Z

    .line 546
    const-string v2, "eco_batt_level"

    invoke-static {v0, v2}, Lcom/pantech/providers/skysettings/SKYEco;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/SkyEcomodeService;->mBatteryLevel:I

    .line 547
    iget v2, p0, Lcom/android/server/SkyEcomodeService;->mBatteryLevel:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 548
    iput-boolean v4, p0, Lcom/android/server/SkyEcomodeService;->mCheckBattery:Z

    .line 553
    :goto_1
    const-string v2, "eco_option_wifi"

    invoke-static {v0, v2}, Lcom/pantech/providers/skysettings/SKYEco;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SkyEcomodeService;->mWifi:Z

    .line 554
    const-string v2, "eco_option_bt"

    invoke-static {v0, v2}, Lcom/pantech/providers/skysettings/SKYEco;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SkyEcomodeService;->mBT:Z

    .line 555
    const-string v2, "eco_option_nfc"

    invoke-static {v0, v2}, Lcom/pantech/providers/skysettings/SKYEco;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SkyEcomodeService;->mNFC:Z

    .line 558
    const-string v2, "eco_option_timeout"

    invoke-static {v0, v2}, Lcom/pantech/providers/skysettings/SKYEco;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SkyEcomodeService;->mBrTimeout:Z

    .line 559
    const-string v2, "eco_option_brightness"

    invoke-static {v0, v2}, Lcom/pantech/providers/skysettings/SKYEco;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SkyEcomodeService;->mBr:Z

    .line 560
    const-string v2, "eco_option_br_level"

    invoke-static {v0, v2}, Lcom/pantech/providers/skysettings/SKYEco;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/SkyEcomodeService;->mBrLevel:I

    .line 562
    const-string v2, "eco_session_on"

    invoke-static {v0, v2}, Lcom/pantech/providers/skysettings/SKYEco;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SkyEcomodeService;->mSessionOn:Z

    .line 563
    const-string v2, "eco_nobutton_clicked"

    invoke-static {v0, v2}, Lcom/pantech/providers/skysettings/SKYEco;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SkyEcomodeService;->noButtonClicked:Z

    .line 565
    const/4 v1, 0x1

    goto :goto_0

    .line 550
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/SkyEcomodeService;->mCheckBattery:Z

    goto :goto_1
.end method

.method private getNFCState()I
    .locals 4

    .prologue
    .line 1307
    const/4 v1, 0x0

    .line 1310
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/server/SkyEcomodeService;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_0

    .line 1311
    iget-object v2, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    const-string v3, "nfc"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 1312
    .local v0, "mNfcManager":Landroid/nfc/NfcManager;
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SkyEcomodeService;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 1318
    .end local v0    # "mNfcManager":Landroid/nfc/NfcManager;
    :cond_0
    iget-object v2, p0, Lcom/android/server/SkyEcomodeService;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/SkyEcomodeService;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled_RWP2P()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1319
    const/4 v1, 0x1

    .line 1326
    :cond_1
    return v1
.end method

.method private restore()V
    .locals 15

    .prologue
    .line 819
    iget-object v13, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 849
    .local v5, "cr":Landroid/content/ContentResolver;
    const-string v13, "eco_backup_timeout_old"

    invoke-static {v5, v13}, Lcom/pantech/providers/skysettings/SKYEco;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 850
    .local v3, "brTimeout":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 854
    const-string v13, "screen_off_timeout"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v5, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 857
    :cond_0
    const-string v13, "eco_backup_brightness_old"

    invoke-static {v5, v13}, Lcom/pantech/providers/skysettings/SKYEco;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 858
    .local v2, "br":Ljava/lang/String;
    const-string v13, "eco_backup_brightness_auto"

    invoke-static {v5, v13}, Lcom/pantech/providers/skysettings/SKYEco;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 864
    .local v1, "autoBrightness":Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 868
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    sget-boolean v13, Lcom/android/server/SkyEcomodeService;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v13, :cond_8

    .line 869
    const-string v13, "screen_auto_brightness_adj"

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-static {v5, v13, v14}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 875
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 876
    const-string v13, "screen_brightness_mode"

    const/4 v14, 0x1

    invoke-static {v5, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 883
    :goto_1
    :try_start_0
    const-string v13, "power"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v10

    .line 884
    .local v10, "power":Landroid/os/IPowerManager;
    if-eqz v10, :cond_1

    .line 886
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    sget-boolean v13, Lcom/android/server/SkyEcomodeService;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v13, :cond_a

    .line 887
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-interface {v10, v13}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    .end local v10    # "power":Landroid/os/IPowerManager;
    :cond_1
    :goto_2
    new-instance v8, Landroid/content/Intent;

    const-string v13, "com.pantech.intent.action.BRIGHTNESS_CHANGE"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 896
    .local v8, "myIntent":Landroid/content/Intent;
    iget-object v13, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 901
    .end local v8    # "myIntent":Landroid/content/Intent;
    :cond_2
    iget v13, p0, Lcom/android/server/SkyEcomodeService;->batteryLevel:I

    const/16 v14, 0xf

    if-le v13, v14, :cond_3

    .line 902
    const/4 v13, 0x0

    invoke-direct {p0, v13}, Lcom/android/server/SkyEcomodeService;->setCPUState(Z)V

    .line 906
    :cond_3
    const-string v13, "eco_backup_wifi"

    invoke-static {v5, v13}, Lcom/pantech/providers/skysettings/SKYEco;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 907
    .local v12, "wifi":Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 908
    invoke-virtual {p0}, Lcom/android/server/SkyEcomodeService;->getWifiState()I

    move-result v6

    .line 909
    .local v6, "currentState":I
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 913
    .local v11, "restoreState":I
    if-eq v6, v11, :cond_4

    if-eqz v11, :cond_4

    .line 914
    const/4 v13, 0x1

    invoke-direct {p0, v13}, Lcom/android/server/SkyEcomodeService;->setWifiState(Z)V

    .line 918
    .end local v6    # "currentState":I
    .end local v11    # "restoreState":I
    :cond_4
    const-string v13, "eco_backup_bt"

    invoke-static {v5, v13}, Lcom/pantech/providers/skysettings/SKYEco;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 919
    .local v4, "bt":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 920
    invoke-direct {p0}, Lcom/android/server/SkyEcomodeService;->getBTState()I

    move-result v6

    .line 921
    .restart local v6    # "currentState":I
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 925
    .restart local v11    # "restoreState":I
    if-eq v6, v11, :cond_5

    if-eqz v11, :cond_5

    .line 926
    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Lcom/android/server/SkyEcomodeService;->setBTState(Z)V

    .line 930
    .end local v6    # "currentState":I
    .end local v11    # "restoreState":I
    :cond_5
    const-string v13, "eco_backup_nfc"

    invoke-static {v5, v13}, Lcom/pantech/providers/skysettings/SKYEco;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 931
    .local v9, "nfc":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 932
    invoke-direct {p0}, Lcom/android/server/SkyEcomodeService;->getNFCState()I

    move-result v6

    .line 933
    .restart local v6    # "currentState":I
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 937
    .restart local v11    # "restoreState":I
    if-eq v6, v11, :cond_6

    if-eqz v11, :cond_6

    .line 938
    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Lcom/android/server/SkyEcomodeService;->setNFCState(Z)V

    .line 942
    .end local v6    # "currentState":I
    .end local v11    # "restoreState":I
    :cond_6
    const-string v13, "eco_nobutton_clicked"

    invoke-static {v5, v13}, Lcom/pantech/providers/skysettings/SKYEco;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/server/SkyEcomodeService;->noButtonClicked:Z

    .line 944
    iget-boolean v13, p0, Lcom/android/server/SkyEcomodeService;->noButtonClicked:Z

    if-nez v13, :cond_7

    .line 946
    new-instance v0, Landroid/content/Intent;

    const-string v13, "android.intent.action.EcoToast"

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 947
    .local v0, "IntentToast":Landroid/content/Intent;
    const-string v13, "msg"

    const-string v14, "end_msg"

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    iget-object v13, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 951
    .end local v0    # "IntentToast":Landroid/content/Intent;
    :cond_7
    const-string v13, "eco_session_on"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v13, v14}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 955
    new-instance v7, Landroid/content/Intent;

    const-string v13, "pantech.eco.SESSION_OFF"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 956
    .local v7, "intent":Landroid/content/Intent;
    iget-object v13, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 961
    invoke-direct {p0}, Lcom/android/server/SkyEcomodeService;->stopSWControl()V

    .line 966
    return-void

    .line 872
    .end local v4    # "bt":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "nfc":Ljava/lang/String;
    .end local v12    # "wifi":Ljava/lang/String;
    :cond_8
    const-string v13, "screen_brightness"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v5, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 878
    :cond_9
    const-string v13, "screen_brightness_mode"

    const/4 v14, 0x0

    invoke-static {v5, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 890
    .restart local v10    # "power":Landroid/os/IPowerManager;
    :cond_a
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 893
    .end local v10    # "power":Landroid/os/IPowerManager;
    :catch_0
    move-exception v13

    goto/16 :goto_2
.end method

.method private setCPUState(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 987
    if-eqz p1, :cond_1

    .line 988
    invoke-direct {p0}, Lcom/android/server/SkyEcomodeService;->getCPUState()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 990
    iget-object v0, p0, Lcom/android/server/SkyEcomodeService;->skyCtrlDrv:Lcom/pantech/test/Sky_ctrl_drv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/test/Sky_ctrl_drv;->Sky_Ctrl_Set_Eco(I)I

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    invoke-direct {p0}, Lcom/android/server/SkyEcomodeService;->getCPUState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 997
    iget-object v0, p0, Lcom/android/server/SkyEcomodeService;->skyCtrlDrv:Lcom/pantech/test/Sky_ctrl_drv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/test/Sky_ctrl_drv;->Sky_Ctrl_Set_Eco(I)I

    goto :goto_0
.end method

.method private setWifiState(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1121
    iget-object v2, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1122
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz p1, :cond_2

    .line 1124
    iget-object v2, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 1125
    .local v1, "wifiApState":I
    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 1126
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1128
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1137
    .end local v1    # "wifiApState":I
    :goto_0
    return-void

    .line 1131
    :cond_2
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method private startSWControl()V
    .locals 3

    .prologue
    .line 975
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 976
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.pantech.powersaver"

    const-string v2, "com.pantech.powersaver.service.ScreenService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 977
    iget-object v1, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 978
    return-void
.end method

.method private stopSWControl()V
    .locals 3

    .prologue
    .line 969
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 970
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.pantech.powersaver"

    const-string v2, "com.pantech.powersaver.service.ScreenService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    iget-object v1, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 972
    return-void
.end method


# virtual methods
.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/android/server/SkyEcomodeService;->batteryLevel:I

    return v0
.end method

.method public getBatteryStatus()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/SkyEcomodeService;->batteryStatus:I

    return v0
.end method

.method public getWifiState()I
    .locals 5

    .prologue
    .line 1093
    const/4 v2, 0x0

    .line 1094
    .local v2, "state":I
    iget-object v3, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1096
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 1098
    .local v1, "s":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 1099
    const/4 v2, 0x1

    .line 1113
    .end local v1    # "s":I
    :cond_0
    :goto_0
    return v2

    .line 1101
    .restart local v1    # "s":I
    :cond_1
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 1102
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1105
    :cond_3
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public isAPConnected()Z
    .locals 6

    .prologue
    .line 1071
    const/4 v1, 0x0

    .line 1073
    .local v1, "connected":Z
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1074
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1075
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 1077
    .local v3, "networkState":Landroid/net/NetworkInfo$State;
    :goto_0
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 1078
    const/4 v1, 0x1

    .line 1085
    :cond_0
    return v1

    .line 1075
    .end local v3    # "networkState":Landroid/net/NetworkInfo$State;
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    goto :goto_0
.end method

.method public isBTConnected()Z
    .locals 3

    .prologue
    .line 1185
    const/4 v1, 0x0

    .line 1187
    .local v1, "connected":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1188
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 1189
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getPowerOffPossible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1190
    const/4 v1, 0x1

    .line 1198
    :cond_0
    return v1
.end method

.method public setBTState(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1232
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1233
    .local v0, "mBtAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 1234
    if-eqz p1, :cond_1

    .line 1235
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method public setNFCState(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1336
    iget-object v1, p0, Lcom/android/server/SkyEcomodeService;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    .line 1337
    iget-object v1, p0, Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;

    const-string v2, "nfc"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 1338
    .local v0, "mNfcManager":Landroid/nfc/NfcManager;
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SkyEcomodeService;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 1344
    .end local v0    # "mNfcManager":Landroid/nfc/NfcManager;
    :cond_0
    iget-object v1, p0, Lcom/android/server/SkyEcomodeService;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/SkyEcomodeService;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled_Nfc()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1345
    if-eqz p1, :cond_2

    .line 1346
    iget-object v1, p0, Lcom/android/server/SkyEcomodeService;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable_RWP2P()Z

    .line 1357
    :cond_1
    :goto_0
    return-void

    .line 1349
    :cond_2
    iget-object v1, p0, Lcom/android/server/SkyEcomodeService;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable_RWP2P()Z

    goto :goto_0
.end method
