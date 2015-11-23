.class public final Landroid/view/alwaysontop/AlwaysOnTopManager;
.super Ljava/lang/Object;
.source "AlwaysOnTopManager.java"


# static fields
.field public static final CAMERA_READY:I = 0x1

.field public static final CAMERA_RUNNING:I = 0x2

.field public static final CAMERA_STOP:I = 0x0

.field public static final EVENT_RUNNING:I = 0x1

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AlwaysOnTopManager"

.field public static final TYPE_CAMERA:I = 0x1

.field public static final TYPE_PLAYER:I = 0x0

.field public static final TYPE_VIDEOEDITOR:I = 0x3

.field public static final TYPE_WFD:I = 0x2

.field private static final mExceptionPackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static mInstance:Landroid/view/alwaysontop/AlwaysOnTopManager;

.field static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field final mService:Landroid/view/alwaysontop/IAlwaysOnTop;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mInstanceSync:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mExceptionPackage:Ljava/util/HashMap;

    .line 65
    sget-object v0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mExceptionPackage:Ljava/util/HashMap;

    const-string v1, "com.android.videoeditor"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mExceptionPackage:Ljava/util/HashMap;

    const-string v1, "com.google.android.videoeditor"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/view/alwaysontop/IAlwaysOnTop;)V
    .locals 1
    .param p1, "service"    # Landroid/view/alwaysontop/IAlwaysOnTop;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    .line 71
    sget-object v0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mInstance:Landroid/view/alwaysontop/AlwaysOnTopManager;

    if-nez v0, :cond_0

    .line 72
    sput-object p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mInstance:Landroid/view/alwaysontop/AlwaysOnTopManager;

    .line 74
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/alwaysontop/AlwaysOnTopManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/alwaysontop/AlwaysOnTopManager;->getInstance(Landroid/os/Looper;)Landroid/view/alwaysontop/AlwaysOnTopManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/os/Looper;)Landroid/view/alwaysontop/AlwaysOnTopManager;
    .locals 4
    .param p0, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 91
    sget-object v3, Landroid/view/alwaysontop/AlwaysOnTopManager;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v3

    .line 92
    :try_start_0
    sget-object v2, Landroid/view/alwaysontop/AlwaysOnTopManager;->mInstance:Landroid/view/alwaysontop/AlwaysOnTopManager;

    if-eqz v2, :cond_0

    .line 93
    sget-object v2, Landroid/view/alwaysontop/AlwaysOnTopManager;->mInstance:Landroid/view/alwaysontop/AlwaysOnTopManager;

    monitor-exit v3

    .line 99
    :goto_0
    return-object v2

    .line 95
    :cond_0
    const-string v2, "alwaysontop"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 96
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/alwaysontop/IAlwaysOnTop;

    move-result-object v1

    .line 97
    .local v1, "service":Landroid/view/alwaysontop/IAlwaysOnTop;
    new-instance v2, Landroid/view/alwaysontop/AlwaysOnTopManager;

    invoke-direct {v2, v1}, Landroid/view/alwaysontop/AlwaysOnTopManager;-><init>(Landroid/view/alwaysontop/IAlwaysOnTop;)V

    sput-object v2, Landroid/view/alwaysontop/AlwaysOnTopManager;->mInstance:Landroid/view/alwaysontop/AlwaysOnTopManager;

    .line 98
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    sget-object v2, Landroid/view/alwaysontop/AlwaysOnTopManager;->mInstance:Landroid/view/alwaysontop/AlwaysOnTopManager;

    goto :goto_0

    .line 98
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "service":Landroid/view/alwaysontop/IAlwaysOnTop;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static isExceptionPackage(Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 267
    sget-object v1, Landroid/view/alwaysontop/AlwaysOnTopManager;->mExceptionPackage:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 268
    .local v0, "info":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 269
    const/4 v1, 0x0

    .line 271
    :goto_0
    return v1

    .line 270
    :cond_0
    const-string v1, "AlwaysOnTopManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExceptionPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getAlwaysOnTopList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1}, Landroid/view/alwaysontop/IAlwaysOnTop;->getAlwaysOnTopList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEnabledAlwaysOnTopList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1}, Landroid/view/alwaysontop/IAlwaysOnTop;->getEnabledAlwaysOnTopList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMediaApp()Z
    .locals 2

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1}, Landroid/view/alwaysontop/IAlwaysOnTop;->getMediaApp()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hideAlwaysOnTop(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 199
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1, p1}, Landroid/view/alwaysontop/IAlwaysOnTop;->hideAlwaysOnTop(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAlwaysOnTopRunning()Z
    .locals 2

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1}, Landroid/view/alwaysontop/IAlwaysOnTop;->isAlwaysOnTopRunning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAlwaysOnTopRunning(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1, p1}, Landroid/view/alwaysontop/IAlwaysOnTop;->isAlwaysOnTopRunningID(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isCameraRunning()I
    .locals 2

    .prologue
    .line 279
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1}, Landroid/view/alwaysontop/IAlwaysOnTop;->isCameraRunning()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isMediaRunning(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 236
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1, p1}, Landroid/view/alwaysontop/IAlwaysOnTop;->isMediaRunning(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public moveAOTFrame()V
    .locals 2

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1}, Landroid/view/alwaysontop/IAlwaysOnTop;->moveAOTFrame()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public restoreState(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1, p1}, Landroid/view/alwaysontop/IAlwaysOnTop;->restoreState(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public saveState(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1, p1}, Landroid/view/alwaysontop/IAlwaysOnTop;->saveState(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendCallEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 319
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1, p1}, Landroid/view/alwaysontop/IAlwaysOnTop;->sendCallEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendMediaStateEvent(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "state"    # I

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1, p1, p2}, Landroid/view/alwaysontop/IAlwaysOnTop;->sendMediaStateEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMediaApp(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1, p1}, Landroid/view/alwaysontop/IAlwaysOnTop;->setMediaApp(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setShowOnList(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 288
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1, p1, p2}, Landroid/view/alwaysontop/IAlwaysOnTop;->setShowOnList(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showAlwaysOnTop()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public showAlwaysOnTopPicker()V
    .locals 2

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1}, Landroid/view/alwaysontop/IAlwaysOnTop;->showAlwaysOnTopPicker()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public skipAOTWindow()V
    .locals 2

    .prologue
    .line 260
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1}, Landroid/view/alwaysontop/IAlwaysOnTop;->skipAOTWindow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startAlwaysOnTop(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1, p1}, Landroid/view/alwaysontop/IAlwaysOnTop;->startAlwaysOnTop(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startAlwaysOnTopEx(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1, p1, p2}, Landroid/view/alwaysontop/IAlwaysOnTop;->startAlwaysOnTopEx(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopAlwaysOnTop()Z
    .locals 2

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1}, Landroid/view/alwaysontop/IAlwaysOnTop;->stopAllAlwaysOnTop()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopAlwaysOnTop(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1, p1}, Landroid/view/alwaysontop/IAlwaysOnTop;->stopAlwaysOnTop(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visibleAOTFrame(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 307
    :try_start_0
    iget-object v1, p0, Landroid/view/alwaysontop/AlwaysOnTopManager;->mService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1, p1}, Landroid/view/alwaysontop/IAlwaysOnTop;->visibleAOTFrame(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
