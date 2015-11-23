.class Landroid/net/wifi/SupplicantStateTracker;
.super Lcom/android/internal/util/StateMachine;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/SupplicantStateTracker$1;,
        Landroid/net/wifi/SupplicantStateTracker$DormantState;,
        Landroid/net/wifi/SupplicantStateTracker$CompletedState;,
        Landroid/net/wifi/SupplicantStateTracker$HandshakeState;,
        Landroid/net/wifi/SupplicantStateTracker$ScanState;,
        Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;,
        Landroid/net/wifi/SupplicantStateTracker$InactiveState;,
        Landroid/net/wifi/SupplicantStateTracker$UninitializedState;,
        Landroid/net/wifi/SupplicantStateTracker$DefaultState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static MAX_RETRIES_ON_ASSOCIATION_REJECT:I = 0x0

.field private static MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SupplicantStateTracker"


# instance fields
.field private mAssociationRejectCount:I

.field private mAuthFailureInSupplicantBroadcast:Z

.field private mAuthenticationFailuresCount:I

.field private mCompletedState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDisconnectState:Lcom/android/internal/util/State;

.field private mDormantState:Lcom/android/internal/util/State;

.field private mHandshakeState:Lcom/android/internal/util/State;

.field private mInactiveState:Lcom/android/internal/util/State;

.field private mNetworksDisabledDuringConnect:Z

.field private mScanState:Lcom/android/internal/util/State;

.field private mUninitializedState:Lcom/android/internal/util/State;

.field private mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

.field private mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field private mWpsSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x2

    sput v0, Landroid/net/wifi/SupplicantStateTracker;->MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I

    .line 68
    const/16 v0, 0x10

    sput v0, Landroid/net/wifi/SupplicantStateTracker;->MAX_RETRIES_ON_ASSOCIATION_REJECT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfigStore;Landroid/os/Handler;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "wsm"    # Landroid/net/wifi/WifiStateMachine;
    .param p3, "wcs"    # Landroid/net/wifi/WifiConfigStore;
    .param p4, "t"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    const-string v0, "SupplicantStateTracker"

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 51
    iput v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    .line 52
    iput v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    .line 56
    iput-boolean v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    .line 72
    iput-boolean v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 75
    iput-boolean v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mWpsSuccess:Z

    .line 80
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$UninitializedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$UninitializedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    .line 81
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$DefaultState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    .line 82
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$InactiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$InactiveState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    .line 83
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    .line 84
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$ScanState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$ScanState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    .line 85
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    .line 86
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$CompletedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    .line 87
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$DormantState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$DormantState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    .line 92
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 94
    iput-object p3, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    .line 95
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;)V

    .line 96
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 97
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 98
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 99
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 100
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 101
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 102
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 104
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/SupplicantStateTracker;->setInitialState(Lcom/android/internal/util/State;)V

    .line 105
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Landroid/net/wifi/SupplicantStateTracker;->setLogRecSize(I)V

    .line 106
    invoke-virtual {p0, v3}, Landroid/net/wifi/SupplicantStateTracker;->setLogOnlyTransitions(Z)V

    .line 108
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_OTHERS:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v0, v1, :cond_1

    .line 112
    :cond_0
    const/4 v0, 0x2

    sput v0, Landroid/net/wifi/SupplicantStateTracker;->MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I

    .line 121
    :goto_0
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantStateTracker;->start()V

    .line 122
    return-void

    .line 117
    :cond_1
    sput v3, Landroid/net/wifi/SupplicantStateTracker;->MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;

    .prologue
    .line 44
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return v0
.end method

.method static synthetic access$002(Landroid/net/wifi/SupplicantStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return p1
.end method

.method static synthetic access$008(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;

    .prologue
    .line 44
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return v0
.end method

.method static synthetic access$100(Landroid/net/wifi/SupplicantStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;

    .prologue
    .line 44
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 44
    sget v0, Landroid/net/wifi/SupplicantStateTracker;->MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I

    return v0
.end method

.method static synthetic access$102(Landroid/net/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/SupplicantStateTracker;II)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/wifi/SupplicantStateTracker;)Landroid/net/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 44
    sget v0, Landroid/net/wifi/SupplicantStateTracker;->MAX_RETRIES_ON_ASSOCIATION_REJECT:I

    return v0
.end method

.method static synthetic access$1400(Landroid/net/wifi/SupplicantStateTracker;)Landroid/net/wifi/WifiConfigStore;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/net/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Landroid/net/wifi/SupplicantState;
    .param p2, "x2"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/StateChangeResult;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Landroid/net/wifi/StateChangeResult;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Landroid/net/wifi/StateChangeResult;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/net/wifi/SupplicantStateTrackerInjector;->handleNetworkConnectionFailure(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/SupplicantStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;

    .prologue
    .line 44
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return v0
.end method

.method static synthetic access$602(Landroid/net/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return p1
.end method

.method static synthetic access$700(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;

    .prologue
    .line 44
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    return v0
.end method

.method static synthetic access$702(Landroid/net/wifi/SupplicantStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    return p1
.end method

.method static synthetic access$708(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;

    .prologue
    .line 44
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    return v0
.end method

.method static synthetic access$800(Landroid/net/wifi/SupplicantStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;

    .prologue
    .line 44
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWpsSuccess:Z

    return v0
.end method

.method static synthetic access$802(Landroid/net/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mWpsSuccess:Z

    return p1
.end method

.method static synthetic access$900(Landroid/net/wifi/SupplicantStateTracker;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/SupplicantStateTracker;

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantStateTracker;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private handleNetworkConnectionFailure(II)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "disableReason"    # I

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 142
    :cond_0
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_KT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v0, v1, :cond_2

    .line 145
    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    .line 146
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfigStore;->notifyAuthFailure(I)V

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_LGU:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq v0, v1, :cond_3

    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_SKT:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-eq v0, v1, :cond_3

    invoke-static {}, Landroid/net/wifi/WifiGlobal;->getVendor()Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/WifiGlobal$PantechWifiVendor;->VENDOR_OTHERS:Landroid/net/wifi/WifiGlobal$PantechWifiVendor;

    if-ne v0, v1, :cond_1

    .line 155
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    goto :goto_0
.end method

.method private sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    .locals 3
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;
    .param p2, "failedAuth"    # Z

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    const-string/jumbo v1, "newState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    if-eqz p2, :cond_0

    .line 206
    const-string/jumbo v1, "supplicantError"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 211
    return-void
.end method

.method private transitionOnSupplicantStateChange(Landroid/net/wifi/StateChangeResult;)V
    .locals 4
    .param p1, "stateChangeResult"    # Landroid/net/wifi/StateChangeResult;

    .prologue
    .line 160
    iget-object v0, p1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 164
    .local v0, "supState":Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantStateTracker$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 195
    const-string v1, "SupplicantStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown supplicant state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    :pswitch_0
    return-void

    .line 166
    :pswitch_1
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 179
    :pswitch_3
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 182
    :pswitch_4
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 185
    :pswitch_5
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 188
    :pswitch_6
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 192
    :pswitch_7
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 440
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAuthenticationFailuresCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAuthFailureInSupplicantBroadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworksDisabledDuringConnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 445
    return-void
.end method
