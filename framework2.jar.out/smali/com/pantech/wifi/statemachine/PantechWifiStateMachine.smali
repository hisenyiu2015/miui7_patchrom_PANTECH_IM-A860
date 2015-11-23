.class public final Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;
.super Ljava/lang/Object;
.source "PantechWifiStateMachine.java"


# static fields
.field public static final ALLOW:Z = true

.field private static final BASE:I = 0x251f4

.field public static final CAPTIVE_PORTAL_CHECK_STATE:I = 0x10

.field public static final CONNECTED_STATE:I = 0x11

.field public static final CONNECT_MODE_STATE:I = 0xc

.field private static final DBG:Z = true

.field public static final DEFAULT_STATE:I = 0x1

.field public static final DISCONNECTED_STATE:I = 0x13

.field public static final DISCONNECTING_STATE:I = 0x12

.field public static final DRIVER_STARTED_STATE:I = 0x7

.field public static final DRIVER_STARTING_STATE:I = 0x6

.field public static final DRIVER_STOPPED_STATE:I = 0xa

.field public static final DRIVER_STOPPING_STATE:I = 0x9

.field public static final FORBID:Z = false

.field public static final INITIAL_STATE:I = 0x2

.field public static final L2_CONNECTED_STATE:I = 0xd

.field public static final OPTAINING_IP_STATE:I = 0xe

.field public static final PANTECH_WIFI_EVENT:I = 0x251f4

.field public static final RECEIVE_80211_MODE_COMMAND_DONE:I = 0x25206

.field public static final RECEIVE_CHECK_MANUAL_CONNECTION_DONE:I = 0x251fa

.field public static final RECEIVE_CHECK_MANUAL_QUERY_DONE:I = 0x251fe

.field public static final RECEIVE_CUST_BOOLEAN_COMMAND_DONE:I = 0x2520e

.field public static final RECEIVE_CUST_INT_COMMAND_DONE:I = 0x25210

.field public static final RECEIVE_CUST_STRING_COMMAND_DONE:I = 0x25212

.field public static final RECEIVE_DISABLE_ENABLE_NETWORK_DONE:I = 0x25214

.field public static final RECEIVE_INIT_CONFIG_DONE:I = 0x25204

.field public static final RECEIVE_MANUAL_CONNECT_DONE:I = 0x251f6

.field public static final RECEIVE_NATIVE_COMMAND_DONE:I = 0x25208

.field public static final RECEIVE_PROFILE_MANUAL_CONNECT_DONE:I = 0x251f8

.field public static final RECEIVE_RECHECK_MANUAL_CONNECTION_DONE:I = 0x251fc

.field public static final RECEIVE_REMOVE_PSEUDONYMID_DONE:I = 0x2520c

.field public static final RECEIVE_SET_REALMFOR_OLLEHWIFI_DONE:I = 0x25216

.field public static final RECEIVE_SHOW_CONF_DONE:I = 0x2520a

.field public static final RECEIVE_WIFI_CONNECTION_PRIORITY_MODE_DONE:I = 0x25200

.field public static final RECEIVE_WIFI_DISCONNECTION_PRIORITY_MODE_DONE:I = 0x25202

.field public static final SCAN_MODE_STATE:I = 0xb

.field public static final SEND_80211_MODE_COMMAND:I = 0x25205

.field public static final SEND_CHECK_MANUAL_CONNECTION:I = 0x251f9

.field public static final SEND_CHECK_MANUAL_QUERY:I = 0x251fd

.field public static final SEND_CUST_BOOLEAN_COMMAND:I = 0x2520d

.field public static final SEND_CUST_INT_COMMAND:I = 0x2520f

.field public static final SEND_CUST_STRING_COMMAND:I = 0x25211

.field public static final SEND_DISABLE_ENABLE_NETWORK:I = 0x25213

.field public static final SEND_INIT_CONFIG:I = 0x25203

.field public static final SEND_MANUAL_CONNECT:I = 0x251f5

.field public static final SEND_NATIVE_COMMAND:I = 0x25207

.field public static final SEND_PROFILE_MANUAL_CONNECT:I = 0x251f7

.field public static final SEND_RECHECK_MANUAL_CONNECTION:I = 0x251fb

.field public static final SEND_REMOVE_PSEUDONYMID:I = 0x2520b

.field public static final SEND_SET_REALMFOR_OLLEHWIFI:I = 0x25215

.field public static final SEND_SHOW_CONF:I = 0x25209

.field public static final SEND_WIFI_CONNECTION_PRIORITY_MODE:I = 0x251ff

.field public static final SEND_WIFI_DISCONNECTION_PRIORITY_MODE:I = 0x25201

.field public static final SOFTAP_STARTED_STATE:I = 0x16

.field public static final SOFTAP_STARTING_STATE:I = 0x15

.field public static final SUPPLICANT_STARTED_STATE:I = 0x4

.field public static final SUPPLICANT_STARTING_STATE:I = 0x3

.field public static final SUPPLICANT_STOPPING_STATE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PantechWifiStateMachine"

.field public static final TETHERED_STATE:I = 0x18

.field public static final TETHERING_STATE:I = 0x17

.field public static final UNTETHERING_STATE:I = 0x19

.field public static final VERIFYING_LINK_STATE:I = 0xf

.field public static final WAIT_P2P_DISABLED_STATE:I = 0x8

