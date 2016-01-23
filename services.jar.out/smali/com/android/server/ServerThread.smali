.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final deviceHasSufficientMemory()Z
    .locals 7

    .prologue
    .line 1155
    const-wide/32 v0, 0x20000000

    .line 1157
    .local v0, "MEMORY_SIZE_MIN":J
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1158
    .local v2, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1159
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    const-wide/32 v5, 0x20000000

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 1160
    const/4 v3, 0x0

    .line 1162
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1148
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1151
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1152
    return-void
.end method


# virtual methods
.method public initAndLoop()V
    .locals 168

    .prologue
    .line 103
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 106
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 108
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 111
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 112
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 116
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v144

    .line 118
    .local v144, "shutdownAction":Ljava/lang/String;
    if-eqz v144, :cond_0

    invoke-virtual/range {v144 .. v144}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 119
    const/4 v7, 0x0

    move-object/from16 v0, v144

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_24

    const/16 v138, 0x1

    .line 122
    .local v138, "reboot":Z
    :goto_0
    invoke-virtual/range {v144 .. v144}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_25

    .line 123
    const/4 v7, 0x1

    invoke-virtual/range {v144 .. v144}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v144

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v137

    .line 128
    .local v137, "reason":Ljava/lang/String;
    :goto_1
    move/from16 v0, v138

    move-object/from16 v1, v137

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 132
    .end local v137    # "reason":Ljava/lang/String;
    .end local v138    # "reboot":Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v104

    .line 133
    .local v104, "factoryTestStr":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v104

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    const/16 v103, 0x0

    .line 135
    .local v103, "factoryTest":I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 137
    .local v33, "headless":Z
    const/16 v109, 0x0

    .line 138
    .local v109, "installer":Lcom/android/server/pm/Installer;
    const/16 v63, 0x0

    .line 139
    .local v63, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v81, 0x0

    .line 140
    .local v81, "contentService":Lcom/android/server/content/ContentService;
    const/16 v111, 0x0

    .line 141
    .local v111, "lights":Lcom/android/server/LightsService;
    const/4 v4, 0x0

    .line 142
    .local v4, "power":Lcom/android/server/power/PowerManagerService;
    const/16 v96, 0x0

    .line 143
    .local v96, "display":Lcom/android/server/display/DisplayManagerService;
    const/16 v70, 0x0

    .line 144
    .local v70, "battery":Lcom/android/server/BatteryService;
    const/16 v157, 0x0

    .line 145
    .local v157, "vibrator":Lcom/android/server/VibratorService;
    const/16 v65, 0x0

    .line 146
    .local v65, "alarm":Lcom/android/server/AlarmManagerService;
    const/16 v119, 0x0

    .line 147
    .local v119, "mountService":Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 148
    .local v30, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 149
    .local v29, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v123, 0x0

    .line 150
    .local v123, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v77, 0x0

    .line 151
    .local v77, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v133, 0x0

    .line 152
    .local v133, "qcCon":Ljava/lang/Object;
    const/16 v164, 0x0

    .line 153
    .local v164, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v162, 0x0

    .line 154
    .local v162, "wifi":Lcom/android/server/wifi/WifiService;
    const/16 v143, 0x0

    .line 155
    .local v143, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v129, 0x0

    .line 156
    .local v129, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 157
    .local v5, "context":Landroid/content/Context;
    const/16 v166, 0x0

    .line 158
    .local v166, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v71, 0x0

    .line 159
    .local v71, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v97, 0x0

    .line 160
    .local v97, "dock":Lcom/android/server/DockObserver;
    const/16 v155, 0x0

    .line 161
    .local v155, "usb":Lcom/android/server/usb/UsbService;
    const/16 v141, 0x0

    .line 162
    .local v141, "serial":Lcom/android/server/SerialService;
    const/16 v151, 0x0

    .line 163
    .local v151, "twilight":Lcom/android/server/TwilightService;
    const/16 v153, 0x0

    .line 164
    .local v153, "uiMode":Lcom/android/server/UiModeManagerService;
    const/16 v139, 0x0

    .line 165
    .local v139, "recognition":Lcom/android/server/RecognitionManagerService;
    const/16 v125, 0x0

    .line 166
    .local v125, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v74, 0x0

    .line 167
    .local v74, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v108, 0x0

    .line 168
    .local v108, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v147, 0x0

    .line 169
    .local v147, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v121, 0x0

    .line 170
    .local v121, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    const/16 v79, 0x0

    .line 173
    .local v79, "consumerIr":Lcom/android/server/ConsumerIrService;
    new-instance v167, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v167

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 174
    .local v167, "wmHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v167 .. v167}, Landroid/os/HandlerThread;->start()V

    .line 175
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v167 .. v167}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 176
    .local v21, "wmHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    const/16 v24, 0x0

    .line 194
    .local v24, "onlyCore":Z
    const/16 v105, 0x0

    .line 199
    .local v105, "firstBoot":Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v110, Lcom/android/server/pm/Installer;

    invoke-direct/range {v110 .. v110}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v109    # "installer":Lcom/android/server/pm/Installer;
    .local v110, "installer":Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/pm/Installer;->ping()Z

    .line 203
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v130, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v130 .. v130}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5e

    .line 205
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .local v130, "power":Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 207
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static/range {v103 .. v103}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5f

    move-result-object v5

    move-object/from16 v4, v130

    .end local v130    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v109, v110

    .line 214
    .end local v110    # "installer":Lcom/android/server/pm/Installer;
    .restart local v109    # "installer":Lcom/android/server/pm/Installer;
    :goto_3
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v93

    .line 215
    .local v93, "disableStorage":Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v90

    .line 216
    .local v90, "disableMedia":Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v88

    .line 217
    .local v88, "disableBluetooth":Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v95

    .line 218
    .local v95, "disableTelephony":Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v89

    .line 219
    .local v89, "disableLocation":Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v94

    .line 220
    .local v94, "disableSystemUI":Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v92

    .line 221
    .local v92, "disableNonCoreServices":Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v91

    .line 222
    .local v91, "disableNetwork":Z
    const-string v7, "config.disable_atlas"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v87

    .line 225
    .local v87, "disableAtlas":Z
    :try_start_3
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_53

    .line 227
    .end local v96    # "display":Lcom/android/server/display/DisplayManagerService;
    .local v11, "display":Lcom/android/server/display/DisplayManagerService;
    :try_start_4
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 229
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v148, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v148

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_54

    .line 231
    .end local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v148, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_5
    const-string v7, "telephony.registry"

    move-object/from16 v0, v148

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 233
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 234
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v122, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v122

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 236
    .end local v121    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .local v122, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :try_start_6
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v122

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_55

    move-object/from16 v121, v122

    .line 239
    .end local v122    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v121    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :cond_1
    :try_start_7
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 242
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 244
    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_2

    .line 245
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    :cond_2
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    .line 252
    .local v84, "cryptState":Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v84

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 253
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/16 v24, 0x1

    .line 260
    :cond_3
    :goto_4
    if-eqz v103, :cond_28

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, v109

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v129

    .line 264
    :try_start_8
    invoke-interface/range {v129 .. v129}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    move-result v105

    .line 268
    :goto_6
    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 270
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 273
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 277
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    .line 282
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v64, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    .line 284
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v64, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_b
    const-string v7, "account"

    move-object/from16 v0, v64

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_56

    move-object/from16 v63, v64

    .line 289
    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_7
    :try_start_c
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v7, 0x1

    move/from16 v0, v103

    if-ne v0, v7, :cond_29

    const/4 v7, 0x1

    :goto_8
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v81

    .line 293
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 296
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    .line 299
    .end local v111    # "lights":Lcom/android/server/LightsService;
    .local v6, "lights":Lcom/android/server/LightsService;
    :try_start_d
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_57

    .line 301
    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .local v8, "battery":Lcom/android/server/BatteryService;
    :try_start_e
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 303
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v158, Lcom/android/server/VibratorService;

    move-object/from16 v0, v158

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_58

    .line 305
    .end local v157    # "vibrator":Lcom/android/server/VibratorService;
    .local v158, "vibrator":Lcom/android/server/VibratorService;
    :try_start_f
    const-string v7, "vibrator"

    move-object/from16 v0, v158

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 307
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v80, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_59

    .line 309
    .end local v79    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v80, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_10
    const-string v7, "consumer_ir"

    move-object/from16 v0, v80

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 313
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 317
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_5a

    .line 319
    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .local v16, "alarm":Lcom/android/server/AlarmManagerService;
    :try_start_11
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 321
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 324
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 326
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_5b

    .line 329
    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v20, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v7, 0x1

    move/from16 v0, v103

    if-eq v0, v7, :cond_2a

    const/16 v22, 0x1

    :goto_9
    if-nez v105, :cond_2b

    const/16 v23, 0x1

    :goto_a
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v166

    .line 333
    const-string v7, "window"

    move-object/from16 v0, v166

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 334
    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 336
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v166

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 338
    invoke-virtual/range {v166 .. v166}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 339
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    .line 341
    move-object/from16 v0, v166

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 342
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 347
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 348
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3

    :goto_b
    move-object/from16 v79, v80

    .end local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v79    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v147, v148

    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v157, v158

    .line 366
    .end local v84    # "cryptState":Ljava/lang/String;
    .end local v158    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v157    # "vibrator":Lcom/android/server/VibratorService;
    :goto_c
    const/16 v85, 0x0

    .line 367
    .local v85, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    const/16 v145, 0x0

    .line 368
    .local v145, "statusBar":Lcom/android/server/StatusBarManagerService;
    const/16 v106, 0x0

    .line 369
    .local v106, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v66, 0x0

    .line 370
    .local v66, "appWidget":Lcom/android/server/AppWidgetService;
    const/16 v127, 0x0

    .line 371
    .local v127, "notification":Lcom/android/server/NotificationManagerService;
    const/16 v160, 0x0

    .line 372
    .local v160, "wallpaper":Lcom/android/server/WallpaperManagerService;
    const/16 v112, 0x0

    .line 373
    .local v112, "location":Lcom/android/server/LocationManagerService;
    const/16 v82, 0x0

    .line 374
    .local v82, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v149, 0x0

    .line 375
    .local v149, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v114, 0x0

    .line 376
    .local v114, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v99, 0x0

    .line 377
    .local v99, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    const/16 v68, 0x0

    .line 378
    .local v68, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v131, 0x0

    .line 379
    .local v131, "printManager":Lcom/android/server/print/PrintManagerService;
    const/16 v116, 0x0

    .line 382
    .local v116, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/4 v7, 0x1

    move/from16 v0, v103

    if-eq v0, v7, :cond_4

    .line 386
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v107, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v107

    move-object/from16 v1, v166

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4

    .line 388
    .end local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v107, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_14
    const-string v7, "input_method"

    move-object/from16 v0, v107

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_52

    move-object/from16 v106, v107

    .line 394
    .end local v107    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_15
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_5

    .line 404
    :cond_4
    :goto_e
    :try_start_16
    invoke-virtual/range {v166 .. v166}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6

    .line 410
    :goto_f
    :try_start_17
    invoke-interface/range {v129 .. v129}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_7

    .line 416
    :goto_10
    :try_start_18
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040418

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_51

    .line 423
    :goto_11
    const/4 v7, 0x1

    move/from16 v0, v103

    if-eq v0, v7, :cond_34

    .line 424
    if-nez v93, :cond_5

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 431
    :try_start_19
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v120, Lcom/android/server/MountService;

    move-object/from16 v0, v120

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_8

    .line 433
    .end local v119    # "mountService":Lcom/android/server/MountService;
    .local v120, "mountService":Lcom/android/server/MountService;
    :try_start_1a
    const-string v7, "mount"

    move-object/from16 v0, v120

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_50

    move-object/from16 v119, v120

    .line 439
    .end local v120    # "mountService":Lcom/android/server/MountService;
    .restart local v119    # "mountService":Lcom/android/server/MountService;
    :cond_5
    :goto_12
    if-nez v92, :cond_6

    .line 441
    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v115, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v115

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_9

    .line 443
    .end local v114    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v115, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_1c
    const-string v7, "lock_settings"

    move-object/from16 v0, v115

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_4f

    move-object/from16 v114, v115

    .line 449
    .end local v115    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v114    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_13
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v86, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v86

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_a

    .line 451
    .end local v85    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .local v86, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :try_start_1e
    const-string v7, "device_policy"

    move-object/from16 v0, v86

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_4e

    move-object/from16 v85, v86

    .line 457
    .end local v86    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v85    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :cond_6
    :goto_14
    if-nez v94, :cond_7

    .line 459
    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v146, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v146

    move-object/from16 v1, v166

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_b

    .line 461
    .end local v145    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .local v146, "statusBar":Lcom/android/server/StatusBarManagerService;
    :try_start_20
    const-string v7, "statusbar"

    move-object/from16 v0, v146

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_4d

    move-object/from16 v145, v146

    .line 467
    .end local v146    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v145    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :cond_7
    :goto_15
    if-nez v92, :cond_8

    .line 469
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_c

    .line 477
    :cond_8
    :goto_16
    if-nez v91, :cond_9

    .line 479
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 481
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_d

    .line 487
    :cond_9
    :goto_17
    if-nez v92, :cond_a

    .line 489
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v150, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v150

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_e

    .line 491
    .end local v149    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v150, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_24
    const-string v7, "textservices"

    move-object/from16 v0, v150

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_4c

    move-object/from16 v149, v150

    .line 497
    .end local v150    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v149    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_a
    :goto_18
    if-nez v91, :cond_33

    .line 499
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v124, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v124

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_f

    .line 501
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v124, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_26
    const-string v7, "netstats"

    move-object/from16 v0, v124

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_4b

    move-object/from16 v29, v124

    .line 507
    .end local v124    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_19
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_10

    .line 511
    .end local v123    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_28
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_4a

    .line 517
    :goto_1a
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v165, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v165

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_11

    .line 519
    .end local v164    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .local v165, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2a
    const-string v7, "wifip2p"

    move-object/from16 v0, v165

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_49

    move-object/from16 v164, v165

    .line 525
    .end local v165    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v164    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1b
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v163, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v163

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_12

    .line 527
    .end local v162    # "wifi":Lcom/android/server/wifi/WifiService;
    .local v163, "wifi":Lcom/android/server/wifi/WifiService;
    :try_start_2c
    const-string v7, "wifi"

    move-object/from16 v0, v163

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_48

    move-object/from16 v162, v163

    .line 533
    .end local v163    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v162    # "wifi":Lcom/android/server/wifi/WifiService;
    :goto_1c
    const/16 v102, 0x1

    .line 534
    .local v102, "enableCne":I
    :try_start_2d
    invoke-static {}, Lcom/android/server/ServerThread;->deviceHasSufficientMemory()Z

    move-result v7

    if-nez v7, :cond_b

    .line 535
    const-string v7, "persist.cne.override.memlimit"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v102

    .line 537
    :cond_b
    const/4 v7, 0x1

    move/from16 v0, v102

    if-ne v0, v7, :cond_30

    const-string v7, "persist.cne.feature"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v73

    .line 540
    .local v73, "cneFeature":I
    :goto_1d
    if-lez v73, :cond_31

    const/16 v7, 0xa

    move/from16 v0, v73

    if-ge v0, v7, :cond_31

    .line 541
    const-string v7, "SystemServer"

    const-string v9, "QcConnectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v135, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/services-ext.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v135

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 545
    .local v135, "qcsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.android.server.QcConnectivityService"

    move-object/from16 v0, v135

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v134

    .line 547
    .local v134, "qcsClass":Ljava/lang/Class;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Landroid/os/INetworkManagementService;

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-class v10, Landroid/net/INetworkStatsService;

    aput-object v10, v7, v9

    const/4 v9, 0x3

    const-class v10, Landroid/net/INetworkPolicyManager;

    aput-object v10, v7, v9

    move-object/from16 v0, v134

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v136

    .line 550
    .local v136, "qcsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    aput-object v30, v7, v9

    const/4 v9, 0x2

    aput-object v29, v7, v9

    const/4 v9, 0x3

    aput-object v25, v7, v9

    move-object/from16 v0, v136

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v133

    .line 552
    move-object/from16 v0, v133

    check-cast v0, Lcom/android/server/ConnectivityService;

    move-object/from16 v77, v0

    .line 558
    .end local v133    # "qcCon":Ljava/lang/Object;
    .end local v134    # "qcsClass":Ljava/lang/Class;
    .end local v135    # "qcsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v136    # "qcsConstructor":Ljava/lang/reflect/Constructor;
    :goto_1e
    if-eqz v77, :cond_c

    .line 559
    const-string v7, "connectivity"

    move-object/from16 v0, v77

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 560
    move-object/from16 v0, v29

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 561
    move-object/from16 v0, v25

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 562
    invoke-virtual/range {v162 .. v162}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V

    .line 563
    invoke-virtual/range {v164 .. v164}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_13

    .line 570
    .end local v73    # "cneFeature":I
    :cond_c
    :goto_1f
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v143

    .line 572
    const-string v7, "servicediscovery"

    move-object/from16 v0, v143

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_14

    .line 579
    .end local v102    # "enableCne":I
    :goto_20
    if-nez v92, :cond_d

    .line 581
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_15

    .line 594
    :cond_d
    :goto_21
    if-eqz v119, :cond_e

    if-nez v24, :cond_e

    .line 595
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 599
    :cond_e
    if-eqz v63, :cond_f

    .line 600
    :try_start_30
    invoke-virtual/range {v63 .. v63}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_16

    .line 606
    :cond_f
    :goto_22
    if-eqz v81, :cond_10

    .line 607
    :try_start_31
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_17

    .line 613
    :cond_10
    :goto_23
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance v128, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v128

    move-object/from16 v1, v145

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_18

    .line 615
    .end local v127    # "notification":Lcom/android/server/NotificationManagerService;
    .local v128, "notification":Lcom/android/server/NotificationManagerService;
    :try_start_33
    const-string v7, "notification"

    move-object/from16 v0, v128

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 616
    move-object/from16 v0, v25

    move-object/from16 v1, v128

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_47

    move-object/from16 v127, v128

    .line 622
    .end local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v127    # "notification":Lcom/android/server/NotificationManagerService;
    :goto_24
    :try_start_34
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_19

    .line 629
    :goto_25
    if-nez v89, :cond_11

    .line 631
    :try_start_35
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v113, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v113

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1a

    .line 633
    .end local v112    # "location":Lcom/android/server/LocationManagerService;
    .local v113, "location":Lcom/android/server/LocationManagerService;
    :try_start_36
    const-string v7, "location"

    move-object/from16 v0, v113

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_46

    move-object/from16 v112, v113

    .line 639
    .end local v113    # "location":Lcom/android/server/LocationManagerService;
    .restart local v112    # "location":Lcom/android/server/LocationManagerService;
    :goto_26
    :try_start_37
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    new-instance v83, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v83

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1b

    .line 641
    .end local v82    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v83, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_38
    const-string v7, "country_detector"

    move-object/from16 v0, v83

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_45

    move-object/from16 v82, v83

    .line 647
    .end local v83    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v82    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_11
    :goto_27
    if-nez v92, :cond_12

    .line 649
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1c

    .line 658
    :cond_12
    :goto_28
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1d

    .line 665
    :goto_29
    if-nez v92, :cond_13

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110031

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 668
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    if-nez v33, :cond_13

    .line 670
    new-instance v161, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v161

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1e

    .line 671
    .end local v160    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .local v161, "wallpaper":Lcom/android/server/WallpaperManagerService;
    :try_start_3c
    const-string v7, "wallpaper"

    move-object/from16 v0, v161

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_44

    move-object/from16 v160, v161

    .line 678
    .end local v161    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v160    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_13
    :goto_2a
    if-nez v90, :cond_14

    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 680
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_1f

    .line 687
    :cond_14
    :goto_2b
    if-nez v92, :cond_15

    .line 689
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v98, Lcom/android/server/DockObserver;

    move-object/from16 v0, v98

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_20

    .end local v97    # "dock":Lcom/android/server/DockObserver;
    .local v98, "dock":Lcom/android/server/DockObserver;
    move-object/from16 v97, v98

    .line 697
    .end local v98    # "dock":Lcom/android/server/DockObserver;
    .restart local v97    # "dock":Lcom/android/server/DockObserver;
    :cond_15
    :goto_2c
    if-nez v90, :cond_16

    .line 699
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_21

    .line 708
    :cond_16
    :goto_2d
    if-nez v92, :cond_17

    .line 710
    :try_start_40
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v156, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v156

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_22

    .line 713
    .end local v155    # "usb":Lcom/android/server/usb/UsbService;
    .local v156, "usb":Lcom/android/server/usb/UsbService;
    :try_start_41
    const-string v7, "usb"

    move-object/from16 v0, v156

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_43

    move-object/from16 v155, v156

    .line 719
    .end local v156    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v155    # "usb":Lcom/android/server/usb/UsbService;
    :goto_2e
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v142, Lcom/android/server/SerialService;

    move-object/from16 v0, v142

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_23

    .line 722
    .end local v141    # "serial":Lcom/android/server/SerialService;
    .local v142, "serial":Lcom/android/server/SerialService;
    :try_start_43
    const-string v7, "serial"

    move-object/from16 v0, v142

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_42

    move-object/from16 v141, v142

    .line 729
    .end local v142    # "serial":Lcom/android/server/SerialService;
    .restart local v141    # "serial":Lcom/android/server/SerialService;
    :cond_17
    :goto_2f
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v152, Lcom/android/server/TwilightService;

    move-object/from16 v0, v152

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_24

    .end local v151    # "twilight":Lcom/android/server/TwilightService;
    .local v152, "twilight":Lcom/android/server/TwilightService;
    move-object/from16 v151, v152

    .line 736
    .end local v152    # "twilight":Lcom/android/server/TwilightService;
    .restart local v151    # "twilight":Lcom/android/server/TwilightService;
    :goto_30
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v154, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v154

    move-object/from16 v1, v151

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_25

    .end local v153    # "uiMode":Lcom/android/server/UiModeManagerService;
    .local v154, "uiMode":Lcom/android/server/UiModeManagerService;
    move-object/from16 v153, v154

    .line 743
    .end local v154    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v153    # "uiMode":Lcom/android/server/UiModeManagerService;
    :goto_31
    if-nez v92, :cond_18

    .line 745
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_26

    .line 753
    :goto_32
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    new-instance v67, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_27

    .line 755
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .local v67, "appWidget":Lcom/android/server/AppWidgetService;
    :try_start_48
    const-string v7, "appwidget"

    move-object/from16 v0, v67

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_41

    move-object/from16 v66, v67

    .line 761
    .end local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    :goto_33
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v140, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v140

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_28

    .end local v139    # "recognition":Lcom/android/server/RecognitionManagerService;
    .local v140, "recognition":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v139, v140

    .line 769
    .end local v140    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v139    # "recognition":Lcom/android/server/RecognitionManagerService;
    :cond_18
    :goto_34
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_29

    .line 780
    :goto_35
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2a

    .line 787
    :goto_36
    if-nez v91, :cond_19

    .line 789
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v126, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v126

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2b

    .end local v125    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v126, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v125, v126

    .line 796
    .end local v126    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v125    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_19
    :goto_37
    if-nez v90, :cond_1a

    .line 798
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    new-instance v75, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v75

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2c

    .line 800
    .end local v74    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v75, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_4e
    const-string v7, "commontime_management"

    move-object/from16 v0, v75

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_40

    move-object/from16 v74, v75

    .line 806
    .end local v75    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v74    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_1a
    :goto_38
    if-nez v91, :cond_1b

    .line 808
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2d

    .line 815
    :cond_1b
    :goto_39
    if-nez v92, :cond_1c

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111004a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 818
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    new-instance v100, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v100

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2e

    .line 821
    .end local v99    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .local v100, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :try_start_51
    const-string v7, "dreams"

    move-object/from16 v0, v100

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_3f

    move-object/from16 v99, v100

    .line 827
    .end local v100    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v99    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :cond_1c
    :goto_3a
    if-nez v92, :cond_1d

    if-nez v87, :cond_1d

    .line 829
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    new-instance v69, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v69

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_2f

    .line 831
    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v69, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_53
    const-string v7, "assetatlas"

    move-object/from16 v0, v69

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_3e

    move-object/from16 v68, v69

    .line 838
    .end local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1d
    :goto_3b
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_30

    .line 845
    :goto_3c
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    new-instance v132, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v132

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_31

    .line 847
    .end local v131    # "printManager":Lcom/android/server/print/PrintManagerService;
    .local v132, "printManager":Lcom/android/server/print/PrintManagerService;
    :try_start_56
    const-string v7, "print"

    move-object/from16 v0, v132

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_3d

    move-object/from16 v131, v132

    .line 852
    .end local v132    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v131    # "printManager":Lcom/android/server/print/PrintManagerService;
    :goto_3d
    if-nez v92, :cond_1e

    .line 854
    :try_start_57
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    new-instance v117, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v117

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_32

    .line 856
    .end local v116    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v117, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_58
    const-string v7, "media_router"

    move-object/from16 v0, v117

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_3c

    move-object/from16 v116, v117

    .line 865
    .end local v117    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v116    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :cond_1e
    :goto_3e
    invoke-virtual/range {v166 .. v166}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 866
    .local v47, "safeMode":Z
    if-eqz v47, :cond_32

    .line 867
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 869
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 871
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 880
    :goto_3f
    :try_start_59
    invoke-virtual/range {v157 .. v157}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_33

    .line 885
    :goto_40
    if-eqz v114, :cond_1f

    .line 887
    :try_start_5a
    invoke-virtual/range {v114 .. v114}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_34

    .line 893
    :cond_1f
    :goto_41
    if-eqz v85, :cond_20

    .line 895
    :try_start_5b
    invoke-virtual/range {v85 .. v85}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_35

    .line 901
    :cond_20
    :goto_42
    if-eqz v127, :cond_21

    .line 903
    :try_start_5c
    invoke-virtual/range {v127 .. v127}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_36

    .line 910
    :cond_21
    :goto_43
    :try_start_5d
    invoke-virtual/range {v166 .. v166}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_37

    .line 915
    :goto_44
    if-eqz v47, :cond_22

    .line 916
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 922
    :cond_22
    invoke-virtual/range {v166 .. v166}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v76

    .line 923
    .local v76, "config":Landroid/content/res/Configuration;
    new-instance v118, Landroid/util/DisplayMetrics;

    invoke-direct/range {v118 .. v118}, Landroid/util/DisplayMetrics;-><init>()V

    .line 924
    .local v118, "metrics":Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v159

    check-cast v159, Landroid/view/WindowManager;

    .line 925
    .local v159, "w":Landroid/view/WindowManager;
    invoke-interface/range {v159 .. v159}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v118

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 926
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v76

    move-object/from16 v1, v118

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 929
    :try_start_5e
    move-object/from16 v0, v151

    move-object/from16 v1, v99

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_38

    .line 935
    :goto_45
    :try_start_5f
    invoke-interface/range {v129 .. v129}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_39

    .line 941
    :goto_46
    :try_start_60
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3a

    .line 947
    :goto_47
    move-object/from16 v34, v5

    .line 948
    .local v34, "contextF":Landroid/content/Context;
    move-object/from16 v35, v119

    .line 949
    .local v35, "mountServiceF":Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 950
    .local v36, "batteryF":Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 951
    .local v37, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 952
    .local v38, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 953
    .local v39, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v77

    .line 954
    .local v40, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v97

    .line 955
    .local v41, "dockF":Lcom/android/server/DockObserver;
    move-object/from16 v42, v155

    .line 956
    .local v42, "usbF":Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v151

    .line 957
    .local v43, "twilightF":Lcom/android/server/TwilightService;
    move-object/from16 v44, v153

    .line 958
    .local v44, "uiModeF":Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v66

    .line 959
    .local v46, "appWidgetF":Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v160

    .line 960
    .local v48, "wallpaperF":Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v106

    .line 961
    .local v49, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v139

    .line 962
    .local v45, "recognitionF":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v112

    .line 963
    .local v51, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v82

    .line 964
    .local v52, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v53, v125

    .line 965
    .local v53, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v54, v74

    .line 966
    .local v54, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v55, v149

    .line 967
    .local v55, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v145

    .line 968
    .local v50, "statusBarF":Lcom/android/server/StatusBarManagerService;
    move-object/from16 v56, v99

    .line 969
    .local v56, "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v57, v68

    .line 970
    .local v57, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v58, v20

    .line 971
    .local v58, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v59, v147

    .line 972
    .local v59, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v60, v121

    .line 973
    .local v60, "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v61, v131

    .line 974
    .local v61, "printManagerF":Lcom/android/server/print/PrintManagerService;
    move-object/from16 v62, v116

    .line 981
    .local v62, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v62}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1138
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_23

    .line 1139
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_23
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1143
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    return-void

    .line 119
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v21    # "wmHandler":Landroid/os/Handler;
    .end local v24    # "onlyCore":Z
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "headless":Z
    .end local v34    # "contextF":Landroid/content/Context;
    .end local v35    # "mountServiceF":Lcom/android/server/MountService;
    .end local v36    # "batteryF":Lcom/android/server/BatteryService;
    .end local v37    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v38    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v39    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v41    # "dockF":Lcom/android/server/DockObserver;
    .end local v42    # "usbF":Lcom/android/server/usb/UsbService;
    .end local v43    # "twilightF":Lcom/android/server/TwilightService;
    .end local v44    # "uiModeF":Lcom/android/server/UiModeManagerService;
    .end local v45    # "recognitionF":Lcom/android/server/RecognitionManagerService;
    .end local v46    # "appWidgetF":Lcom/android/server/AppWidgetService;
    .end local v47    # "safeMode":Z
    .end local v48    # "wallpaperF":Lcom/android/server/WallpaperManagerService;
    .end local v49    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v50    # "statusBarF":Lcom/android/server/StatusBarManagerService;
    .end local v51    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v52    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v53    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v54    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v55    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v56    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .end local v57    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v58    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v59    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v60    # "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    .end local v61    # "printManagerF":Lcom/android/server/print/PrintManagerService;
    .end local v62    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v71    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v74    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v76    # "config":Landroid/content/res/Configuration;
    .end local v77    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v79    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v81    # "contentService":Lcom/android/server/content/ContentService;
    .end local v82    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v85    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v87    # "disableAtlas":Z
    .end local v88    # "disableBluetooth":Z
    .end local v89    # "disableLocation":Z
    .end local v90    # "disableMedia":Z
    .end local v91    # "disableNetwork":Z
    .end local v92    # "disableNonCoreServices":Z
    .end local v93    # "disableStorage":Z
    .end local v94    # "disableSystemUI":Z
    .end local v95    # "disableTelephony":Z
    .end local v97    # "dock":Lcom/android/server/DockObserver;
    .end local v99    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v103    # "factoryTest":I
    .end local v104    # "factoryTestStr":Ljava/lang/String;
    .end local v105    # "firstBoot":Z
    .end local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v109    # "installer":Lcom/android/server/pm/Installer;
    .end local v112    # "location":Lcom/android/server/LocationManagerService;
    .end local v114    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v116    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v118    # "metrics":Landroid/util/DisplayMetrics;
    .end local v119    # "mountService":Lcom/android/server/MountService;
    .end local v121    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v125    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v127    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v129    # "pm":Landroid/content/pm/IPackageManager;
    .end local v131    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v139    # "recognition":Lcom/android/server/RecognitionManagerService;
    .end local v141    # "serial":Lcom/android/server/SerialService;
    .end local v143    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v145    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v149    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v151    # "twilight":Lcom/android/server/TwilightService;
    .end local v153    # "uiMode":Lcom/android/server/UiModeManagerService;
    .end local v155    # "usb":Lcom/android/server/usb/UsbService;
    .end local v157    # "vibrator":Lcom/android/server/VibratorService;
    .end local v159    # "w":Landroid/view/WindowManager;
    .end local v160    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .end local v162    # "wifi":Lcom/android/server/wifi/WifiService;
    .end local v164    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .end local v166    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v167    # "wmHandlerThread":Landroid/os/HandlerThread;
    :cond_24
    const/16 v138, 0x0

    goto/16 :goto_0

    .line 125
    .restart local v138    # "reboot":Z
    :cond_25
    const/16 v137, 0x0

    .restart local v137    # "reason":Ljava/lang/String;
    goto/16 :goto_1

    .line 133
    .end local v137    # "reason":Ljava/lang/String;
    .end local v138    # "reboot":Z
    .restart local v104    # "factoryTestStr":Ljava/lang/String;
    :cond_26
    invoke-static/range {v104 .. v104}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v103

    goto/16 :goto_2

    .line 209
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v21    # "wmHandler":Landroid/os/Handler;
    .restart local v24    # "onlyCore":Z
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v33    # "headless":Z
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v71    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v74    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v77    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v79    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v81    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v96    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v97    # "dock":Lcom/android/server/DockObserver;
    .restart local v103    # "factoryTest":I
    .restart local v105    # "firstBoot":Z
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v109    # "installer":Lcom/android/server/pm/Installer;
    .restart local v111    # "lights":Lcom/android/server/LightsService;
    .restart local v119    # "mountService":Lcom/android/server/MountService;
    .restart local v121    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v123    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v125    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v129    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v133    # "qcCon":Ljava/lang/Object;
    .restart local v139    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v141    # "serial":Lcom/android/server/SerialService;
    .restart local v143    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v151    # "twilight":Lcom/android/server/TwilightService;
    .restart local v153    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v155    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v157    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v162    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v164    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v166    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v167    # "wmHandlerThread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v101

    .line 210
    .local v101, "e":Ljava/lang/RuntimeException;
    :goto_48
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 255
    .end local v96    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v101    # "e":Ljava/lang/RuntimeException;
    .end local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v84    # "cryptState":Ljava/lang/String;
    .restart local v87    # "disableAtlas":Z
    .restart local v88    # "disableBluetooth":Z
    .restart local v89    # "disableLocation":Z
    .restart local v90    # "disableMedia":Z
    .restart local v91    # "disableNetwork":Z
    .restart local v92    # "disableNonCoreServices":Z
    .restart local v93    # "disableStorage":Z
    .restart local v94    # "disableSystemUI":Z
    .restart local v95    # "disableTelephony":Z
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_27
    :try_start_61
    const-string v7, "1"

    move-object/from16 v0, v84

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 256
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/16 v24, 0x1

    goto/16 :goto_4

    .line 260
    :cond_28
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 285
    :catch_1
    move-exception v101

    .line 286
    .local v101, "e":Ljava/lang/Throwable;
    :goto_49
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_61} :catch_2

    goto/16 :goto_7

    .line 361
    .end local v84    # "cryptState":Ljava/lang/String;
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v101

    move-object/from16 v147, v148

    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v111

    .line 362
    .end local v111    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .local v101, "e":Ljava/lang/RuntimeException;
    :goto_4a
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 290
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v101    # "e":Ljava/lang/RuntimeException;
    .end local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v84    # "cryptState":Ljava/lang/String;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v111    # "lights":Lcom/android/server/LightsService;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_29
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 330
    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .end local v79    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v111    # "lights":Lcom/android/server/LightsService;
    .end local v157    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v158    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2a
    const/16 v22, 0x0

    goto/16 :goto_9

    :cond_2b
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 349
    :cond_2c
    const/4 v7, 0x1

    move/from16 v0, v103

    if-ne v0, v7, :cond_2d

    .line 350
    :try_start_62
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 361
    :catch_3
    move-exception v101

    move-object/from16 v79, v80

    .end local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v79    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v147, v148

    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v157, v158

    .end local v158    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v157    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_4a

    .line 351
    .end local v79    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v157    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v158    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2d
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2e

    .line 353
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 354
    :cond_2e
    if-eqz v88, :cond_2f

    .line 355
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 357
    :cond_2f
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v72, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v72

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_62} :catch_3

    .line 359
    .end local v71    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v72, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_63
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v72

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_63} :catch_5c

    move-object/from16 v71, v72

    .end local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v71    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_b

    .line 389
    .end local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v84    # "cryptState":Ljava/lang/String;
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v158    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v79    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v85    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v99    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v112    # "location":Lcom/android/server/LocationManagerService;
    .restart local v114    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v116    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v127    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v131    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v145    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v149    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v157    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v160    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_4
    move-exception v101

    .line 390
    .local v101, "e":Ljava/lang/Throwable;
    :goto_4b
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 397
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v101

    .line 398
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 405
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v101

    .line 406
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 411
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v101

    .line 412
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 434
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v101

    .line 435
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_4c
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 444
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v101

    .line 445
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_4d
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 452
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v101

    .line 453
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 462
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v101

    .line 463
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 472
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v101

    .line 473
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 482
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v101

    .line 483
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 492
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v101

    .line 493
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 502
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v101

    .line 503
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 512
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v101

    move-object/from16 v25, v123

    .line 513
    .end local v123    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 520
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v101

    .line 521
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 528
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v101

    .line 529
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 537
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v102    # "enableCne":I
    :cond_30
    const/16 v73, 0x0

    goto/16 :goto_1d

    .line 554
    .restart local v73    # "cneFeature":I
    :cond_31
    :try_start_64
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v78, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v78

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_13

    .end local v77    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v78, "connectivity":Lcom/android/server/ConnectivityService;
    move-object/from16 v77, v78

    .end local v78    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v77    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_1e

    .line 565
    .end local v73    # "cneFeature":I
    .end local v133    # "qcCon":Ljava/lang/Object;
    :catch_13
    move-exception v101

    .line 566
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 574
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v101

    .line 575
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 584
    .end local v101    # "e":Ljava/lang/Throwable;
    .end local v102    # "enableCne":I
    :catch_15
    move-exception v101

    .line 585
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 601
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v101

    .line 602
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 608
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v101

    .line 609
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 617
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v101

    .line 618
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 625
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v101

    .line 626
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 634
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v101

    .line 635
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 642
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v101

    .line 643
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 652
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v101

    .line 653
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 661
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v101

    .line 662
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 673
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v101

    .line 674
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 682
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v101

    .line 683
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 692
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v101

    .line 693
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 703
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v101

    .line 704
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 714
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v101

    .line 715
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 723
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v101

    .line 724
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 731
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v101

    .line 732
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 739
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v101

    .line 740
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 748
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v101

    .line 749
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 756
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v101

    .line 757
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 763
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v101

    .line 764
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 771
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v101

    .line 772
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 783
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v101

    .line 784
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 791
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v101

    .line 792
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 801
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v101

    .line 802
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 810
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v101

    .line 811
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 822
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v101

    .line 823
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 832
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v101

    .line 833
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 840
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v101

    .line 841
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 848
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v101

    .line 849
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 857
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v101

    .line 858
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 874
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v47    # "safeMode":Z
    :cond_32
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_3f

    .line 881
    :catch_33
    move-exception v101

    .line 882
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 888
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v101

    .line 889
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 896
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v101

    .line 897
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 904
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v101

    .line 905
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 911
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v101

    .line 912
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 930
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v76    # "config":Landroid/content/res/Configuration;
    .restart local v118    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v159    # "w":Landroid/view/WindowManager;
    :catch_38
    move-exception v101

    .line 931
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 936
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_39
    move-exception v101

    .line 937
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 942
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v101

    .line 943
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 265
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47    # "safeMode":Z
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v76    # "config":Landroid/content/res/Configuration;
    .end local v82    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v85    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v99    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v101    # "e":Ljava/lang/Throwable;
    .end local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v112    # "location":Lcom/android/server/LocationManagerService;
    .end local v114    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v116    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v118    # "metrics":Landroid/util/DisplayMetrics;
    .end local v127    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v131    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v145    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v149    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v159    # "w":Landroid/view/WindowManager;
    .end local v160    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v84    # "cryptState":Ljava/lang/String;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v111    # "lights":Lcom/android/server/LightsService;
    .restart local v123    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v133    # "qcCon":Ljava/lang/Object;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_3b
    move-exception v7

    goto/16 :goto_6

    .line 857
    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .end local v84    # "cryptState":Ljava/lang/String;
    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v111    # "lights":Lcom/android/server/LightsService;
    .end local v123    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v133    # "qcCon":Ljava/lang/Object;
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v82    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v85    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v99    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v112    # "location":Lcom/android/server/LocationManagerService;
    .restart local v114    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v117    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v127    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v131    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v145    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v149    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v160    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_3c
    move-exception v101

    move-object/from16 v116, v117

    .end local v117    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v116    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto :goto_60

    .line 848
    .end local v131    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v132    # "printManager":Lcom/android/server/print/PrintManagerService;
    :catch_3d
    move-exception v101

    move-object/from16 v131, v132

    .end local v132    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v131    # "printManager":Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_5f

    .line 832
    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_3e
    move-exception v101

    move-object/from16 v68, v69

    .end local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_5e

    .line 822
    .end local v99    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v100    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :catch_3f
    move-exception v101

    move-object/from16 v99, v100

    .end local v100    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v99    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_5d

    .line 801
    .end local v74    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v75    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_40
    move-exception v101

    move-object/from16 v74, v75

    .end local v75    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v74    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_5c

    .line 756
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    :catch_41
    move-exception v101

    move-object/from16 v66, v67

    .end local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    goto/16 :goto_5b

    .line 723
    .end local v141    # "serial":Lcom/android/server/SerialService;
    .restart local v142    # "serial":Lcom/android/server/SerialService;
    :catch_42
    move-exception v101

    move-object/from16 v141, v142

    .end local v142    # "serial":Lcom/android/server/SerialService;
    .restart local v141    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_5a

    .line 714
    .end local v155    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v156    # "usb":Lcom/android/server/usb/UsbService;
    :catch_43
    move-exception v101

    move-object/from16 v155, v156

    .end local v156    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v155    # "usb":Lcom/android/server/usb/UsbService;
    goto/16 :goto_59

    .line 673
    .end local v160    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v161    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_44
    move-exception v101

    move-object/from16 v160, v161

    .end local v161    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v160    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_58

    .line 642
    .end local v82    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v83    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_45
    move-exception v101

    move-object/from16 v82, v83

    .end local v83    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v82    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_57

    .line 634
    .end local v112    # "location":Lcom/android/server/LocationManagerService;
    .restart local v113    # "location":Lcom/android/server/LocationManagerService;
    :catch_46
    move-exception v101

    move-object/from16 v112, v113

    .end local v113    # "location":Lcom/android/server/LocationManagerService;
    .restart local v112    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_56

    .line 617
    .end local v127    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v128    # "notification":Lcom/android/server/NotificationManagerService;
    :catch_47
    move-exception v101

    move-object/from16 v127, v128

    .end local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v127    # "notification":Lcom/android/server/NotificationManagerService;
    goto/16 :goto_55

    .line 528
    .end local v162    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v133    # "qcCon":Ljava/lang/Object;
    .restart local v163    # "wifi":Lcom/android/server/wifi/WifiService;
    :catch_48
    move-exception v101

    move-object/from16 v162, v163

    .end local v163    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v162    # "wifi":Lcom/android/server/wifi/WifiService;
    goto/16 :goto_54

    .line 520
    .end local v164    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v165    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :catch_49
    move-exception v101

    move-object/from16 v164, v165

    .end local v165    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v164    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_53

    .line 512
    :catch_4a
    move-exception v101

    goto/16 :goto_52

    .line 502
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v123    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v124    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_4b
    move-exception v101

    move-object/from16 v29, v124

    .end local v124    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_51

    .line 492
    .end local v149    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v150    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_4c
    move-exception v101

    move-object/from16 v149, v150

    .end local v150    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v149    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_50

    .line 462
    .end local v145    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v146    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :catch_4d
    move-exception v101

    move-object/from16 v145, v146

    .end local v146    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v145    # "statusBar":Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_4f

    .line 452
    .end local v85    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v86    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :catch_4e
    move-exception v101

    move-object/from16 v85, v86

    .end local v86    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v85    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_4e

    .line 444
    .end local v114    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v115    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_4f
    move-exception v101

    move-object/from16 v114, v115

    .end local v115    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v114    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_4d

    .line 434
    .end local v119    # "mountService":Lcom/android/server/MountService;
    .restart local v120    # "mountService":Lcom/android/server/MountService;
    :catch_50
    move-exception v101

    move-object/from16 v119, v120

    .end local v120    # "mountService":Lcom/android/server/MountService;
    .restart local v119    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_4c

    .line 420
    :catch_51
    move-exception v7

    goto/16 :goto_11

    .line 389
    .end local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v107    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_52
    move-exception v101

    move-object/from16 v106, v107

    .end local v107    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_4b

    .line 361
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v82    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v85    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v99    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v112    # "location":Lcom/android/server/LocationManagerService;
    .end local v114    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v116    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v127    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v131    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v145    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v149    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v160    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v96    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v111    # "lights":Lcom/android/server/LightsService;
    :catch_53
    move-exception v101

    move-object/from16 v20, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v11, v96

    .end local v96    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v111

    .end local v111    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_4a

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v111    # "lights":Lcom/android/server/LightsService;
    :catch_54
    move-exception v101

    move-object/from16 v20, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v111

    .end local v111    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_4a

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v121    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v111    # "lights":Lcom/android/server/LightsService;
    .restart local v122    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_55
    move-exception v101

    move-object/from16 v121, v122

    .end local v122    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v121    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v147, v148

    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v111

    .end local v111    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_4a

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v84    # "cryptState":Ljava/lang/String;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v111    # "lights":Lcom/android/server/LightsService;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_56
    move-exception v101

    move-object/from16 v147, v148

    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v111

    .end local v111    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v63, v64

    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_4a

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_57
    move-exception v101

    move-object/from16 v147, v148

    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    goto/16 :goto_4a

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_58
    move-exception v101

    move-object/from16 v147, v148

    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    goto/16 :goto_4a

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v157    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v158    # "vibrator":Lcom/android/server/VibratorService;
    :catch_59
    move-exception v101

    move-object/from16 v147, v148

    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v157, v158

    .end local v158    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v157    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4a

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v79    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v157    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v158    # "vibrator":Lcom/android/server/VibratorService;
    :catch_5a
    move-exception v101

    move-object/from16 v79, v80

    .end local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v79    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v147, v148

    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v157, v158

    .end local v158    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v157    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4a

    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v79    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v157    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v158    # "vibrator":Lcom/android/server/VibratorService;
    :catch_5b
    move-exception v101

    move-object/from16 v79, v80

    .end local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v79    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v147, v148

    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v157, v158

    .end local v158    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v157    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4a

    .end local v71    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v79    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v157    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v158    # "vibrator":Lcom/android/server/VibratorService;
    :catch_5c
    move-exception v101

    move-object/from16 v79, v80

    .end local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v79    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v147, v148

    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v71, v72

    .end local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v71    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v157, v158

    .end local v158    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v157    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4a

    .line 285
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v111    # "lights":Lcom/android/server/LightsService;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5d
    move-exception v101

    move-object/from16 v63, v64

    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_49

    .line 209
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v84    # "cryptState":Ljava/lang/String;
    .end local v87    # "disableAtlas":Z
    .end local v88    # "disableBluetooth":Z
    .end local v89    # "disableLocation":Z
    .end local v90    # "disableMedia":Z
    .end local v91    # "disableNetwork":Z
    .end local v92    # "disableNonCoreServices":Z
    .end local v93    # "disableStorage":Z
    .end local v94    # "disableSystemUI":Z
    .end local v95    # "disableTelephony":Z
    .end local v109    # "installer":Lcom/android/server/pm/Installer;
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v110    # "installer":Lcom/android/server/pm/Installer;
    .restart local v147    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5e
    move-exception v101

    move-object/from16 v109, v110

    .end local v110    # "installer":Lcom/android/server/pm/Installer;
    .restart local v109    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_48

    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v109    # "installer":Lcom/android/server/pm/Installer;
    .restart local v110    # "installer":Lcom/android/server/pm/Installer;
    .restart local v130    # "power":Lcom/android/server/power/PowerManagerService;
    :catch_5f
    move-exception v101

    move-object/from16 v4, v130

    .end local v130    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v109, v110

    .end local v110    # "installer":Lcom/android/server/pm/Installer;
    .restart local v109    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_48

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .end local v96    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v111    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v82    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v85    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v87    # "disableAtlas":Z
    .restart local v88    # "disableBluetooth":Z
    .restart local v89    # "disableLocation":Z
    .restart local v90    # "disableMedia":Z
    .restart local v91    # "disableNetwork":Z
    .restart local v92    # "disableNonCoreServices":Z
    .restart local v93    # "disableStorage":Z
    .restart local v94    # "disableSystemUI":Z
    .restart local v95    # "disableTelephony":Z
    .restart local v99    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v112    # "location":Lcom/android/server/LocationManagerService;
    .restart local v114    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v116    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v127    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v131    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v145    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v149    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v160    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_33
    move-object/from16 v25, v123

    .end local v123    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_20

    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v123    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_34
    move-object/from16 v25, v123

    .end local v123    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3e
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    return-void
.end method
