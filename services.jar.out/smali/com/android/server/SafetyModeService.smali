.class public Lcom/android/server/SafetyModeService;
.super Landroid/os/ISafetyModeService$Stub;
.source "SafetyModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SafetyModeService$LBSProviderData;,
        Lcom/android/server/SafetyModeService$EmergencyCallReceiver;,
        Lcom/android/server/SafetyModeService$NetworkStateBroadcastReceiver;,
        Lcom/android/server/SafetyModeService$LocationTrackingListener;,
        Lcom/android/server/SafetyModeService$LocationAccessObserver;,
        Lcom/android/server/SafetyModeService$EmergencyModeEnableObserver;,
        Lcom/android/server/SafetyModeService$LocationSenderEnableObserver;,
        Lcom/android/server/SafetyModeService$ReturnCheckerEnableObserver;,
        Lcom/android/server/SafetyModeService$SafetyHandler;,
        Lcom/android/server/SafetyModeService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_ALARM_RETURN_TIME:Ljava/lang/String; = "com.pantech.app.safetymode.intent.action.return_time"

.field public static final ACTION_ALARM_SEND_LOCATION:Ljava/lang/String; = "com.pantech.app.safetymode.intent.action.sender_time"

.field public static final ACTION_REQUEST_EMERGENCY_ACTION:Ljava/lang/String; = "com.pantech.app.safetymode.intent.action.emergency_action"

.field public static final ACTION_REQUEST_EMERGENCY_CALL:Ljava/lang/String; = "com.pantech.app.safetymode.intent.action.emergency_call"

.field public static final BINDER_FAILED_CREATE_CLIENT:I = 0xc

.field public static final BINDER_GEOFENCE_ENTER:I = 0xb

.field public static final BINDER_LOCATION_CHANGED:I = 0xa

.field private static final CELL_ERROR_DISTANCE:D = 180.0

.field private static final CRITERION_NETWORK_ACCURACY:D = 150.0

.field private static final DEFAULT_ERROR_DISTANCE:D = 100.0

.field private static final GPS_ERROR_DISTANCE:D = 80.0

.field public static final INTENT_EXTRA_SAFETYMODE:Ljava/lang/String; = "safetymode"

.field public static final KEY_RETURN_LATITUDE:Ljava/lang/String; = "safety_return_latitude"

.field public static final KEY_RETURN_LONGITUDE:Ljava/lang/String; = "safety_return_longitude"

.field public static final OBSERVER_EMERGENCY_LOCK:I = 0x2

.field public static final OBSERVER_LOCATION_ACCESS:I = 0x3

.field public static final OBSERVER_RETURN_CHECKER:I = 0x0

.field public static final OBSERVER_SEND_LOCATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SafetyModeService"

.field private static final UPDATE_DEFAULT_DISTANCE:I = 0xa

.field private static final UPDATE_DEFAULT_TIME:I = 0x1388

.field private static final UPDATE_POWER_DISTANCE:I = 0x14

.field private static final UPDATE_POWER_TIME:I = 0x1388

.field private static final WIFI_ERROR_DISTANCE:D = 80.0


# instance fields
.field private mBootCompletedReceiver:Lcom/android/server/SafetyModeService$BootCompletedReceiver;

.field private mContext:Landroid/content/Context;

.field public mCurrentLocation:Landroid/location/Location;

.field private mDestinationLocation:Landroid/location/Location;

.field private mEmergencyCallReceiver:Lcom/android/server/SafetyModeService$EmergencyCallReceiver;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/SafetyModeService$LocationTrackingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNetwork:Lcom/android/server/SafetyModeService$NetworkStateBroadcastReceiver;

