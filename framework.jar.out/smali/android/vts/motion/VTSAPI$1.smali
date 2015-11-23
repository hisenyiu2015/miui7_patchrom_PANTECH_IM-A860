.class Landroid/vts/motion/VTSAPI$1;
.super Ljava/lang/Thread;
.source "VTSAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/vts/motion/VTSAPI;->initializeMessageLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/vts/motion/VTSAPI;


# direct methods
.method constructor <init>(Landroid/vts/motion/VTSAPI;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Landroid/vts/motion/VTSAPI$1;->this$0:Landroid/vts/motion/VTSAPI;

    .line 214
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    const-string v0, "VTSAPI"

    const-string v1, "initializeMessageLooper() : Run Looper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 220
    iget-object v0, p0, Landroid/vts/motion/VTSAPI$1;->this$0:Landroid/vts/motion/VTSAPI;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    # invokes: Landroid/vts/motion/VTSAPI;->SetEventHandler(Landroid/os/Looper;)V
    invoke-static {v0, v1}, Landroid/vts/motion/VTSAPI;->access$11(Landroid/vts/motion/VTSAPI;Landroid/os/Looper;)V

    .line 222
    # getter for: Landroid/vts/motion/VTSAPI;->lock:Ljava/lang/Object;
    invoke-static {}, Landroid/vts/motion/VTSAPI;->access$12()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 223
    :try_start_0
    # getter for: Landroid/vts/motion/VTSAPI;->lock:Ljava/lang/Object;
    invoke-static {}, Landroid/vts/motion/VTSAPI;->access$12()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 222
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 227
    return-void

    .line 222
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
