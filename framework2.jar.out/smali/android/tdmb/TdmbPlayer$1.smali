.class Landroid/tdmb/TdmbPlayer$1;
.super Ljava/lang/Thread;
.source "TdmbPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/tdmb/TdmbPlayer;->initializeMessageLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/tdmb/TdmbPlayer;


# direct methods
.method constructor <init>(Landroid/tdmb/TdmbPlayer;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer$1;->this$0:Landroid/tdmb/TdmbPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 247
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 250
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer$1;->this$0:Landroid/tdmb/TdmbPlayer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    # invokes: Landroid/tdmb/TdmbPlayer;->SetEventHandler(Landroid/os/Looper;)V
    invoke-static {v0, v1}, Landroid/tdmb/TdmbPlayer;->access$000(Landroid/tdmb/TdmbPlayer;Landroid/os/Looper;)V

    .line 252
    # getter for: Landroid/tdmb/TdmbPlayer;->lock:Ljava/lang/Object;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 254
    :try_start_0
    # getter for: Landroid/tdmb/TdmbPlayer;->lock:Ljava/lang/Object;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 255
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    # getter for: Landroid/tdmb/TdmbPlayer;->mWaitForLooper:Z
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$200()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 259
    const-string v0, "DMBFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TDMBJAVA] initializeMessageLooper() : awake (mWaitForLooper)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/tdmb/TdmbPlayer;->mWaitForLooper:Z
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$200()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    # getter for: Landroid/tdmb/TdmbPlayer;->looperlock:Ljava/lang/Object;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 262
    :try_start_1
    # getter for: Landroid/tdmb/TdmbPlayer;->looperlock:Ljava/lang/Object;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$300()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 263
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 266
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 268
    return-void

    .line 255
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 263
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
