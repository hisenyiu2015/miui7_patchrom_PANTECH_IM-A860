.class Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
.super Ljava/lang/Thread;
.source "SkyTelephonyInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Accessdata"
.end annotation


# static fields
.field private static final PERSO_IND_SET_COMPLETE:I = 0x66

.field private static final SMS_CENTER_ADDR_READ_COMPLETE:I = 0x65

.field private static final TRANSPARENT_EF_READ_COMPLETE:I = 0x64


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private result_lang:Ljava/lang/String;

.field private result_perso_ind:Z

.field private result_smsc:Ljava/lang/String;

.field private result_transparent_ef:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z

    .line 403
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 404
    return-void
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    .param p1, "x1"    # [B

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_transparent_ef:[B

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    .param p1, "x1"    # Z

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_smsc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;
    .param p1, "x1"    # Z

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_perso_ind:Z

    return p1
.end method


# virtual methods
.method declared-synchronized activatePersoInd(Ljava/lang/String;ZI)Z
    .locals 4
    .param p1, "dck"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "perso_feature"    # I

    .prologue
    .line 524
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 526
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 527
    :catch_0
    move-exception v1

    .line 528
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 524
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 531
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 533
    .local v0, "callback":Landroid/os/Message;
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPersoFeatureInd(Ljava/lang/String;ZILandroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 539
    :goto_1
    :try_start_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_1

    .line 541
    :try_start_6
    const-string v2, "SkyTelephony"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 543
    :catch_1
    move-exception v1

    .line 545
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 534
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 535
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z

    .line 536
    const-string v2, "SkyTelephony"

    const-string v3, "Perso Ind setting Error Occured !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 548
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, "SkyTelephony"

    const-string v3, "activatePersoInd  done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 550
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_perso_ind:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return v2
.end method

.method declared-synchronized readEFTransparent(I)[B
    .locals 5
    .param p1, "fileid"    # I

    .prologue
    .line 452
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 454
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v1

    .line 456
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 452
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 459
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 462
    .local v0, "callback":Landroid/os/Message;
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 468
    :cond_1
    :goto_1
    :try_start_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_2

    .line 470
    const-wide/16 v2, 0xfa0

    :try_start_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 471
    const-string v2, "SkyTelephony"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v2, :cond_1

    .line 480
    :cond_2
    :try_start_7
    const-string v2, "SkyTelephony"

    const-string v3, "readEFTransparent  done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 482
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_transparent_ef:[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v2

    .line 463
    :catch_1
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_8
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z

    .line 465
    const-string v2, "SkyTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF read Error Occured !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 475
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 477
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized readSmscAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 488
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 490
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v1

    .line 492
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 488
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 495
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 497
    .local v0, "callback":Landroid/os/Message;
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSmscAddress(Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 503
    :cond_1
    :goto_1
    :try_start_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_2

    .line 505
    const-wide/16 v2, 0xfa0

    :try_start_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 506
    const-string v2, "SkyTelephony"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v2, :cond_1

    .line 515
    :cond_2
    :try_start_7
    const-string v2, "SkyTelephony"

    const-string v3, "readSmscAddress  done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 517
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->result_smsc:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v2

    .line 498
    :catch_1
    move-exception v1

    .line 499
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_8
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mDone:Z

    .line 500
    const-string v2, "SkyTelephony"

    const-string v3, "SMSC read Error Occured !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 510
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 512
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public run()V
    .locals 1

    .prologue
    .line 408
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 409
    monitor-enter p0

    .line 410
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata$1;-><init>(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$Accessdata;->mHandler:Landroid/os/Handler;

    .line 445
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 446
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 448
    return-void

    .line 446
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
