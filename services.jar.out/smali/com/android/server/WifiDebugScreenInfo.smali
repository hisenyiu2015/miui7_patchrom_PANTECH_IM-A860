.class public Lcom/android/server/WifiDebugScreenInfo;
.super Ljava/lang/Object;
.source "WifiDebugScreenInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiDebugScreenInfo"


# instance fields
.field mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mIsWifiEnabled:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private networkInfo:Landroid/net/NetworkInfo;

.field private wifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 26
    iput-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WifiDebugScreenInfo;->mIsWifiEnabled:Z

    .line 35
    iput-object p1, p0, Lcom/android/server/WifiDebugScreenInfo;->mContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 37
    iget-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 38
    return-void
.end method


# virtual methods
.method public get80211Mode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "strTmpMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/WifiDebugScreenInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->get8011ModeCommand()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 180
    const-string v0, "802.11ac"

    .line 184
    :goto_0
    const-string v1, "WIFISebugScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get80211Mode , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-object v0

    .line 182
    :cond_0
    const-string v0, "802.11n"

    goto :goto_0
.end method

.method public getBSSID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    iget-boolean v1, p0, Lcom/android/server/WifiDebugScreenInfo;->mIsWifiEnabled:Z

    if-nez v1, :cond_0

    .line 100
    const-string v1, ""

    .line 109
    :goto_0
    return-object v1

    .line 103
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiDebugScreenInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/server/WifiDebugScreenInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 106
    :cond_1
    const-string v1, "null"
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "WIFISebugScreen"

    const-string v2, "NullPointerException getBSSID"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v1, "null"

    goto :goto_0
.end method

.method public getBluetoothcoex()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    const-string v2, "init.svc.hciattach"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "property_value":Ljava/lang/String;
    const-string v2, "running"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 149
    .end local v0    # "property_value":Ljava/lang/String;
    .local v1, "property_value":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 148
    .end local v1    # "property_value":Ljava/lang/String;
    .restart local v0    # "property_value":Ljava/lang/String;
    :cond_0
    const-string v0, "not running"

    move-object v1, v0

    .line 149
    .end local v0    # "property_value":Ljava/lang/String;
    .restart local v1    # "property_value":Ljava/lang/String;
    goto :goto_0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "CHANNEL"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->getWifiNativeCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getChannelByFrequency(I)I
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 263
    sparse-switch p1, :sswitch_data_0

    .line 358
    move v0, p1

    .line 361
    .local v0, "nCh":I
    :goto_0
    return v0

    .line 266
    .end local v0    # "nCh":I
    :sswitch_0
    const/4 v0, 0x1

    .line 267
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 269
    .end local v0    # "nCh":I
    :sswitch_1
    const/4 v0, 0x2

    .line 270
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 272
    .end local v0    # "nCh":I
    :sswitch_2
    const/4 v0, 0x3

    .line 273
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 275
    .end local v0    # "nCh":I
    :sswitch_3
    const/4 v0, 0x4

    .line 276
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 278
    .end local v0    # "nCh":I
    :sswitch_4
    const/4 v0, 0x5

    .line 279
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 281
    .end local v0    # "nCh":I
    :sswitch_5
    const/4 v0, 0x6

    .line 282
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 284
    .end local v0    # "nCh":I
    :sswitch_6
    const/4 v0, 0x7

    .line 285
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 287
    .end local v0    # "nCh":I
    :sswitch_7
    const/16 v0, 0x8

    .line 288
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 290
    .end local v0    # "nCh":I
    :sswitch_8
    const/16 v0, 0x9

    .line 291
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 293
    .end local v0    # "nCh":I
    :sswitch_9
    const/16 v0, 0xa

    .line 294
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 296
    .end local v0    # "nCh":I
    :sswitch_a
    const/16 v0, 0xb

    .line 297
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 299
    .end local v0    # "nCh":I
    :sswitch_b
    const/16 v0, 0xc

    .line 300
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 302
    .end local v0    # "nCh":I
    :sswitch_c
    const/16 v0, 0xd

    .line 303
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 305
    .end local v0    # "nCh":I
    :sswitch_d
    const/16 v0, 0xe

    .line 306
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 309
    .end local v0    # "nCh":I
    :sswitch_e
    const/16 v0, 0x28

    .line 310
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 312
    .end local v0    # "nCh":I
    :sswitch_f
    const/16 v0, 0x24

    .line 313
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 315
    .end local v0    # "nCh":I
    :sswitch_10
    const/16 v0, 0x2c

    .line 316
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 318
    .end local v0    # "nCh":I
    :sswitch_11
    const/16 v0, 0x30

    .line 319
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 321
    .end local v0    # "nCh":I
    :sswitch_12
    const/16 v0, 0x34

    .line 322
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 324
    .end local v0    # "nCh":I
    :sswitch_13
    const/16 v0, 0x38

    .line 325
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 327
    .end local v0    # "nCh":I
    :sswitch_14
    const/16 v0, 0x3c

    .line 328
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 330
    .end local v0    # "nCh":I
    :sswitch_15
    const/16 v0, 0x40

    .line 331
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 333
    .end local v0    # "nCh":I
    :sswitch_16
    const/16 v0, 0x95

    .line 334
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 336
    .end local v0    # "nCh":I
    :sswitch_17
    const/16 v0, 0x99

    .line 337
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 339
    .end local v0    # "nCh":I
    :sswitch_18
    const/16 v0, 0x9d

    .line 340
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 342
    .end local v0    # "nCh":I
    :sswitch_19
    const/16 v0, 0xa1

    .line 343
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 346
    .end local v0    # "nCh":I
    :sswitch_1a
    const/16 v0, 0x22

    .line 347
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 349
    .end local v0    # "nCh":I
    :sswitch_1b
    const/16 v0, 0x26

    .line 350
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 352
    .end local v0    # "nCh":I
    :sswitch_1c
    const/16 v0, 0x2a

    .line 353
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 355
    .end local v0    # "nCh":I
    :sswitch_1d
    const/16 v0, 0x2e

    .line 356
    .restart local v0    # "nCh":I
    goto :goto_0

    .line 263
    :sswitch_data_0
    .sparse-switch
        0x96c -> :sswitch_0
        0x971 -> :sswitch_1
        0x976 -> :sswitch_2
        0x97b -> :sswitch_3
        0x980 -> :sswitch_4
        0x985 -> :sswitch_5
        0x98a -> :sswitch_6
        0x98f -> :sswitch_7
        0x994 -> :sswitch_8
        0x999 -> :sswitch_9
        0x99e -> :sswitch_a
        0x9a3 -> :sswitch_b
        0x9a8 -> :sswitch_c
        0x9b4 -> :sswitch_d
        0x1432 -> :sswitch_1a
        0x143c -> :sswitch_f
        0x1446 -> :sswitch_1b
        0x1450 -> :sswitch_e
        0x145a -> :sswitch_1c
        0x1464 -> :sswitch_10
        0x146e -> :sswitch_1d
        0x1478 -> :sswitch_11
        0x148c -> :sswitch_12
        0x14a0 -> :sswitch_13
        0x14b4 -> :sswitch_14
        0x14c8 -> :sswitch_15
        0x1671 -> :sswitch_16
        0x1685 -> :sswitch_17
        0x1699 -> :sswitch_18
        0x16ad -> :sswitch_19
    .end sparse-switch
