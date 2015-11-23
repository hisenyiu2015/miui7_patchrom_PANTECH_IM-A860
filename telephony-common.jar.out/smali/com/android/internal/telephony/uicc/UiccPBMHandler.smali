.class public abstract Lcom/android/internal/telephony/uicc/UiccPBMHandler;
.super Landroid/os/Handler;
.source "UiccPBMHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field protected static final FW_QMI_PBM_DEL_RECORD:I = 0x3

.field protected static final FW_QMI_PBM_FUNC_MAX:I = 0xff

.field protected static final FW_QMI_PBM_GET_FILE_INFO:I = 0x8

.field protected static final FW_QMI_PBM_GET_PB_INFO:I = 0x6

.field protected static final FW_QMI_PBM_GET_PB_STATE:I = 0x0

.field protected static final FW_QMI_PBM_NUM_RECS:I = 0x7

.field protected static final FW_QMI_PBM_READ_GAS:I = 0x4

.field protected static final FW_QMI_PBM_READ_RECORD:I = 0x1

.field protected static final FW_QMI_PBM_SET_GAS:I = 0x5

.field protected static final FW_QMI_PBM_WRITE_RECORD:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "UiccPBMHandler"

.field private static final simulator:Z


# instance fields
.field protected phone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 68
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string v0, "UiccPBMHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UiccPBMHandler.java] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 156
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public fw_qmi_del_record(ILandroid/os/Message;)V
    .locals 8
    .param p1, "rec_id"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    const/4 v5, 0x0

    move v2, p1

    move v4, v3

    move v6, v3

    move-object v7, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->ril_pbmIO(IIII[BILandroid/os/Message;)V

    .line 142
    return-void
.end method

.method public fw_qmi_get_item_info(IILandroid/os/Message;)V
    .locals 8
    .param p1, "command"    # I
    .param p2, "parm1"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 81
    packed-switch p1, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 83
    :pswitch_0
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p3}, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 85
    .local v7, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v3, v2

    move v4, v2

    move v6, v2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->ril_pbmIO(IIII[BILandroid/os/Message;)V

    goto :goto_0

    .line 88
    .end local v7    # "response":Landroid/os/Message;
    :pswitch_1
    const/4 v0, 0x7

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p3}, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 90
    .restart local v7    # "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v3, v2

    move v4, p2

    move v6, v2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->ril_pbmIO(IIII[BILandroid/os/Message;)V

    goto :goto_0

    .line 93
    .end local v7    # "response":Landroid/os/Message;
    :pswitch_2
    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p3}, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 95
    .restart local v7    # "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v3, v2

    move v4, p2

    move v6, v2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->ril_pbmIO(IIII[BILandroid/os/Message;)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public fw_qmi_get_pb_state(ILandroid/os/Message;)V
    .locals 8
    .param p1, "session"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 74
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;

    invoke-direct {v0, v1, p2}, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 76
    .local v7, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    move v2, p1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->ril_pbmIO(IIII[BILandroid/os/Message;)V

    .line 77
    return-void
.end method

.method public fw_qmi_read_item(IIILandroid/os/Message;)V
    .locals 8
    .param p1, "command"    # I
    .param p2, "parm1"    # I
    .param p3, "parm2"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 104
    packed-switch p1, :pswitch_data_0

    .line 118
    :goto_0
    :pswitch_0
    return-void

    .line 106
    :pswitch_1
    const/4 v0, 0x1

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;

    invoke-direct {v1, p2, p4}, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 108
    .local v7, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, v4

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->ril_pbmIO(IIII[BILandroid/os/Message;)V

    goto :goto_0

    .line 111
    .end local v7    # "response":Landroid/os/Message;
    :pswitch_2
    const/4 v0, 0x4

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;

    invoke-direct {v1, v4, p4}, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 113
    .restart local v7    # "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, v4

    move v3, v4

    move v6, v4

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->ril_pbmIO(IIII[BILandroid/os/Message;)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public fw_qmi_write_item(III[BILandroid/os/Message;)V
    .locals 8
    .param p1, "command"    # I
    .param p2, "parm1"    # I
    .param p3, "parm2"    # I
    .param p4, "data"    # [B
    .param p5, "data_size"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 122
    packed-switch p1, :pswitch_data_0

    .line 136
    :goto_0
    :pswitch_0
    return-void

    .line 124
    :pswitch_1
    const/4 v0, 0x2

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;

    invoke-direct {v1, p2, p6}, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 126
    .local v7, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->ril_pbmIO(IIII[BILandroid/os/Message;)V

    goto :goto_0

    .line 129
    .end local v7    # "response":Landroid/os/Message;
    :pswitch_2
    const/4 v0, 0x5

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;

    invoke-direct {v1, p2, p6}, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 131
    .restart local v7    # "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->ril_pbmIO(IIII[BILandroid/os/Message;)V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 164
    const/4 v3, 0x0

    .line 169
    .local v3, "response":Landroid/os/Message;
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 180
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;

    .line 181
    .local v2, "lc":Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/UiccPBMIoResult;

    .line 182
    .local v4, "result":Lcom/android/internal/telephony/uicc/UiccPBMIoResult;
    iget-object v3, v2, Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    .line 183
    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "lc":Lcom/android/internal/telephony/uicc/UiccPBMHandler$LoadLinearFixedContext;
    .end local v4    # "result":Lcom/android/internal/telephony/uicc/UiccPBMIoResult;
    :catch_0
    move-exception v1

    .line 186
    .local v1, "exc":Ljava/lang/Exception;
    if-eqz v3, :cond_0

    .line 187
    invoke-direct {p0, v3, v6, v1}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 189
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uncaught exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    nop

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
    .end packed-switch
.end method
