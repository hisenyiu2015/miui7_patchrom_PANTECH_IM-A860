.class Landroid/tdmb/TdmbPlayer$EventHandler;
.super Landroid/os/Handler;
.source "TdmbPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tdmb/TdmbPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mTdmbPlayer:Landroid/tdmb/TdmbPlayer;

.field final synthetic this$0:Landroid/tdmb/TdmbPlayer;


# direct methods
.method public constructor <init>(Landroid/tdmb/TdmbPlayer;Landroid/tdmb/TdmbPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "tp"    # Landroid/tdmb/TdmbPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2850
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    .line 2851
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2852
    iput-object p2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->mTdmbPlayer:Landroid/tdmb/TdmbPlayer;

    .line 2853
    return-void
.end method


# virtual methods
.method public broadcastPlayerState(Landroid/content/Context;I)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "cmd"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2859
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.tdmb.action.METADATA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2860
    .local v0, "intent":Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    .line 2919
    const-string v1, "DMBFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TDMBJAVA] broadcastPlayerState() : Unknown message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    :cond_0
    :goto_0
    return-void

    .line 2863
    :pswitch_0
    const-string v1, "duration"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2864
    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2865
    const-string v1, "position"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2866
    const-string v1, "uripath"

    # getter for: Landroid/tdmb/TdmbPlayer;->METADATA_TDMB:Landroid/net/Uri;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1100()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2867
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mPlayState:I
    invoke-static {v1}, Landroid/tdmb/TdmbPlayer;->access$1200(Landroid/tdmb/TdmbPlayer;)I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 2873
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # setter for: Landroid/tdmb/TdmbPlayer;->mPlayState:I
    invoke-static {v1, v5}, Landroid/tdmb/TdmbPlayer;->access$1202(Landroid/tdmb/TdmbPlayer;I)I

    .line 2874
    const-string v1, "playstate"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2877
    if-eqz p1, :cond_0

    .line 2878
    const-string v1, "DMBFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TDMBJAVA] broadcastPlayerState() : (playstate) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mPlayState:I
    invoke-static {v3}, Landroid/tdmb/TdmbPlayer;->access$1200(Landroid/tdmb/TdmbPlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2884
    :pswitch_1
    const-string v1, "duration"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2885
    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2886
    const-string v1, "position"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2887
    const-string v1, "uripath"

    # getter for: Landroid/tdmb/TdmbPlayer;->METADATA_TDMB:Landroid/net/Uri;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1100()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2888
    const-string v1, "playstate"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2889
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    const/4 v2, 0x3

    # setter for: Landroid/tdmb/TdmbPlayer;->mPlayState:I
    invoke-static {v1, v2}, Landroid/tdmb/TdmbPlayer;->access$1202(Landroid/tdmb/TdmbPlayer;I)I

    .line 2891
    if-eqz p1, :cond_0

    .line 2892
    const-string v1, "DMBFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TDMBJAVA] broadcastPlayerState() : (playstate) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mPlayState:I
    invoke-static {v3}, Landroid/tdmb/TdmbPlayer;->access$1200(Landroid/tdmb/TdmbPlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2898
    :pswitch_2
    const-string v1, "duration"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2899
    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2900
    const-string v1, "position"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2901
    const-string v1, "uripath"

    # getter for: Landroid/tdmb/TdmbPlayer;->METADATA_TDMB:Landroid/net/Uri;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1100()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2902
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mPlayState:I
    invoke-static {v1}, Landroid/tdmb/TdmbPlayer;->access$1200(Landroid/tdmb/TdmbPlayer;)I

    move-result v1

    if-eq v1, v6, :cond_0

    .line 2908
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # setter for: Landroid/tdmb/TdmbPlayer;->mPlayState:I
    invoke-static {v1, v6}, Landroid/tdmb/TdmbPlayer;->access$1202(Landroid/tdmb/TdmbPlayer;I)I

    .line 2909
    const-string v1, "playstate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2912
    if-eqz p1, :cond_0

    .line 2913
    const-string v1, "DMBFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TDMBJAVA] broadcastPlayerState() : (playstate) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mPlayState:I
    invoke-static {v3}, Landroid/tdmb/TdmbPlayer;->access$1200(Landroid/tdmb/TdmbPlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2860
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 2930
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x384

    if-ne v2, v3, :cond_1

    .line 2932
    const-string v2, "DMBFramework"

    const-string v3, "[TDMBJAVA] handleMessage() : EVENT_LOOP_QUIT"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2937
    .local v0, "mLooper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 2939
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 3456
    .end local v0    # "mLooper":Landroid/os/Looper;
    :cond_0
    :goto_0
    return-void

    .line 2944
    :cond_1
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->mTdmbPlayer:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mNativeContext:I
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$1300(Landroid/tdmb/TdmbPlayer;)I

    move-result v2

    if-nez v2, :cond_2

    .line 2946
    const-string v2, "DMBFramework"

    const-string v3, "[TDMBJAVA] handleMessage() : mNativeContext sinull"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2950
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 3455
    const-string v2, "DMBFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TDMBJAVA] handleMessage() : Unknown message (type)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2954
    :sswitch_0
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnInitDoneListener:Landroid/tdmb/TdmbPlayer$OnInitDoneListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$1400(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnInitDoneListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2957
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnInitDoneListener:Landroid/tdmb/TdmbPlayer$OnInitDoneListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$1400(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnInitDoneListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/tdmb/TdmbPlayer$OnInitDoneListener;->OnInitDone(I)V

    .line 2960
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto :goto_0

    .line 2967
    :sswitch_1
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnExitDoneListener:Landroid/tdmb/TdmbPlayer$OnExitDoneListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$1600(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnExitDoneListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2970
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnExitDoneListener:Landroid/tdmb/TdmbPlayer$OnExitDoneListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$1600(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnExitDoneListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/tdmb/TdmbPlayer$OnExitDoneListener;->OnExitDone(I)V

    .line 2973
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 2975
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 2977
    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Landroid/tdmb/TdmbPlayer$EventHandler;->broadcastPlayerState(Landroid/content/Context;I)V

    goto :goto_0

    .line 2985
    :sswitch_2
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnChannelScanDoneListener:Landroid/tdmb/TdmbPlayer$OnChannelScanDoneListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$1700(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelScanDoneListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2988
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnChannelScanDoneListener:Landroid/tdmb/TdmbPlayer$OnChannelScanDoneListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$1700(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelScanDoneListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    iget-object v4, v4, Landroid/tdmb/TdmbPlayer;->mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    iget-object v5, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    iget-object v5, v5, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-interface {v2, v3, v4, v5}, Landroid/tdmb/TdmbPlayer$OnChannelScanDoneListener;->OnChannelScanDone(ILandroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;Landroid/tdmb/TdmbPlayer$TdmbChannels;)V

    .line 2991
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 2999
    :sswitch_3
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnChannelScanCancelListener:Landroid/tdmb/TdmbPlayer$OnChannelScanCancelListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$1800(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelScanCancelListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3002
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnChannelScanCancelListener:Landroid/tdmb/TdmbPlayer$OnChannelScanCancelListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$1800(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelScanCancelListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    iget-object v4, v4, Landroid/tdmb/TdmbPlayer;->mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    iget-object v5, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    iget-object v5, v5, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-interface {v2, v3, v4, v5}, Landroid/tdmb/TdmbPlayer$OnChannelScanCancelListener;->OnChannelScanCancel(ILandroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;Landroid/tdmb/TdmbPlayer$TdmbChannels;)V

    .line 3005
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3012
    :sswitch_4
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnChannelInfoListener:Landroid/tdmb/TdmbPlayer$OnChannelInfoListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$1900(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelInfoListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3014
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnChannelInfoListener:Landroid/tdmb/TdmbPlayer$OnChannelInfoListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$1900(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelInfoListener;

    move-result-object v2

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    iget-object v3, v3, Landroid/tdmb/TdmbPlayer;->mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    iget-object v4, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    iget-object v4, v4, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-interface {v2, v7, v3, v4}, Landroid/tdmb/TdmbPlayer$OnChannelInfoListener;->OnChannelInfo(ILandroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;Landroid/tdmb/TdmbPlayer$TdmbChannels;)V

    .line 3017
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget-object v5, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    iget-object v5, v5, Landroid/tdmb/TdmbPlayer;->mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    invoke-virtual {v5}, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->GetTotalChannelCount()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 3022
    :cond_3
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnChannelInfoExtListener:Landroid/tdmb/TdmbPlayer$OnChannelInfoExtListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2000(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelInfoExtListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3024
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnChannelInfoExtListener:Landroid/tdmb/TdmbPlayer$OnChannelInfoExtListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2000(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelInfoExtListener;

    move-result-object v2

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    iget-object v3, v3, Landroid/tdmb/TdmbPlayer;->mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    iget-object v4, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    iget-object v4, v4, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-interface {v2, v7, v3, v4}, Landroid/tdmb/TdmbPlayer$OnChannelInfoExtListener;->OnChannelInfoExt(ILandroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;Landroid/tdmb/TdmbPlayer$TdmbChannelExts;)V

    goto/16 :goto_0

    .line 3034
    :sswitch_5
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnChannelScanProgRPTListener:Landroid/tdmb/TdmbPlayer$OnChannelScanProgRPTListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2100(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelScanProgRPTListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3037
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnChannelScanProgRPTListener:Landroid/tdmb/TdmbPlayer$OnChannelScanProgRPTListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2100(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelScanProgRPTListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/tdmb/TdmbPlayer$OnChannelScanProgRPTListener;->OnChannelScanProgRPT(I)V

    .line 3040
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3047
    :sswitch_6
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnChannelInfoChangedListener:Landroid/tdmb/TdmbPlayer$OnChannelInfoChangedListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2200(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelInfoChangedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3050
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnChannelInfoChangedListener:Landroid/tdmb/TdmbPlayer$OnChannelInfoChangedListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2200(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelInfoChangedListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/tdmb/TdmbPlayer$OnChannelInfoChangedListener;->OnChannelInfoChanged()V

    .line 3052
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3059
    :sswitch_7
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnChannelSelectListener:Landroid/tdmb/TdmbPlayer$OnChannelSelectListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2300(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelSelectListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3062
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnChannelSelectListener:Landroid/tdmb/TdmbPlayer$OnChannelSelectListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2300(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelSelectListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/tdmb/TdmbPlayer$OnChannelSelectListener;->OnChannelSelect(II)V

    .line 3065
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3072
    :sswitch_8
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnPlayStartListener:Landroid/tdmb/TdmbPlayer$OnPlayStartListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2400(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnPlayStartListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3075
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnPlayStartListener:Landroid/tdmb/TdmbPlayer$OnPlayStartListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2400(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnPlayStartListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/tdmb/TdmbPlayer$OnPlayStartListener;->OnPlayStart(I)V

    .line 3078
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 3081
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 3083
    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v9}, Landroid/tdmb/TdmbPlayer$EventHandler;->broadcastPlayerState(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 3091
    :sswitch_9
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnPauseListener:Landroid/tdmb/TdmbPlayer$OnPauseListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2500(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnPauseListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3094
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnPauseListener:Landroid/tdmb/TdmbPlayer$OnPauseListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2500(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnPauseListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/tdmb/TdmbPlayer$OnPauseListener;->OnPause(I)V

    .line 3097
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 3100
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 3102
    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/tdmb/TdmbPlayer$EventHandler;->broadcastPlayerState(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 3109
    :sswitch_a
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnResumeListener:Landroid/tdmb/TdmbPlayer$OnResumeListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2600(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnResumeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3112
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnResumeListener:Landroid/tdmb/TdmbPlayer$OnResumeListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2600(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnResumeListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/tdmb/TdmbPlayer$OnResumeListener;->OnResume(I)V

    .line 3115
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 3119
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 3121
    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v9}, Landroid/tdmb/TdmbPlayer$EventHandler;->broadcastPlayerState(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 3129
    :sswitch_b
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnStopListener:Landroid/tdmb/TdmbPlayer$OnStopListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2700(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnStopListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3132
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnStopListener:Landroid/tdmb/TdmbPlayer$OnStopListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2700(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnStopListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/tdmb/TdmbPlayer$OnStopListener;->OnStop(I)V

    .line 3135
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 3138
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 3140
    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Landroid/tdmb/TdmbPlayer$EventHandler;->broadcastPlayerState(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 3148
    :sswitch_c
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnCaptureListener:Landroid/tdmb/TdmbPlayer$OnCaptureListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2800(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnCaptureListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3151
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnCaptureListener:Landroid/tdmb/TdmbPlayer$OnCaptureListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2800(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnCaptureListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/tdmb/TdmbPlayer$OnCaptureListener;->OnCapture(II)V

    .line 3154
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3161
    :sswitch_d
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnMoveListener:Landroid/tdmb/TdmbPlayer$OnMoveListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2900(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnMoveListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3164
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnMoveListener:Landroid/tdmb/TdmbPlayer$OnMoveListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$2900(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnMoveListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/tdmb/TdmbPlayer$OnMoveListener;->OnMove(II)V

    .line 3167
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 3170
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 3172
    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v9}, Landroid/tdmb/TdmbPlayer$EventHandler;->broadcastPlayerState(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 3180
    :sswitch_e
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnRecordStartListener:Landroid/tdmb/TdmbPlayer$OnRecordStartListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3000(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRecordStartListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3183
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnRecordStartListener:Landroid/tdmb/TdmbPlayer$OnRecordStartListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3000(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRecordStartListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/tdmb/TdmbPlayer$OnRecordStartListener;->OnRecordStart(I)V

    .line 3186
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3193
    :sswitch_f
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnRecordStopListener:Landroid/tdmb/TdmbPlayer$OnRecordStopListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3100(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRecordStopListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3196
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 3197
    .local v1, "param":[I
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnRecordStopListener:Landroid/tdmb/TdmbPlayer$OnRecordStopListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3100(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRecordStopListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    aget v4, v1, v7

    aget v5, v1, v8

    invoke-interface {v2, v3, v4, v5}, Landroid/tdmb/TdmbPlayer$OnRecordStopListener;->OnRecordStop(III)V

    .line 3200
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    aget v6, v1, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3208
    .end local v1    # "param":[I
    :sswitch_10
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnRecordCompleteListener:Landroid/tdmb/TdmbPlayer$OnRecordCompleteListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3200(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRecordCompleteListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3211
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 3212
    .restart local v1    # "param":[I
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnRecordCompleteListener:Landroid/tdmb/TdmbPlayer$OnRecordCompleteListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3200(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRecordCompleteListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    aget v4, v1, v7

    aget v5, v1, v8

    invoke-interface {v2, v3, v4, v5}, Landroid/tdmb/TdmbPlayer$OnRecordCompleteListener;->OnRecordComplete(III)V

    .line 3215
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    aget v6, v1, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3222
    .end local v1    # "param":[I
    :sswitch_11
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnLocalPlayDoneListener:Landroid/tdmb/TdmbPlayer$OnLocalPlayDoneListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3300(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnLocalPlayDoneListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3225
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnLocalPlayDoneListener:Landroid/tdmb/TdmbPlayer$OnLocalPlayDoneListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3300(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnLocalPlayDoneListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/tdmb/TdmbPlayer$OnLocalPlayDoneListener;->OnLocalPlayDone()V

    .line 3228
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 3230
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 3232
    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Landroid/tdmb/TdmbPlayer$EventHandler;->broadcastPlayerState(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 3240
    :sswitch_12
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnWeakFieldListener:Landroid/tdmb/TdmbPlayer$OnWeakFieldListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3400(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnWeakFieldListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3243
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnWeakFieldListener:Landroid/tdmb/TdmbPlayer$OnWeakFieldListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3400(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnWeakFieldListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/tdmb/TdmbPlayer$OnWeakFieldListener;->OnWeakField()V

    goto/16 :goto_0

    .line 3254
    :sswitch_13
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnOutOfWeakFieldListener:Landroid/tdmb/TdmbPlayer$OnOutOfWeakFieldListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3500(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnOutOfWeakFieldListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3257
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnOutOfWeakFieldListener:Landroid/tdmb/TdmbPlayer$OnOutOfWeakFieldListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3500(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnOutOfWeakFieldListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/tdmb/TdmbPlayer$OnOutOfWeakFieldListener;->OnOutOfWeakField()V

    goto/16 :goto_0

    .line 3268
    :sswitch_14
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnSetVideoWindowListener:Landroid/tdmb/TdmbPlayer$OnSetVideoWindowListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3600(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnSetVideoWindowListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3271
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnSetVideoWindowListener:Landroid/tdmb/TdmbPlayer$OnSetVideoWindowListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3600(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnSetVideoWindowListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/tdmb/TdmbPlayer$OnSetVideoWindowListener;->OnSetVideoWindow()V

    .line 3274
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3281
    :sswitch_15
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnPlayProgReportListener:Landroid/tdmb/TdmbPlayer$OnPlayProgReportListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3700(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnPlayProgReportListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3284
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnPlayProgReportListener:Landroid/tdmb/TdmbPlayer$OnPlayProgReportListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3700(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnPlayProgReportListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/tdmb/TdmbPlayer$OnPlayProgReportListener;->OnPlayProgReport(I)V

    goto/16 :goto_0

    .line 3294
    :sswitch_16
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnRadioDLSInfoListener:Landroid/tdmb/TdmbPlayer$OnRadioDLSInfoListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3800(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRadioDLSInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3296
    const-string v2, "DMBFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TDMBJAVA] handleMessage() : TDMB_RADIO_DLS (dls)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnRadioDLSInfoListener:Landroid/tdmb/TdmbPlayer$OnRadioDLSInfoListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3800(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRadioDLSInfoListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-interface {v3, v4, v5, v2}, Landroid/tdmb/TdmbPlayer$OnRadioDLSInfoListener;->OnRadioDLSInfo(II[B)V

    .line 3300
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3308
    :sswitch_17
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnAntennaNumChangeListener:Landroid/tdmb/TdmbPlayer$OnAntennaNumChangeListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3900(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnAntennaNumChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3311
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnAntennaNumChangeListener:Landroid/tdmb/TdmbPlayer$OnAntennaNumChangeListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$3900(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnAntennaNumChangeListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/tdmb/TdmbPlayer$OnAntennaNumChangeListener;->OnAntennaNumChange(I)V

    goto/16 :goto_0

    .line 3322
    :sswitch_18
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnVideoPlayStartedListener:Landroid/tdmb/TdmbPlayer$OnVideoPlayStartedListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4000(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnVideoPlayStartedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3325
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnVideoPlayStartedListener:Landroid/tdmb/TdmbPlayer$OnVideoPlayStartedListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4000(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnVideoPlayStartedListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/tdmb/TdmbPlayer$OnVideoPlayStartedListener;->OnVideoPlayStarted()V

    .line 3328
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v2, v3, v4, v7, v5}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3336
    :sswitch_19
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnDisplayVideoListener:Landroid/tdmb/TdmbPlayer$OnDisplayVideoListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4100(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnDisplayVideoListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3339
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnDisplayVideoListener:Landroid/tdmb/TdmbPlayer$OnDisplayVideoListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4100(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnDisplayVideoListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/tdmb/TdmbPlayer$OnDisplayVideoListener;->OnDisplayVideo()V

    .line 3341
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3, v4, v7, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3343
    :cond_4
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnDisplayVideoResultListener:Landroid/tdmb/TdmbPlayer$OnDisplayVideoResultListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4200(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnDisplayVideoResultListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3345
    const-string v2, "DMBFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TDMBJAVA] handleMessage() : TDMB_DISPLAY_VIDEO (err)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnDisplayVideoResultListener:Landroid/tdmb/TdmbPlayer$OnDisplayVideoResultListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4200(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnDisplayVideoResultListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/tdmb/TdmbPlayer$OnDisplayVideoResultListener;->OnDisplayVideo(I)V

    .line 3350
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3357
    :sswitch_1a
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnDisplayRSSIInfoListener:Landroid/tdmb/TdmbPlayer$OnDisplayRSSIInfoListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4300(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnDisplayRSSIInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3360
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnDisplayRSSIInfoListener:Landroid/tdmb/TdmbPlayer$OnDisplayRSSIInfoListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4300(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnDisplayRSSIInfoListener;

    move-result-object v2

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    iget-object v3, v3, Landroid/tdmb/TdmbPlayer;->mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    invoke-interface {v2, v7, v3}, Landroid/tdmb/TdmbPlayer$OnDisplayRSSIInfoListener;->OnDisplayRSSIInfo(ILandroid/tdmb/TdmbPlayer$TDMBRSSIInfo;)V

    goto/16 :goto_0

    .line 3367
    :sswitch_1b
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnOperateContentsFileListener:Landroid/tdmb/TdmbPlayer$OnOperateContentsFileListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4400(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnOperateContentsFileListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3370
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnOperateContentsFileListener:Landroid/tdmb/TdmbPlayer$OnOperateContentsFileListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4400(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnOperateContentsFileListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/tdmb/TdmbPlayer$OnOperateContentsFileListener;->OnOperateContentsFile(I)V

    .line 3373
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3380
    :sswitch_1c
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnRadioSLSDataListener:Landroid/tdmb/TdmbPlayer$OnRadioSLSDataListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4500(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRadioSLSDataListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3382
    const-string v2, "DMBFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TDMBJAVA] handleMessage() : TDMB_RADIO_SLS (sls)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnRadioSLSDataListener:Landroid/tdmb/TdmbPlayer$OnRadioSLSDataListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4500(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRadioSLSDataListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-interface {v3, v4, v2}, Landroid/tdmb/TdmbPlayer$OnRadioSLSDataListener;->OnRadioSLSData(I[B)V

    .line 3386
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3394
    :sswitch_1d
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnRadioPlayStartedListener:Landroid/tdmb/TdmbPlayer$OnRadioPlayStartedListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4600(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRadioPlayStartedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3396
    const-string v2, "DMBFramework"

    const-string v3, "[TDMBJAVA] handleMessage() : TDMB_RADIO_PLAY_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnRadioPlayStartedListener:Landroid/tdmb/TdmbPlayer$OnRadioPlayStartedListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4600(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRadioPlayStartedListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/tdmb/TdmbPlayer$OnRadioPlayStartedListener;->OnRadioPlayStarted()V

    .line 3400
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3408
    :sswitch_1e
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnUSBANTListener:Landroid/tdmb/TdmbPlayer$OnUSBANTListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4700(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnUSBANTListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3410
    const-string v2, "DMBFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TDMBJAVA] handleMessage() : TDMB_USB_ANT (usbAnt) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnUSBANTListener:Landroid/tdmb/TdmbPlayer$OnUSBANTListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4700(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnUSBANTListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/tdmb/TdmbPlayer$OnUSBANTListener;->OnUSBANT(I)V

    .line 3414
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3417
    :cond_5
    const-string v2, "DMBFramework"

    const-string v3, "[TDMBJAVA] handleMessage() : mOnUSBANTListener is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3424
    :sswitch_1f
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnAudioSessionIdListener:Landroid/tdmb/TdmbPlayer$OnAudioSessionIdListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4800(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnAudioSessionIdListener;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3426
    const-string v2, "DMBFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TDMBJAVA] handleMessage() : TDMB_AUDIOSESSION_ID (audio_session_id) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnAudioSessionIdListener:Landroid/tdmb/TdmbPlayer$OnAudioSessionIdListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4800(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnAudioSessionIdListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/tdmb/TdmbPlayer$OnAudioSessionIdListener;->OnAudioSessionId(I)V

    .line 3430
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    goto/16 :goto_0

    .line 3433
    :cond_6
    const-string v2, "DMBFramework"

    const-string v3, "[TDMBJAVA] handleMessage() : mOnAudioSessionIdListener is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3439
    :sswitch_20
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnErrorNotifyListener:Landroid/tdmb/TdmbPlayer$OnErrorNotifyListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4900(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnErrorNotifyListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3442
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mOnErrorNotifyListener:Landroid/tdmb/TdmbPlayer$OnErrorNotifyListener;
    invoke-static {v2}, Landroid/tdmb/TdmbPlayer;->access$4900(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnErrorNotifyListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/tdmb/TdmbPlayer$OnErrorNotifyListener;->OnErrorNotify(I)V

    .line 3445
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer$EventHandler;->this$0:Landroid/tdmb/TdmbPlayer;

    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 3448
    # getter for: Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/tdmb/TdmbPlayer;->access$1500()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Landroid/tdmb/TdmbPlayer$EventHandler;->broadcastPlayerState(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 2950
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x10 -> :sswitch_11
        0x11 -> :sswitch_12
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x14 -> :sswitch_15
        0x15 -> :sswitch_16
        0x16 -> :sswitch_17
        0x17 -> :sswitch_18
        0x18 -> :sswitch_19
        0x19 -> :sswitch_1a
        0x1a -> :sswitch_4
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x64 -> :sswitch_20
    .end sparse-switch
.end method
