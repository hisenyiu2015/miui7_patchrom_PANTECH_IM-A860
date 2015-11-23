.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorThread"
.end annotation


# instance fields
.field private mRecvErrors:I

.field private mStateMachine:Lcom/android/internal/util/StateMachine;

.field private final mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

.field private final mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiNative;Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)V
    .locals 1
    .param p1, "wifiNative"    # Landroid/net/wifi/WifiNative;
    .param p2, "wifiMonitorSingleton"    # Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .prologue
    .line 593
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 589
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 594
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 595
    iput-object p2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .line 596
    return-void
.end method

.method private dispatchEvent(Ljava/lang/String;)Z
    .locals 11
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 680
    const-string v7, "CTRL-EVENT-"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 681
    const-string v7, "WPA:"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "pre-shared key may be incorrect"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    .line 683
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x24007

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 856
    :cond_0
    :goto_0
    return v5

    .line 684
    :cond_1
    const-string v7, "WAPI:"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_miui_0

    const-string v7, "pre-shared key may be incorrect"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_miui_0

    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24007

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_miui_0
    const-string v7, "WPS-SUCCESS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 685
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x24008

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 686
    :cond_2
    const-string v7, "WPS-FAIL"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 687
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleWpsFailEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 688
    :cond_3
    const-string v7, "WPS-OVERLAP-DETECTED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 689
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x2400a

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 690
    :cond_4
    const-string v7, "WPS-TIMEOUT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 691
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x2400b

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 692
    :cond_5
    const-string v7, "P2P"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 693
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleP2pEvents(Ljava/lang/String;)V

    goto :goto_0

    .line 694
    :cond_6
    const-string v7, "AP"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 695
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleHostApEvents(Ljava/lang/String;)V

    goto :goto_0

    .line 697
    :cond_7
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v7, v8, :cond_8

    const-string v7, "EAP authentication failed"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 699
    const-string/jumbo v6, "ollehWiFi"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 700
    const-string v6, "WifiMonitor"

    const-string v7, "EAP_AUTH_FAILURE_STR received in non-KI AP"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEapIdpwCtrlEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :cond_8
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v7, v8, :cond_9

    const-string v7, "WPA: 4-Way Handshake failed - pre-shared key may be incorrect"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 707
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handlePskNegoFailEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 710
    :cond_9
    const-string v7, "WEP: Shared WEP failed - wep key may be incorrect"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 711
    const-string v6, "WifiMonitor"

    const-string v7, "WEP_NEGO_FAIL_STR"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleWepNegoFailEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 716
    :cond_a
    const-string v7, "EUC-kr Hangul Hidden SSID match"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 717
    const-string v6, "WifiMonitor"

    const-string v7, "EUCKR_HANGUL_SSID_CONFIG_CHANGE_STR"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x2400d

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 721
    :cond_b
    const-string v7, "SKT_ADD_INFO_NOTI_TEXT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 722
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SKT_ADD_INFO_NOTI_TEXT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->skt_passpoint_notifymsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 724
    :cond_c
    const-string v7, "SKT_CONNECTION_INFO_NOTI_HOME_TEXT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 725
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SKT_CONNECTION_INFO_NOTI_HOME_TEXT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->skt_passpoint_notifymsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 727
    :cond_d
    const-string v7, "SKT_CONNECTION_INFO_NOTI_ROAM_TEXT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 728
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SKT_CONNECTION_INFO_NOTI_ROAM_TEXT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->skt_passpoint_notifymsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 732
    :cond_e
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v7, v8, :cond_10

    const-string v7, "Authentication with "

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, " timed out."

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 733
    const-string v6, "00:00:00:00:00:00"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 734
    const-string v6, "WifiMonitor"

    const-string v7, "Authentication time out for BSSID all 0\'s doesn\'t need to be handled here"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 737
    :cond_f
    const-string v6, "T wifi zone_secure"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 738
    const-string v6, "WifiMonitor"

    const-string v7, "Auth Fail T wifi zone_secure"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleAuthTimeout()V

    goto/16 :goto_0

    .line 744
    :cond_10
    const-string v7, "Trying to associate with"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 745
    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapTimeOut:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$602(Z)Z

    .line 746
    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$702(Z)Z

    .line 747
    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$802(Z)Z

    .line 748
    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$902(Z)Z

    .line 749
    # setter for: Landroid/net/wifi/WifiMonitor;->bIsIdPassWordConnection:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$1002(Z)Z

    .line 750
    # setter for: Landroid/net/wifi/WifiMonitor;->bIsWPSconnection:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$1102(Z)Z

    .line 751
    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureAfterAuth:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$1202(Z)Z

    .line 752
    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureBeforeAuth:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$1302(Z)Z

    .line 754
    const-string/jumbo v7, "ollehWiFi"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 755
    # setter for: Landroid/net/wifi/WifiMonitor;->bIsKtAp:Z
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$1402(Z)Z

    .line 760
    :goto_1
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to associate with bIsKtAp : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Landroid/net/wifi/WifiMonitor;->bIsKtAp:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1400()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 757
    :cond_11
    # setter for: Landroid/net/wifi/WifiMonitor;->bIsKtAp:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$1402(Z)Z

    goto :goto_1

    .line 764
    :cond_12
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t identify event type - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 769
    :cond_13
    # getter for: Landroid/net/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1500()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 770
    .local v2, "eventName":Ljava/lang/String;
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 771
    .local v4, "nameEnd":I
    if-eq v4, v8, :cond_14

    .line 772
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 773
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_15

    .line 774
    const-string v6, "WifiMonitor"

    const-string v7, "Received wpa_supplicant event with empty event name"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 781
    :cond_15
    const-string v7, "CONNECTED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 782
    const/4 v0, 0x1

    .line 802
    .local v0, "event":I
    :goto_2
    move-object v1, p1

    .line 803
    .local v1, "eventData":Ljava/lang/String;
    if-eq v0, v10, :cond_16

    const/4 v7, 0x5

    if-ne v0, v7, :cond_22

    .line 804
    :cond_16
    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v1, v7, v6

    .line 817
    :cond_17
    :goto_3
    if-ne v0, v9, :cond_25

    .line 818
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    .line 855
    :cond_18
    :goto_4
    iput v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    goto/16 :goto_0

    .line 783
    .end local v0    # "event":I
    .end local v1    # "eventData":Ljava/lang/String;
    :cond_19
    const-string v7, "DISCONNECTED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 784
    const/4 v0, 0x2

    .restart local v0    # "event":I
    goto :goto_2

    .line 785
    .end local v0    # "event":I
    :cond_1a
    const-string v7, "STATE-CHANGE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 786
    const/4 v0, 0x3

    .restart local v0    # "event":I
    goto :goto_2

    .line 787
    .end local v0    # "event":I
    :cond_1b
    const-string v7, "SCAN-RESULTS"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 788
    const/4 v0, 0x4

    .restart local v0    # "event":I
    goto :goto_2

    .line 789
    .end local v0    # "event":I
    :cond_1c
    const-string v7, "LINK-SPEED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 790
    const/4 v0, 0x5

    .restart local v0    # "event":I
    goto :goto_2

    .line 791
    .end local v0    # "event":I
    :cond_1d
    const-string v7, "TERMINATING"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 792
    const/4 v0, 0x6

    .restart local v0    # "event":I
    goto :goto_2

    .line 793
    .end local v0    # "event":I
    :cond_1e
    const-string v7, "DRIVER-STATE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 794
    const/4 v0, 0x7

    .restart local v0    # "event":I
    goto :goto_2

    .line 795
    .end local v0    # "event":I
    :cond_1f
    const-string v7, "EAP-FAILURE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 796
    const/16 v0, 0x8

    .restart local v0    # "event":I
    goto :goto_2

    .line 797
    .end local v0    # "event":I
    :cond_20
    const-string v7, "ASSOC-REJECT"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 798
    const/16 v0, 0x9

    .restart local v0    # "event":I
    goto :goto_2

    .line 800
    .end local v0    # "event":I
    :cond_21
    const/16 v0, 0xa

    .restart local v0    # "event":I
    goto :goto_2

    .line 805
    .restart local v1    # "eventData":Ljava/lang/String;
    :cond_22
    if-eq v0, v9, :cond_23

    const/16 v7, 0x8

    if-ne v0, v7, :cond_24

    .line 806
    :cond_23
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 807
    .local v3, "ind":I
    if-eq v3, v8, :cond_17

    .line 808
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 811
    .end local v3    # "ind":I
    :cond_24
    const-string v7, " - "

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 812
    .restart local v3    # "ind":I
    if-eq v3, v8, :cond_17

    .line 813
    add-int/lit8 v7, v3, 0x3

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 819
    .end local v3    # "ind":I
    :cond_25
    if-ne v0, v10, :cond_26

    .line 820
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 821
    :cond_26
    const/4 v7, 0x6

    if-ne v0, v7, :cond_28

    .line 826
    const-string/jumbo v7, "recv error"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 827
    iget v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    const/16 v8, 0xa

    if-le v7, v8, :cond_0

    .line 829
    const-string v5, "WifiMonitor"

    const-string/jumbo v7, "too many recv errors, closing connection"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_27
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x24002

    invoke-virtual {v5, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    move v5, v6

    .line 838
    goto/16 :goto_0

    .line 839
    :cond_28
    const/16 v6, 0x8

    if-ne v0, v6, :cond_29

    .line 840
    const-string v6, "EAP authentication failed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 841
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x24007

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 843
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v6, v7, :cond_18

    .line 846
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 850
    :cond_29
    const/16 v6, 0x9

    if-ne v0, v6, :cond_2a

    .line 851
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x2402b

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_4

    .line 853
    :cond_2a
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_4
.end method

.method private handleAssocRejectFailEvent()V
    .locals 1

    .prologue
    .line 1254
    const-string v0, "ASSOC Reject failed - No response from AP"

    .line 1257
    .local v0, "assocRejectFail":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyAssocRejectFailAlarm()V

    .line 1258
    return-void
.end method

.method private handleConfigEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1194
    const-string v0, "CTRL-EVENT-CONFIG-CHANGE"

    .line 1196
    .local v0, "configChangePrefix":Ljava/lang/String;
    const-string v2, "CTRL-EVENT-CONFIG-CHANGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1198
    const-string v2, "CTRL-EVENT-CONFIG-CHANGE"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle config change msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyConfigChange(Ljava/lang/String;)V

    .line 1207
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 860
    if-nez p1, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x2400c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private handleEapCtrlEvent(Ljava/lang/String;)V
    .locals 19
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1279
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v16

    sget-object v17, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 1281
    const-string v12, "CTRL-EVENT-EAP-STARTED"

    .line 1282
    .local v12, "startedPrefix":Ljava/lang/String;
    const-string v10, "CTRL-EVENT-EAP-NOTIFICATION"

    .line 1283
    .local v10, "notiPrefix":Ljava/lang/String;
    const-string v8, "CTRL-EVENT-EAP-METHOD"

    .line 1284
    .local v8, "methodPrefix":Ljava/lang/String;
    const-string v7, "CTRL-EVENT-EAP-FAILURE"

    .line 1285
    .local v7, "failurePrefix":Ljava/lang/String;
    const-string v14, "CTRL-EVENT-EAP-SUCCESS"

    .line 1287
    .local v14, "successPrefix":Ljava/lang/String;
    const-string v16, "CTRL-EVENT-EAP-NOTIFICATION"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1290
    const-string v16, "CTRL-EVENT-EAP-NOTIFICATION"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1291
    .local v9, "msg":Ljava/lang/String;
    const-string v16, "@"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1292
    :cond_0
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handle notification msg="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1583
    .end local v9    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1303
    .end local v7    # "failurePrefix":Ljava/lang/String;
    .end local v8    # "methodPrefix":Ljava/lang/String;
    .end local v10    # "notiPrefix":Ljava/lang/String;
    .end local v12    # "startedPrefix":Ljava/lang/String;
    .end local v14    # "successPrefix":Ljava/lang/String;
    :cond_2
    const-string v12, "CTRL-EVENT-EAP-STARTED"

    .line 1304
    .restart local v12    # "startedPrefix":Ljava/lang/String;
    const-string v10, "CTRL-EVENT-EAP-NOTIFICATION"

    .line 1305
    .restart local v10    # "notiPrefix":Ljava/lang/String;
    const-string v8, "CTRL-EVENT-EAP-METHOD"

    .line 1306
    .restart local v8    # "methodPrefix":Ljava/lang/String;
    const-string v7, "EAP authentication failed"

    .line 1307
    .restart local v7    # "failurePrefix":Ljava/lang/String;
    const-string v14, "CTRL-EVENT-EAP-SUCCESS"

    .line 1308
    .restart local v14    # "successPrefix":Ljava/lang/String;
    const-string v13, "EAP authentication completed successfully"

    .line 1309
    .local v13, "successPostfix":Ljava/lang/String;
    const-string/jumbo v15, "timed out."

    .line 1311
    .local v15, "timeoutPostfix":Ljava/lang/String;
    const-string v2, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_AUTH-AT_NOTIFICATION-EAP_SIM_GENERAL_FAILURE_AFTER_AUTH"

    .line 1312
    .local v2, "NotificationFailureAfterAuthPrefix":Ljava/lang/String;
    const-string v3, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_AUTH-AT_NOTIFICATION-EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH"

    .line 1313
    .local v3, "NotificationFailureBeforeAuthPrefix":Ljava/lang/String;
    const-string v6, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_AUTH-AT_NOTIFICATION-EAP_SIM_SUCCESS"

    .line 1314
    .local v6, "NotificationSuccessPrefix":Ljava/lang/String;
    const-string v5, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_UMTS_AUTHENTICATION_FAILED_AUTN_INCORRECT_MAC"

    .line 1315
    .local v5, "NotificationFailureIncorrectMACPrefix":Ljava/lang/String;
    const-string v4, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_UMTS_AUTHENTICATION_FAILED_CM_ERROR_MEMORY_PROBLEM"

    .line 1317
    .local v4, "NotificationFailureCMErrorMemoryProblem":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 1319
    .local v11, "r":Landroid/content/res/Resources;
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent bReceiveEapFailure : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bIsKtAp : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bIsKtAp:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1400()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bReceiveEapNotification : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bReceiveEapRequestAtNotification : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$800()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bReceiveEapTimeOut : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapTimeOut:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$600()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bIsIdPassWordConnection : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bIsIdPassWordConnection:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1000()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bIsWPSconnection : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bIsWPSconnection:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1100()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bReceiveEapRequestAkaNotificationATNotificationFailureAfterAuth : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureAfterAuth:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1200()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bReceiveEapRequestAkaNotificationATNotificationFailureBeforeAuth : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureBeforeAuth:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1300()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    # getter for: Landroid/net/wifi/WifiMonitor;->bIsIdPassWordConnection:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1000()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 1331
    # getter for: Landroid/net/wifi/WifiMonitor;->bIsWPSconnection:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1100()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 1336
    const-string v16, "CTRL-EVENT-EAP-NOTIFICATION"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1338
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$902(Z)Z

    .line 1343
    const-string v16, "CTRL-EVENT-EAP-NOTIFICATION"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1344
    .restart local v9    # "msg":Ljava/lang/String;
    const-string v16, "@"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1345
    :cond_3
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handle notification msg="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1351
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    .line 1354
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1356
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapToastPopUp(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1359
    .end local v9    # "msg":Ljava/lang/String;
    :cond_4
    const-string v16, "CTRL-EVENT-EAP-SUCCESS"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    const-string v16, "EAP authentication completed successfully"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1361
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const v16, 0x10406b0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1365
    .restart local v9    # "msg":Ljava/lang/String;
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1367
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1371
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1375
    .end local v9    # "msg":Ljava/lang/String;
    :cond_5
    const-string v16, "EAP authentication failed"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 1377
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_8

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapTimeOut:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$600()Z

    move-result v16

    if-nez v16, :cond_8

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_8

    .line 1380
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureAfterAuth:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1200()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureBeforeAuth:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1300()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 1383
    :cond_6
    const v16, 0x10406b1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1386
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapToastPopUp(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1390
    .end local v9    # "msg":Ljava/lang/String;
    :cond_7
    const v16, 0x10406b1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1393
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapToastPopUp(Ljava/lang/String;)V

    .line 1396
    .end local v9    # "msg":Ljava/lang/String;
    :cond_8
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_9

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_9

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$800()Z

    move-result v16

    if-nez v16, :cond_9

    .line 1397
    const v16, 0x10406b1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1400
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1404
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    .line 1409
    .end local v9    # "msg":Ljava/lang/String;
    :cond_9
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_a

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$800()Z

    move-result v16

    if-nez v16, :cond_a

    .line 1410
    const/16 v16, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemErrorNotification(I)V

    .line 1414
    :cond_a
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$702(Z)Z

    goto/16 :goto_0

    .line 1416
    :cond_b
    const-string/jumbo v16, "timed out."

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 1418
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapTimeOut:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$602(Z)Z

    .line 1422
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureAfterAuth:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1200()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureBeforeAuth:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1300()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 1427
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_c

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_c

    .line 1428
    const v16, 0x10406b2

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1431
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapToastPopUp(Ljava/lang/String;)V

    .line 1434
    .end local v9    # "msg":Ljava/lang/String;
    :cond_c
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_d

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_d

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$800()Z

    move-result v16

    if-nez v16, :cond_d

    .line 1435
    const v16, 0x10406b2

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1438
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1442
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    .line 1447
    .end local v9    # "msg":Ljava/lang/String;
    :cond_d
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_1

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$800()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1448
    const/16 v16, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemErrorNotification(I)V

    goto/16 :goto_0

    .line 1452
    :cond_e
    const-string v16, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_AUTH-AT_NOTIFICATION-EAP_SIM_GENERAL_FAILURE_AFTER_AUTH"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 1454
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_f

    .line 1458
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapAkaNotification(I)V

    .line 1462
    :cond_f
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$802(Z)Z

    .line 1463
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureAfterAuth:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$1202(Z)Z

    .line 1466
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1469
    const v16, 0x10406b1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1472
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1476
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1480
    .end local v9    # "msg":Ljava/lang/String;
    :cond_10
    const-string v16, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_AUTH-AT_NOTIFICATION-EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 1482
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapAkaNotification(I)V

    .line 1488
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$802(Z)Z

    .line 1489
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureBeforeAuth:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$1302(Z)Z

    .line 1492
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_11

    .line 1495
    const v16, 0x10406b1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1498
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1502
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    .line 1506
    .end local v9    # "msg":Ljava/lang/String;
    :cond_11
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_1

    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1507
    const/16 v16, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemErrorNotification(I)V

    goto/16 :goto_0

    .line 1511
    :cond_12
    const-string v16, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_UMTS_AUTHENTICATION_FAILED_AUTN_INCORRECT_MAC"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 1513
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$802(Z)Z

    .line 1518
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1519
    const v16, 0x10406b1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1522
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1526
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1530
    .end local v9    # "msg":Ljava/lang/String;
    :cond_13
    const-string v16, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_UMTS_AUTHENTICATION_FAILED_CM_ERROR_MEMORY_PROBLEM"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_15

    .line 1532
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$802(Z)Z

    .line 1537
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_14

    .line 1538
    const v16, 0x10406b1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1541
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1545
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    .line 1549
    .end local v9    # "msg":Ljava/lang/String;
    :cond_14
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1550
    const/16 v16, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemErrorNotification(I)V

    goto/16 :goto_0

    .line 1555
    :cond_15
    const-string v16, "CTRL-EVENT-EAP-REQUSET-EAP_AKA_AUTH-AT_NOTIFICATION-EAP_SIM_SUCCESS"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1557
    const-string v16, "WifiMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleEapCtrlEvent : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapAkaNotification(I)V

    .line 1563
    const/16 v16, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiMonitor;->access$802(Z)Z

    .line 1566
    # getter for: Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$900()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1567
    const v16, 0x10406b0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1570
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyEapNotification(Ljava/lang/String;)V

    .line 1574
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemEapNotification(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleEapIdpwCtrlEvent(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1734
    const-string v0, "EAP authentication failed"

    .line 1735
    .local v0, "eapIdPwFail":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 1737
    .local v3, "r":Landroid/content/res/Resources;
    const-string v4, "EAP authentication failed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1739
    const-string v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleEapIdpwCtrlEvent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const-string/jumbo v2, "wifi_eap_idpw_failure"

    .line 1743
    .local v2, "msg":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemErrorNotification(I)V

    .line 1747
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.internal.telephony.sky.intent.action.EAP_FAIL_NOTIFICATION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1749
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send IntentNoti: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    const-string v4, "eapFailNotification"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1752
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v4, v4, Landroid/net/wifi/WifiStateMachine;

    if-eqz v4, :cond_0

    .line 1753
    const-string v4, "WifiMonitor"

    const-string v5, "WifiStateMachine.sendBroadcast() called"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v4, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiStateMachine;->sendBroadcast(Landroid/content/Intent;)V

    .line 1757
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleHostApEvents(Ljava/lang/String;)V
    .locals 4
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1033
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1035
    .local v0, "tokens":[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1036
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2402a

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    aget-object v1, v0, v3

    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24029

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 6
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1112
    const/4 v0, 0x0

    .line 1113
    .local v0, "BSSID":Ljava/lang/String;
    const/4 v3, -0x1

    .line 1114
    .local v3, "networkId":I
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_0

    .line 1115
    # getter for: Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1600()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1116
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1117
    const-string v4, "WifiMonitor"

    const-string v5, "Could not find BSSID in CONNECTED event string"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :goto_0
    invoke-virtual {p0, p1, v0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    .line 1130
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v4

    sget-object v5, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v4, v5, :cond_0

    .line 1131
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v4, v4, Landroid/net/wifi/WifiStateMachine;

    if-eqz v4, :cond_0

    .line 1132
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v4, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->skt_passpoint_noti_request()V

    .line 1136
    .end local v2    # "match":Ljava/util/regex/Matcher;
    :cond_0
    return-void

    .line 1119
    .restart local v2    # "match":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1121
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1122
    :catch_0
    move-exception v1

    .line 1123
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 4
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 976
    const-string v1, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 977
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24015

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    const-string v1, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 979
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24016

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 980
    :cond_2
    const-string v1, "P2P-FIND-STOPPED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 981
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24025

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 982
    :cond_3
    const-string v1, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 983
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24017

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 985
    :cond_4
    const-string v1, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 986
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24019

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 987
    :cond_5
    const-string v1, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 988
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401a

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 989
    :cond_6
    const-string v1, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 990
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401b

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 991
    :cond_7
    const-string v1, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 992
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401c

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 993
    :cond_8
    const-string v1, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 994
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401d

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 995
    :cond_9
    const-string v1, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 996
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401e

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 997
    :cond_a
    const-string v1, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 998
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401f

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1000
    :cond_b
    const-string v1, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1001
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24020

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1002
    :cond_c
    const-string v1, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1003
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24021

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1005
    :cond_d
    const-string v1, "P2P-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1006
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24022

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1008
    :cond_e
    const-string v1, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1009
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24023

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1011
    :cond_f
    const-string v1, "P2P-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1012
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24024

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1014
    :cond_10
    const-string v1, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1015
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24027

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1016
    :cond_11
    const-string v1, "P2P-SERV-DISC-RESP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1017
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1018
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v0, :cond_12

    .line 1019
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24026

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1021
    :cond_12
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null service resp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1023
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_13
    const-string v1, "P2P-REMOVE-AND-REFORM-GROUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1024
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received event= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24028

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0
.end method

.method private handlePskNegoFailEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1707
    const-string v1, "WPA: 4-Way Handshake failed - pre-shared key may be incorrect"

    .line 1708
    .local v1, "pskNegoFail":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 1709
    .local v2, "r":Landroid/content/res/Resources;
    const-string v3, "WPA: 4-Way Handshake failed - pre-shared key may be incorrect"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1711
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePskNegoFailEvent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->OemErrorNotification(I)V

    .line 1719
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.internal.telephony.sky.intent.action.PSK_NEGO_FAIL_NOTIFICATION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1720
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "WifiMonitor"

    const-string v4, "Send IntentNoti: 1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    const-string/jumbo v3, "pskNegoFailNotification"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1723
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v3, v3, Landroid/net/wifi/WifiStateMachine;

    if-eqz v3, :cond_0

    .line 1724
    const-string v3, "WifiMonitor"

    const-string v4, "WifiStateMachine.sendBroadcast() called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v3, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcast(Landroid/content/Intent;)V

    .line 1728
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 20
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1049
    const/4 v3, 0x0

    .line 1051
    .local v3, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/4 v4, 0x0

    .line 1053
    .local v4, "SSID":Ljava/lang/String;
    const-string v1, "SSID="

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 1054
    .local v11, "index":I
    const/4 v1, -0x1

    if-eq v11, v1, :cond_0

    .line 1056
    add-int/lit8 v1, v11, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1058
    add-int/lit8 v1, v11, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    .line 1061
    :cond_0
    const-string v1, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1063
    .local v8, "dataTokens":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1064
    .local v5, "BSSID":Ljava/lang/String;
    const/4 v2, -0x1

    .line 1065
    .local v2, "networkId":I
    const/4 v14, -0x1

    .line 1066
    .local v14, "newState":I
    move-object v7, v8

    .local v7, "arr$":[Ljava/lang/String;
    array-length v12, v7

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_5

    aget-object v16, v7, v10

    .line 1067
    .local v16, "token":Ljava/lang/String;
    const-string v1, "="

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1068
    .local v13, "nameValue":[Ljava/lang/String;
    array-length v1, v13

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v1, v0, :cond_2

    .line 1066
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1072
    :cond_2
    const/4 v1, 0x0

    aget-object v1, v13, v1

    const-string v18, "BSSID"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1073
    const/4 v1, 0x1

    aget-object v5, v13, v1

    .line 1074
    goto :goto_1

    .line 1079
    :cond_3
    const/4 v1, 0x1

    :try_start_0
    aget-object v1, v13, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 1084
    .local v17, "value":I
    const/4 v1, 0x0

    aget-object v1, v13, v1

    const-string v18, "id"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1085
    move/from16 v2, v17

    goto :goto_1

    .line 1080
    .end local v17    # "value":I
    :catch_0
    move-exception v9

    .line 1081
    .local v9, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 1086
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v17    # "value":I
    :cond_4
    const/4 v1, 0x0

    aget-object v1, v13, v1

    const-string/jumbo v18, "state"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1087
    move/from16 v14, v17

    goto :goto_1

    .line 1091
    .end local v13    # "nameValue":[Ljava/lang/String;
    .end local v16    # "token":Ljava/lang/String;
    .end local v17    # "value":I
    :cond_5
    const/4 v1, -0x1

    if-ne v14, v1, :cond_6

    .line 1109
    .end local v7    # "arr$":[Ljava/lang/String;
    :goto_2
    return-void

    .line 1093
    .restart local v7    # "arr$":[Ljava/lang/String;
    :cond_6
    sget-object v6, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 1094
    .local v6, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v7

    .local v7, "arr$":[Landroid/net/wifi/SupplicantState;
    array-length v12, v7

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v12, :cond_7

    aget-object v15, v7, v10

    .line 1095
    .local v15, "state":Landroid/net/wifi/SupplicantState;
    invoke-virtual {v15}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-ne v1, v14, :cond_9

    .line 1096
    move-object v6, v15

    .line 1100
    .end local v15    # "state":Landroid/net/wifi/SupplicantState;
    :cond_7
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v6, v1, :cond_8

    .line 1101
    const-string v1, "WifiMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid supplicant state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v1, p0

    .line 1106
    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_2

    .line 1094
    .restart local v15    # "state":Landroid/net/wifi/SupplicantState;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3
.end method

.method private handleWepNegoFailEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1212
    const-string v2, "WEP: Shared WEP failed - wep key may be incorrect"

    .line 1214
    .local v2, "wepNegoFail":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1215
    .local v1, "r":Landroid/content/res/Resources;
    const-string v3, "WEP: Shared WEP failed - wep key may be incorrect"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1217
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleWepNegoFailEvent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const v3, 0x10406b7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1221
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyWepNegoFailPopUp(Ljava/lang/String;)V

    .line 1223
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleWpsFailEvent(Ljava/lang/String;)V
    .locals 9
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const v8, 0x24009

    const/4 v7, 0x0

    .line 916
    const-string v4, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 917
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 918
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 919
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "cfgErr":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 922
    .local v3, "reason":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 923
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 934
    :cond_0
    if-eqz v0, :cond_1

    .line 935
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 948
    .end local v0    # "cfgErr":Ljava/lang/String;
    .end local v3    # "reason":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v5, v8, v7, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 950
    :goto_0
    return-void

    .line 925
    .restart local v0    # "cfgErr":Ljava/lang/String;
    .restart local v3    # "reason":Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x5

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 929
    :pswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x4

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 937
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x6

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 941
    :sswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x3

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 923
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 935
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 8
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 954
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 955
    .local v1, "err":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 956
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v7, :cond_0

    move-object v4, v1

    .line 969
    :goto_0
    return-object v4

    .line 957
    :cond_0
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 958
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v4, v2

    if-eq v4, v7, :cond_1

    move-object v4, v1

    goto :goto_0

    .line 961
    :cond_1
    aget-object v4, v2, v6

    const-string v5, "FREQ_CONFLICT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 962
    sget-object v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 965
    :cond_2
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->valueOf(I)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v4, v1

    .line 969
    goto :goto_0

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public OemEapAkaNotification(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 1614
    const-string v1, "WifiMonitor"

    const-string v2, "OemEapAkaNotification called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1618
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send IntentNoti: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    if-nez p1, :cond_2

    .line 1621
    const-string v1, "EAP_AKA_NOTIFICATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1628
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v1, v1, Landroid/net/wifi/WifiStateMachine;

    if-eqz v1, :cond_1

    .line 1630
    const-string v1, "WifiMonitor"

    const-string v2, "WifiStateMachine.sendBroadcast() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v1, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcast(Landroid/content/Intent;)V

    .line 1634
    :cond_1
    return-void

    .line 1622
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 1623
    const-string v1, "EAP_AKA_NOTIFICATION"

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1624
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1625
    const-string v1, "EAP_AKA_NOTIFICATION"

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public OemEapNotification(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1587
    const-string v3, "WifiMonitor"

    const-string v4, "OemEapNotification called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    if-nez p1, :cond_1

    .line 1591
    const-string v3, "WifiMonitor"

    const-string v4, "OemEapNotification() failed!!! Msg is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 1594
    :cond_1
    move-object v2, p1

    .line 1595
    .local v2, "txtPlain":Ljava/lang/String;
    const-string v1, " "

    .line 1596
    .local v1, "txtClipher":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 1599
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1600
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send IntentNoti: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const-string v3, "EAP_NOTIFICATION"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1603
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v3, v3, Landroid/net/wifi/WifiStateMachine;

    if-eqz v3, :cond_0

    .line 1605
    const-string v3, "WifiMonitor"

    const-string v4, "WifiStateMachine.sendBroadcast() called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v3, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public OemErrorNotification(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 1639
    const-string v1, "WifiMonitor"

    const-string v2, "OemErrorNotification called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1648
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send IntentNoti: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const-string v1, "ERROR_NOTIFICATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1651
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v1, v1, Landroid/net/wifi/WifiStateMachine;

    if-eqz v1, :cond_0

    .line 1652
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v1, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcast(Landroid/content/Intent;)V

    .line 1654
    :cond_0
    return-void
.end method

.method public handleAuthTimeout()V
    .locals 2

    .prologue
    .line 1188
    const-string v0, "WifiMonitor"

    const-string v1, "WifiStateMachine.handleAuthTimeout() called "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    return-void
.end method

.method handleEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    .prologue
    .line 875
    packed-switch p1, :pswitch_data_0

    .line 913
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 877
    :pswitch_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 881
    :pswitch_2
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 885
    :pswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 894
    :pswitch_4
    const-string v0, "CTRL-EVENT-EAP-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEapCtrlEvent(Ljava/lang/String;)V

    .line 896
    :cond_1
    const-string v0, "EAP authentication failed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 897
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEapCtrlEvent(Ljava/lang/String;)V

    .line 900
    :cond_2
    const-string v0, "CTRL-EVENT-CONFIG-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 901
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleConfigEvent(Ljava/lang/String;)V

    .line 905
    :cond_3
    const-string/jumbo v0, "wps connection request"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    const-string v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(WSC) selected bIsWPSconnection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/net/wifi/WifiMonitor;->bIsWPSconnection:Z
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$1100()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v0, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->bIsWPSconnection:Z
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$1102(Z)Z

    goto :goto_0

    .line 875
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public notifyAssocRejectFailAlarm()V
    .locals 3

    .prologue
    .line 1261
    const-string v1, "WifiMonitor"

    const-string v2, "WifiStateMachine.notifyAssocRejectFailAlarm() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.internal.telephony.sky.intent.action.ASSOC_REJECT_FAIL_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1267
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v1, v1, Landroid/net/wifi/WifiStateMachine;

    if-eqz v1, :cond_0

    .line 1269
    const-string v1, "WifiMonitor"

    const-string v2, "WifiStateMachine.sendBroadcast() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v1, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcast(Landroid/content/Intent;)V

    .line 1273
    :cond_0
    return-void
.end method

.method public notifyConfigChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1801
    if-nez p1, :cond_0

    .line 1802
    const-string v0, "WifiMonitor"

    const-string/jumbo v1, "notifyConfigChange() failed!!! Msg is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :goto_0
    return-void

    .line 1805
    :cond_0
    const-string v0, "WifiMonitor"

    const-string v1, "Send CONFIG_CHANGE_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x2400d

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public notifyEapNotification(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1658
    const-string v1, "WifiMonitor"

    const-string v2, "WifiStateMachine.notifyEapNotification() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    if-nez p1, :cond_1

    .line 1662
    const-string v1, "WifiMonitor"

    const-string/jumbo v2, "notifyEapNotification() failed!!! Msg is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_0
    :goto_0
    return-void

    .line 1667
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.internal.telephony.sky.intent.action.WPA_EAP_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1668
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send IntentNoti: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    const-string v1, "eapNotification"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1671
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v1, v1, Landroid/net/wifi/WifiStateMachine;

    if-eqz v1, :cond_0

    .line 1673
    const-string v1, "WifiMonitor"

    const-string v2, "WifiStateMachine.sendBroadcast() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v1, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public notifyEapToastPopUp(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1680
    const-string v1, "WifiMonitor"

    const-string/jumbo v2, "notifyEapToastPopUp called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    if-nez p1, :cond_1

    .line 1684
    const-string v1, "WifiMonitor"

    const-string/jumbo v2, "notifyEapToastPopUp() failed!!! Msg is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    :cond_0
    :goto_0
    return-void

    .line 1689
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.internal.telephony.sky.intent.action.WPA_EAP_TOAST_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1691
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send IntentNoti: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    const-string v1, "eapNotification"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1694
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v1, v1, Landroid/net/wifi/WifiStateMachine;

    if-eqz v1, :cond_0

    .line 1696
    const-string v1, "WifiMonitor"

    const-string v2, "WifiStateMachine.sendBroadcast() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v1, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 4
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "netId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1149
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 1150
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24003

    invoke-virtual {v1, v2, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1152
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1158
    :goto_0
    return-void

    .line 1154
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24004

    invoke-virtual {v1, v2, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1156
    .restart local v0    # "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 9
    .param p1, "networkId"    # I
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "SSID"    # Ljava/lang/String;
    .param p4, "BSSID"    # Ljava/lang/String;
    .param p5, "newState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 1174
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24006

    new-instance v0, Landroid/net/wifi/StateChangeResult;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    invoke-virtual {v7, v8, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1180
    return-void
.end method

.method public notifyWepNegoFailPopUp(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1226
    const-string v1, "WifiMonitor"

    const-string/jumbo v2, "notifyWepNegoFailPopUp called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    if-nez p1, :cond_1

    .line 1230
    const-string v1, "WifiMonitor"

    const-string/jumbo v2, "notifyWepNegoFailPopUp() failed!!! Msg is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.internal.telephony.sky.intent.action.PSK_NEGO_FAIL_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1237
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send IntentNoti: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const-string/jumbo v1, "pskNegoFailNotification"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1240
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v1, v1, Landroid/net/wifi/WifiStateMachine;

    if-eqz v1, :cond_0

    .line 1242
    const-string v1, "WifiMonitor"

    const-string v2, "WifiStateMachine.sendBroadcast() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24007

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 601
    :cond_0
    :goto_0
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "eventStr":Ljava/lang/String;
    const-string v7, "SCAN-RESULTS"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_1

    .line 605
    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_1
    const-string/jumbo v3, "p2p0"

    .line 609
    .local v3, "iface":Ljava/lang/String;
    const/4 v5, 0x0

    .line 610
    .local v5, "m":Landroid/net/wifi/WifiMonitor;
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 613
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # getter for: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    invoke-static {v7}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$300(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 614
    const-string v7, "WifiMonitor"

    const-string v8, "Already disconnected from supplicant, stop waiting"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_1
    return-void

    .line 619
    :cond_2
    const-string v7, "IFNAME="

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 620
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 621
    .local v6, "space":I
    if-eq v6, v10, :cond_4

    .line 622
    const/4 v7, 0x7

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 623
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v3}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    .line 624
    if-nez v5, :cond_3

    const-string/jumbo v7, "p2p-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 628
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string/jumbo v8, "p2p0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    .line 630
    :cond_3
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 637
    .end local v6    # "space":I
    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    .line 638
    # getter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 639
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 648
    :cond_5
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    if-eqz v7, :cond_8

    .line 649
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->dispatchEvent(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 634
    :cond_6
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string/jumbo v8, "p2p0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    goto :goto_2

    .line 641
    :cond_7
    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dropping event because monitor ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is stopped"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 653
    :cond_8
    const-string v7, "WifiMonitor"

    const-string v8, "Sending to all monitors because there\'s no interface id"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v0, 0x0

    .line 655
    .local v0, "done":Z
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # getter for: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;
    invoke-static {v7}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$500(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 657
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;>;"
    :cond_9
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 658
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 659
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "m":Landroid/net/wifi/WifiMonitor;
    check-cast v5, Landroid/net/wifi/WifiMonitor;

    .line 660
    .restart local v5    # "m":Landroid/net/wifi/WifiMonitor;
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 661
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->dispatchEvent(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 662
    const/4 v0, 0x1

    goto :goto_3

    .line 666
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;"
    :cond_a
    if-eqz v0, :cond_0

    .line 669
    const-string v7, "WifiMonitor"

    const-string v8, "Disconnecting from the supplicant, no more events"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const/4 v8, 0x0

    # setter for: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$302(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Z)Z

    goto/16 :goto_1
.end method

.method public skt_passpoint_notifymsg(Ljava/lang/String;)V
    .locals 9
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1761
    const-string v5, "WifiMonitor"

    const-string/jumbo v6, "skt notifymsg called"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    const-string v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1763
    .local v4, "tokens":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1764
    .local v3, "title":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1765
    .local v0, "details":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1767
    .local v2, "tickerText":Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 1768
    aget-object v5, v4, v7

    if-eqz v5, :cond_0

    aget-object v3, v4, v7

    .line 1769
    :goto_0
    aget-object v5, v4, v8

    if-eqz v5, :cond_1

    aget-object v0, v4, v8

    .line 1771
    :goto_1
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 1772
    if-nez v2, :cond_2

    .line 1773
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1771
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1768
    .end local v1    # "i":I
    :cond_0
    const-string v3, " "

    goto :goto_0

    .line 1769
    :cond_1
    const-string v0, " "

    goto :goto_1

    .line 1775
    .restart local v1    # "i":I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1778
    .end local v1    # "i":I
    :cond_3
    const-string v5, "WifiMonitor"

    const-string/jumbo v6, "skt abnomal notifymsg called"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    const-string v3, " "

    .line 1780
    const-string v0, " "

    .line 1781
    const-string v2, " "

    .line 1784
    :cond_4
    const-string v5, "SKT_ADD_INFO_NOTI_TEXT"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1785
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1787
    const-string v5, "http://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "https://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1788
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1790
    :cond_5
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v5, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v3, v0, v2}, Landroid/net/wifi/WifiStateMachine;->skt_passpoint_noti_add_info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    :cond_6
    :goto_4
    return-void

    .line 1791
    :cond_7
    const-string v5, "SKT_CONNECTION_INFO_NOTI_HOME_TEXT"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1792
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v5, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v3, v0, v2}, Landroid/net/wifi/WifiStateMachine;->skt_passpoint_noti_homp_ap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1793
    :cond_8
    const-string v5, "SKT_CONNECTION_INFO_NOTI_ROAM_TEXT"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1794
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    check-cast v5, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v3, v0, v2}, Landroid/net/wifi/WifiStateMachine;->skt_passpoint_noti_roam_ap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
