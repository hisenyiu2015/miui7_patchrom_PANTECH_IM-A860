.class Landroid/net/wifi/WifiStateMachine$6;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 1064
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 1068
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1069
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "device_policy"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v7, v6}, Landroid/net/wifi/WifiStateMachine;->access$602(Landroid/net/wifi/WifiStateMachine;Landroid/app/admin/DevicePolicyManager;)Landroid/app/admin/DevicePolicyManager;

    .line 1072
    :cond_0
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/admin/DevicePolicyManager;->getAccessApRestrict(Landroid/content/ComponentName;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 1074
    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WifiService] getAccessApRestrict : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getAccessApRestrict(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/admin/DevicePolicyManager;->getAccessApRestrictWhiteList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v4

    .line 1079
    .local v4, "temp_white_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WifiService] getAccessApRestrictWhiteList : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 1085
    const/4 v3, 0x0

    .line 1087
    .local v3, "send_white_list":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1089
    .local v5, "temp_white_list_in":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1090
    move-object v3, v5

    goto :goto_0

    .line 1092
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1096
    .end local v5    # "temp_white_list_in":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MDM_WHITE_LIST "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->doWiFiCustStringCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1099
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "send_white_list":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 1101
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v6, v7, :cond_4

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-eq v6, v7, :cond_4

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-eq v6, v7, :cond_4

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v6, v7, :cond_4

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-ne v6, v7, :cond_6

    .line 1107
    :cond_4
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 1109
    .local v0, "cur_ssid":Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1110
    :cond_5
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    .line 1115
    .end local v0    # "cur_ssid":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    const-string v7, "MDM_WHITE_LIST_ENABLE"

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->doWiFiCustStringCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1125
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    .end local v4    # "temp_white_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 1118
    :cond_7
    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WifiService] setWifiEnabled getAccessApRestrict : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getAccessApRestrict(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    const-string v7, "MDM_WHITE_LIST_DISABLE"

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->doWiFiCustStringCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
