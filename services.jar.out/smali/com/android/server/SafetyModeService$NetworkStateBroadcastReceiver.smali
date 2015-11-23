.class Lcom/android/server/SafetyModeService$NetworkStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SafetyModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SafetyModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SafetyModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/SafetyModeService;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/server/SafetyModeService$NetworkStateBroadcastReceiver;->this$0:Lcom/android/server/SafetyModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SafetyModeService;Lcom/android/server/SafetyModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/SafetyModeService;
    .param p2, "x1"    # Lcom/android/server/SafetyModeService$1;

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lcom/android/server/SafetyModeService$NetworkStateBroadcastReceiver;-><init>(Lcom/android/server/SafetyModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 783
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 786
    const-string v7, "wifi"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 788
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 789
    .local v6, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "num scan results="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v6, :cond_1

    const-string v7, "0"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 827
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v6    # "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    :goto_1
    return-void

    .line 789
    .restart local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    .restart local v6    # "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    .line 793
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v6    # "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_2
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 795
    const-string v7, "noConnectivity"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 798
    .local v1, "noConnectivity":Z
    if-eqz v1, :cond_3

    .line 799
    const-string v4, "no connectivity"

    .local v4, "updateMsg":Ljava/lang/String;
    goto :goto_1

    .line 802
    .end local v4    # "updateMsg":Ljava/lang/String;
    :cond_3
    const-string v7, "connection available"

    goto :goto_1

    .line 806
    .end local v1    # "noConnectivity":Z
    :cond_4
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 807
    const-string v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 810
    .local v2, "state":I
    const-string v3, "unknown"

    .line 811
    .local v3, "stateString":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 816
    :pswitch_0
    const-string v3, "disabling"

    .line 817
    goto :goto_1

    .line 813
    :pswitch_1
    const-string v3, "disabled"

    .line 814
    goto :goto_1

    .line 819
    :pswitch_2
    const-string v3, "enabled"

    .line 820
    goto :goto_1

    .line 822
    :pswitch_3
    const-string v7, "enabling"

    goto :goto_1

    .line 811
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