.end method

.method public getContotyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/server/WifiDebugScreenInfo;->mIsWifiEnabled:Z

    if-nez v0, :cond_0

    .line 154
    const-string v0, ""

    .line 158
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "wlan.debug.countrycode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDetailedStateOf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFER_PER()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "FER/PER"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->getWifiNativeCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/server/WifiDebugScreenInfo;->mIsWifiEnabled:Z

    if-nez v0, :cond_0

    .line 115
    const-string v0, ""

    .line 117
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiDebugScreenInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 67
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "WIFISebugScreen"

    const-string v2, "NullPointerException getMacAddress"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v1, ""

    goto :goto_0
.end method

.method public getMode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/server/WifiDebugScreenInfo;->getLinkSpeed()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "temp_mode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 194
    .local v0, "display_mode":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "5.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    :cond_0
    const-string v0, "802.11b"

    .line 209
    :goto_0
    return-object v0

    .line 196
    :cond_1
    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "18"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "24"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "36"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "54"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    :cond_2
    const-string v0, "802.11a/g"

    goto :goto_0

    .line 199
    :cond_3
    const-string v2, "6.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "19.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "26"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "39"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "52"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "58.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "65"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 201
    :cond_4
    const-string v0, "802.11n"

    goto/16 :goto_0

    .line 204
    :cond_5
    const-string v2, "WIFISebugScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Link Speed : (String)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/android/server/WifiDebugScreenInfo;->get80211Mode()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRssi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    iget-boolean v1, p0, Lcom/android/server/WifiDebugScreenInfo;->mIsWifiEnabled:Z

    if-nez v1, :cond_0

    .line 73
    const-string v1, ""

    .line 79
    :goto_0
    return-object v1

    .line 76
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiDebugScreenInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "WIFISebugScreen"

    const-string v2, "NullPointerException getRssi"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, ""

    goto :goto_0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    iget-boolean v1, p0, Lcom/android/server/WifiDebugScreenInfo;->mIsWifiEnabled:Z

    if-nez v1, :cond_0

    .line 85
    const-string v1, ""

    .line 94
    :goto_0
    return-object v1

    .line 88
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiDebugScreenInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/server/WifiDebugScreenInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_1
    const-string v1, "null"
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "WIFISebugScreen"

    const-string v2, "NullPointerException getSSID"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v1, "null"

    goto :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget-boolean v1, p0, Lcom/android/server/WifiDebugScreenInfo;->mIsWifiEnabled:Z

    if-nez v1, :cond_0

    .line 122
    const-string v1, "Power OFF"

    .line 133
    :goto_0
    return-object v1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiDebugScreenInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 126
    .local v0, "state":Landroid/net/NetworkInfo$State;
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    .line 127
    const-string v1, "Connected"

    goto :goto_0

    .line 128
    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_2

    .line 129
    const-string v1, "Connecting"

    goto :goto_0

    .line 130
    :cond_2
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_3

    .line 131
    const-string v1, "Disconnecting"

    goto :goto_0

    .line 133
    :cond_3
    const-string v1, "Disconnected"

    goto :goto_0