.field protected mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSafetyHandler:Lcom/android/server/SafetyModeService$SafetyHandler;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Landroid/os/ISafetyModeService$Stub;-><init>()V

    .line 55
    iput-object v2, p0, Lcom/android/server/SafetyModeService;->mBootCompletedReceiver:Lcom/android/server/SafetyModeService$BootCompletedReceiver;

    .line 57
    iput-object v2, p0, Lcom/android/server/SafetyModeService;->mEmergencyCallReceiver:Lcom/android/server/SafetyModeService$EmergencyCallReceiver;

    .line 741
    new-instance v1, Lcom/android/server/SafetyModeService$2;

    invoke-direct {v1, p0}, Lcom/android/server/SafetyModeService$2;-><init>(Lcom/android/server/SafetyModeService;)V

    iput-object v1, p0, Lcom/android/server/SafetyModeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 106
    iput-object p1, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    .line 109
    new-instance v1, Lcom/android/server/SafetyModeService$BootCompletedReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/SafetyModeService$BootCompletedReceiver;-><init>(Lcom/android/server/SafetyModeService;Lcom/android/server/SafetyModeService$1;)V

    iput-object v1, p0, Lcom/android/server/SafetyModeService;->mBootCompletedReceiver:Lcom/android/server/SafetyModeService$BootCompletedReceiver;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mBootCompletedReceiver:Lcom/android/server/SafetyModeService$BootCompletedReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    new-instance v1, Lcom/android/server/SafetyModeService$EmergencyCallReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/SafetyModeService$EmergencyCallReceiver;-><init>(Lcom/android/server/SafetyModeService;Lcom/android/server/SafetyModeService$1;)V

    iput-object v1, p0, Lcom/android/server/SafetyModeService;->mEmergencyCallReceiver:Lcom/android/server/SafetyModeService$EmergencyCallReceiver;

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.pantech.app.safetymode.intent.action.emergency_call"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mEmergencyCallReceiver:Lcom/android/server/SafetyModeService$EmergencyCallReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/SafetyModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SafetyModeService;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/SafetyModeService;->registerAllObservers()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/SafetyModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SafetyModeService;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/SafetyModeService;->checkInitStates()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/SafetyModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SafetyModeService;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/SafetyModeService;->handleLocationState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/SafetyModeService;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SafetyModeService;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/SafetyModeService;->setBestLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/SafetyModeService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SafetyModeService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/SafetyModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SafetyModeService;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/SafetyModeService;->successArrival()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/SafetyModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SafetyModeService;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/SafetyModeService;->stopLocationTracking()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/SafetyModeService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SafetyModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/SafetyModeService;->startLocationTracking(Z)V

    return-void
.end method

.method private checkInitStates()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 159
    const/4 v5, 0x0

    .line 162
    .local v5, "isTurnOn":Z
    :try_start_0
    iget-object v10, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "safety_return_checker_enable"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v10

    if-ne v10, v9, :cond_5

    move v5, v9

    .line 163
    :goto_0
    if-eqz v5, :cond_0

    .line 165
    iget-object v10, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "safety_return_checker_enable"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    iget-object v10, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "safety_return_checker_time"

    const-wide/16 v12, 0x0

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 168
    .local v6, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v10, v6, v10

    if-gtz v10, :cond_6

    .line 169
    const-wide/16 v6, 0x0

    .line 170
    iget-object v10, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.pantech.app.safetymode.intent.action.return_time"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    .end local v6    # "time":J
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "safety_location_sender_enable"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v10

    if-ne v10, v9, :cond_7

    move v5, v9

    .line 180
    :goto_2
    if-eqz v5, :cond_1

    .line 182
    iget-object v10, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "safety_location_sender_enable"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v3, "intent":Landroid/content/Intent;
    const-string v10, "com.pantech.app.safetymode"

    const-string v11, "com.pantech.app.safetymode.activity.PowerOffActivity"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v10, "android.intent.extra.INTENT"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const/high16 v10, 0x10000000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    iget-object v10, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_3
    iget-object v10, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    const-string v11, "safetylock"

    const-string v12, "0"

    invoke-static {v10, v11, v12}, Lcom/pantech/util/skysettings/Util_SkyOracle;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 195
    const/4 v4, 0x0

    .line 196
    .local v4, "isEncrypted":Z
    iget-object v10, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 197
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v2

    .line 198
    .local v2, "encryptionStatus":I
    const/4 v10, 0x3

    if-eq v2, v10, :cond_2

    const/4 v10, 0x2

    if-ne v2, v10, :cond_8

    :cond_2
    move v4, v9

    .line 200
    :goto_4
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 201
    iget-object v8, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    const-string v10, "safetylock"

    const-string v11, "0"

    invoke-static {v8, v10, v11, v9}, Lcom/pantech/util/skysettings/Util_SkyOracle;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 205
    :cond_3
    iget-object v8, p0, Lcom/android/server/SafetyModeService;->mBootCompletedReceiver:Lcom/android/server/SafetyModeService$BootCompletedReceiver;

    if-eqz v8, :cond_4

    .line 206
    iget-object v8, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/SafetyModeService;->mBootCompletedReceiver:Lcom/android/server/SafetyModeService$BootCompletedReceiver;

    invoke-virtual {v8, v9}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    :cond_4
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/SafetyModeService;->mBootCompletedReceiver:Lcom/android/server/SafetyModeService$BootCompletedReceiver;

    .line 211
    return-void

    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v2    # "encryptionStatus":I
    .end local v4    # "isEncrypted":Z
    :cond_5
    move v5, v8

    .line 162
    goto/16 :goto_0

    .line 172
    .restart local v6    # "time":J
    :cond_6
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 173
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v10, "com.pantech.app.safetymode"

    const-string v11, "com.pantech.app.safetymode.activity.PowerOffActivity"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v10, "android.intent.extra.INTENT"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const/high16 v10, 0x10000000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    iget-object v10, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 189
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "time":J
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_3

    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_7
    move v5, v8

    .line 179
    goto/16 :goto_2

    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v2    # "encryptionStatus":I
    .restart local v4    # "isEncrypted":Z
    :cond_8
    move v4, v8

    .line 198
    goto :goto_4
