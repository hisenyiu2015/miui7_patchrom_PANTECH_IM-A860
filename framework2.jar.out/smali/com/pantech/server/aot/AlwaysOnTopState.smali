.class public Lcom/pantech/server/aot/AlwaysOnTopState;
.super Ljava/lang/Object;
.source "AlwaysOnTopState.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final AOT_STATE_NONE:I = 0x0

.field public static final AOT_STATE_RUNNING:I = 0x1

.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "AlwaysOnTopState"


# instance fields
.field mAlwaysOnTopBundle:Landroid/os/Bundle;

.field mAlwaysOnTopId:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

.field mCurIntent:Landroid/content/Intent;

.field mCurToken:Landroid/os/IBinder;

.field private mFlipValue:Z

.field mHaveConnection:Z

.field final mInfo:Landroid/view/alwaysontop/AlwaysOnTopInfo;

.field mLastBindTime:J

.field final mService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

.field mState:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/pantech/server/aot/AlwaysOnTopManagerService;Ljava/lang/String;Landroid/os/Bundle;Landroid/view/alwaysontop/AlwaysOnTopInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "info"    # Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mState:I

    .line 52
    iput-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mFlipValue:Z

    .line 58
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .line 60
    iput-object p3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopBundle:Landroid/os/Bundle;

    .line 62
    iput-object p5, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mInfo:Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 63
    return-void
.end method


# virtual methods
.method public getAOTState()I
    .locals 3

    .prologue
    .line 359
    const-string v0, "AlwaysOnTopState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAOTState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mState:I

    return v0
.end method

