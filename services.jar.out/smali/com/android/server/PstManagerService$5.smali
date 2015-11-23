.class Lcom/android/server/PstManagerService$5;
.super Landroid/os/Handler;
.source "PstManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PstManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PstManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PstManagerService;)V
    .locals 0

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x3e9

    .line 1026
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "PstManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(+)handleMessage msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1077
    :cond_1
    :goto_0
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "PstManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(-)handleMessage msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_2
    return-void

    .line 1029
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1030
    iget-object v3, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->isAutoAnswer:Z
    invoke-static {v3}, Lcom/android/server/PstManagerService;->access$2400(Lcom/android/server/PstManagerService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1032
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1033
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_3

    .line 1034
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V

    .line 1035
    iget-object v3, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PstManagerService;->access$2500(Lcom/android/server/PstManagerService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1036
    .local v0, "dmsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PstManagerService;->access$2500(Lcom/android/server/PstManagerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->end_delay_time:I
    invoke-static {v4}, Lcom/android/server/PstManagerService;->access$2600(Lcom/android/server/PstManagerService;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1040
    .end local v0    # "dmsg":Landroid/os/Message;
    .end local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1041
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1038
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_3
    :try_start_1
    const-string v3, "PstManagerService"

    const-string v4, "Unable to find ITelephony interface"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1045
    .end local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_7

    .line 1046
    iget-object v3, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->isAutoCall:Z
    invoke-static {v3}, Lcom/android/server/PstManagerService;->access$2700(Lcom/android/server/PstManagerService;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->isAutoAnswer:Z
    invoke-static {v3}, Lcom/android/server/PstManagerService;->access$2400(Lcom/android/server/PstManagerService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1047
    :cond_5
    iget-object v3, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    # setter for: Lcom/android/server/PstManagerService;->isAutoCall:Z
    invoke-static {v3, v7}, Lcom/android/server/PstManagerService;->access$2702(Lcom/android/server/PstManagerService;Z)Z

    .line 1048
    iget-object v3, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    # setter for: Lcom/android/server/PstManagerService;->isAutoAnswer:Z
    invoke-static {v3, v7}, Lcom/android/server/PstManagerService;->access$2402(Lcom/android/server/PstManagerService;Z)Z

    .line 1049
    iget-object v3, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PstManagerService;->access$2500(Lcom/android/server/PstManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1050
    iget-object v3, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PstManagerService;->access$2500(Lcom/android/server/PstManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1051
    :cond_6
    iget-object v3, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/server/PstManagerService;->end_time:J
    invoke-static {v3, v4, v5}, Lcom/android/server/PstManagerService;->access$2802(Lcom/android/server/PstManagerService;J)J

    .line 1052
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PstManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->end_time:J
    invoke-static {v5}, Lcom/android/server/PstManagerService;->access$2800(Lcom/android/server/PstManagerService;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1055
    :cond_7
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1056
    iget-object v3, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->isAutoCall:Z
    invoke-static {v3}, Lcom/android/server/PstManagerService;->access$2700(Lcom/android/server/PstManagerService;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->isAutoAnswer:Z
    invoke-static {v3}, Lcom/android/server/PstManagerService;->access$2400(Lcom/android/server/PstManagerService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1057
    :cond_8
    iget-object v3, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    # setter for: Lcom/android/server/PstManagerService;->start_time:J
    invoke-static {v3, v8, v9}, Lcom/android/server/PstManagerService;->access$2902(Lcom/android/server/PstManagerService;J)J

    .line 1058
    iget-object v3, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    # setter for: Lcom/android/server/PstManagerService;->end_time:J
    invoke-static {v3, v8, v9}, Lcom/android/server/PstManagerService;->access$2802(Lcom/android/server/PstManagerService;J)J

    .line 1059
    iget-object v3, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/server/PstManagerService;->start_time:J
    invoke-static {v3, v4, v5}, Lcom/android/server/PstManagerService;->access$2902(Lcom/android/server/PstManagerService;J)J

    .line 1060
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PstManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PstManagerService$5;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->start_time:J
    invoke-static {v5}, Lcom/android/server/PstManagerService;->access$2900(Lcom/android/server/PstManagerService;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1066
    :pswitch_1
    :try_start_2
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1067
    .restart local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_9

    .line 1068
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1072
    .end local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v1

    .line 1073
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1070
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    :try_start_3
    const-string v3, "PstManagerService"

    const-string v4, "Unable to find ITelephony interface"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1027
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
