.class Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyingLinkState"
.end annotation


# instance fields
.field private mSampleCount:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 825
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 826
    :cond_0
    iput v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    .line 827
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    .line 828
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100b

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4104(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 829
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 833
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 885
    :goto_0
    return v4

    .line 835
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 836
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 837
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    :cond_0
    :goto_1
    move v4, v5

    .line 885
    goto :goto_0

    .line 842
    :sswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 846
    :sswitch_2
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 847
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    const v7, 0x25014

    invoke-virtual {v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 848
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v8, 0x2100b

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4104(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v9

    invoke-virtual {v7, v8, v9, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v7, 0x3e8

    invoke-virtual {v6, v4, v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 854
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    .line 855
    .local v0, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v1, v0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 856
    .local v1, "rssi":I
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fetch RSSI succeed, rssi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 858
    :cond_1
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v6

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4500(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 859
    .local v2, "time":J
    cmp-long v6, v2, v10

    if-gtz v6, :cond_3

    .line 861
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v6, "Max avoid time elapsed"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 862
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    goto/16 :goto_1

    .line 864
    :cond_3
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v6

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v6

    if-lt v1, v6, :cond_5

    .line 865
    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v6

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v6

    if-lt v4, v6, :cond_0

    .line 867
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Good link detected, rssi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 868
    :cond_4
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v4

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v4, v10, v11}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4502(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 869
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    goto/16 :goto_1

    .line 872
    :cond_5
    iput v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    .line 873
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Link is still poor, time left="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 879
    .end local v0    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .end local v1    # "rssi":I
    .end local v2    # "time":J
    :sswitch_4
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v6, "RSSI_FETCH_FAILED"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 833
    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_0
        0x21007 -> :sswitch_1
        0x2100b -> :sswitch_2
        0x25015 -> :sswitch_3
        0x25016 -> :sswitch_4
    .end sparse-switch
.end method
