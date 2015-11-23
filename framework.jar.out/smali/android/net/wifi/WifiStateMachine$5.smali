.class Landroid/net/wifi/WifiStateMachine$5;
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
    .line 1044
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1048
    const-string v1, "WifiStateMachine"

    const-string v2, "Received intent CHANGE_MDM_POLICY_WIFI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1051
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v1, "device_policy"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v2, v1}, Landroid/net/wifi/WifiStateMachine;->access$602(Landroid/net/wifi/WifiStateMachine;Landroid/app/admin/DevicePolicyManager;)Landroid/app/admin/DevicePolicyManager;

    .line 1053
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getWiFiDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1054
    const-string v1, "WifiStateMachine"

    const-string v2, "Wifi Disable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/4 v0, 0x0

    .line 1056
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$5;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mWifiManager":Landroid/net/wifi/WifiManager;
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1057
    .restart local v0    # "mWifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1059
    .end local v0    # "mWifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    return-void
.end method
