.class Landroid/net/wifi/WifiStateMachine$WpsRunningState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsRunningState"
.end annotation


# instance fields
.field private mSourceMessage:Landroid/os/Message;

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 6176
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 6181
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$27100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 6184
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->skt_passpoint_noti_reset()V

    .line 6186
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 6339
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$7400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 6340
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$7400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 6341
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    const v6, 0x2500c

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 6189
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 6334
    :goto_0
    return v1

    .line 6194
    :sswitch_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const v4, 0x2500d

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v1, v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 6195
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 6196
    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 6197
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$13100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$27200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6199
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$27300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    :cond_0
    :goto_1
    :sswitch_1
    move v1, v2

    .line 6334
    goto :goto_0

    .line 6203
    :sswitch_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, v3, v6, v5}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 6205
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 6206
    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 6208
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v1

    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v1, v3, :cond_1

    .line 6209
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v3, "wifi_wps_overlap"

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendWpsToastBroadcast(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$27400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6212
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$13100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$27500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 6216
    :sswitch_3
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, v3, v6, v4}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 6217
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 6218
    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 6220
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v1

    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v1, v3, :cond_2

    .line 6221
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v3, "wifi_wps_failure"

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendWpsToastBroadcast(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$27400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6224
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$13100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$27600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 6227
    :sswitch_4
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v1

    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v1, v3, :cond_3

    .line 6230
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "WifiMonitor.WPS_TIMEOUT_EVENT"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$27700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6233
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 6234
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v3, 0x0

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendDoNotShow3GPopupBroadcast(Z)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$17700(Landroid/net/wifi/WifiStateMachine;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6242
    :cond_3
    :goto_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const/4 v4, 0x7

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, v3, v6, v4}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 6244
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 6245
    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 6247
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v1

    sget-object v3, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v1, v3, :cond_4

    .line 6248
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v3, "wifi_wps_failure"

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendWpsToastBroadcast(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$27400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6251
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$13100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$27900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6236
    :catch_0
    move-exception v0

    .line 6237
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to sendDoNotShow3GPopupBroadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$27800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_2

    .line 6254
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :sswitch_5
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v6, v2}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6257
    :sswitch_6
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v3, v4, :cond_5

    .line 6260
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v4, "WifiManager.CANCEL_WPS"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$28000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6262
    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 6263
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v4, 0x0

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendDoNotShow3GPopupBroadcast(Z)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$17700(Landroid/net/wifi/WifiStateMachine;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6271
    :cond_5
    :goto_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->cancelWps()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6272
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x25010

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v1, p1, v3}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 6276
    :goto_4
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$13100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$28200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6265
    :catch_1
    move-exception v0

    .line 6266
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to sendDoNotShow3GPopupBroadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$28100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_3

    .line 6274
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_6
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x2500f

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v4, v1}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_4

    .line 6283
    :sswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_7

    .line 6284
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->cancelWps()Z

    .line 6285
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$13100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$28300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6296
    :cond_7
    :sswitch_8
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$28400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 6299
    :sswitch_9
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "Network connection lost"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$28500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6300
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$9300(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 6303
    :sswitch_a
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "Ignore Assoc reject event during WPS Connection"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$28600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6310
    :sswitch_b
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "Ignore auth failure during WPS connection"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$28700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6324
    :sswitch_c
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mPantechWifiStateMachine:Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3700(Landroid/net/wifi/WifiStateMachine;)Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;

    move-result-object v3

    const/16 v4, 0x14

    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p1}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->processMessage(ILandroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 6189
    :sswitch_data_0
    .sparse-switch
        0x2000e -> :sswitch_8
        0x20036 -> :sswitch_8
        0x20048 -> :sswitch_7
        0x20049 -> :sswitch_1
        0x2004a -> :sswitch_8
        0x2004b -> :sswitch_8
        0x24003 -> :sswitch_0
        0x24004 -> :sswitch_9
        0x24006 -> :sswitch_1
        0x24007 -> :sswitch_b
        0x24008 -> :sswitch_1
        0x24009 -> :sswitch_3
        0x2400a -> :sswitch_2
        0x2400b -> :sswitch_4
        0x2402b -> :sswitch_a
        0x25001 -> :sswitch_8
        0x2500a -> :sswitch_5
        0x2500e -> :sswitch_6
        0x251f4 -> :sswitch_c
    .end sparse-switch
.end method
