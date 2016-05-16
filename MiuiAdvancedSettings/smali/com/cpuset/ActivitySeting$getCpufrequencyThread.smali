.class Lcom/cpuset/ActivitySeting$getCpufrequencyThread;
.super Ljava/lang/Thread;
.source "ActivitySeting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cpuset/ActivitySeting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getCpufrequencyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cpuset/ActivitySeting;


# direct methods
.method constructor <init>(Lcom/cpuset/ActivitySeting;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cpuset/ActivitySeting$getCpufrequencyThread;->this$0:Lcom/cpuset/ActivitySeting;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 85
    new-instance v0, Lcom/cpuset/Cpusetting;

    invoke-direct {v0}, Lcom/cpuset/Cpusetting;-><init>()V

    .line 87
    .local v0, "cpu":Lcom/cpuset/Cpusetting;
    :goto_0
    iget-object v4, p0, Lcom/cpuset/ActivitySeting$getCpufrequencyThread;->this$0:Lcom/cpuset/ActivitySeting;

    # getter for: Lcom/cpuset/ActivitySeting;->Isstop:Ljava/lang/Boolean;
    invoke-static {v4}, Lcom/cpuset/ActivitySeting;->access$1(Lcom/cpuset/ActivitySeting;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 105
    return-void

    .line 90
    :cond_0
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Lcom/cpuset/ActivitySeting$getCpufrequencyThread;->sleep(J)V

    .line 93
    invoke-virtual {v0}, Lcom/cpuset/Cpusetting;->getCpufrequency()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "cpustr":Ljava/lang/String;
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 95
    .local v3, "msg":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    iget-object v4, p0, Lcom/cpuset/ActivitySeting$getCpufrequencyThread;->this$0:Lcom/cpuset/ActivitySeting;

    # getter for: Lcom/cpuset/ActivitySeting;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/cpuset/ActivitySeting;->access$2(Lcom/cpuset/ActivitySeting;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v1    # "cpustr":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
