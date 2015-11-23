.class Landroid/tdmb/TdmbPlayer$2;
.super Ljava/lang/Thread;
.source "TdmbPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/tdmb/TdmbPlayer;->AntennaThread()V
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
    .line 290
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer$2;->this$0:Landroid/tdmb/TdmbPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 293
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$2;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$400(Landroid/tdmb/TdmbPlayer;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 295
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$2;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$500(Landroid/tdmb/TdmbPlayer;)Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 297
    const-string v2, "DMBFramework"

    const-string v3, "[TDMBJAVA] AntennaThread() : Wait"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :try_start_0
    # getter for: Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$600()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :try_start_1
    # getter for: Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$600()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 303
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :goto_1
    const-string v2, "DMBFramework"

    const-string v3, "[TDMBJAVA] AntennaThread() : awake"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$2;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$400(Landroid/tdmb/TdmbPlayer;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 346
    :cond_2
    const-string v2, "DMBFramework"

    const-string v3, "[TDMBJAVA] AntennaThread() : EXIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void

    .line 303
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 305
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "DMBFramework"

    const-string v3, "[TDMBJAVA] AntennaThread() : Wait : FAIL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 321
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const-wide/16 v2, 0x50

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 328
    :goto_2
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$2;->this$0:Landroid/tdmb/TdmbPlayer;

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer$2;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->manager:Landroid/media/AudioManager;
    invoke-static {v3}, Landroid/tdmb/TdmbPlayer;->access$800(Landroid/tdmb/TdmbPlayer;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    # setter for: Landroid/tdmb/TdmbPlayer;->mAntennaState:Z
    invoke-static {v2, v3}, Landroid/tdmb/TdmbPlayer;->access$702(Landroid/tdmb/TdmbPlayer;Z)Z

    .line 331
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$2;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mAntennaState:Z
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$700(Landroid/tdmb/TdmbPlayer;)Z

    move-result v2

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer$2;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mPreAntennaState:Z
    invoke-static {v3}, Landroid/tdmb/TdmbPlayer;->access$900(Landroid/tdmb/TdmbPlayer;)Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 333
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$2;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mAntennaState:Z
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$700(Landroid/tdmb/TdmbPlayer;)Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 335
    const-string v2, "DMBFramework"

    const-string v3, "[TDMBJAVA] AntennaThread(): change(TDMB_ANT_EARJACK)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$2;->this$0:Landroid/tdmb/TdmbPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/tdmb/TdmbPlayer;->SetAntennaPath(I)V

    .line 343
    :goto_3
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$2;->this$0:Landroid/tdmb/TdmbPlayer;

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer$2;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mAntennaState:Z
    invoke-static {v3}, Landroid/tdmb/TdmbPlayer;->access$700(Landroid/tdmb/TdmbPlayer;)Z

    move-result v3

    # setter for: Landroid/tdmb/TdmbPlayer;->mPreAntennaState:Z
    invoke-static {v2, v3}, Landroid/tdmb/TdmbPlayer;->access$902(Landroid/tdmb/TdmbPlayer;Z)Z

    goto/16 :goto_0

    .line 323
    :catch_1
    move-exception v1

    .line 325
    .local v1, "ie":Ljava/lang/InterruptedException;
    const-string v2, "DMBFramework"

    const-string v3, "[TDMBJAVA] AntennaThread() : not Thread.sleep()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 340
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :cond_4
    const-string v2, "DMBFramework"

    const-string v3, "[TDMBJAVA] AntennaThread(): change(TDMB_ANT_INTERNAL)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$2;->this$0:Landroid/tdmb/TdmbPlayer;

    invoke-virtual {v2, v4}, Landroid/tdmb/TdmbPlayer;->SetAntennaPath(I)V

    goto :goto_3
.end method
