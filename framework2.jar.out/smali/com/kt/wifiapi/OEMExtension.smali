.class public Lcom/kt/wifiapi/OEMExtension;
.super Landroid/app/Activity;
.source "OEMExtension.java"


# static fields
.field static DP_MODE_CITY:I = 0x0

.field static DP_MODE_GENERAL:I = 0x0

.field static DP_MODE_HOME:I = 0x0

.field static DP_MODE_OFF:I = 0x0

.field private static final ENABLE_QUERY:Ljava/lang/String; = "com.kt.wifiapi.OEMExtension.MANUAL_CONN_ENABLE_QUERY"

.field private static final ERROR_NOTI:Ljava/lang/String; = "com.kt.wifiapi.OEMExtension.NOTIFICATION"

.field public static final FEATURE_KT_WIFIAPI_OEM_DISCONNECTION_PRIORITY:I = 0x2

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_AKA_NOTIFICATION:I = 0x10

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_NOTIFICATION:I = 0x8

.field public static final FEATURE_KT_WIFIAPI_OEM_ERROR_NOTIFICATION:I = 0x4

.field public static final FEATURE_KT_WIFIAPI_OEM_MANUAL_CONNECTION:I = 0x1

.field public static final FEATURE_KT_WIFIAPI_OEM_SCAN_RESULT_EXTENTION:I = 0x20

.field private static final TAG:Ljava/lang/String; = "OEMExtension"

.field private static final WIFI_DBG:Z = true

.field public static confirmManual:Z

.field private static getAllManual:Z

.field private static instance:Lcom/kt/wifiapi/OEMExtension;

.field private static sConfiguredNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public errorNotification:I

.field private feature:Ljava/util/BitSet;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->sConfiguredNetworks:Ljava/util/HashMap;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/kt/wifiapi/OEMExtension;->DP_MODE_OFF:I

    .line 96
    const/4 v0, 0x1

    sput v0, Lcom/kt/wifiapi/OEMExtension;->DP_MODE_CITY:I

    .line 97
    const/4 v0, 0x2

    sput v0, Lcom/kt/wifiapi/OEMExtension;->DP_MODE_GENERAL:I

    .line 98
    const/4 v0, 0x3

    sput v0, Lcom/kt/wifiapi/OEMExtension;->DP_MODE_HOME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Lcom/kt/wifiapi/OEMExtension;->errorNotification:I

    .line 67
    iput-object p1, p0, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    .line 68
    sput-object p0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    .line 69
    iget-object v0, p0, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/kt/wifiapi/OEMExtension;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/kt/wifiapi/OEMExtension;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kt/wifiapi/OEMExtension;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/kt/wifiapi/OEMExtension;

    invoke-direct {v0, p0}, Lcom/kt/wifiapi/OEMExtension;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    .line 75
    :cond_0
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    return-object v0
.end method


# virtual methods
.method public ManualConnectionEnable()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 331
    const-string v2, "OEMExtension"

    const-string v3, "ManualConnectionEnable Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v2, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setCheckManualQuery(Z)Z

    .line 333
    iget-object v2, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCheckManualConnection()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 335
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.kt.wifiapi.OEMExtension.MANUAL_CONN_ENABLE_QUERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v2, "MANUAL_CONN_ENABLE_QUERY"

    const-string v3, "MANUAL_CONN_ENABLE_QUERY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    iget-object v2, p0, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 341
    const-string v2, "OEMExtension"

    const-string v3, "mContext is NULL-------!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    new-instance v2, Lcom/kt/wifiapi/OEMExtension$1;

    invoke-direct {v2, p0}, Lcom/kt/wifiapi/OEMExtension$1;-><init>(Lcom/kt/wifiapi/OEMExtension;)V

    iput-object v2, p0, Lcom/kt/wifiapi/OEMExtension;->mRunnable:Ljava/lang/Runnable;

    .line 364
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/kt/wifiapi/OEMExtension;->mHandler:Landroid/os/Handler;

    .line 365
    iget-object v2, p0, Lcom/kt/wifiapi/OEMExtension;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kt/wifiapi/OEMExtension;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 368
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return v6

    .line 345
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "OEMExtension"

    const-string v3, "getGWSScanResultsEx error2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDisconnectionPriority()I
    .locals 4

    .prologue
    .line 128
    iget-object v1, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDisconnectionPriority()I

    move-result v0

    .line 129
    .local v0, "result":I
    const-string v1, "OEMExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    packed-switch v0, :pswitch_data_0

    .line 141
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 133
    :pswitch_0
    sget v1, Lcom/kt/wifiapi/OEMExtension;->DP_MODE_OFF:I

    goto :goto_0

    .line 135
    :pswitch_1
    sget v1, Lcom/kt/wifiapi/OEMExtension;->DP_MODE_GENERAL:I

    goto :goto_0

    .line 137
    :pswitch_2
    sget v1, Lcom/kt/wifiapi/OEMExtension;->DP_MODE_CITY:I

    goto :goto_0

    .line 139
    :pswitch_3
    sget v1, Lcom/kt/wifiapi/OEMExtension;->DP_MODE_HOME:I

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getFeature()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "result":I
    const/16 v0, 0x3f

    .line 92
    return v0