.end method

.method public getTxpwr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "TXPOWER"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->getWifiNativeCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWIFIDbgInfo()Ljava/util/HashMap;
    .locals 12

    .prologue
    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/android/server/WifiDebugScreenInfo;->updataWifiInfo()V

    .line 223
    invoke-virtual {p0}, Lcom/android/server/WifiDebugScreenInfo;->getState()Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, "wifi_state":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/WifiDebugScreenInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, "wifi_ssid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/WifiDebugScreenInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "wifi_bssid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/WifiDebugScreenInfo;->getChannel()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "wifi_bss_ch":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/WifiDebugScreenInfo;->getMode()Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, "wifi_mode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/WifiDebugScreenInfo;->getRssi()Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, "wifi_rssi":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/WifiDebugScreenInfo;->getip()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "wifi_ip_address":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/WifiDebugScreenInfo;->getMacAddr()Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "wifi_mac_address":Ljava/lang/String;
    const-string v9, "WIFIDebugScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getWIFIDbgInfo , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v9, "WIFIDebugScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getWIFIDbgInfo , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v9, "WIFIDebugScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getWIFIDbgInfo , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v9, "WIFIDebugScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getWIFIDbgInfo , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v9, "WIFIDebugScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getWIFIDbgInfo , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v9, "WIFIDebugScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getWIFIDbgInfo , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v9, "WIFIDebugScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getWIFIDbgInfo , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v9, "WIFIDebugScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getWIFIDbgInfo , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-nez v1, :cond_0

    .line 242
    const-string v1, "null"

    .line 244
    :cond_0
    const-string v9, "wifi_state"

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v9, "wifi_ssid"

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v9, "wifi_bssid"

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v9, "wifi_state"

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v9, "wifi_bss_ch"

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v9, "wifi_mode"

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v9, "wifi_rssi"

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v9, "wifi_ip_address"

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v9, "wifi_mac_address"

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-object v0
.end method

.method public getWIFIScanInfo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 367
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v3, "wifi_scan_list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v4, p0, Lcom/android/server/WifiDebugScreenInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 370
    const-string v4, "WIFIDebugScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWIFIDbgInfo , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, 0x0

    .local v0, "cnt":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 373
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 374
    .local v1, "list":Landroid/net/wifi/ScanResult;
    iget v4, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p0, v4}, Lcom/android/server/WifiDebugScreenInfo;->getChannelByFrequency(I)I

    move-result v4

    iput v4, v1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 375
    invoke-interface {v3, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    .end local v1    # "list":Landroid/net/wifi/ScanResult;
    :cond_0
    return-object v3
.end method

.method public getip()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    iget-boolean v1, p0, Lcom/android/server/WifiDebugScreenInfo;->mIsWifiEnabled:Z

    if-nez v1, :cond_0

    .line 48
    const-string v1, ""

    .line 54
    :goto_0
    return-object v1

    .line 51
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiDebugScreenInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "WIFISebugScreen"

    const-string v2, "NullPointerException getIpAddress"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v1, ""

    goto :goto_0
.end method

.method public updataWifiInfo()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 42
    iget-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 43
    iget-object v0, p0, Lcom/android/server/WifiDebugScreenInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/WifiDebugScreenInfo;->mIsWifiEnabled:Z

    .line 44
    return-void
.end method
