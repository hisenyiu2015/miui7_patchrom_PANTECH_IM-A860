.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;
.super Landroid/content/BroadcastReceiver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive: action="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 388
    const-string v12, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 389
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    .line 391
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-eqz v12, :cond_2

    .line 392
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v13, "default"

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 393
    .local v3, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v13, "ims"

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 395
    .local v4, "apnContext_ims":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v12, v13, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v12

    if-nez v12, :cond_1

    :cond_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v12, v13, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 398
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "IMMEDIATE_SETUP"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v14, 0x42003

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "dataEnabled"

    invoke-virtual/range {v13 .. v17}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 405
    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v4    # "apnContext_ims":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 406
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    .line 407
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartDataStallAlarm()V

    .line 526
    :cond_3
    :goto_0
    return-void

    .line 408
    :cond_4
    const-string v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 409
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    .line 410
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 411
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    .line 412
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartDataStallAlarm()V

    goto :goto_0

    .line 413
    :cond_5
    const-string v12, "com.android.internal.telephony.data-reconnect"

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 414
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Reconnect alarm. Previous state was "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v14, v14, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentReconnectAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 416
    :cond_6
    const-string v12, "com.android.internal.telephony.data-restart-trysetup"

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 417
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "Restart trySetup alarm"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentRestartTrySetupAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 419
    :cond_7
    const-string v12, "com.android.internal.telephony.data-stall"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 420
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentDataStallAlarm(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 421
    :cond_8
    const-string v12, "com.android.internal.telephony.provisioning_apn_alarm"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 422
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 423
    :cond_9
    const-string v12, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 424
    const-string v12, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkInfo;

    .line 426
    .local v9, "networkInfo":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    :goto_1
    iput-boolean v12, v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    .line 427
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v14, v14, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    :cond_a
    const/4 v12, 0x0

    goto :goto_1

    .line 428
    .end local v9    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_b
    const-string v12, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 429
    const-string v12, "wifi_state"

    const/4 v13, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_d

    const/4 v7, 0x1

    .line 432
    .local v7, "enabled":Z
    :goto_2
    if-nez v7, :cond_c

    .line 435
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    .line 437
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WIFI_STATE_CHANGED_ACTION: enabled="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mIsWifiConnected="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v14, v14, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 429
    .end local v7    # "enabled":Z
    :cond_d
    const/4 v7, 0x0

    goto :goto_2

    .line 442
    :cond_e
    const-string v12, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 443
    const-string v12, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 444
    .local v11, "stateExtra":Ljava/lang/String;
    const-string v12, "READY"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 445
    const/4 v5, 0x1

    .line 447
    .local v5, "cs_proc":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "enable_call_protect_when_calling"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 452
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ENABLE_CALL_PROTECT_WHEN_CALLING is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v12, 0x1

    if-ne v5, v12, :cond_f

    const/4 v12, 0x1

    :goto_4
    invoke-virtual {v13, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendVoiceProtectionMode(Z)V

    goto/16 :goto_0

    .line 448
    :catch_0
    move-exception v6

    .line 449
    .local v6, "e":Landroid/provider/Settings$SettingNotFoundException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "ENABLE_CALL_PROTECT_WHEN_CALLING read exception, set Default"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "enable_call_protect_when_calling"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 453
    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_f
    const/4 v12, 0x0

    goto :goto_4

    .line 456
    .end local v5    # "cs_proc":I
    .end local v11    # "stateExtra":Ljava/lang/String;
    :cond_10
    const-string v12, "com.skt.CALL_PROTECTION_STATUS_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 457
    const-string v12, "onoff"

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 458
    .local v10, "onoff":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_CALL_PROTECTION_WHEN_CALLING : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendVoiceProtectionMode(Z)V

    goto/16 :goto_0

    .line 461
    .end local v10    # "onoff":Z
    :cond_11
    const-string v12, "android.intent.action.USER_ACTIVITY_ON"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 462
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "ACTION_USER_DATA_KEY_ACTION_ON received"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendVoiceProtectionTempMode(I)V

    goto/16 :goto_0

    .line 465
    :cond_12
    const-string v12, "com.pantech.CSP_MMS_ONOFF"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 466
    const-string v12, "onoff"

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 467
    .restart local v10    # "onoff":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_CSP_MMS_ONOFF received, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    if-eqz v10, :cond_13

    const/4 v12, 0x1

    :goto_5
    invoke-virtual {v13, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendVoiceProtectionTempMode(I)V

    goto/16 :goto_0

    :cond_13
    const/4 v12, 0x2

    goto :goto_5

    .line 470
    .end local v10    # "onoff":Z
    :cond_14
    const-string v12, "com.skt.CALL_PROTECTION_MENU_OFF"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 471
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "ACTION_SKT_CALL_PROTECTION_MENU_OFF received"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendVoiceProtectionMode(Z)V

    goto/16 :goto_0

    .line 475
    :cond_15
    const-string v12, "com.skt.CALL_PROTECTION_MENU_ON"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 476
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "ACTION_SKT_CALL_PROTECTION_MENU_ON received"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendVoiceProtectionMode(Z)V

    goto/16 :goto_0

    .line 482
    :cond_16
    const-string v12, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 483
    const-string v12, "state"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 484
    .local v2, "airplane_enabled":Z
    if-eqz v2, :cond_17

    .line 485
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "Airplane mode On Intent Received"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingSettingPopupAllowed:Z

    goto/16 :goto_0

    .line 488
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "Airplane mode off Intent Received"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingSettingPopupAllowed:Z

    goto/16 :goto_0

    .line 494
    .end local v2    # "airplane_enabled":Z
    :cond_18
    const-string v12, "android.sky.intent.action.ACTION_SKT_LTE_MO_DATA_BARRING"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 495
    const-string v12, "onoff"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 496
    .restart local v10    # "onoff":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_SKT_LTE_MO_DATA_BARRING received : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 500
    .end local v10    # "onoff":Z
    :cond_19
    const-string v12, "android.sky.intent.action.ACTION_SKT_APN_PROFILE_RESTORED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 501
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "ACTION_SKT_APN_PROFILE_RESTORED received"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onModemApnProfileRestored()V

    goto/16 :goto_0

    .line 506
    :cond_1a
    const-string v12, "android.sky.intent.action.ACTION_SKT_ROAMING_FIRST_TIME"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 507
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "ACTION_SKT_ROAMING_FIRST_TIME received"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRoamingStatusChangedFirstTime(Z)V

    goto/16 :goto_0

    .line 510
    :cond_1b
    const-string v12, "android.sky.intent.action.ACTION_SKT_DOMASTIC_FIRST_TIME"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 511
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "ACTION_SKT_DOMASTIC_FIRST_TIME received"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRoamingStatusChangedFirstTime(Z)V

    goto/16 :goto_0

    .line 516
    :cond_1c
    const-string v12, "com.android.internal.telehony.retry_data_noti_clicking"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 517
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v13, "default"

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 518
    .restart local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v12, v13, :cond_3

    .line 519
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v13, 0x42018

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 520
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v12, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 521
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v14, 0x42003

    const-string v15, "dataEnabled"

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
