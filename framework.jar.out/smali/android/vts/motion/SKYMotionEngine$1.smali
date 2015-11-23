.class Landroid/vts/motion/SKYMotionEngine$1;
.super Ljava/lang/Object;
.source "SKYMotionEngine.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/vts/motion/SKYMotionEngine;->start(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/vts/motion/SKYMotionEngine;


# direct methods
.method constructor <init>(Landroid/vts/motion/SKYMotionEngine;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Landroid/vts/motion/SKYMotionEngine$1;->this$0:Landroid/vts/motion/SKYMotionEngine;

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v7, 0x0

    .line 528
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine$1;->this$0:Landroid/vts/motion/SKYMotionEngine;

    # getter for: Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_LOG:Z
    invoke-static {v4}, Landroid/vts/motion/SKYMotionEngine;->access$0(Landroid/vts/motion/SKYMotionEngine;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SKYMotionEngine"

    const-string/jumbo v5, "onPreviewFrame"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine$1;->this$0:Landroid/vts/motion/SKYMotionEngine;

    # getter for: Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_COUNT:Z
    invoke-static {v4}, Landroid/vts/motion/SKYMotionEngine;->access$1(Landroid/vts/motion/SKYMotionEngine;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 532
    .local v0, "currentTime":J
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine$1;->this$0:Landroid/vts/motion/SKYMotionEngine;

    iget-wide v4, v4, Landroid/vts/motion/SKYMotionEngine;->lastTimeForFPS:J

    sub-long v2, v0, v4

    .line 534
    .local v2, "gapOfTime":J
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine$1;->this$0:Landroid/vts/motion/SKYMotionEngine;

    # getter for: Landroid/vts/motion/SKYMotionEngine;->resetFPS:Z
    invoke-static {v4}, Landroid/vts/motion/SKYMotionEngine;->access$2(Landroid/vts/motion/SKYMotionEngine;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 535
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine$1;->this$0:Landroid/vts/motion/SKYMotionEngine;

    iput-wide v0, v4, Landroid/vts/motion/SKYMotionEngine;->lastTimeForFPS:J

    .line 537
    :cond_1
    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 538
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine$1;->this$0:Landroid/vts/motion/SKYMotionEngine;

    invoke-static {v4, v7}, Landroid/vts/motion/SKYMotionEngine;->access$3(Landroid/vts/motion/SKYMotionEngine;Z)V

    .line 539
    # getter for: Landroid/vts/motion/SKYMotionEngine;->cntFPS:I
    invoke-static {}, Landroid/vts/motion/SKYMotionEngine;->access$4()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Landroid/vts/motion/SKYMotionEngine;->access$5(I)V

    .line 550
    .end local v0    # "currentTime":J
    .end local v2    # "gapOfTime":J
    :cond_2
    :goto_0
    iget-object v5, p0, Landroid/vts/motion/SKYMotionEngine$1;->this$0:Landroid/vts/motion/SKYMotionEngine;

    monitor-enter v5

    .line 551
    :try_start_0
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine$1;->this$0:Landroid/vts/motion/SKYMotionEngine;

    invoke-static {v4, p1}, Landroid/vts/motion/SKYMotionEngine;->access$7(Landroid/vts/motion/SKYMotionEngine;[B)V

    .line 554
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine$1;->this$0:Landroid/vts/motion/SKYMotionEngine;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 550
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    return-void

    .line 541
    .restart local v0    # "currentTime":J
    .restart local v2    # "gapOfTime":J
    :cond_3
    # getter for: Landroid/vts/motion/SKYMotionEngine;->cntFPS:I
    invoke-static {}, Landroid/vts/motion/SKYMotionEngine;->access$4()I

    move-result v4

    if-eqz v4, :cond_2

    .line 542
    const-string v4, "SKYMotionEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DBG_FPS_COUNT(FPS)"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Landroid/vts/motion/SKYMotionEngine;->cntFPS:I
    invoke-static {}, Landroid/vts/motion/SKYMotionEngine;->access$4()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine$1;->this$0:Landroid/vts/motion/SKYMotionEngine;

    # getter for: Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;
    invoke-static {v4}, Landroid/vts/motion/SKYMotionEngine;->access$6(Landroid/vts/motion/SKYMotionEngine;)Landroid/vts/motion/SKYMotionAPI;

    move-result-object v4

    iget-object v4, v4, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    # getter for: Landroid/vts/motion/SKYMotionEngine;->cntFPS:I
    invoke-static {}, Landroid/vts/motion/SKYMotionEngine;->access$4()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionFPS(I)V

    .line 544
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine$1;->this$0:Landroid/vts/motion/SKYMotionEngine;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/vts/motion/SKYMotionEngine;->access$3(Landroid/vts/motion/SKYMotionEngine;Z)V

    .line 545
    invoke-static {v7}, Landroid/vts/motion/SKYMotionEngine;->access$5(I)V

    goto :goto_0

    .line 550
    .end local v0    # "currentTime":J
    .end local v2    # "gapOfTime":J
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
