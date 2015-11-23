.class Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;
.super Ljava/lang/Thread;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpCheckingThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 1674
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiWatchdogStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p2, "x1"    # Landroid/net/wifi/WifiWatchdogStateMachine$1;

    .prologue
    .line 1674
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1676
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isInternetReachable(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Z

    move-result v1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mInternetConnectionResult:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5802(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1677
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mInternetConnectionResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mInternetConnectionResult:Z
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTryNumFail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mTryNumFail:I
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5700()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1679
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mInternetConnectionResult:Z
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v1, "Internet Connection is good! "

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1681
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mInternetConnectionResult:Z
    invoke-static {v0, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5802(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1682
    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mTryNumFail:I
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5702(I)I

    .line 1683
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v1, 0x2101c

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    .line 1692
    :goto_0
    return-void

    .line 1685
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isWiFiConnected()Z
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1686
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v1, "Wi-Fi network is already disconnected"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 1689
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v1, "Internet Connection is bad! "

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1690
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v1, 0x2101d

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_0
.end method
