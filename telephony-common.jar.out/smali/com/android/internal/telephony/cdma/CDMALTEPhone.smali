.class public Lcom/android/internal/telephony/cdma/CDMALTEPhone;
.super Lcom/android/internal/telephony/cdma/CDMAPhone;
.source "CDMALTEPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CDMALTEPhone$1;,
        Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final LOG_LTE_TAG:Ljava/lang/String; = "CDMALTEPhone"


# instance fields
.field private mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field private mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 77
    return-void
.end method

.method private handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 176
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;

    if-nez v3, :cond_1

    .line 177
    const-string v3, "unexpected result from user object."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->loge(Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;

    .line 185
    .local v1, "nsm":Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v3, :cond_2

    .line 186
    const-string v3, "sending original message to recipient"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 187
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 188
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 193
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 194
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 195
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "network_selection_key"

    iget-object v4, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    const-string v3, "network_selection_name_key"

    iget-object v4, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    const-string v3, "failed to commit network selection preference"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 99
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dispose()V

    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 352
    const-string v0, "CDMALTEPhone extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 285
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 113
    .local v0, "ret":Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-nez v1, :cond_0

    .line 117
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 149
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataConnectionState apnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 150
    return-object v0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mOosIsDisconnect:Z

    if-eqz v1, :cond_1

    .line 120
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataConnectionState: Data is Out of Service. ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 125
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$1;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 130
    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 136
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 138
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 140
    goto :goto_0

    .line 144
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 88
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleMessage(Landroid/os/Message;)V

    .line 90
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected initSstIcc()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 95
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 339
    const-string v0, "CDMALTEPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 343
    const-string v0, "CDMALTEPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 347
    const-string v0, "CDMALTEPhone"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 7

    .prologue
    .line 294
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v5, :cond_0

    .line 335
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 301
    .local v3, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    .line 303
    .local v1, "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-eqz v3, :cond_1

    .line 304
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .end local v1    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    check-cast v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 306
    .restart local v1    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    :cond_1
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 309
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 310
    const/4 v2, 0x0

    .line 311
    .local v2, "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    if-eqz v3, :cond_2

    .line 312
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .end local v2    # "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    check-cast v2, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 314
    .restart local v2    # "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eq v5, v2, :cond_5

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "bShutdown":Z
    const-string v5, "sys.shutdown.requested"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "shutdownAction":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 319
    const/4 v0, 0x1

    .line 323
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v5, :cond_4

    .line 324
    const-string v5, "Removing stale SIMRecords object."

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 325
    if-nez v0, :cond_4

    .line 326
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 328
    :cond_4
    if-eqz v2, :cond_5

    .line 329
    const-string v5, "New SIMRecords found"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 330
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 334
    .end local v0    # "bShutdown":Z
    .end local v4    # "shutdownAction":Ljava/lang/String;
    :cond_5
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onUpdateIccAvailability()V

    goto :goto_0
.end method

.method public removeReferences()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeReferences()V

    .line 107
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 290
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 4
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 159
    new-instance v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone$1;)V

    .line 160
    .local v1, "nsm":Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;
    iput-object p2, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 161
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 165
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 167
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    .line 168
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 6

    .prologue
    .line 228
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 230
    :try_start_0
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "current"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 231
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v1, "map":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "operatorNumeric":Ljava/lang/String;
    const-string v4, "numeric"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCurrentCarrierInProvider from UICC: numeric="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 236
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    const/4 v4, 0x1

    .line 244
    .end local v1    # "map":Landroid/content/ContentValues;
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return v4

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/database/SQLException;
    const-string v4, "Can\'t store current operator ret false"

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 244
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 242
    :cond_0
    const-string v4, "updateCurrentCarrierInProvider mIccRecords == null ret false"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    if-nez v1, :cond_0

    .line 216
    const-string v1, "updateCurrentCarrierInProvider APP_FAM_3GPP == null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 217
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    move-result v0

    .line 222
    .local v0, "retVal":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentCarrierInProvider X retVal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 223
    return v0

    .line 219
    .end local v0    # "retVal":Z
    :cond_0
    const-string v1, "updateCurrentCarrierInProvider not updated"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x1

    .restart local v0    # "retVal":Z
    goto :goto_0
.end method
