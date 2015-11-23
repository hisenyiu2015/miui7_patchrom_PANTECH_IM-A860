.class Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;
.super Landroid/os/Handler;
.source "SkyTelephonyInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 413
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 414
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 443
    :goto_0
    return-void

    .line 416
    :pswitch_0
    const-string v1, "SkyTelephony"

    const-string v2, "TRANSPARENT_EF_READ_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    monitor-enter v2

    .line 418
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_transparent_ef:[B
    invoke-static {v3, v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->access$1302(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;[B)[B

    .line 419
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->access$1402(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Z)Z

    .line 420
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 421
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 425
    :pswitch_1
    const-string v1, "SkyTelephony"

    const-string v2, "SMS_CENTER_ADDR_READ_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    monitor-enter v2

    .line 427
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_smsc:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->access$1502(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->access$1402(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Z)Z

    .line 429
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 430
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 434
    :pswitch_2
    const-string v2, "SkyTelephony"

    const-string v3, "PERSO_IND_SET_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    monitor-enter v2

    .line 436
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    :goto_1
    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_perso_ind:Z
    invoke-static {v3, v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->access$1602(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Z)Z

    .line 437
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->access$1402(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Z)Z

    .line 438
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 439
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 436
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 414
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
