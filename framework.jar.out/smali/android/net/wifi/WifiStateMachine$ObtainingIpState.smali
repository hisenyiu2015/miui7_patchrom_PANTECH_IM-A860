.class Landroid/net/wifi/WifiStateMachine$ObtainingIpState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObtainingIpState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 5596
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const v8, 0x20010

    .line 5599
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$7400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$7100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5602
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->startDhcp()V

    .line 5648
    :goto_0
    return-void

    .line 5605
    :cond_0
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->stopDhcp()V

    .line 5606
    new-instance v1, Landroid/net/DhcpResults;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$7400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$7100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/net/DhcpResults;-><init>(Landroid/net/LinkProperties;)V

    .line 5608
    .local v1, "dhcpResults":Landroid/net/DhcpResults;
    new-instance v3, Landroid/net/InterfaceConfiguration;

    invoke-direct {v3}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 5609
    .local v3, "ifcg":Landroid/net/InterfaceConfiguration;
    iget-object v5, v1, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5611
    .local v0, "addrs":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5612
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Static IP lacks address"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$22900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5613
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 5615
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    invoke-virtual {v3, v5}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 5616
    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 5618
    :try_start_0
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 5619
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Static IP configuration succeeded"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$23000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5620
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v5

    sget-object v6, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v5, v6, :cond_2

    .line 5623
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiStateMachine;->LGT_Connect_DB_Process(I)V

    .line 5626
    :cond_2
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x2000f

    invoke-virtual {v5, v6, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 5627
    :catch_0
    move-exception v4

    .line 5628
    .local v4, "re":Landroid/os/RemoteException;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Static IP configuration failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$23100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5629
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v5

    sget-object v6, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v5, v6, :cond_3

    .line 5632
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiStateMachine;->LGT_Connect_DB_Process(I)V

    .line 5635
    :cond_3
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 5636
    .end local v4    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 5637
    .local v2, "e":Ljava/lang/IllegalStateException;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Static IP configuration failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$23200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5638
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v5

    sget-object v6, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v5, v6, :cond_4

    .line 5641
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiStateMachine;->LGT_Connect_DB_Process(I)V

    .line 5644
    :cond_4
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 5651
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$23300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5652
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 5708
    :goto_0
    return v1

    .line 5654
    :sswitch_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/DhcpResults;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpResults;)V
    invoke-static {v2, v1}, Landroid/net/wifi/WifiStateMachine;->access$21000(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V

    .line 5655
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$21100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$23400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5708
    :cond_0
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 5658
    :sswitch_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$21400(Landroid/net/wifi/WifiStateMachine;)V

    .line 5659
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$18300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$23500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 5662
    :sswitch_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$23600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 5666
    :sswitch_3
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$23700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 5671
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5673
    .local v0, "country":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setCountryCodeForWorldRoaming()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$13900(Landroid/net/wifi/WifiStateMachine;)V

    .line 5674
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mCountryCode:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$14000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v0

    .line 5676
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WIFI_TEST] CMD_SET_COUNTRY_CODE set country code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$23800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5678
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5686
    :goto_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5687
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set country code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$23900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 5681
    :cond_1
    const-string v1, "WifiStateMachine"

    const-string v2, "[WIFI_TEST] CMD_SET_COUNTRY_CODE () kr"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5683
    const-string v0, "kr"

    goto :goto_2

    .line 5693
    .end local v0    # "country":Ljava/lang/String;
    :sswitch_5
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$24000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 5698
    :sswitch_6
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mPantechWifiStateMachine:Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$3700(Landroid/net/wifi/WifiStateMachine;)Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;

    move-result-object v2

    const/16 v3, 0xe

    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lcom/pantech/wifi/statemachine/PantechWifiStateMachine;->processMessage(ILandroid/net/wifi/WifiGlobal$PantechWifiVendor;Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 5652
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000f -> :sswitch_0
        0x20010 -> :sswitch_1
        0x20047 -> :sswitch_5
        0x2004d -> :sswitch_3
        0x20050 -> :sswitch_4
        0x25007 -> :sswitch_2
        0x251f4 -> :sswitch_6
    .end sparse-switch
.end method
