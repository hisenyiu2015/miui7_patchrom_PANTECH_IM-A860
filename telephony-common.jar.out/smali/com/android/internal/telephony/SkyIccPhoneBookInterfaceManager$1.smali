.class Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager$1;
.super Landroid/os/Handler;
.source "SkyIccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 149
    const-string v5, "SkyIccPhoneBookInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid msg.what("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 109
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;

    .line 110
    .local v3, "result":Lcom/android/internal/telephony/uicc/UiccPBMIoResult;
    if-eqz v3, :cond_1

    .line 111
    const/4 v4, 0x0

    .line 113
    .local v4, "resultBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->getPayLoad()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 114
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->getPayLoad()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 115
    .local v2, "payload":[B
    array-length v5, v2

    add-int/lit8 v5, v5, 0xc

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 116
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->getRecid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 117
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->getNumFields()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->getNumRecs()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 129
    .end local v2    # "payload":[B
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    # setter for: Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->access$002(Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;[B)[B

    .line 130
    iget-object v5, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    # getter for: Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B
    invoke-static {v5}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->access$000(Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;)[B

    move-result-object v5

    if-nez v5, :cond_0

    .line 131
    const-string v5, "SkyIccPhoneBookInterfaceManager"

    const-string v6, "returning value mPBMIoResult is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    const-string v5, "SkyIccPhoneBookInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPBMIoResult : rec_id("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->getRecid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "num_fields("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->getNumFields()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "num_recs("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->getNumRecs()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "payload("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->getPayLoad()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v4    # "resultBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    iget-object v5, v5, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mLock:Ljava/util/ArrayList;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 140
    .local v1, "lock":Ljava/lang/Object;
    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    .line 142
    const-string v5, "SkyIccPhoneBookInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage : result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 145
    :cond_2
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 121
    .end local v1    # "lock":Ljava/lang/Object;
    .restart local v4    # "resultBuffer":Ljava/nio/ByteBuffer;
    :cond_3
    const-string v5, "SkyIccPhoneBookInterfaceManager"

    const-string v6, "result.getPayload() is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/16 v5, 0xc

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 124
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->getRecid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->getNumFields()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 126
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;->getNumRecs()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
