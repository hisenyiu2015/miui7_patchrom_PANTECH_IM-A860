.class public Landroid/net/wifi/p2p/WifiP2pService;
.super Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pService$1;,
        Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x23000

.field public static final BLOCK_DISCOVERY:I = 0x2300f

.field private static ConnectingPeerDeviceAddress:Ljava/lang/String; = null

.field private static final DBG:Z = false

.field private static final DHCP_RANGE:[Ljava/lang/String;

.field public static final DISABLED:I = 0x0

.field public static final DISABLE_P2P_TIMED_OUT:I = 0x23006

.field private static final DISABLE_P2P_WAIT_TIME_MS:I = 0x1388

.field public static final DISCONNECT_WIFI_REQUEST:I = 0x2300c

.field public static final DISCONNECT_WIFI_RESPONSE:I = 0x2300d

.field private static final DISCOVER_TIMEOUT_S:I = 0x78

.field private static final DROP_WIFI_USER_ACCEPT:I = 0x23004

.field private static final DROP_WIFI_USER_REJECT:I = 0x23005

.field public static final ENABLED:I = 0x1

.field private static final FORM_GROUP:Ljava/lang/Boolean;

.field public static final GROUP_CREATING_TIMED_OUT:I = 0x23001

.field private static final GROUP_CREATING_WAIT_TIME_MS:I = 0xea60

.field private static final GROUP_IDLE_TIME_S:I = 0xa

.field private static final JOIN_GROUP:Ljava/lang/Boolean;

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field private static final NO_RELOAD:Ljava/lang/Boolean;

.field public static final P2P_CONNECTION_CHANGED:I = 0x2300b

.field private static final PEER_CONNECTION_USER_ACCEPT:I = 0x23002

.field private static final PEER_CONNECTION_USER_REJECT:I = 0x23003

.field private static final RELOAD:Ljava/lang/Boolean;

.field private static final REMOCON_CAMERA_BROADCAST:Ljava/lang/String; = "Remocon_Camera_Broadcast"

.field private static final REMOCON_WFD_CONNECTION_CONNECT:Ljava/lang/String; = "Remocon_WFD_Connection_Connect"

.field private static final REMOCON_WFD_CONNECTION_CONNECTED:Ljava/lang/String; = "Remocon_WFD_Connection_Connected"

.field private static final REMOCON_WFD_CONNECTION_DEVICE_LOST:Ljava/lang/String; = "Remocon_WFD_Connection_Device_Lost"

.field private static final REMOCON_WFD_CONNECTION_DISCONNECTED:Ljava/lang/String; = "Remocon_WFD_Connection_Disconnected"

.field private static final REMOCON_WFD_CONNECTION_REQ:Ljava/lang/String; = "Remocon_WFD_Connection_Req"

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "192.168.49.1"

.field public static final SET_COUNTRY_CODE:I = 0x23010

.field public static final SET_MIRACAST_MODE:I = 0x2300e

.field private static final TAG:Ljava/lang/String; = "WifiP2pService"

.field private static flag_p2p_connected:Z

.field private static mDisableP2pTimeoutIndex:I

.field private static mGroupCreatingTimeoutIndex:I

.field private static num_of_try_p2p_request_peers:I

.field private static setted_device_status:Z


# instance fields
.field private is_in_cat_test:I

.field private mAutonomousGroup:Z

.field private mClientInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDiscoveryBlocked:Z

.field private mDiscoveryPostponed:Z

.field private mDiscoveryStarted:Z

.field private mInterface:Ljava/lang/String;

.field private mIsInvite:Z

.field private mJoinExistingGroup:Z

.field private mLastSetCountryCode:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

.field private final mP2pSupported:Z

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mServiceDiscReqId:Ljava/lang/String;

.field private mServiceTransactionId:B

.field private mTempoarilyDisconnectedWifi:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->JOIN_GROUP:Ljava/lang/Boolean;

    .line 146
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->FORM_GROUP:Ljava/lang/Boolean;

    .line 148
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->RELOAD:Ljava/lang/Boolean;

    .line 149
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->NO_RELOAD:Ljava/lang/Boolean;

    .line 157
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    .line 160
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    .line 269
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.49.2"

    aput-object v1, v0, v2

    const-string v1, "192.168.49.254"

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    .line 366
    sput-boolean v2, Landroid/net/wifi/p2p/WifiP2pService;->flag_p2p_connected:Z

    .line 367
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->num_of_try_p2p_request_peers:I

    .line 368
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->ConnectingPeerDeviceAddress:Ljava/lang/String;

    .line 372
    sput-boolean v2, Landroid/net/wifi/p2p/WifiP2pService;->setted_device_status:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 375
    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;-><init>()V

    .line 142
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 219
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 229
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mIsInvite:Z

    .line 247
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z

    .line 251
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    .line 254
    iput-byte v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    .line 261
    iput v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->is_in_cat_test:I

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDialog:Landroid/app/AlertDialog;

    .line 377
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    .line 382
    const-string/jumbo v0, "p2p0"

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    .line 383
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0xd

    const-string v2, "WIFI_P2P"

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 385
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    .line 388
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 391
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v1, "WifiP2pService"

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    invoke-direct {v0, p0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .line 392
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->start()V

    .line 393
    sget-object v0, Landroid/net/wifi/WifiGlobal$PantechWifiFeature;->FEATURE_PS_WIFI_COM_TEST_PRINT_SM_COMMAND:Landroid/net/wifi/WifiGlobal$PantechWifiFeature;

    invoke-static {v0}, Landroid/net/wifi/WifiGlobal;->checkFeature(Landroid/net/wifi/WifiGlobal$PantechWifiFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->enableWiFiDbgMsg()V

    .line 396
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11300(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    return v0
.end method

.method static synthetic access$11302(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    return p1
.end method

.method static synthetic access$11700()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pService;->flag_p2p_connected:Z

    return v0
.end method

.method static synthetic access$11702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 129
    sput-boolean p0, Landroid/net/wifi/p2p/WifiP2pService;->flag_p2p_connected:Z

    return p0
.end method

.method static synthetic access$11800()I
    .locals 1

    .prologue
    .line 129
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->num_of_try_p2p_request_peers:I

    return v0
.end method

.method static synthetic access$11802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 129
    sput p0, Landroid/net/wifi/p2p/WifiP2pService;->num_of_try_p2p_request_peers:I

    return p0
.end method

.method static synthetic access$1304()I
    .locals 1

    .prologue
    .line 129
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$13500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13600()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->FORM_GROUP:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$13900()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$14000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$14100(Landroid/net/wifi/p2p/WifiP2pService;)B
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$14102(Landroid/net/wifi/p2p/WifiP2pService;B)B
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # B

    .prologue
    .line 129
    iput-byte p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return p1
.end method

.method static synthetic access$14104(Landroid/net/wifi/p2p/WifiP2pService;)B
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$14200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    return-object v0
.end method

.method static synthetic access$14300(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 129
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$1704()I
    .locals 1

    .prologue
    .line 129
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 129
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$3700(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    return v0
.end method

.method static synthetic access$3702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    return p1
.end method

.method static synthetic access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$4400()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pService;->setted_device_status:Z

    return v0
.end method

.method static synthetic access$4402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 129
    sput-boolean p0, Landroid/net/wifi/p2p/WifiP2pService;->setted_device_status:Z

    return p0
.end method

.method static synthetic access$4500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->ConnectingPeerDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 129
    sput-object p0, Landroid/net/wifi/p2p/WifiP2pService;->ConnectingPeerDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z

    return v0
.end method

.method static synthetic access$502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z

    return p1
.end method

.method static synthetic access$5300(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLastSetCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5302(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLastSetCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5500(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->is_in_cat_test:I

    return v0
.end method

.method static synthetic access$5502(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # I

    .prologue
    .line 129
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->is_in_cat_test:I

    return p1
.end method

.method static synthetic access$5700(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    return v0
.end method

.method static synthetic access$5702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    return p1
.end method

.method static synthetic access$600(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z

    return v0
.end method

.method static synthetic access$602(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z

    return p1
.end method

.method static synthetic access$6300(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6302(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z

    return p1
.end method

.method static synthetic access$6800(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mIsInvite:Z

    return v0
.end method

.method static synthetic access$6802(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mIsInvite:Z

    return p1
.end method

.method static synthetic access$7800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$7802(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 129
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$9500()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->NO_RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$9800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$9802(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 129
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void
.end method


# virtual methods
.method public connectivityServiceReady()V
    .locals 2

    .prologue
    .line 399
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 400
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    .line 401
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 445
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiP2pService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutonomousGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mJoinExistingGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDiscoveryStarted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTempoarilyDisconnectedWifi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mServiceDiscReqId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 424
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceAccessPermission()V

    .line 425
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceChangePermission()V

    .line 426
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public setMiracastMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 439
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceConnectivityInternalPermission()V

    .line 440
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x2300e

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(II)V

    .line 441
    return-void
.end method