.end method

.method private handleLocationState()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 536
    iget-object v6, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 537
    .local v1, "isGPSTurnOn":Z
    iget-object v6, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "network"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 539
    .local v2, "isNetworkTurnOn":Z
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v6, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "safety_return_checker_enable"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_4

    move v3, v5

    .line 542
    .local v3, "isTurnOn":Z
    :goto_1
    if-nez v3, :cond_2

    iget-object v6, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "safety_location_sender_enable"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_5

    :cond_2
    move v3, v5

    .line 543
    :goto_2
    if-nez v3, :cond_3

    iget-object v6, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    const-string v7, "safetylock"

    const-string v8, "0"

    invoke-static {v6, v7, v8}, Lcom/pantech/util/skysettings/Util_SkyOracle;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_3
    move v3, v5

    .line 545
    :goto_3
    if-eqz v3, :cond_0

    .line 546
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 547
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.pantech.app.safetymode"

    const-string v5, "com.pantech.app.safetymode.activity.LocationOffActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 549
    iget-object v4, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "isTurnOn":Z
    :cond_4
    move v3, v4

    .line 541
    goto :goto_1

    .restart local v3    # "isTurnOn":Z
    :cond_5
    move v3, v4

    .line 542
    goto :goto_2

    :cond_6
    move v3, v4

    .line 543
    goto :goto_3
.end method