.method public getAotAppBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public isRunning()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 274
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 275
    const-string v1, "AlwaysOnTopState"

    const-string v2, "AOT id is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_0
    return v0

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    monitor-enter v1

    .line 280
    :try_start_0
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    if-eqz v2, :cond_1

    .line 281
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 283
    :cond_1
    :try_start_1
    const-string v2, "AlwaysOnTopState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRunning() not running:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    if-eqz v0, :cond_0

    .line 407
    const/4 v0, 0x1

    .line 409
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveAOTFrame()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 367
    const-string v0, "AlwaysOnTopState"

    const-string v1, "AOT id is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    monitor-enter v1

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    invoke-interface {v0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface;->moveAOTFrame()V

    .line 377
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 375
    :cond_1
    :try_start_1
    const-string v0, "AlwaysOnTopState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveAOTFrame() mCurAot is Null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 68
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 69
    const-string v2, "AlwaysOnTopState"

    const-string v3, "AOT id is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    monitor-enter v3

    .line 75
    :try_start_0
    const-string v2, "AlwaysOnTopState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Component name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Intent Component name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    invoke-static {p2}, Landroid/alwaysontopservice/IAlwaysOnTopInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    .line 79
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurToken:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 80
    const-string v2, "AlwaysOnTopState"

    const-string v4, "Service connected without a token!"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopState;->unbindAlwaysOnTopLocked()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "AlwaysOnTopState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected() Fail unbindAlwaysOnTopLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 90
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "AlwaysOnTopState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initiating attach with token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v5, v5, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v6, 0x424

    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 94
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-boolean v2, v2, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v2, v2, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 95
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v2, v2, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 97
    .local v1, "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    const-string v2, "AlwaysOnTopState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected():restoreState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    if-eqz v1, :cond_2

    .line 101
    :try_start_4
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopState;->restoreState()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    :goto_2
    :try_start_5
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v2, v2, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    .end local v1    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    :cond_2
    :try_start_6
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopState;->showAlwaysOnTop()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 114
    :cond_3
    :goto_3
    :try_start_7
    monitor-exit v3

    goto/16 :goto_0

    .line 102
    .restart local v1    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catch_1
    move-exception v0

    .line 103
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "AlwaysOnTopState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected() Fail restoreState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catch_2
    move-exception v0

    .line 111
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "AlwaysOnTopState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected() Fail showAlwaysOnTop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 119
    const-string v1, "AlwaysOnTopState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCurIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopState;->unbindAlwaysOnTopLocked()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 125
    const-string v1, "AlwaysOnTopState"

    const-string v2, "unbindAlwaysOnTopLocked!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopState;->unbindAlwaysOnTopLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AlwaysOnTopState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceDisconnected() Fail unbindAlwaysOnTopLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public restoreState()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 321
    const-string v0, "AlwaysOnTopState"

    const-string v1, "AOT id is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    invoke-interface {v0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface;->restoreState()V

    .line 331
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 329
    :cond_1
    :try_start_1
    const-string v0, "AlwaysOnTopState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreState() mCurAot is Null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public saveState()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 336
    const-string v0, "AlwaysOnTopState"

    const-string v1, "AOT id is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    monitor-enter v1

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    invoke-interface {v0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface;->saveState()V

    .line 346
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 344
    :cond_1
    :try_start_1
    const-string v0, "AlwaysOnTopState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveState() mCurAot is Null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public sendMediaStateEvent(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 291
    const-string v0, "AlwaysOnTopState"

    const-string v1, "AOT id is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    invoke-interface {v0, p1, p2}, Landroid/alwaysontopservice/IAlwaysOnTopInterface;->sendMediaStateEvent(II)V

    .line 301
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 299
    :cond_1
    :try_start_1
    const-string v0, "AlwaysOnTopState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMediaStateEvent() mCurAot is Null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setFlipValue(Z)V
    .locals 0
    .param p1, "flipValue"    # Z

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mFlipValue:Z

    .line 401
    return-void
.end method

.method public showAlwaysOnTop()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 226
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 227
    const-string v1, "AlwaysOnTopState"

    const-string v2, "AOT id is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    return v0

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-boolean v2, v2, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v2, :cond_1

    .line 233
    monitor-exit v1

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 236
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    if-eqz v2, :cond_2

    .line 238
    const-string v0, "AlwaysOnTopState"

    const-string v2, "showAlwaysOnTop"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    invoke-interface {v0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface;->showAlwaysOnTop()V

    .line 242
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 244
    :cond_2
    const-string v2, "AlwaysOnTopState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAlwaysOnTop() mCurAot is Null:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public skipAOTWindow()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 306
    const-string v0, "AlwaysOnTopState"

    const-string v1, "AOT id is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    invoke-interface {v0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface;->skipAOTWindow()V

    .line 316
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 314
    :cond_1
    :try_start_1
    const-string v0, "AlwaysOnTopState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skipAOTWindow() mCurAot is Null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public startAlwaysOnTopInnerLocked()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 137
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current AlwaysOnTop id is null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-boolean v3, v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_1

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "!mSystemReady"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_1
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mInfo:Landroid/view/alwaysontop/AlwaysOnTopInfo;

    if-nez v3, :cond_2

    .line 146
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopState;->unbindAlwaysOnTopLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.alwaysontopservice.AlwaysOnTopService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurIntent:Landroid/content/Intent;

    .line 156
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mInfo:Landroid/view/alwaysontop/AlwaysOnTopInfo;

    invoke-virtual {v4}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 157
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.client_label"

    const v5, 0x10406dc

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurIntent:Landroid/content/Intent;

    const-string v4, "aot_id"

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 162
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 166
    :cond_3
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mLastBindTime:J

    .line 168
    iput-boolean v1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mHaveConnection:Z

    .line 170
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurToken:Landroid/os/IBinder;

    .line 172
    :try_start_1
    const-string v3, "AlwaysOnTopState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding window token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v3, v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurToken:Landroid/os/IBinder;

    const/16 v5, 0x7df

    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    :goto_1
    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAlwaysOnTopInnerLocked() Fail unbindAlwaysOnTopLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 177
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "AlwaysOnTopState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail addWindowToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 178
    goto :goto_1

    .line 182
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v1, "AlwaysOnTopState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure connecting to AlwaysOnTop service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurIntent:Landroid/content/Intent;

    .line 184
    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    .line 186
    iput-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopBundle:Landroid/os/Bundle;

    move v1, v2

    .line 188
    goto :goto_1
.end method

.method public stopAlwaysOnTop()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 251
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 252
    const-string v1, "AlwaysOnTopState"

    const-string v2, "AOT id is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return v0

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    monitor-enter v2

    .line 257
    :try_start_0
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    if-eqz v3, :cond_1

    .line 262
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mState:I

    .line 264
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    invoke-interface {v0}, Landroid/alwaysontopservice/IAlwaysOnTopInterface;->hideAlwaysOnTop()V

    .line 265
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 267
    :cond_1
    const-string v1, "AlwaysOnTopState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopAlwaysOnTop() mCurAot is Null:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    monitor-exit v2

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindAlwaysOnTopLocked()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 194
    const-string v0, "AlwaysOnTopState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindAlwaysOnTopLocked: ,mHaveConnection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mHaveConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mAlwaysOnTopId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCurToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mHaveConnection:Z

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    .line 202
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopBundle:Landroid/os/Bundle;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 207
    iput-boolean v4, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mHaveConnection:Z

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurToken:Landroid/os/IBinder;

    if-eqz v0, :cond_2

    .line 212
    const-string v0, "AlwaysOnTopState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing window token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mService:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V

    .line 214
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurToken:Landroid/os/IBinder;

    .line 217
    :cond_2
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    .line 218
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurIntent:Landroid/content/Intent;

    .line 221
    iput v4, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mState:I

    .line 223
    return-void
.end method

.method public visibleAOTFrame()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 384
    const-string v0, "AlwaysOnTopState"

    const-string v1, "AOT id is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_0
    return-void

    .line 388
    :cond_0
    const-string v0, "AlwaysOnTopState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFlipValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mFlipValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    monitor-enter v1

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mCurAot:Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    iget-boolean v2, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mFlipValue:Z

    invoke-interface {v0, v2}, Landroid/alwaysontopservice/IAlwaysOnTopInterface;->visibleAOTFrame(Z)V

    .line 396
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 394
    :cond_1
    :try_start_1
    const-string v0, "AlwaysOnTopState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visibleAOTFrame() mCurAot is Null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopState;->mAlwaysOnTopId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