.end method

.method public getGWSScanResultsEx()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    const/4 v3, 0x0

    .line 229
    .local v3, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/4 v4, 0x0

    .line 230
    .local v4, "BSSID":Ljava/lang/String;
    const/4 v5, 0x0

    .line 231
    .local v5, "capabilities":Ljava/lang/String;
    const/4 v6, 0x0

    .line 232
    .local v6, "level":I
    const/4 v7, 0x0

    .line 233
    .local v7, "frequency":I
    const/4 v10, 0x0

    .line 234
    .local v10, "SSIDCodeType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 235
    .local v11, "ssidHex":Ljava/lang/String;
    const/4 v12, 0x0

    .line 236
    .local v12, "vendorSpecificOUI":Ljava/lang/String;
    const/4 v13, 0x0

    .line 237
    .local v13, "vendorSpecificContents":Ljava/lang/String;
    const/4 v14, 0x0

    .line 238
    .local v14, "BSSLoadElement":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 239
    .local v8, "tsf":J
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v16, "OEMscanlist":Ljava/util/List;, "Ljava/util/List<Lcom/kt/wifiapi/GWSScanResult;>;"
    const/4 v2, 0x0

    .line 241
    .local v2, "OEMscanResult":Lcom/kt/wifiapi/GWSScanResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->sizeofScanResults()I

    move-result v21

    .line 242
    .local v21, "theSize":I
    const-string v22, "OEMExtension"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "theSize : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-nez v21, :cond_0

    .line 244
    const/16 v16, 0x0

    .line 322
    .end local v16    # "OEMscanlist":Ljava/util/List;, "Ljava/util/List<Lcom/kt/wifiapi/GWSScanResult;>;"
    :goto_0
    return-object v16

    .line 248
    .restart local v16    # "OEMscanlist":Ljava/util/List;, "Ljava/util/List<Lcom/kt/wifiapi/GWSScanResult;>;"
    :cond_0
    const/16 v19, 0x0

    .local v19, "i":I
    move-object v15, v2

    .end local v2    # "OEMscanResult":Lcom/kt/wifiapi/GWSScanResult;
    .local v15, "OEMscanResult":Lcom/kt/wifiapi/GWSScanResult;
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 249
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->getOEMScanResults(I)Landroid/net/wifi/ScanResult;

    move-result-object v20

    .line 251
    .local v20, "scanlist":Landroid/net/wifi/ScanResult;
    const-string v22, "OEMExtension"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "scanlist : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    :try_start_1
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 254
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 255
    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 256
    move-object/from16 v0, v20

    iget v6, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 257
    move-object/from16 v0, v20

    iget v7, v0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 258
    move-object/from16 v0, v20

    iget-object v10, v0, Landroid/net/wifi/ScanResult;->codeType:Ljava/lang/String;

    .line 259
    move-object/from16 v0, v20

    iget-object v11, v0, Landroid/net/wifi/ScanResult;->ssidHex:Ljava/lang/String;

    .line 260
    move-object/from16 v0, v20

    iget-wide v8, v0, Landroid/net/wifi/ScanResult;->timestamp:J
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    :goto_2
    :try_start_2
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->vendorSpecificOUI:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 266
    const-string v22, "OEMExtension"

    const-string v23, "scanlist1_5"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->vendorSpecificOUI:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "0017c3"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->vendorSpecificOUI:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "0017C3"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 268
    :cond_1
    move-object/from16 v0, v20

    iget-object v12, v0, Landroid/net/wifi/ScanResult;->vendorSpecificOUI:Ljava/lang/String;

    .line 269
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->vendorSpecificContents:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 270
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->vendorSpecificContents:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "11"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 271
    const-string v22, "OEMExtension"

    const-string v23, "scanlist5"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/net/wifi/ScanResult;->vendorSpecificContents:Ljava/lang/String;

    .line 288
    :cond_2
    :goto_3
    const-string v22, "OEMExtension"

    const-string v23, "scanlist2"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->bssLoadElement:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->bssLoadElement:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "ffffffffff"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->bssLoadElement:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 291
    :cond_3
    const-string v14, "null"

    .line 296
    :goto_4
    const-string v22, "OEMExtension"

    const-string v23, "scanlist4"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v22, "OEMExtension"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SSID: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v22, "OEMExtension"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "BSSID : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v22, "OEMExtension"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "capabilities : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v22, "OEMExtension"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "level : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v22, "OEMExtension"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "frequency : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v22, "OEMExtension"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SSIDCodeType : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v22, "OEMExtension"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "vendorSpecificOUI : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v22, "OEMExtension"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "vendorSpecificContents : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v22, "OEMExtension"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ssidHex : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v22, "OEMExtension"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "BSSLoadElement : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v2, Lcom/kt/wifiapi/GWSScanResult;

    invoke-direct/range {v2 .. v14}, Lcom/kt/wifiapi/GWSScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 316
    .end local v15    # "OEMscanResult":Lcom/kt/wifiapi/GWSScanResult;
    .restart local v2    # "OEMscanResult":Lcom/kt/wifiapi/GWSScanResult;
    :try_start_3
    const-string v22, "OEMExtension"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "OEMscanResult : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 248
    add-int/lit8 v19, v19, 0x1

    move-object v15, v2

    .end local v2    # "OEMscanResult":Lcom/kt/wifiapi/GWSScanResult;
    .restart local v15    # "OEMscanResult":Lcom/kt/wifiapi/GWSScanResult;
    goto/16 :goto_1

    .line 261
    :catch_0
    move-exception v17

    .line 262
    .local v17, "e":Ljava/lang/NullPointerException;
    :try_start_4
    const-string v22, "OEMExtension"

    const-string v23, "getGWSScanResultsEx error1"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 320
    .end local v17    # "e":Ljava/lang/NullPointerException;
    .end local v20    # "scanlist":Landroid/net/wifi/ScanResult;
    :catch_1
    move-exception v18

    move-object v2, v15

    .line 321
    .end local v15    # "OEMscanResult":Lcom/kt/wifiapi/GWSScanResult;
    .restart local v2    # "OEMscanResult":Lcom/kt/wifiapi/GWSScanResult;
    .local v18, "ex":Ljava/lang/NullPointerException;
    :goto_5
    const-string v22, "OEMExtension"

    const-string v23, "NullPointerException "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 274
    .end local v2    # "OEMscanResult":Lcom/kt/wifiapi/GWSScanResult;
    .end local v18    # "ex":Ljava/lang/NullPointerException;
    .restart local v15    # "OEMscanResult":Lcom/kt/wifiapi/GWSScanResult;
    .restart local v20    # "scanlist":Landroid/net/wifi/ScanResult;
    :cond_4
    :try_start_5
    const-string v13, "null"

    goto/16 :goto_3

    .line 278
    :cond_5
    const-string v22, "OEMExtension"

    const-string v23, "scanlist5_5"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v12, "null"

    .line 280
    const-string v13, "null"

    goto/16 :goto_3

    .line 283
    :cond_6
    const-string v22, "OEMExtension"

    const-string v23, "scanlist2_5"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v12, "null"

    .line 285
    const-string v13, "null"

    goto/16 :goto_3

    .line 293
    :cond_7
    move-object/from16 v0, v20

    iget-object v14, v0, Landroid/net/wifi/ScanResult;->bssLoadElement:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    .end local v20    # "scanlist":Landroid/net/wifi/ScanResult;
    :cond_8
    move-object v2, v15

    .line 319
    .end local v15    # "OEMscanResult":Lcom/kt/wifiapi/GWSScanResult;
    .restart local v2    # "OEMscanResult":Lcom/kt/wifiapi/GWSScanResult;
    goto/16 :goto_0

    .line 320
    .restart local v20    # "scanlist":Landroid/net/wifi/ScanResult;
    :catch_2
    move-exception v18

    goto :goto_5
