.class Landroid/net/wifi/WifiStateMachine$2;
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
    .line 972
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, -0x1

    .line 975
    const/4 v6, 0x0

    .line 977
    .local v6, "workSource":Landroid/os/WorkSource;
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v7, v8, :cond_3

    .line 983
    const-string v4, "com.kt.wificm.service.ServiceKTCMWiFiScan"

    .line 984
    .local v4, "serviceName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 985
    .local v5, "serviceState":Z
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 986
    .local v2, "manager":Landroid/app/ActivityManager;
    const v7, 0x7fffffff

    invoke-virtual {v2, v7}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 987
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 988
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 990
    .local v3, "rInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 991
    const/4 v5, 0x1

    .line 995
    .end local v3    # "rInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    if-nez v5, :cond_1

    .line 996
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7, v9, v6}, Landroid/net/wifi/WifiStateMachine;->startScan(ILandroid/os/WorkSource;)V

    .line 1005
    .end local v0    # "i":I
    .end local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v2    # "manager":Landroid/app/ActivityManager;
    .end local v4    # "serviceName":Ljava/lang/String;
    .end local v5    # "serviceState":Z
    :cond_1
    :goto_1
    return-void

    .line 987
    .restart local v0    # "i":I
    .restart local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v2    # "manager":Landroid/app/ActivityManager;
    .restart local v3    # "rInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    .restart local v4    # "serviceName":Ljava/lang/String;
    .restart local v5    # "serviceState":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1002
    .end local v0    # "i":I
    .end local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v2    # "manager":Landroid/app/ActivityManager;
    .end local v3    # "rInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v4    # "serviceName":Ljava/lang/String;
    .end local v5    # "serviceState":Z
    :cond_3
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7, v9, v6}, Landroid/net/wifi/WifiStateMachine;->startScan(ILandroid/os/WorkSource;)V

    goto :goto_1
.end method
