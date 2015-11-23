.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupNegotiationState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 1755
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 1759
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v12, 0xa

    const/4 v7, 0x0

    const/4 v11, -0x2

    const/4 v8, 0x1

    .line 1764
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    move v6, v7

    .line 1897
    :goto_0
    return v6

    .line 1772
    :pswitch_1
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pGroup;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1102(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1776
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->is_in_cat_test:I
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$5500(Landroid/net/wifi/p2p/WifiP2pService;)I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 1778
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Group freq = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFreq()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1779
    .local v1, "fr":Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CAT] :   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 1780
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/WifiGlobal;->getMyThemeContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1784
    .end local v1    # "fr":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v6

    if-ne v6, v11, :cond_1

    .line 1788
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->NO_RELOAD:Ljava/lang/Boolean;
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$9500()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updatePersistentNetworks(Z)V
    invoke-static {v6, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    .line 1789
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1790
    .local v0, "devAddr":Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 1794
    .end local v0    # "devAddr":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1804
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$5700(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1805
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v12}, Landroid/net/wifi/WifiNative;->setP2pGroupIdle(Ljava/lang/String;I)Z

    .line 1807
    :cond_2
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->startDhcpServer(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1835
    :goto_1
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    move-result-object v7

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    :cond_3
    :goto_2
    :pswitch_2
    move v6, v8

    .line 1897
    goto/16 :goto_0

    .line 1809
    :cond_4
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v12}, Landroid/net/wifi/WifiNative;->setP2pGroupIdle(Ljava/lang/String;I)Z

    .line 1810
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v9

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$9802(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 1813
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v7}, Landroid/net/wifi/WifiNative;->setP2pPowerSave(Ljava/lang/String;Z)Z

    .line 1814
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$9800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    const v9, 0x30001

    invoke-virtual {v6, v9}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 1815
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    .line 1816
    .local v2, "groupOwner":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v2, :cond_6

    .line 1817
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    iget-object v9, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    .line 1818
    .local v4, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v4, :cond_5

    .line 1820
    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pDevice;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1821
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    iget-object v9, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v9, v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 1822
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto/16 :goto_1

    .line 1828
    :cond_5
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown group owner "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logw(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1831
    .end local v4    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_6
    const-string/jumbo v6, "p11749_WifiP2PService_GroupNegotiationState"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/pantech/wifi/log/Blackbox;->e(Ljava/lang/String;I)I

    goto/16 :goto_1

    .line 1838
    .end local v2    # "groupOwner":Landroid/net/wifi/p2p/WifiP2pDevice;
    :pswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 1839
    .local v5, "status":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    sget-object v6, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    if-ne v5, v6, :cond_7

    .line 1840
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mFrequencyConflictState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    move-result-object v7

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 1846
    .end local v5    # "status":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :cond_7
    :pswitch_4
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->handleGroupCreationFailure()V
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1847
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    move-result-object v7

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 1853
    :pswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 1854
    .restart local v5    # "status":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    sget-object v6, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    if-ne v5, v6, :cond_3

    .line 1855
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mFrequencyConflictState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    move-result-object v7

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 1860
    .end local v5    # "status":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :pswitch_6
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 1861
    .restart local v5    # "status":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    sget-object v6, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->SUCCESS:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    if-eq v5, v6, :cond_3

    .line 1866
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invitation result "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 1867
    sget-object v6, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN_P2P_GROUP:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    if-ne v5, v6, :cond_9

    .line 1870
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    iget v3, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1871
    .local v3, "netId":I
    if-ltz v3, :cond_8

    .line 1873
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeClientFromList(ILjava/lang/String;Z)Z
    invoke-static {v6, v3, v7, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;ILjava/lang/String;Z)Z

    .line 1877
    :cond_8
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    iput v11, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1878
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto/16 :goto_2

    .line 1879
    .end local v3    # "netId":I
    :cond_9
    sget-object v6, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    if-ne v5, v6, :cond_a

    .line 1885
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    iput v11, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1886
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto/16 :goto_2

    .line 1887
    :cond_a
    sget-object v6, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    if-ne v5, v6, :cond_b

    .line 1888
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mFrequencyConflictState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    move-result-object v7

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 1890
    :cond_b
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->handleGroupCreationFailure()V
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1891
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    move-result-object v7

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 1764
    :pswitch_data_0
    .packed-switch 0x24019
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