.field public static final WPA_RUNNING_STATE:I = 0x14


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mWifiNative:Landroid/net/wifi/WifiNative;

.field private mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiNative;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sm"    # Landroid/net/wifi/WifiStateMachine;
    .param p3, "wn"    # Landroid/net/wifi/WifiNative;
    .param p4, "ni"    # Landroid/net/NetworkInfo;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 177
    iput-object p3, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 178
    iput-object p4, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 179
    return-void
.end method

.method private captive_portal_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 928
    const/4 v2, 0x0

    .line 929
    .local v2, "result":I
    const/4 v3, 0x0

    .line 932
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 935
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 954
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException captive_portal_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 952
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 954
    const/4 v4, 0x1

    goto :goto_0

    .line 943
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private connect_mode_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 808
    const/4 v2, 0x0

    .line 809
    .local v2, "result":I
    const/4 v3, 0x0

    .line 812
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 815
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 834
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException connect_mode_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 832
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 834
    const/4 v4, 0x1

    goto :goto_0

    .line 823
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private connected_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 958
    const/4 v2, 0x0

    .line 959
    .local v2, "result":I
    const/4 v3, 0x0

    .line 962
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 965
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    .local v1, "msg":Landroid/os/Message;
    iget v6, p2, Landroid/os/Message;->arg1:I

    sparse-switch v6, :sswitch_data_0

    .line 990
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException connected_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 980
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :sswitch_0
    invoke-direct {p0, v5, p1}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->get80211ModeCommand(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;)I

    move-result v2

    .line 988
    :sswitch_1
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    move v4, v5

    .line 990
    goto :goto_0

    .line 973
    nop

    :sswitch_data_0
    .sparse-switch
        0x251f4 -> :sswitch_1
        0x25205 -> :sswitch_0
    .end sparse-switch
.end method

.method private default_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 308
    const/4 v2, 0x0

    .line 309
    .local v2, "result":I
    const/4 v3, 0x0

    .line 312
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 315
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 420
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException default_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_1
    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v4, p1, v5}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setManualConnection(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I

    move-result v2

    .line 418
    :goto_1
    :pswitch_2
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 420
    const/4 v4, 0x1

    goto :goto_0

    .line 334
    :pswitch_3
    iget v5, v1, Landroid/os/Message;->arg1:I

    iget v6, v1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, p1, v5, v6}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setProfileManualConnection(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;II)I

    move-result v2

    .line 335
    goto :goto_1

    .line 338
    :pswitch_4
    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4, p1, v5}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setCheckManualConnection(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I

    move-result v2

    .line 339
    goto :goto_1

    .line 342
    :pswitch_5
    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4, p1, v5}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setReCheckManualConnection(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I

    move-result v2

    .line 343
    goto :goto_1

    .line 346
    :pswitch_6
    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4, p1, v5}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setCheckManualQuery(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I

    move-result v2

    .line 347
    goto :goto_1

    .line 352
    :pswitch_7
    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4, p1, v5}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setConnectionPriority(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I

    move-result v2

    .line 353
    goto :goto_1

    .line 356
    :pswitch_8
    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4, p1, v5}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setDisconnectionPriority(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I

    move-result v2

    .line 357
    goto :goto_1

    .line 362
    :pswitch_9
    invoke-direct {p0, v4, p1}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->initConfiguration(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;)I

    move-result v2

    .line 363
    goto :goto_1

    .line 368
    :pswitch_a
    invoke-direct {p0, v4, p1}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->get80211ModeCommand(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;)I

    move-result v2

    .line 369
    goto :goto_1

    .line 372
    :pswitch_b
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v4, p1, v5}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->getWifiNativeCommand(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 373
    goto :goto_1

    .line 378
    :pswitch_c
    invoke-direct {p0, v4, p1}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->showConfInfo(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;)Ljava/lang/String;

    move-result-object v3

    .line 379
    goto :goto_1

    .line 384
    :pswitch_d
    invoke-direct {p0, v4, p1}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->removePseudonymId(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;)I

    move-result v2

    .line 385
    goto :goto_1

    .line 390
    :pswitch_e
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v4, p1, v5}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->doWiFiCustBooleanCommand(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;Ljava/lang/Object;)I

    move-result v2

    .line 391
    goto :goto_1

    .line 394
    :pswitch_f
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v4, p1, v5}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->doWiFiCustIntCommand(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;Ljava/lang/Object;)I

    move-result v2

    .line 395
    goto :goto_1

    .line 398
    :pswitch_10
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v4, p1, v5}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->doWiFiCustStringCommand(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 399
    goto :goto_1

    .line 404
    :pswitch_11
    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4, p1, v5}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setDisableEnableAllNetworks(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I

    move-result v2

    .line 405
    goto :goto_1

    .line 410
    :pswitch_12
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v4, p1, v5}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setRealmForOllehWiFi(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;Ljava/lang/Object;)I

    move-result v2

    .line 411
    goto :goto_1

    .line 323
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method

