.class public Lcom/pantech/framework/ims/util/impl/ImsInterfaceImpl;
.super Ljava/lang/Object;
.source "ImsInterfaceImpl.java"

# interfaces
.implements Lcom/pantech/framework/ims/util/ImsInterface;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsInterfaceImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IMSRegiState()Z
    .locals 5

    .prologue
    .line 15
    const/4 v2, 0x0

    .line 16
    .local v2, "ret":Z
    const-string v3, "imsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/framework/ims/util/IImsServiceInterface;

    move-result-object v1

    .line 18
    .local v1, "ims":Lcom/pantech/framework/ims/util/IImsServiceInterface;
    if-eqz v1, :cond_0

    .line 19
    :try_start_0
    invoke-interface {v1}, Lcom/pantech/framework/ims/util/IImsServiceInterface;->IMSRegiState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 24
    :cond_0
    :goto_0
    return v2

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ImsInterfaceImpl"

    const-string v4, "IMSRegiState RemoteException!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SIPRegiState()Ljava/lang/String;
    .locals 6

    .prologue
    .line 139
    const-string v2, "false"

    .line 140
    .local v2, "ret":Ljava/lang/String;
    const-string v3, "imsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/framework/ims/util/IImsServiceInterface;

    move-result-object v1

    .line 143
    .local v1, "ims":Lcom/pantech/framework/ims/util/IImsServiceInterface;
    if-eqz v1, :cond_0

    .line 144
    :try_start_0
    invoke-interface {v1}, Lcom/pantech/framework/ims/util/IImsServiceInterface;->SIPRegiState()Ljava/lang/String;

    move-result-object v2

    .line 145
    :cond_0
    const-string v3, "ImsInterfaceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIPRegiState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-object v2

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ImsInterfaceImpl"

    const-string v4, "SIPRegiState RemoteException!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAPCSConfig()Ljava/lang/String;
    .locals 6

    .prologue
    .line 83
    const-string v2, "false"

    .line 84
    .local v2, "ret":Ljava/lang/String;
    const-string v3, "imsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/framework/ims/util/IImsServiceInterface;

    move-result-object v1

    .line 87
    .local v1, "ims":Lcom/pantech/framework/ims/util/IImsServiceInterface;
    if-eqz v1, :cond_0

    .line 88
    :try_start_0
    invoke-interface {v1}, Lcom/pantech/framework/ims/util/IImsServiceInterface;->getAPCSConfig()Ljava/lang/String;

    move-result-object v2

    .line 89
    :cond_0
    const-string v3, "ImsInterfaceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAPCSConfig = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-object v2

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ImsInterfaceImpl"

    const-string v4, "getAPCSConfig RemoteException!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDOWNCallInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 125
    const-string v2, "false"

    .line 126
    .local v2, "ret":Ljava/lang/String;
    const-string v3, "imsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/framework/ims/util/IImsServiceInterface;

    move-result-object v1

    .line 129
    .local v1, "ims":Lcom/pantech/framework/ims/util/IImsServiceInterface;
    if-eqz v1, :cond_0

    .line 130
    :try_start_0
    invoke-interface {v1}, Lcom/pantech/framework/ims/util/IImsServiceInterface;->getDOWNCallInfo()Ljava/lang/String;

    move-result-object v2

    .line 131
    :cond_0
    const-string v3, "ImsInterfaceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDOWNCallInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-object v2

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ImsInterfaceImpl"

    const-string v4, "getDOWNCallInfo RemoteException!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 97
    const-string v2, "false"

    .line 98
    .local v2, "ret":Ljava/lang/String;
    const-string v3, "imsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/framework/ims/util/IImsServiceInterface;

    move-result-object v1

    .line 101
    .local v1, "ims":Lcom/pantech/framework/ims/util/IImsServiceInterface;
    if-eqz v1, :cond_0

    .line 102
    :try_start_0
    invoke-interface {v1}, Lcom/pantech/framework/ims/util/IImsServiceInterface;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    .line 103
    :cond_0
    const-string v3, "ImsInterfaceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getErrorCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-object v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ImsInterfaceImpl"

    const-string v4, "getErrorCode RemoteException!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRegiEvTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 69
    const-string v2, "false"

    .line 70
    .local v2, "ret":Ljava/lang/String;
    const-string v3, "imsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/framework/ims/util/IImsServiceInterface;

    move-result-object v1

    .line 73
    .local v1, "ims":Lcom/pantech/framework/ims/util/IImsServiceInterface;
    if-eqz v1, :cond_0

    .line 74
    :try_start_0
    invoke-interface {v1}, Lcom/pantech/framework/ims/util/IImsServiceInterface;->getRegiEvTime()Ljava/lang/String;

    move-result-object v2

    .line 75
    :cond_0
    const-string v3, "ImsInterfaceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRegiEvTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ImsInterfaceImpl"

    const-string v4, "getRegiEvTime RemoteException!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUPCallInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 111
    const-string v2, "false"

    .line 112
    .local v2, "ret":Ljava/lang/String;
    const-string v3, "imsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/framework/ims/util/IImsServiceInterface;

    move-result-object v1

    .line 115
    .local v1, "ims":Lcom/pantech/framework/ims/util/IImsServiceInterface;
    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    invoke-interface {v1}, Lcom/pantech/framework/ims/util/IImsServiceInterface;->getUPCallInfo()Ljava/lang/String;

    move-result-object v2

    .line 117
    :cond_0
    const-string v3, "ImsInterfaceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUPCallInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-object v2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ImsInterfaceImpl"

    const-string v4, "getUPCallInfo RemoteException!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVoLTEStatus()Ljava/lang/String;
    .locals 6

    .prologue
    .line 55
    const-string v2, "false"

    .line 56
    .local v2, "ret":Ljava/lang/String;
    const-string v3, "imsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/framework/ims/util/IImsServiceInterface;

    move-result-object v1

    .line 59
    .local v1, "ims":Lcom/pantech/framework/ims/util/IImsServiceInterface;
    if-eqz v1, :cond_0

    .line 60
    :try_start_0
    invoke-interface {v1}, Lcom/pantech/framework/ims/util/IImsServiceInterface;->getVoLTEStatus()Ljava/lang/String;

    move-result-object v2

    .line 61
    :cond_0
    const-string v3, "ImsInterfaceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVoLTEStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-object v2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ImsInterfaceImpl"

    const-string v4, "getVoLTEStatus RemoteException!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 6

    .prologue
    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, "ret":Z
    const-string v3, "imsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/framework/ims/util/IImsServiceInterface;

    move-result-object v1

    .line 45
    .local v1, "ims":Lcom/pantech/framework/ims/util/IImsServiceInterface;
    if-eqz v1, :cond_0

    .line 46
    :try_start_0
    invoke-interface {v1}, Lcom/pantech/framework/ims/util/IImsServiceInterface;->isIdle()Z

    move-result v2

    .line 47
    :cond_0
    const-string v3, "ImsInterfaceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIdle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return v2

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ImsInterfaceImpl"

    const-string v4, "isIdle RemoteException!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregister()I
    .locals 5

    .prologue
    .line 28
    const/4 v2, -0x1

    .line 29
    .local v2, "ret":I
    const-string v3, "imsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/framework/ims/util/IImsServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/framework/ims/util/IImsServiceInterface;

    move-result-object v1

    .line 31
    .local v1, "ims":Lcom/pantech/framework/ims/util/IImsServiceInterface;
    if-eqz v1, :cond_0

    .line 32
    :try_start_0
    invoke-interface {v1}, Lcom/pantech/framework/ims/util/IImsServiceInterface;->unregister()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 37
    :cond_0
    :goto_0
    return v2

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ImsInterfaceImpl"

    const-string v4, "unregister RemoteException!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
