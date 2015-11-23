.class public Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManagerProxy;
.super Lcom/android/internal/telephony/ISkyIccPhoneBook$Stub;
.source "SkyIccPhoneBookInterfaceManagerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SkyIccPhoneBookInterfaceManagerProxy"


# instance fields
.field private mSkyIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;)V
    .locals 3
    .param p1, "skyIccPhoneBookInterfaceManager"    # Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/telephony/ISkyIccPhoneBook$Stub;-><init>()V

    .line 33
    const-string v0, "SkyIccPhoneBookInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkyIccPhoneBookInterfaceManagerProxy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManagerProxy;->mSkyIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    .line 36
    const-string v0, "skyusimphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    const-string v0, "skyusimphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 38
    const-string v0, "SkyIccPhoneBookInterfaceManagerProxy"

    const-string v1, "addService \"skyusimphonebook\""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public fw_qmi_sky(IIII[B)[B
    .locals 6
    .param p1, "func"    # I
    .param p2, "data1"    # I
    .param p3, "data2"    # I
    .param p4, "data3"    # I
    .param p5, "bytedata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    packed-switch p1, :pswitch_data_0

    .line 95
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManagerProxy;->mSkyIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->fw_qmi_sky(IIII[B)[B

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManagerProxy;->mSkyIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->fw_qmi_sky(IIII[B)[B

    move-result-object v0

    goto :goto_0

    .line 74
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManagerProxy;->mSkyIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->fw_qmi_sky(IIII[B)[B

    move-result-object v0

    goto :goto_0

    .line 77
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManagerProxy;->mSkyIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->fw_qmi_sky(IIII[B)[B

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManagerProxy;->mSkyIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->fw_qmi_sky(IIII[B)[B

    move-result-object v0

    goto :goto_0

    .line 83
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManagerProxy;->mSkyIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->fw_qmi_sky(IIII[B)[B

    move-result-object v0

    goto :goto_0

    .line 86
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManagerProxy;->mSkyIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->fw_qmi_sky(IIII[B)[B

    move-result-object v0

    goto :goto_0

    .line 89
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManagerProxy;->mSkyIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->fw_qmi_sky(IIII[B)[B

    move-result-object v0

    goto :goto_0

    .line 92
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManagerProxy;->mSkyIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->fw_qmi_sky(IIII[B)[B

    move-result-object v0

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getLoadState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManagerProxy;->mSkyIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->getLoadState()I

    move-result v0

    return v0
.end method

.method public getPbrInfo()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManagerProxy;->mSkyIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->getPbrInfo()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLoadState(I)V
    .locals 1
    .param p1, "loadState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManagerProxy;->mSkyIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->setLoadState(I)V

    .line 54
    return-void
.end method

.method public setPbrInfo([Ljava/lang/String;)V
    .locals 1
    .param p1, "pbrInfo"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManagerProxy;->mSkyIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->setPbrInfo([Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setmSkyIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;)V
    .locals 2
    .param p1, "skyIccPhoneBookInterfaceManager"    # Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManagerProxy;->mSkyIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    .line 45
    const-string v0, "SkyIccPhoneBookInterfaceManagerProxy"

    const-string v1, "setmSkyIccPhoneBookInterfaceManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method
