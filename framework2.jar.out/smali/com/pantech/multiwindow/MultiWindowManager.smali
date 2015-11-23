.class public Lcom/pantech/multiwindow/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# static fields
.field public static final MULTI_WINDOW_ZONE:Ljava/lang/String; = "multi_window"

.field public static final MULTI_WINDOW_ZONE_1:I = 0x1

.field public static final MULTI_WINDOW_ZONE_2:I = 0x2

.field public static final MULTI_WINDOW_ZONE_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MultiWindowManager"

.field private static sInstance:Lcom/pantech/multiwindow/MultiWindowManager;


# instance fields
.field private final mService:Lcom/pantech/multiwindow/IMultiWindowManager;


# direct methods
.method private constructor <init>(Lcom/pantech/multiwindow/IMultiWindowManager;)V
    .locals 0
    .param p1, "service"    # Lcom/pantech/multiwindow/IMultiWindowManager;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/pantech/multiwindow/MultiWindowManager;->mService:Lcom/pantech/multiwindow/IMultiWindowManager;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/pantech/multiwindow/MultiWindowManager;
    .locals 4

    .prologue
    .line 31
    const-class v3, Lcom/pantech/multiwindow/MultiWindowManager;

    monitor-enter v3

    .line 32
    :try_start_0
    sget-object v2, Lcom/pantech/multiwindow/MultiWindowManager;->sInstance:Lcom/pantech/multiwindow/MultiWindowManager;

    if-nez v2, :cond_0

    .line 33
    const-string v2, "multi_window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 34
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 35
    .local v1, "service":Lcom/pantech/multiwindow/IMultiWindowManager;
    new-instance v2, Lcom/pantech/multiwindow/MultiWindowManager;

    invoke-direct {v2, v1}, Lcom/pantech/multiwindow/MultiWindowManager;-><init>(Lcom/pantech/multiwindow/IMultiWindowManager;)V

    sput-object v2, Lcom/pantech/multiwindow/MultiWindowManager;->sInstance:Lcom/pantech/multiwindow/MultiWindowManager;

    .line 37
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    sget-object v2, Lcom/pantech/multiwindow/MultiWindowManager;->sInstance:Lcom/pantech/multiwindow/MultiWindowManager;

    return-object v2

    .line 37
    .end local v1    # "service":Lcom/pantech/multiwindow/IMultiWindowManager;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
