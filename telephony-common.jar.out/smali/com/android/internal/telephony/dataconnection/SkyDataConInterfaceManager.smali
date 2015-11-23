.class public Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;
.super Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;
.source "SkyDataConInterfaceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SkyDataConInterfaceManager"


# instance fields
.field private mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 1
    .param p1, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/ISkyDataConnection$Stub;-><init>()V

    .line 32
    new-instance v0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager$1;-><init>(Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 45
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->publish()V

    .line 46
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v0, "SkyDataConInterfaceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method private publish()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "iskydataconnection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    const-string v0, "add iskydataconnection"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->log(Ljava/lang/String;)V

    .line 52
    const-string v0, "iskydataconnection"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public checkPSRejectState()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->checkPSRejectState()V

    .line 93
    return-void
.end method

.method public getDataConnectionMode()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getSocketDataEnableSKT()Z

    move-result v0

    return v0
.end method

.method public getDataConnectivityPopup()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataConnectivityPopup()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 4

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v0

    .line 85
    .local v0, "isRoam":Z
    const-string v1, "SkyDataConInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SkyDataConInterfaceManager] getDataRoamingEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v0
.end method

.method public getLteRoamingMode()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLteRoamingMode()Z

    move-result v0

    return v0
.end method

.method public getPolicyDataEnabled()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPolicyDataEnabled()Z

    move-result v0

    return v0
.end method

.method public getSKTSimCheck()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getSKTSimCheck()Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming()Z
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 80
    .local v0, "isRoam":Z
    const-string v1, "SkyDataConInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SkyDataConInterfaceManager] isNetworkRoaming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v0
.end method

.method public resetDataOnRoaming()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->resetDataOnRoaming()V

    .line 136
    return-void
.end method

.method public resumeDataCall()Z
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setDataConnectionMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataConnectionMode(Z)V

    .line 60
    return-void
.end method

.method public setDataConnectivityPopup(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataConnectivityPopup(Z)V

    .line 70
    return-void
.end method

.method public setDataOnRoamingEnabledUI(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataOnRoamingEnabledUI(Z)V

    .line 132
    return-void
.end method

.method public setDataRoamingEnable(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 141
    const-string v0, "SkyDataConInterfaceManager"

    const-string v1, "setDataRoamingEnable() : should not see this, SKT!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public setLteRoamingMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setLteRoamingMode(Z)V

    .line 128
    return-void
.end method

.method public suspendDataCall()Z
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/SkyDataConInterfaceManager;->mDCT:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    move-result v0

    return v0
.end method
