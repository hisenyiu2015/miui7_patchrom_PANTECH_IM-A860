.class public final enum Landroid/net/wifi/WifiGlobal$PantechWifiFeature;
.super Ljava/lang/Enum;
.source "WifiGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PantechWifiFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/WifiGlobal$PantechWifiFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_COM_BUGFIX_NULLPOINTER_EXCEPTION:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_COM_TEST_PRINT_SM_COMMAND:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_P2P_AUTO_CONNECT_SMARTBEAM:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_P2P_PERF_SCAN_STOP_WHILE_SCREEN_OFF:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_ADDON_3G_POPUP_DELAY:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_ADDON_DHCP_REQUEST_BY_CACHED_IP:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_ADDON_EAP_FAIL_POPUP:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_ADDON_ENABLE_DISABLE_HIDDEN_SSID:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_ADDON_PSK_NEGO_FAIL_POPUP:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_ADDON_WPS_TOAST:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_BUGFIX_DISABLED_UNKNOWN_REASON:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_BUGFIX_SETBAND_POLICY:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_BUGFIX_WPS_CONNECTION:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_CHECK_POOR_INTERNET_CONNECTION:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_DHCP_ON_L2ROAMING:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_ENABLED_HIDDEN_SSID:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_IDPASSWD_CONNECTION_REQUEST:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_PERF_AUTH_RETRY_MAX_CHANGE:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_PERF_BLOCK_ALARMMANAGER_SCAN:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_PROCESS_UNKNOWNSTATE_AS_DISABLED:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_REQ_AUTO_RETRY_AFTER_CONNECTION_FAIL:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_REQ_KT_DEBUG_WIFI_STATE:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_REQ_KT_DISCONNECTION_PROPRITY:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_REQ_QUERY_KTCM:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum FEATURE_PS_WIFI_STA_TEST_TISTRP:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

.field public static final enum _FEATURE_PS_WIFI_FEATURE_MAX:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_PROCESS_UNKNOWNSTATE_AS_DISABLED"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_PROCESS_UNKNOWNSTATE_AS_DISABLED:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 93
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_P2P_AUTO_CONNECT_SMARTBEAM"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_P2P_AUTO_CONNECT_SMARTBEAM:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 94
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_REQ_QUERY_KTCM"

    invoke-direct {v0, v1, v5}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_REQ_QUERY_KTCM:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 95
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_ENABLED_HIDDEN_SSID"

    invoke-direct {v0, v1, v6}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_ENABLED_HIDDEN_SSID:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 96
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_IDPASSWD_CONNECTION_REQUEST"

    invoke-direct {v0, v1, v7}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_IDPASSWD_CONNECTION_REQUEST:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 97
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_PERF_BLOCK_ALARMMANAGER_SCAN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_PERF_BLOCK_ALARMMANAGER_SCAN:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 98
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_P2P_PERF_SCAN_STOP_WHILE_SCREEN_OFF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_P2P_PERF_SCAN_STOP_WHILE_SCREEN_OFF:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 99
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_PERF_AUTH_RETRY_MAX_CHANGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_PERF_AUTH_RETRY_MAX_CHANGE:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 100
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_TEST_TISTRP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_TEST_TISTRP:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 101
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_COM_BUGFIX_NULLPOINTER_EXCEPTION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_COM_BUGFIX_NULLPOINTER_EXCEPTION:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 102
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_ADDON_ENABLE_DISABLE_HIDDEN_SSID"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_ADDON_ENABLE_DISABLE_HIDDEN_SSID:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 103
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_ADDON_PSK_NEGO_FAIL_POPUP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_ADDON_PSK_NEGO_FAIL_POPUP:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 104
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_ADDON_EAP_FAIL_POPUP"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_ADDON_EAP_FAIL_POPUP:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 105
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_ADDON_WPS_TOAST"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_ADDON_WPS_TOAST:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 106
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_ADDON_3G_POPUP_DELAY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_ADDON_3G_POPUP_DELAY:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 107
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_DHCP_ON_L2ROAMING"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_DHCP_ON_L2ROAMING:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 108
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_REQ_KT_DEBUG_WIFI_STATE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_REQ_KT_DEBUG_WIFI_STATE:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 109
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_COM_TEST_PRINT_SM_COMMAND"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_COM_TEST_PRINT_SM_COMMAND:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 110
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_REQ_KT_DISCONNECTION_PROPRITY"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_REQ_KT_DISCONNECTION_PROPRITY:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 111
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_CHECK_POOR_INTERNET_CONNECTION"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_CHECK_POOR_INTERNET_CONNECTION:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 112
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_BUGFIX_DISABLED_UNKNOWN_REASON"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_BUGFIX_DISABLED_UNKNOWN_REASON:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 115
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_REQ_AUTO_RETRY_AFTER_CONNECTION_FAIL"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_REQ_AUTO_RETRY_AFTER_CONNECTION_FAIL:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 116
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_BUGFIX_WPS_CONNECTION"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_BUGFIX_WPS_CONNECTION:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 117
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_BUGFIX_SETBAND_POLICY"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_BUGFIX_SETBAND_POLICY:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 118
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "FEATURE_PS_WIFI_STA_ADDON_DHCP_REQUEST_BY_CACHED_IP"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_ADDON_DHCP_REQUEST_BY_CACHED_IP:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 120
    new-instance v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    const-string v1, "_FEATURE_PS_WIFI_FEATURE_MAX"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->_FEATURE_PS_WIFI_FEATURE_MAX:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    .line 90
    const/16 v0, 0x1a

    new-array v0, v0, [Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_PROCESS_UNKNOWNSTATE_AS_DISABLED:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_P2P_AUTO_CONNECT_SMARTBEAM:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_REQ_QUERY_KTCM:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_ENABLED_HIDDEN_SSID:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_IDPASSWD_CONNECTION_REQUEST:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_PERF_BLOCK_ALARMMANAGER_SCAN:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_P2P_PERF_SCAN_STOP_WHILE_SCREEN_OFF:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_PERF_AUTH_RETRY_MAX_CHANGE:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_TEST_TISTRP:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_COM_BUGFIX_NULLPOINTER_EXCEPTION:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_ADDON_ENABLE_DISABLE_HIDDEN_SSID:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_ADDON_PSK_NEGO_FAIL_POPUP:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_ADDON_EAP_FAIL_POPUP:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_ADDON_WPS_TOAST:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_ADDON_3G_POPUP_DELAY:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_DHCP_ON_L2ROAMING:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_REQ_KT_DEBUG_WIFI_STATE:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_COM_TEST_PRINT_SM_COMMAND:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_REQ_KT_DISCONNECTION_PROPRITY:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_CHECK_POOR_INTERNET_CONNECTION:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_BUGFIX_DISABLED_UNKNOWN_REASON:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_REQ_AUTO_RETRY_AFTER_CONNECTION_FAIL:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_BUGFIX_WPS_CONNECTION:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_BUGFIX_SETBAND_POLICY:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_STA_ADDON_DHCP_REQUEST_BY_CACHED_IP:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->_FEATURE_PS_WIFI_FEATURE_MAX:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->$VALUES:[Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiGlobal$PantechWifiFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    const-class v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/WifiGlobal$PantechWifiFeature;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->$VALUES:[Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    invoke-virtual {v0}, [Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    return-object v0
.end method