.end method

.method public getManualConnection()Z
    .locals 3

    .prologue
    .line 191
    const-string v0, "OEMExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmManual : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/kt/wifiapi/OEMExtension;->confirmManual:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCheckManualConnection()Z

    move-result v0

    return v0
.end method

.method public getProfileManualConnection(I)Z
    .locals 6
    .param p1, "networkId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 197
    sget-object v4, Lcom/kt/wifiapi/OEMExtension;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 198
    :try_start_0
    sget-object v5, Lcom/kt/wifiapi/OEMExtension;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 199
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v5, p1, :cond_0

    .line 200
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->enabledManualConnection:Z

    if-ne v5, v2, :cond_1

    .line 202
    const-string v3, "OEMExtension"

    const-string v5, "getProfileManualConnection true"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit v4

    .line 212
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return v2

    .line 204
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->enabledManualConnection:Z

    if-nez v5, :cond_0

    .line 205
    const-string v2, "OEMExtension"

    const-string v5, "getProfileManualConnection false"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 210
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    const-string v2, "OEMExtension"

    const-string v4, "getProfileManualConnection synchronized fail"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 212
    goto :goto_0

    .line 210
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public sendErrorNotification(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 151
    move v1, p1

    .line 160
    .local v1, "errorNotification":I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v3, "ERROR_NOTIFICATION"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    :try_start_0
    const-string v3, "OEMExtension"

    const-string v4, "sendErrorNotification 1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v3, p0, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "OEMExtension"

    const-string v4, "sendErrorNotification 2"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDisconnectionPriority(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 105
    packed-switch p1, :pswitch_data_0

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setDisconnectionPriority(I)Z

    move-result v0

    .line 121
    .local v0, "result":Z
    const-string v1, "OEMExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v0

    .line 107
    .end local v0    # "result":Z
    :pswitch_0
    const/4 p1, 0x3

    .line 108
    goto :goto_0

    .line 110
    :pswitch_1
    const/4 p1, 0x1

    .line 111
    goto :goto_0

    .line 113
    :pswitch_2
    const/4 p1, 0x0

    .line 114
    goto :goto_0

    .line 116
    :pswitch_3
    const/4 p1, 0x2

    .line 117
    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setManualConnection(Z)Z
    .locals 6
    .param p1, "value"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 174
    :try_start_0
    const-string v2, "OEMExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setManualConnection1 value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiManager;->setManualConnection(Z)Z

    move-result v2

    sput-boolean v2, Lcom/kt/wifiapi/OEMExtension;->getAllManual:Z

    .line 176
    sput-boolean p1, Lcom/kt/wifiapi/OEMExtension;->confirmManual:Z

    .line 177
    iget-object v2, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiManager;->setCheckManualConnection(Z)Z

    .line 178
    iget-object v2, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setReCheckManualConnection(Z)Z

    .line 179
    if-ne p1, v5, :cond_0

    .line 180
    iget-object v2, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setCheckManualQuery(Z)Z

    .line 182
    :cond_0
    sget-boolean v1, Lcom/kt/wifiapi/OEMExtension;->getAllManual:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "OEMExtension"

    const-string v3, "setManualConnection3"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sput-boolean v1, Lcom/kt/wifiapi/OEMExtension;->getAllManual:Z

    goto :goto_0
.end method

.method public setProfileManualConnection(IZ)Z
    .locals 4
    .param p1, "networkId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 217
    :try_start_0
    const-string v1, "OEMExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProfileManualConnection OEMExtension1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/WifiManager;->setProfileManualConnection(IZ)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    const/4 v1, 0x1

    .line 222
    :goto_0
    return v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "OEMExtension"

    const-string v2, "setProfileManualConnection OEMExtension2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, 0x0

    goto :goto_0
.end method