.method private declared-synchronized handleReturnCheckerAlarm(Z)V
    .locals 8
    .param p1, "isTurnOn"    # Z

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    const-string v4, "SafetyModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleReturnCheckerAlarm() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v4, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 273
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.pantech.app.safetymode.intent.action.return_time"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x10000000

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 276
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz p1, :cond_0

    .line 277
    const-wide/16 v2, 0x0

    .line 278
    .local v2, "time":J
    iget-object v4, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "safety_return_checker_time"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 279
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .end local v2    # "time":J
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :cond_0
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private registerAllObservers()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 138
    iget-object v5, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "SafetyMode"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/SafetyModeService;->mThread:Landroid/os/HandlerThread;

    .line 141
    iget-object v5, p0, Lcom/android/server/SafetyModeService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 142
    new-instance v5, Lcom/android/server/SafetyModeService$SafetyHandler;

    iget-object v6, p0, Lcom/android/server/SafetyModeService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/SafetyModeService$SafetyHandler;-><init>(Lcom/android/server/SafetyModeService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/SafetyModeService;->mSafetyHandler:Lcom/android/server/SafetyModeService$SafetyHandler;

    .line 144
    new-instance v3, Lcom/android/server/SafetyModeService$ReturnCheckerEnableObserver;

    iget-object v5, p0, Lcom/android/server/SafetyModeService;->mSafetyHandler:Lcom/android/server/SafetyModeService$SafetyHandler;

    invoke-direct {v3, p0, v5}, Lcom/android/server/SafetyModeService$ReturnCheckerEnableObserver;-><init>(Lcom/android/server/SafetyModeService;Landroid/os/Handler;)V

    .line 145
    .local v3, "returnEnableObserver":Lcom/android/server/SafetyModeService$ReturnCheckerEnableObserver;
    const-string v5, "safety_return_checker_enable"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v7, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 147
    new-instance v4, Lcom/android/server/SafetyModeService$LocationSenderEnableObserver;

    iget-object v5, p0, Lcom/android/server/SafetyModeService;->mSafetyHandler:Lcom/android/server/SafetyModeService$SafetyHandler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/SafetyModeService$LocationSenderEnableObserver;-><init>(Lcom/android/server/SafetyModeService;Landroid/os/Handler;)V

    .line 148
    .local v4, "sendLocationEnableObserver":Lcom/android/server/SafetyModeService$LocationSenderEnableObserver;
    const-string v5, "safety_location_sender_enable"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    new-instance v1, Lcom/android/server/SafetyModeService$EmergencyModeEnableObserver;

    iget-object v5, p0, Lcom/android/server/SafetyModeService;->mSafetyHandler:Lcom/android/server/SafetyModeService$SafetyHandler;

    invoke-direct {v1, p0, v5}, Lcom/android/server/SafetyModeService$EmergencyModeEnableObserver;-><init>(Lcom/android/server/SafetyModeService;Landroid/os/Handler;)V

    .line 152
    .local v1, "emergencyEnableObserver":Lcom/android/server/SafetyModeService$EmergencyModeEnableObserver;
    const-string v5, "safetylock"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v7, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 154
    new-instance v2, Lcom/android/server/SafetyModeService$LocationAccessObserver;

    iget-object v5, p0, Lcom/android/server/SafetyModeService;->mSafetyHandler:Lcom/android/server/SafetyModeService$SafetyHandler;

    invoke-direct {v2, p0, v5}, Lcom/android/server/SafetyModeService$LocationAccessObserver;-><init>(Lcom/android/server/SafetyModeService;Landroid/os/Handler;)V

    .line 155
    .local v2, "locationAccessObserver":Lcom/android/server/SafetyModeService$LocationAccessObserver;
    const-string v5, "location_providers_allowed"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v7, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 156
    return-void
.end method

.method private registerEmergencyMode()V
    .locals 3

    .prologue
    .line 520
    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mEmergencyCallReceiver:Lcom/android/server/SafetyModeService$EmergencyCallReceiver;

    if-eqz v1, :cond_0

    .line 526
    :goto_0
    return-void

    .line 522
    :cond_0
    new-instance v1, Lcom/android/server/SafetyModeService$EmergencyCallReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/SafetyModeService$EmergencyCallReceiver;-><init>(Lcom/android/server/SafetyModeService;Lcom/android/server/SafetyModeService$1;)V

    iput-object v1, p0, Lcom/android/server/SafetyModeService;->mEmergencyCallReceiver:Lcom/android/server/SafetyModeService$EmergencyCallReceiver;

    .line 523
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 524
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.pantech.app.safetymode.intent.action.emergency_call"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/SafetyModeService;->mEmergencyCallReceiver:Lcom/android/server/SafetyModeService$EmergencyCallReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setBestLocation(Landroid/location/Location;)V
    .locals 14
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const-wide/high16 v12, 0x4054000000000000L    # 80.0

    const/4 v11, 0x0

    .line 360
    if-nez p1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iput-object p1, p0, Lcom/android/server/SafetyModeService;->mCurrentLocation:Landroid/location/Location;

    .line 363
    const/4 v0, 0x3

    new-array v8, v0, [F

    .line 364
    .local v8, "results":[F
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/SafetyModeService;->mDestinationLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/SafetyModeService;->mDestinationLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 368
    aget v0, v8, v11

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    sub-double v9, v0, v2

    .line 370
    .local v9, "distance":D
    const-string v0, "SafetyModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert location distance - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v0, "SafetyModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACCURACY - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v0, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 374
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x4062c00000000000L    # 150.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 375
    cmpg-double v0, v9, v12

    if-gez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safety_return_checker_enable"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 377
    invoke-direct {p0}, Lcom/android/server/SafetyModeService;->successArrival()V

    goto/16 :goto_0

    .line 379
    :cond_2
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpg-double v0, v9, v0

    if-gez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safety_return_checker_enable"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 381
    invoke-direct {p0}, Lcom/android/server/SafetyModeService;->successArrival()V

    goto/16 :goto_0

    .line 383
    :cond_3
    const-string v0, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 384
    cmpg-double v0, v9, v12

    if-gez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safety_return_checker_enable"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    invoke-direct {p0}, Lcom/android/server/SafetyModeService;->successArrival()V

    goto/16 :goto_0

    .line 389
    :cond_4
    cmpg-double v0, v9, v12

    if-gez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safety_return_checker_enable"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 391
    invoke-direct {p0}, Lcom/android/server/SafetyModeService;->successArrival()V

    goto/16 :goto_0
.end method

.method private declared-synchronized startLocationTracking(Z)V
    .locals 10
    .param p1, "isFailedClient"    # Z

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 288
    .local v0, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v9

    .line 289
    .local v9, "locationProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/SafetyModeService;->mListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 290
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/SafetyModeService;->mListeners:Ljava/util/ArrayList;

    .line 291
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 292
    .local v1, "providerName":Ljava/lang/String;
    new-instance v5, Lcom/android/server/SafetyModeService$LocationTrackingListener;

    const/4 v2, 0x0

    invoke-direct {v5, p0, v2}, Lcom/android/server/SafetyModeService$LocationTrackingListener;-><init>(Lcom/android/server/SafetyModeService;Lcom/android/server/SafetyModeService$1;)V

    .line 293
    .local v5, "listener":Lcom/android/server/SafetyModeService$LocationTrackingListener;
    if-eqz p1, :cond_1

    .line 294
    const-wide/16 v2, 0x1388

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 298
    :goto_1
    iget-object v2, p0, Lcom/android/server/SafetyModeService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v8

    .line 302
    .local v8, "location":Landroid/location/Location;
    invoke-virtual {p0, v8}, Lcom/android/server/SafetyModeService;->isSignificantlyOld(Landroid/location/Location;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 303
    iput-object v8, p0, Lcom/android/server/SafetyModeService;->mCurrentLocation:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 286
    .end local v0    # "locationManager":Landroid/location/LocationManager;
    .end local v1    # "providerName":Ljava/lang/String;
    .end local v5    # "listener":Lcom/android/server/SafetyModeService$LocationTrackingListener;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "location":Landroid/location/Location;
    .end local v9    # "locationProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 296
    .restart local v0    # "locationManager":Landroid/location/LocationManager;
    .restart local v1    # "providerName":Ljava/lang/String;
    .restart local v5    # "listener":Lcom/android/server/SafetyModeService$LocationTrackingListener;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "locationProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-wide/16 v2, 0x1388

    const/high16 v4, 0x41200000    # 10.0f

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1

    .line 307
    .end local v1    # "providerName":Ljava/lang/String;
    .end local v5    # "listener":Lcom/android/server/SafetyModeService$LocationTrackingListener;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/SafetyModeService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 309
    iget-object v2, p0, Lcom/android/server/SafetyModeService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/SafetyModeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 320
    new-instance v2, Lcom/android/server/SafetyModeService$NetworkStateBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/SafetyModeService$NetworkStateBroadcastReceiver;-><init>(Lcom/android/server/SafetyModeService;Lcom/android/server/SafetyModeService$1;)V

    iput-object v2, p0, Lcom/android/server/SafetyModeService;->mNetwork:Lcom/android/server/SafetyModeService$NetworkStateBroadcastReceiver;

    .line 321
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 322
    .local v7, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/SafetyModeService;->mNetwork:Lcom/android/server/SafetyModeService$NetworkStateBroadcastReceiver;

    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 327
    iget-object v2, p0, Lcom/android/server/SafetyModeService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/SafetyModeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x100

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 330
    invoke-virtual {p0}, Lcom/android/server/SafetyModeService;->makeDestination()Z

    move-result v2

    if-nez v2, :cond_4

    .line 331
    const-string v2, "SafetyModeService"

    const-string v3, "no destination... we cannot run this service.."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-direct {p0}, Lcom/android/server/SafetyModeService;->stopLocationTracking()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    .line 335
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/server/SafetyModeService;->mCurrentLocation:Landroid/location/Location;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/SafetyModeService;->mCurrentLocation:Landroid/location/Location;

    invoke-direct {p0, v2}, Lcom/android/server/SafetyModeService;->setBestLocation(Landroid/location/Location;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized stopLocationTracking()V
    .locals 6

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 425
    .local v2, "locationManager":Landroid/location/LocationManager;
    iget-object v3, p0, Lcom/android/server/SafetyModeService;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 426
    iget-object v3, p0, Lcom/android/server/SafetyModeService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SafetyModeService$LocationTrackingListener;

    .line 427
    .local v1, "listener":Lcom/android/server/SafetyModeService$LocationTrackingListener;
    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 424
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/SafetyModeService$LocationTrackingListener;
    .end local v2    # "locationManager":Landroid/location/LocationManager;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 429
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "locationManager":Landroid/location/LocationManager;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/SafetyModeService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 431
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/SafetyModeService;->mListeners:Ljava/util/ArrayList;

    .line 442
    iget-object v3, p0, Lcom/android/server/SafetyModeService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_2

    .line 443
    iget-object v3, p0, Lcom/android/server/SafetyModeService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/SafetyModeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 447
    :cond_2
    iget-object v3, p0, Lcom/android/server/SafetyModeService;->mNetwork:Lcom/android/server/SafetyModeService$NetworkStateBroadcastReceiver;

    if-eqz v3, :cond_3

    .line 448
    iget-object v3, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/SafetyModeService;->mNetwork:Lcom/android/server/SafetyModeService$NetworkStateBroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 450
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/SafetyModeService;->mNetwork:Lcom/android/server/SafetyModeService$NetworkStateBroadcastReceiver;

    .line 452
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/SafetyModeService;->mCurrentLocation:Landroid/location/Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    monitor-exit p0

    return-void
.end method

.method private successArrival()V
    .locals 4

    .prologue
    .line 397
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 398
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.pantech.app.safetymode"

    const-string v2, "com.pantech.app.safetymode.activity.SMSManagerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 400
    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mCurrentLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 401
    const-string v1, "latitude"

    iget-object v2, p0, Lcom/android/server/SafetyModeService;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 402
    const-string v1, "longitude"

    iget-object v2, p0, Lcom/android/server/SafetyModeService;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 403
    const-string v1, "accurate"

    iget-object v2, p0, Lcom/android/server/SafetyModeService;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 404
    const-string v1, "provider"

    iget-object v2, p0, Lcom/android/server/SafetyModeService;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    :goto_0
    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 410
    return-void

    .line 406
    :cond_0
    const-string v1, "latitude"

    iget-object v2, p0, Lcom/android/server/SafetyModeService;->mDestinationLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 407
    const-string v1, "longitude"

    iget-object v2, p0, Lcom/android/server/SafetyModeService;->mDestinationLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_0
.end method

.method private unRegisterEmergencyMode()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/server/SafetyModeService;->mEmergencyCallReceiver:Lcom/android/server/SafetyModeService$EmergencyCallReceiver;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mEmergencyCallReceiver:Lcom/android/server/SafetyModeService$EmergencyCallReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SafetyModeService;->mEmergencyCallReceiver:Lcom/android/server/SafetyModeService$EmergencyCallReceiver;

    .line 533
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized handleEmergencyLock()V
    .locals 4

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    const-string v2, "safetylock"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/pantech/util/skysettings/Util_SkyOracle;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 517
    .local v0, "isTurnOn":Z
    monitor-exit p0

    return-void

    .line 508
    .end local v0    # "isTurnOn":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public handleGpsProviderState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 901
    return-void
.end method

.method public handleLBSService()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 255
    const/4 v1, 0x0

    .line 257
    .local v1, "isTurnOn":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "safety_return_checker_enable"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 261
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/SafetyModeService;->handleReturnCheckerAlarm(Z)V

    .line 262
    if-eqz v1, :cond_1

    .line 263
    invoke-direct {p0, v3}, Lcom/android/server/SafetyModeService;->startLocationTracking(Z)V

    .line 267
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 257
    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 265
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/SafetyModeService;->stopLocationTracking()V

    goto :goto_1
.end method

.method public declared-synchronized handleLocationSender()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 483
    monitor-enter p0

    const/4 v8, 0x0

    .line 484
    .local v8, "isTurnOn":Z
    const/16 v9, 0xf

    .line 486
    .local v9, "minute":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safety_location_sender_enable"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v8, v1

    .line 487
    :goto_0
    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "safety_location_sender_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 491
    :goto_1
    :try_start_1
    const-string v1, "SafetyModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLocationAlarm() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 494
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.pantech.app.safetymode.intent.action.sender_time"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 497
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v8, :cond_1

    .line 498
    mul-int/lit8 v1, v9, 0x3c

    mul-int/lit16 v9, v1, 0x3e8

    .line 499
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v9

    add-long/2addr v2, v4

    int-to-long v4, v9

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    :goto_2
    monitor-exit p0

    return-void

    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    move v8, v2

    .line 486
    goto :goto_0

    .line 488
    :catch_0
    move-exception v7

    .line 489
    .local v7, "e":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_2
    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 483
    .end local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 502
    .restart local v0    # "alarmManager":Landroid/app/AlarmManager;
    .restart local v6    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    :try_start_3
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public handleNetworkProviderState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 898
    return-void
.end method

.method public insertLocation(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 457
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 458
    .local v2, "values":Landroid/content/ContentValues;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd hh:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 460
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v3, "timestamp"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v3, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v3, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v3, "accurate"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v3, "speed"

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v3, "provider"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v1, Lcom/android/server/SafetyModeService$1;

    iget-object v3, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/server/SafetyModeService$1;-><init>(Lcom/android/server/SafetyModeService;Landroid/content/ContentResolver;)V

    .line 479
    .local v1, "queryHandler":Landroid/content/AsyncQueryHandler;
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/SafetyModeService$LBSProviderData;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/content/AsyncQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 480
    return-void
.end method

.method protected isSignificantlyOld(Landroid/location/Location;)Z
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x1

    .line 413
    if-nez p1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v2

    .line 414
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 415
    .local v0, "timeDelta":J
    const-wide/32 v3, 0x493e0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    .line 418
    const-string v2, "SafetyModeService"

    const-string v3, "set last Known location"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isValidString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    .line 352
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x1

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeDestination()Z
    .locals 9

    .prologue
    const-wide/16 v5, 0x0

    .line 339
    new-instance v7, Landroid/location/Location;

    const-string v8, "gps"

    invoke-direct {v7, v8}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/SafetyModeService;->mDestinationLocation:Landroid/location/Location;

    .line 340
    iget-object v7, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "safety_return_checker_latitude"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "temp":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/SafetyModeService;->isValidString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 342
    .local v0, "latitude":D
    :goto_0
    iget-object v7, p0, Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "safety_return_checker_longitude"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-virtual {p0, v4}, Lcom/android/server/SafetyModeService;->isValidString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 344
    .local v2, "longitude":D
    :goto_1
    cmpl-double v7, v0, v5

    if-nez v7, :cond_2

    cmpl-double v5, v2, v5

    if-nez v5, :cond_2

    .line 345
    const/4 v5, 0x0

    .line 349
    :goto_2
    return v5

    .end local v0    # "latitude":D
    .end local v2    # "longitude":D
    :cond_0
    move-wide v0, v5

    .line 341
    goto :goto_0

    .restart local v0    # "latitude":D
    :cond_1
    move-wide v2, v5

    .line 343
    goto :goto_1

    .line 347
    .restart local v2    # "longitude":D
    :cond_2
    iget-object v5, p0, Lcom/android/server/SafetyModeService;->mDestinationLocation:Landroid/location/Location;

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 348
    iget-object v5, p0, Lcom/android/server/SafetyModeService;->mDestinationLocation:Landroid/location/Location;

    invoke-virtual {v5, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 349
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public onDetectedGeoFence()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 911
    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mSafetyHandler:Lcom/android/server/SafetyModeService$SafetyHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/SafetyModeService$SafetyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 912
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mSafetyHandler:Lcom/android/server/SafetyModeService$SafetyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/SafetyModeService$SafetyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 913
    return-void
.end method

.method public onFailedLocationClient()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 916
    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mSafetyHandler:Lcom/android/server/SafetyModeService$SafetyHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/server/SafetyModeService$SafetyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 917
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mSafetyHandler:Lcom/android/server/SafetyModeService$SafetyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/SafetyModeService$SafetyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 918
    return-void
.end method

.method public onFusedLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 905
    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mSafetyHandler:Lcom/android/server/SafetyModeService$SafetyHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Lcom/android/server/SafetyModeService$SafetyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 906
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/SafetyModeService;->mSafetyHandler:Lcom/android/server/SafetyModeService$SafetyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/SafetyModeService$SafetyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 908
    return-void
.end method