.method private disconnected_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 1024
    const/4 v2, 0x0

    .line 1025
    .local v2, "result":I
    const/4 v3, 0x0

    .line 1028
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1031
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 1050
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException disconnected_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1048
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 1050
    const/4 v4, 0x1

    goto :goto_0

    .line 1039
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private disconnecting_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 994
    const/4 v2, 0x0

    .line 995
    .local v2, "result":I
    const/4 v3, 0x0

    .line 998
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1001
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 1020
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException disconnecting_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1018
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 1020
    const/4 v4, 0x1

    goto :goto_0

    .line 1009
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private doWiFiCustBooleanCommand(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;Ljava/lang/Object;)I
    .locals 6
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1647
    const/4 v2, 0x0

    .local v2, "result":I
    move-object v1, p3

    .line 1648
    check-cast v1, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;

    .line 1649
    .local v1, "request":Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;
    iget-object v0, v1, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;

    .line 1651
    .local v0, "command":Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;
    const-string v3, "PantechWifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doWiFiCustBooleanCommand : command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;->svalue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v3, :cond_0

    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v3, :cond_0

    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v3, :cond_0

    .line 1658
    const-string v3, "PantechWifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doWiFiCustBooleanCommand : unsupported vendor is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :goto_0
    return v2

    .line 1662
    :cond_0
    if-nez p1, :cond_1

    .line 1664
    const-string v3, "PantechWifiStateMachine"

    const-string v4, "doWiFiCustBooleanCommand : allow is FORBID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1668
    :cond_1
    iget-object v3, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v4, v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;->svalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->doWiFiCustBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1670
    const-string v3, "PantechWifiStateMachine"

    const-string v4, "doWiFiCustBooleanCommand : false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1674
    :cond_2
    const/4 v2, 0x1

    .line 1675
    const-string v3, "PantechWifiStateMachine"

    const-string v4, "doWiFiCustBooleanCommand : success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doWiFiCustIntCommand(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;Ljava/lang/Object;)I
    .locals 6
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1682
    const/4 v2, -0x1

    .local v2, "result":I
    move-object v1, p3

    .line 1683
    check-cast v1, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;

    .line 1684
    .local v1, "request":Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;
    iget-object v0, v1, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;

    .line 1686
    .local v0, "command":Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;
    const-string v3, "PantechWifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doWiFiCustIntCommand : command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;->svalue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v3, :cond_0

    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v3, :cond_0

    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v3, :cond_0

    .line 1693
    const-string v3, "PantechWifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doWiFiCustIntCommand : unsupported vendor is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :goto_0
    return v2

    .line 1697
    :cond_0
    if-nez p1, :cond_1

    .line 1699
    const-string v3, "PantechWifiStateMachine"

    const-string v4, "doWiFiCustIntCommand : allow is FORBID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1703
    :cond_1
    iget-object v3, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v4, v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;->svalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->doWiFiCustIntCommand(Ljava/lang/String;)I

    move-result v2

    .line 1704
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1706
    const-string v3, "PantechWifiStateMachine"

    const-string v4, "doWiFiCustIntCommand : false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1710
    :cond_2
    const-string v3, "PantechWifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doWiFiCustIntCommand : success, result is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doWiFiCustStringCommand(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1717
    const/4 v2, 0x0

    .local v2, "result":Ljava/lang/String;
    move-object v1, p3

    .line 1718
    check-cast v1, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;

    .line 1719
    .local v1, "request":Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;
    iget-object v0, v1, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;

    .line 1721
    .local v0, "command":Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;
    const-string v3, "PantechWifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doWiFiCustStringCommand : command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;->svalue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v3, :cond_0

    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v3, :cond_0

    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v3, :cond_0

    .line 1728
    const-string v3, "PantechWifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doWiFiCustStringCommand : unsupported vendor is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :goto_0
    return-object v2

    .line 1732
    :cond_0
    if-nez p1, :cond_1

    .line 1734
    const-string v3, "PantechWifiStateMachine"

    const-string v4, "doWiFiCustStringCommand : allow is FORBID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1738
    :cond_1
    iget-object v3, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v4, v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;->svalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->doWiFiCustStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1739
    if-nez v2, :cond_2

    .line 1741
    const-string v3, "PantechWifiStateMachine"

    const-string v4, "doWiFiCustStringCommand : false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1745
    :cond_2
    const-string v3, "PantechWifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doWiFiCustStringCommand : success, result is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private driver_started_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 658
    const/4 v2, 0x0

    .line 659
    .local v2, "result":I
    const/4 v3, 0x0

    .line 662
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 665
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 684
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException driver_started_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 682
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 684
    const/4 v4, 0x1

    goto :goto_0

    .line 673
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private driver_starting_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 628
    const/4 v2, 0x0

    .line 629
    .local v2, "result":I
    const/4 v3, 0x0

    .line 632
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 635
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 654
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException driver_starting_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 652
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 654
    const/4 v4, 0x1

    goto :goto_0

    .line 643
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private driver_stopped_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 748
    const/4 v2, 0x0

    .line 749
    .local v2, "result":I
    const/4 v3, 0x0

    .line 752
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 755
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 774
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException driver_stopped_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 774
    const/4 v4, 0x1

    goto :goto_0

    .line 763
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private driver_stopping_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 718
    const/4 v2, 0x0

    .line 719
    .local v2, "result":I
    const/4 v3, 0x0

    .line 722
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 725
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 744
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException driver_stopping_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 742
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 744
    const/4 v4, 0x1

    goto :goto_0

    .line 733
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private get80211ModeCommand(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;)I
    .locals 4
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .prologue
    .line 1518
    const/4 v0, -0x1

    .line 1520
    .local v0, "result":I
    const-string v1, "PantechWifiStateMachine"

    const-string v2, "get80211ModeCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v1, :cond_0

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v1, :cond_0

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v1, :cond_0

    .line 1527
    const-string v1, "PantechWifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get80211ModeCommand : unsupported vendor is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :goto_0
    return v0

    .line 1531
    :cond_0
    if-nez p1, :cond_1

    .line 1533
    const-string v1, "PantechWifiStateMachine"

    const-string v2, "get80211ModeCommand : allow is FORBID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1537
    :cond_1
    iget-object v1, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->get80211ModeCommand()I

    move-result v0

    .line 1538
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1540
    const-string v1, "PantechWifiStateMachine"

    const-string v2, "get80211ModeCommand : false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1544
    :cond_2
    const-string v1, "PantechWifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get80211ModeCommand : success, result is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getWifiNativeCommand(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1551
    const/4 v2, 0x0

    .local v2, "result":Ljava/lang/String;
    move-object v1, p3

    .line 1552
    check-cast v1, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;

    .line 1553
    .local v1, "request":Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;
    iget-object v0, v1, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;

    .line 1555
    .local v0, "command":Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;
    const-string v3, "PantechWifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWifiNativeCommand : command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;->svalue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v3, :cond_0

    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v3, :cond_0

    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v3, :cond_0

    .line 1562
    const-string v3, "PantechWifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWifiNativeCommand : unsupported vendor is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :goto_0
    return-object v2

    .line 1566
    :cond_0
    if-nez p1, :cond_1

    .line 1568
    const-string v3, "PantechWifiStateMachine"

    const-string v4, "getWifiNativeCommand : allow is FORBID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1572
    :cond_1
    iget-object v3, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v4, v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;->svalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->getWifiNativeCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1573
    if-nez v2, :cond_2

    .line 1575
    const-string v3, "PantechWifiStateMachine"

    const-string v4, "getWifiNativeCommand : false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1579
    :cond_2
    const-string v3, "PantechWifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWifiNativeCommand : success, result is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initConfiguration(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;)I
    .locals 4
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .prologue
    .line 1485
    const/4 v0, 0x0

    .line 1487
    .local v0, "result":I
    const-string v1, "PantechWifiStateMachine"

    const-string v2, "initConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v1, :cond_0

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v1, :cond_0

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v1, :cond_0

    .line 1494
    const-string v1, "PantechWifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initConfiguration : unsupported vendor is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :goto_0
    return v0

    .line 1498
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1500
    iget-object v1, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->setInitConfig()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1502
    const-string v1, "PantechWifiStateMachine"

    const-string v2, "initConfiguration : setInitConfig : false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_1
    iget-object v1, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-static {}, Landroid/net/wifi/WifiNative;->initConfig()Z

    .line 1508
    const/4 v0, 0x1

    .line 1509
    const-string v1, "PantechWifiStateMachine"

    const-string v2, "initConfiguration : success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initial_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 424
    const/4 v2, 0x0

    .line 425
    .local v2, "result":I
    const/4 v3, 0x0

    .line 428
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 431
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 450
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException initial_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 450
    const/4 v4, 0x1

    goto :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private l2_connected_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 838
    const/4 v2, 0x0

    .line 839
    .local v2, "result":I
    const/4 v3, 0x0

    .line 842
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 845
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 864
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException l2_connected_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 862
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 864
    const/4 v4, 0x1

    goto :goto_0

    .line 853
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private optaining_ip_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 868
    const/4 v2, 0x0

    .line 869
    .local v2, "result":I
    const/4 v3, 0x0

    .line 872
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 875
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 894
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException optaining_ip_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 892
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 894
    const/4 v4, 0x1

    goto :goto_0

    .line 883
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private removePseudonymId(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;)I
    .locals 4
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .prologue
    .line 1614
    const/4 v0, 0x0

    .line 1616
    .local v0, "result":I
    const-string v1, "PantechWifiStateMachine"

    const-string v2, "removePseudonymId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v1, :cond_0

    .line 1621
    const-string v1, "PantechWifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removePseudonymId : unsupported vendor is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    :goto_0
    return v0

    .line 1625
    :cond_0
    if-nez p1, :cond_1

    .line 1627
    const-string v1, "PantechWifiStateMachine"

    const-string v2, "removePseudonymId : allow is FORBID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1631
    :cond_1
    iget-object v1, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->removePseudonymId()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1633
    const-string v1, "PantechWifiStateMachine"

    const-string v2, "removePseudonymId : false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1637
    :cond_2
    const/4 v0, 0x1

    .line 1638
    const-string v1, "PantechWifiStateMachine"

    const-string v2, "removePseudonymId : success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scan_mode_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 778
    const/4 v2, 0x0

    .line 779
    .local v2, "result":I
    const/4 v3, 0x0

    .line 782
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 785
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 804
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException scan_mode_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 802
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 804
    const/4 v4, 0x1

    goto :goto_0

    .line 793
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private sendResponse(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "arg"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "message"    # Landroid/os/Message;

    .prologue
    .line 296
    if-eqz p3, :cond_0

    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 298
    iget-object v0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 299
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 300
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;

    .line 301
    .local v1, "response":Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;
    iput-object p2, v1, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 302
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 303
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 305
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "response":Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;
    :cond_0
    return-void
.end method

.method private setCheckManualConnection(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I
    .locals 5
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p3, "value"    # I

    .prologue
    .line 1323
    const/4 v1, 0x0

    .line 1326
    .local v1, "result":I
    if-lez p3, :cond_0

    const/4 v0, 0x1

    .line 1329
    .local v0, "enable":Z
    :goto_0
    const-string v2, "PantechWifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCheckManualConnection : enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v2, :cond_1

    .line 1334
    const-string v2, "PantechWifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCheckManualConnection : unsupported vendor is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :goto_1
    return v1

    .line 1327
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_0

    .line 1338
    :cond_1
    if-eqz v0, :cond_2

    .line 1339
    iget-object v2, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_check_manual_connection"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1343
    :goto_2
    const/4 v1, 0x1

    .line 1344
    const-string v2, "PantechWifiStateMachine"

    const-string v3, "setCheckManualConnection : success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1341
    :cond_2
    iget-object v2, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_check_manual_connection"

    const-string v4, "false"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method private setCheckManualQuery(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I
    .locals 5
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p3, "value"    # I

    .prologue
    .line 1379
    const/4 v1, 0x0

    .line 1382
    .local v1, "result":I
    if-lez p3, :cond_0

    const/4 v0, 0x1

    .line 1385
    .local v0, "enable":Z
    :goto_0
    const-string v2, "PantechWifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCheckManualQuery : enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v2, :cond_1

    .line 1390
    const-string v2, "PantechWifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCheckManualQuery : unsupported vendor is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :goto_1
    return v1

    .line 1383
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_0

    .line 1394
    :cond_1
    if-eqz v0, :cond_2

    .line 1395
    iget-object v2, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_check_manual_query"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1399
    :goto_2
    const/4 v1, 0x1

    .line 1400
    const-string v2, "PantechWifiStateMachine"

    const-string v3, "setCheckManualQuery : success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1397
    :cond_2
    iget-object v2, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_check_manual_query"

    const-string v4, "false"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method private setConnectionPriority(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I
    .locals 4
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p3, "value"    # I

    .prologue
    .line 1409
    const/4 v0, 0x0

    .line 1411
    .local v0, "result":I
    const-string v1, "PantechWifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConnectionPriority : value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v1, :cond_0

    .line 1416
    const-string v1, "PantechWifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConnectionPriority : unsupported vendor is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :goto_0
    return v0

    .line 1420
    :cond_0
    iget-object v1, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connection_priority_mode"

    invoke-static {v1, v2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1422
    const/4 v0, 0x1

    .line 1423
    const-string v1, "PantechWifiStateMachine"

    const-string v2, "setConnectionPriority : success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDisableEnableAllNetworks(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I
    .locals 5
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p3, "value"    # I

    .prologue
    .line 1754
    const/4 v1, 0x0

    .line 1757
    .local v1, "result":I
    if-lez p3, :cond_0

    const/4 v0, 0x1

    .line 1760
    .local v0, "enable":Z
    :goto_0
    const-string v2, "PantechWifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisableEnableAllNetworks : enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v2, :cond_1

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v2, :cond_1

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v2, :cond_1

    .line 1767
    const-string v2, "PantechWifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisableEnableAllNetworks : unsupported vendor is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    :goto_1
    return v1

    .line 1758
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_0

    .line 1771
    :cond_1
    if-nez p1, :cond_2

    .line 1773
    const-string v2, "PantechWifiStateMachine"

    const-string v3, "setDisableEnableAllNetworks : allow is FORBID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1777
    :cond_2
    iget-object v2, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiNative;->setDisableEnableAllNetworks(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1779
    const-string v2, "PantechWifiStateMachine"

    const-string v3, "setDisableEnableAllNetworks : false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1783
    :cond_3
    const/4 v1, 0x1

    .line 1784
    const-string v2, "PantechWifiStateMachine"

    const-string v3, "setDisableEnableAllNetworks : success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setDisconnectionPriority(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I
    .locals 8
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p3, "value"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1430
    const/4 v2, 0x0

    .line 1432
    .local v2, "result":I
    const-string v3, "PantechWifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDisconnectionPriority : value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v3, :cond_0

    .line 1437
    const-string v3, "PantechWifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDisconnectionPriority : unsupported vendor is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :goto_0
    return v2

    .line 1441
    :cond_0
    if-ne p1, v7, :cond_1

    .line 1443
    iget-object v3, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RSSI THRESHOLD "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->doWiFiCustBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1445
    const-string v3, "PantechWifiStateMachine"

    const-string v4, "setDisconnectionPriority : doWiFiCustBooleanCommand : false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_1
    const/4 v3, 0x3

    if-ne p3, v3, :cond_2

    .line 1451
    iget-object v3, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_connection_priority_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1452
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.ACTION_WIFI_CONNECTION_PRIORITY_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1453
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "mode"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1454
    iget-object v3, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1475
    :goto_1
    const/4 v2, 0x1

    .line 1476
    const-string v3, "PantechWifiStateMachine"

    const-string v4, "setDisconnectionPriority : success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1458
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_connection_priority_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1459
    .local v1, "mode":I
    if-nez v1, :cond_3

    .line 1461
    iget-object v3, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_connection_priority_mode"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1462
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.ACTION_WIFI_CONNECTION_PRIORITY_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1463
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "mode"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1464
    iget-object v3, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1468
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_environment_configuration"

    invoke-static {v3, v4, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1469
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.ACTION_RSSI_THRESHOLD_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1470
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "threshold"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1471
    iget-object v3, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private setProfileManualConnection(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;II)I
    .locals 5
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p3, "networkId"    # I
    .param p4, "value"    # I

    .prologue
    .line 1287
    const/4 v1, 0x0

    .line 1290
    .local v1, "result":I
    if-lez p4, :cond_0

    const/4 v0, 0x1

    .line 1293
    .local v0, "enable":Z
    :goto_0
    const-string v2, "PantechWifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProfileManualConnection : networkId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v2, :cond_1

    .line 1299
    const-string v2, "PantechWifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProfileManualConnection : unsupported vendor is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :goto_1
    return v1

    .line 1291
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_0

    .line 1303
    :cond_1
    if-nez p1, :cond_2

    .line 1305
    const-string v2, "PantechWifiStateMachine"

    const-string v3, "setProfileManualConnection : allow is FORBID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1309
    :cond_2
    iget-object v2, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v2, p3, v0}, Landroid/net/wifi/WifiNative;->setProfileManualConnection(IZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1311
    const-string v2, "PantechWifiStateMachine"

    const-string v3, "setProfileManualConnection : false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1315
    :cond_3
    const/4 v1, 0x1

    .line 1316
    const-string v2, "PantechWifiStateMachine"

    const-string v3, "setProfileManualConnection : success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setReCheckManualConnection(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I
    .locals 5
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p3, "value"    # I

    .prologue
    .line 1351
    const/4 v1, 0x0

    .line 1354
    .local v1, "result":I
    if-lez p3, :cond_0

    const/4 v0, 0x1

    .line 1357
    .local v0, "enable":Z
    :goto_0
    const-string v2, "PantechWifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setReCheckManualConnection : enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v2, :cond_1

    .line 1362
    const-string v2, "PantechWifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setReCheckManualConnection : unsupported vendor is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :goto_1
    return v1

    .line 1355
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_0

    .line 1366
    :cond_1
    if-eqz v0, :cond_2

    .line 1367
    iget-object v2, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_re_check_manual_connection"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1371
    :goto_2
    const/4 v1, 0x1

    .line 1372
    const-string v2, "PantechWifiStateMachine"

    const-string v3, "setReCheckManualConnection : success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1369
    :cond_2
    iget-object v2, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_re_check_manual_connection"

    const-string v4, "false"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method private setRealmForOllehWiFi(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;Ljava/lang/Object;)I
    .locals 7
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1793
    const/4 v3, 0x0

    .local v3, "result":I
    move-object v2, p3

    .line 1794
    check-cast v2, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;

    .line 1795
    .local v2, "request":Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;
    iget-object v0, v2, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;

    .line 1797
    .local v0, "command":Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;
    const-string v4, "PantechWifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRealmForOllehWiFi : realm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;->svalue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    sget-object v4, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v4, :cond_0

    .line 1802
    const-string v4, "PantechWifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRealmForOllehWiFi : unsupported vendor is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :goto_0
    return v3

    .line 1806
    :cond_0
    if-nez p1, :cond_1

    .line 1808
    const-string v4, "PantechWifiStateMachine"

    const-string v5, "setRealmForOllehWiFi : allow is FORBID"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1812
    :cond_1
    iget-object v4, v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;->svalue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1813
    .local v1, "realm":I
    iget-object v4, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiNative;->chooseRealmForAka(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1815
    const-string v4, "PantechWifiStateMachine"

    const-string v5, "setRealmForOllehWiFi : chooseRealmForAka : false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1818
    :cond_2
    iget-object v4, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "kt_wifi_aka_realm"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1820
    const/4 v3, 0x1

    .line 1821
    const-string v4, "PantechWifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRealmForOllehWiFi : success, result is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showConfInfo(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;)Ljava/lang/String;
    .locals 4
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    .prologue
    .line 1588
    const/4 v0, 0x0

    .line 1590
    .local v0, "result":Ljava/lang/String;
    const-string v1, "PantechWifiStateMachine"

    const-string v2, "showConfInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v1, :cond_0

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v1, :cond_0

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v1, :cond_0

    .line 1597
    const-string v1, "PantechWifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showConfInfo : unsupported vendor is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    :goto_0
    return-object v0

    .line 1601
    :cond_0
    iget-object v1, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "total_mseg"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1602
    iget-object v1, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "total_mseg"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1605
    :cond_1
    const-string v1, "PantechWifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showConfInfo : success, result is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private softap_started_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 1114
    const/4 v2, 0x0

    .line 1115
    .local v2, "result":I
    const/4 v3, 0x0

    .line 1118
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1121
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 1140
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException softap_started_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1138
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 1140
    const/4 v4, 0x1

    goto :goto_0

    .line 1129
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private softap_starting_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 1084
    const/4 v2, 0x0

    .line 1085
    .local v2, "result":I
    const/4 v3, 0x0

    .line 1088
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1091
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 1110
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException softap_starting_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1108
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 1110
    const/4 v4, 0x1

    goto :goto_0

    .line 1099
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private supplicant_started_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 485
    const/4 v2, 0x0

    .line 486
    .local v2, "result":I
    const/4 v3, 0x0

    .line 489
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 492
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .local v1, "msg":Landroid/os/Message;
    iget v6, p2, Landroid/os/Message;->arg1:I

    packed-switch v6, :pswitch_data_0

    .line 593
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException supplicant_started_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 507
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_1
    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5, p1, v4}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setManualConnection(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I

    move-result v2

    .line 591
    :goto_1
    :pswitch_2
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    move v4, v5

    .line 593
    goto :goto_0

    .line 511
    :pswitch_3
    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v6, v1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, p1, v4, v6}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setProfileManualConnection(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;II)I

    move-result v2

    .line 512
    goto :goto_1

    .line 515
    :pswitch_4
    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5, p1, v4}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setCheckManualConnection(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I

    move-result v2

    .line 516
    goto :goto_1

    .line 519
    :pswitch_5
    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5, p1, v4}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setReCheckManualConnection(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I

    move-result v2

    .line 520
    goto :goto_1

    .line 523
    :pswitch_6
    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5, p1, v4}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setCheckManualQuery(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I

    move-result v2

    .line 524
    goto :goto_1

    .line 529
    :pswitch_7
    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5, p1, v4}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setConnectionPriority(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I

    move-result v2

    .line 530
    goto :goto_1

    .line 533
    :pswitch_8
    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5, p1, v4}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setDisconnectionPriority(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I

    move-result v2

    .line 534
    goto :goto_1

    .line 539
    :pswitch_9
    invoke-direct {p0, v5, p1}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->initConfiguration(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;)I

    move-result v2

    .line 540
    goto :goto_1

    .line 545
    :pswitch_a
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v5, p1, v4}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->getWifiNativeCommand(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 546
    goto :goto_1

    .line 551
    :pswitch_b
    invoke-direct {p0, v5, p1}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->showConfInfo(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;)Ljava/lang/String;

    move-result-object v3

    .line 552
    goto :goto_1

    .line 557
    :pswitch_c
    invoke-direct {p0, v5, p1}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->removePseudonymId(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;)I

    move-result v2

    .line 558
    goto :goto_1

    .line 563
    :pswitch_d
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v5, p1, v4}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->doWiFiCustBooleanCommand(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;Ljava/lang/Object;)I

    move-result v2

    .line 564
    goto :goto_1

    .line 567
    :pswitch_e
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v5, p1, v4}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->doWiFiCustIntCommand(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;Ljava/lang/Object;)I

    move-result v2

    .line 568
    goto :goto_1

    .line 571
    :pswitch_f
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v5, p1, v4}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->doWiFiCustStringCommand(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 572
    goto :goto_1

    .line 577
    :pswitch_10
    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5, p1, v4}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setDisableEnableAllNetworks(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I

    move-result v2

    .line 578
    goto :goto_1

    .line 583
    :pswitch_11
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v5, p1, v4}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->setRealmForOllehWiFi(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;Ljava/lang/Object;)I

    move-result v2

    .line 584
    goto :goto_1

    .line 500
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
    .end packed-switch
.end method

.method private supplicant_starting_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 454
    const/4 v2, 0x0

    .line 455
    .local v2, "result":I
    const/4 v3, 0x0

    .line 458
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 461
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    sparse-switch v5, :sswitch_data_0

    .line 481
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException supplicant_starting_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 479
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :sswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 481
    const/4 v4, 0x1

    goto :goto_0

    .line 469
    :sswitch_data_0
    .sparse-switch
        0x251f4 -> :sswitch_0
        0x25201 -> :sswitch_0
    .end sparse-switch
.end method

.method private supplicant_stopping_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 597
    const/4 v2, 0x0

    .line 598
    .local v2, "result":I
    const/4 v3, 0x0

    .line 601
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 604
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    sparse-switch v5, :sswitch_data_0

    .line 624
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException supplicant_stopping_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :sswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 624
    const/4 v4, 0x1

    goto :goto_0

    .line 612
    :sswitch_data_0
    .sparse-switch
        0x251f4 -> :sswitch_0
        0x25201 -> :sswitch_0
    .end sparse-switch
.end method

.method private tethered_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 1174
    const/4 v2, 0x0

    .line 1175
    .local v2, "result":I
    const/4 v3, 0x0

    .line 1178
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1181
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 1200
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException tethered_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1198
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 1200
    const/4 v4, 0x1

    goto :goto_0

    .line 1189
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private tethering_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 1144
    const/4 v2, 0x0

    .line 1145
    .local v2, "result":I
    const/4 v3, 0x0

    .line 1148
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1151
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 1170
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 1152
    :catch_0
    move-exception v0

    .line 1153
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException tethering_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1168
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 1170
    const/4 v4, 0x1

    goto :goto_0

    .line 1159
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private untethering_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 1204
    const/4 v2, 0x0

    .line 1205
    .local v2, "result":I
    const/4 v3, 0x0

    .line 1208
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1211
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 1230
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException untethering_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1228
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 1230
    const/4 v4, 0x1

    goto :goto_0

    .line 1219
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private verifying_link_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 898
    const/4 v2, 0x0

    .line 899
    .local v2, "result":I
    const/4 v3, 0x0

    .line 902
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 905
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 924
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException verifying_link_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 922
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 924
    const/4 v4, 0x1

    goto :goto_0

    .line 913
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private wait_p2p_disabled_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 688
    const/4 v2, 0x0

    .line 689
    .local v2, "result":I
    const/4 v3, 0x0

    .line 692
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 695
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 714
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException wait_p2p_disabled_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 712
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 714
    const/4 v4, 0x1

    goto :goto_0

    .line 703
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method

.method private wpa_running_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 8
    .param p1, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 1054
    const/4 v2, 0x0

    .line 1055
    .local v2, "result":I
    const/4 v3, 0x0

    .line 1058
    .local v3, "sResult":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1061
    :try_start_0
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    .local v1, "msg":Landroid/os/Message;
    iget v5, p2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 1080
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 1062
    :catch_0
    move-exception v0

    .line 1063
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v5, "PantechWifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException wpa_running_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1078
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0, v2, v3, p2}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->sendResponse(ILjava/lang/String;Landroid/os/Message;)V

    .line 1080
    const/4 v4, 0x1

    goto :goto_0

    .line 1069
    :pswitch_data_0
    .packed-switch 0x251f4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public processMessage(ILandroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z
    .locals 2
    .param p1, "state"    # I
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p3, "message"    # Landroid/os/Message;

    .prologue
    .line 182
    const/4 v0, 0x1

    .line 184
    .local v0, "ret":Z
    packed-switch p1, :pswitch_data_0

    .line 287
    const/4 v1, 0x0

    .line 290
    :goto_0
    return v1

    .line 187
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->default_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    :goto_1
    move v1, v0

    .line 290
    goto :goto_0

    .line 191
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->initial_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 192
    goto :goto_1

    .line 195
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->supplicant_starting_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 196
    goto :goto_1

    .line 199
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->supplicant_started_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 200
    goto :goto_1

    .line 203
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->supplicant_stopping_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 204
    goto :goto_1

    .line 207
    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->driver_starting_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 208
    goto :goto_1

    .line 211
    :pswitch_6
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->driver_started_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 212
    goto :goto_1

    .line 215
    :pswitch_7
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->wait_p2p_disabled_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 216
    goto :goto_1

    .line 219
    :pswitch_8
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->driver_stopping_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 220
    goto :goto_1

    .line 223
    :pswitch_9
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->driver_stopped_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 224
    goto :goto_1

    .line 227
    :pswitch_a
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->scan_mode_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 228
    goto :goto_1

    .line 231
    :pswitch_b
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->connect_mode_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 232
    goto :goto_1

    .line 235
    :pswitch_c
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->l2_connected_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 236
    goto :goto_1

    .line 239
    :pswitch_d
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->optaining_ip_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 240
    goto :goto_1

    .line 243
    :pswitch_e
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->verifying_link_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 244
    goto :goto_1

    .line 247
    :pswitch_f
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->captive_portal_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 248
    goto :goto_1

    .line 251
    :pswitch_10
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->connected_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 252
    goto :goto_1

    .line 255
    :pswitch_11
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->disconnecting_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 256
    goto :goto_1

    .line 259
    :pswitch_12
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->disconnected_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 260
    goto :goto_1

    .line 263
    :pswitch_13
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->wpa_running_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 264
    goto :goto_1

    .line 267
    :pswitch_14
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->softap_starting_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 268
    goto :goto_1

    .line 271
    :pswitch_15
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->softap_started_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 272
    goto :goto_1

    .line 275
    :pswitch_16
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->tethering_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 276
    goto :goto_1

    .line 279
    :pswitch_17
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->tethered_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 280
    goto :goto_1

    .line 283
    :pswitch_18
    invoke-direct {p0, p2, p3}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->untethering_state(Landroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v0

    .line 284
    goto :goto_1

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public setManualConnection(ZLandroid/net/wifi/WifiGlobal$PantechWifiVendor;I)I
    .locals 5
    .param p1, "allow"    # Z
    .param p2, "vendor"    # Landroid/net/wifi/WifiGlobal$PantechWifiVendor;
    .param p3, "value"    # I

    .prologue
    .line 1235
    const/4 v1, 0x0

    .line 1238
    .local v1, "result":I
    if-lez p3, :cond_0

    const/4 v0, 0x1

    .line 1241
    .local v0, "manual":Z
    :goto_0
    const-string v2, "PantechWifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setManualConnection : manual = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq p2, v2, :cond_1

    .line 1246
    const-string v2, "PantechWifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setManualConnection : unsupported vendor is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :goto_1
    return v1

    .line 1239
    .end local v0    # "manual":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "manual":Z
    goto :goto_0

    .line 1250
    :cond_1
    if-nez p1, :cond_2

    .line 1252
    const-string v2, "PantechWifiStateMachine"

    const-string v3, "setManualConnection : allow is FORBID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1256
    :cond_2
    iget-object v2, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiNative;->setManualConnection(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1258
    const-string v2, "PantechWifiStateMachine"

    const-string v3, "setManualConnection : false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1262
    :cond_3
    iget-object v2, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->configEnableAllNetworks()V

    .line 1264
    iget-object v2, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v2, p3}, Landroid/net/wifi/WifiNative;->setRunningWifiCmApp(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1266
    const-string v2, "PantechWifiStateMachine"

    const-string v3, "setManualConnection : setRunningWifiCmApp : false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1271
    :cond_4
    iget-object v2, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_5

    .line 1272
    iget-object v2, p0, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v2}, Landroid/net/wifi/WifiNative;->reconnect()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1274
    const-string v2, "PantechWifiStateMachine"

    const-string v3, "setManualConnection : reconnect : false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1279
    :cond_5
    const/4 v1, 0x1

    .line 1280
    const-string v2, "PantechWifiStateMachine"

    const-string v3, "setManualConnection : success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
