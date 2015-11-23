.class public Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;
.super Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;
.source "SkyPBMSynchronizerImpl.java"


# static fields
.field private static DBG:Z = false

.field public static final SKYUSIMCONTACTS_CLASS_NAME:Ljava/lang/String; = "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl"

.field private static final TAG:Ljava/lang/String; = "USimPBMSynchronizer"

.field private static field_count:I

.field private static skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

.field private static total_data_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    const/4 v2, 0x1

    sput-boolean v2, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    .line 31
    const/4 v2, 0x0

    sput-object v2, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    .line 34
    :try_start_0
    const-string v2, "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 35
    .local v1, "skyUSimContactsClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    sput-object v2, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 46
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl could not be loaded"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 39
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 40
    .local v0, "ex":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 42
    .end local v0    # "ex":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 43
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteContact(I)Z
    .locals 10
    .param p1, "recordId"    # I

    .prologue
    const/4 v8, 0x0

    .line 338
    sget-boolean v1, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v1, :cond_0

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteContact()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 341
    :cond_0
    if-gtz p1, :cond_1

    move v1, v8

    .line 365
    :goto_0
    return v1

    .line 346
    :cond_1
    :try_start_0
    const-string v1, "skyusimphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISkyIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISkyIccPhoneBook;

    move-result-object v0

    .line 348
    .local v0, "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    if-eqz v0, :cond_4

    .line 349
    sget-object v9, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISkyIccPhoneBook;->fw_qmi_sky(IIII[B)[B

    move-result-object v1

    invoke-interface {v9, v1}, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->getRecordId([B)I

    move-result v7

    .line 351
    .local v7, "resultId":I
    sget-boolean v1, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v1, :cond_2

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fw_qmi_del_record_sky has returned resultId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 353
    :cond_2
    if-ne v7, p1, :cond_4

    .line 354
    sget-boolean v1, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v1, :cond_3

    .line 355
    const-string v1, "deleteContact() Succes."

    invoke-virtual {p0, v1}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 356
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 359
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    .end local v7    # "resultId":I
    :catch_0
    move-exception v6

    .line 360
    .local v6, "ex":Landroid/os/RemoteException;
    const-string v1, "USimPBMSynchronizer"

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    move v1, v8

    .line 365
    goto :goto_0

    .line 361
    :catch_1
    move-exception v6

    .line 362
    .local v6, "ex":Ljava/lang/SecurityException;
    const-string v1, "USimPBMSynchronizer"

    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public deleteGroup(I)Z
    .locals 10
    .param p1, "recordId"    # I

    .prologue
    const/4 v8, 0x0

    .line 370
    sget-boolean v1, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v1, :cond_0

    .line 371
    const-string v1, "deleteGroup()"

    invoke-virtual {p0, v1}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 374
    :cond_0
    if-gtz p1, :cond_1

    move v1, v8

    .line 394
    :goto_0
    return v1

    .line 379
    :cond_1
    :try_start_0
    const-string v1, "skyusimphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISkyIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISkyIccPhoneBook;

    move-result-object v0

    .line 381
    .local v0, "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    if-eqz v0, :cond_2

    .line 382
    sget-object v9, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    const/4 v1, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISkyIccPhoneBook;->fw_qmi_sky(IIII[B)[B

    move-result-object v1

    invoke-interface {v9, v1}, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->getRecordId([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 384
    .local v7, "resultId":I
    if-ne v7, p1, :cond_2

    .line 385
    const/4 v1, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    .end local v7    # "resultId":I
    :catch_0
    move-exception v6

    .line 389
    .local v6, "ex":Landroid/os/RemoteException;
    const-string v1, "USimPBMSynchronizer"

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    move v1, v8

    .line 394
    goto :goto_0

    .line 390
    :catch_1
    move-exception v6

    .line 391
    .local v6, "ex":Ljava/lang/SecurityException;
    const-string v1, "USimPBMSynchronizer"

    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCutUTFString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "len"    # I

    .prologue
    .line 551
    sget-boolean v7, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v7, :cond_0

    .line 552
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCutUTFString str : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " len : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 553
    :cond_0
    const/4 v5, 0x0

    .line 555
    .local v5, "nLength":I
    :try_start_0
    const-string v7, "KSC5601"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v5, v7
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_1
    :goto_0
    sget-boolean v7, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v7, :cond_2

    .line 562
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nLength : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " len : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 563
    :cond_2
    if-gt v5, p2, :cond_4

    .line 564
    sget-boolean v7, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v7, :cond_3

    .line 565
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "return str; : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 593
    .end local p1    # "str":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object p1

    .line 556
    .restart local p1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 557
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-boolean v7, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v7, :cond_1

    .line 558
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UnsupportedEncodingException e : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 569
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    const/4 v6, 0x0

    .line 570
    .local v6, "tempSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 572
    .local v4, "length":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 574
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    if-gt v3, v4, :cond_6

    .line 575
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 576
    .local v0, "asc":I
    const/16 v7, 0x7f

    if-le v0, v7, :cond_5

    .line 577
    add-int/lit8 v7, v6, 0x1

    if-le p2, v7, :cond_6

    .line 578
    add-int/lit8 v6, v6, 0x2

    .line 579
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 574
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 583
    :cond_5
    if-le p2, v6, :cond_6

    .line 584
    add-int/lit8 v6, v6, 0x1

    .line 585
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 591
    .end local v0    # "asc":I
    :cond_6
    sget-boolean v7, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v7, :cond_7

    .line 592
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buffer.toString() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 593
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public getKTValidKSC5601(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 24
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 490
    if-nez p1, :cond_0

    const/4 v8, 0x0

    .line 547
    :goto_0
    return-object v8

    .line 492
    :cond_0
    sget-boolean v20, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v20, :cond_1

    .line 493
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getKTValidKSC5601("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 495
    :cond_1
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 498
    .local v16, "ksc5601_start":[B
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v15, v0, [B

    fill-array-data v15, :array_1

    .line 501
    .local v15, "ksc5601_end":[B
    const/16 v20, 0x0

    aget-byte v13, v16, v20

    .line 502
    .local v13, "k1":B
    const/16 v20, 0x1

    aget-byte v14, v16, v20

    .line 503
    .local v14, "k2":B
    const/16 v20, 0x0

    aget-byte v11, v15, v20

    .line 504
    .local v11, "e1":B
    const/16 v20, 0x1

    aget-byte v12, v15, v20

    .line 506
    .local v12, "e2":B
    const/4 v8, 0x0

    .line 509
    .local v8, "data":Ljava/nio/ByteBuffer;
    :try_start_0
    const-string v20, "KSC5601"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 510
    .local v6, "bytes":[B
    array-length v0, v6

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 512
    array-length v7, v6

    .line 513
    .local v7, "bytes_length":I
    const/16 v17, 0x0

    .local v17, "pos":I
    move/from16 v18, v17

    .line 514
    .end local v17    # "pos":I
    .local v18, "pos":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v7, :cond_9

    .line 515
    aget-byte v20, v6, v18

    if-ltz v20, :cond_2

    aget-byte v20, v6, v18

    const/16 v21, 0x7f

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    .line 516
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "pos":I
    .restart local v17    # "pos":I
    aget-byte v20, v6, v18

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 517
    sget-boolean v20, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v20, :cond_a

    .line 518
    const-string v20, "getKTValidKSC5601() ascii"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    move/from16 v18, v17

    .end local v17    # "pos":I
    .restart local v18    # "pos":I
    goto :goto_1

    .line 520
    :cond_2
    aget-byte v4, v6, v18

    .line 521
    .local v4, "b1":B
    add-int/lit8 v20, v18, 0x1

    aget-byte v5, v6, v20

    .line 522
    .local v5, "b2":B
    sget-boolean v20, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v20, :cond_3

    .line 523
    const-string v20, "b1(%d), b2(%d), k1(%d), k2(%d)"

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 524
    :cond_3
    if-lt v4, v13, :cond_5

    if-ne v4, v13, :cond_4

    if-lt v5, v14, :cond_5

    :cond_4
    if-gt v4, v11, :cond_5

    if-ne v4, v11, :cond_7

    if-le v5, v12, :cond_7

    .line 526
    :cond_5
    sget-boolean v20, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v20, :cond_6

    .line 527
    const-string v20, "getKTValidKSC5601() ksc5601 invalid"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 528
    :cond_6
    add-int/lit8 v17, v18, 0x1

    .line 529
    .end local v18    # "pos":I
    .restart local v17    # "pos":I
    add-int/lit8 v17, v17, 0x1

    :goto_2
    move/from16 v18, v17

    .line 536
    .end local v17    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1

    .line 531
    :cond_7
    sget-boolean v20, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v20, :cond_8

    .line 532
    const-string v20, "getKTValidKSC5601() ksc5601 valid"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 533
    :cond_8
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "pos":I
    .restart local v17    # "pos":I
    aget-byte v20, v6, v18

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 534
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "pos":I
    .restart local v18    # "pos":I
    aget-byte v20, v6, v17

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move/from16 v17, v18

    .end local v18    # "pos":I
    .restart local v17    # "pos":I
    goto :goto_2

    .line 539
    .end local v4    # "b1":B
    .end local v5    # "b2":B
    .end local v17    # "pos":I
    .restart local v18    # "pos":I
    :cond_9
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 540
    .local v9, "data_size":I
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 541
    .local v19, "tmp":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    move-object/from16 v8, v19

    goto/16 :goto_0

    .line 543
    .end local v6    # "bytes":[B
    .end local v7    # "bytes_length":I
    .end local v9    # "data_size":I
    .end local v18    # "pos":I
    .end local v19    # "tmp":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v10

    .line 544
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    const-string v20, "USimPBMSynchronizer"

    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v10    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v6    # "bytes":[B
    .restart local v7    # "bytes_length":I
    .restart local v17    # "pos":I
    :cond_a
    move/from16 v18, v17

    .end local v17    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1

    .line 495
    nop

    :array_0
    .array-data 1
        -0x5ft
        -0x5ft
    .end array-data

    .line 498
    nop

    :array_1
    .array-data 1
        -0x3t
        -0x2t
    .end array-data
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 597
    const-string v0, "USimPBMSynchronizer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void
.end method

.method public updateContact(Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recordId"    # I
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 52
    sget-boolean v3, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v3, :cond_0

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateContact : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 55
    :cond_0
    if-nez p3, :cond_2

    .line 56
    const/high16 v23, -0x80000000

    .line 246
    :cond_1
    :goto_0
    return v23

    .line 59
    :cond_2
    const/high16 v23, -0x80000000

    .line 61
    .local v23, "resultId":I
    const-string v3, "KT"

    invoke-static {v3}, Lcom/pantech/provider/skycontacts/DeviceInfo;->equalsOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 62
    const-string v3, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 63
    const-string v3, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 64
    .local v19, "name":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->getKTValidKSC5601(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 66
    .local v9, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v9, :cond_b

    .line 68
    :try_start_0
    new-instance v20, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const-string v4, "KSC5601"

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v19    # "name":Ljava/lang/String;
    .local v20, "name":Ljava/lang/String;
    move-object/from16 v19, v20

    .line 72
    .end local v20    # "name":Ljava/lang/String;
    .restart local v19    # "name":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 74
    const v3, 0x104000e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 76
    :cond_3
    const-string v3, "name"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v9    # "buffer":Ljava/nio/ByteBuffer;
    .end local v19    # "name":Ljava/lang/String;
    :cond_4
    const-string v3, "email"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 84
    const-string v3, "email"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 85
    .local v12, "email":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 86
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->getKTValidKSC5601(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 87
    .restart local v9    # "buffer":Ljava/nio/ByteBuffer;
    if-eqz v9, :cond_c

    .line 89
    :try_start_1
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const-string v4, "KSC5601"

    invoke-direct {v13, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v12    # "email":Ljava/lang/String;
    .local v13, "email":Ljava/lang/String;
    move-object v12, v13

    .line 93
    .end local v13    # "email":Ljava/lang/String;
    .restart local v12    # "email":Ljava/lang/String;
    :goto_2
    const-string v3, "email"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .end local v9    # "buffer":Ljava/nio/ByteBuffer;
    .end local v12    # "email":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v3, "skyusimphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISkyIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISkyIccPhoneBook;

    move-result-object v2

    .line 104
    .local v2, "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    if-eqz v2, :cond_1

    .line 106
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v17, "mNewData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 110
    .local v15, "inputBasicField":I
    const-string v3, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 111
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    or-int/lit8 v15, v15, 0x1

    .line 115
    :cond_6
    const-string v3, "number"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 116
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "number"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    or-int/lit8 v15, v15, 0x10

    .line 120
    :cond_7
    const-string v3, "addnumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 121
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "addnumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    or-int/lit16 v15, v15, 0x100

    .line 126
    :cond_8
    const-string v3, "group_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 127
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "group_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_9
    const-string v3, "email"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 132
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "email"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    .line 133
    or-int/lit16 v15, v15, 0x1000

    .line 137
    :cond_a
    if-nez v15, :cond_d

    .line 138
    const/high16 v23, -0x80000000

    goto/16 :goto_0

    .line 69
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    .end local v15    # "inputBasicField":I
    .end local v17    # "mNewData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v9    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v19    # "name":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 70
    .local v11, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 78
    .end local v11    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_b
    const/high16 v23, -0x80000000

    goto/16 :goto_0

    .line 90
    .end local v19    # "name":Ljava/lang/String;
    .restart local v12    # "email":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 91
    .restart local v11    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_2

    .line 95
    .end local v11    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_c
    const/high16 v23, -0x80000000

    goto/16 :goto_0

    .line 141
    .end local v9    # "buffer":Ljava/nio/ByteBuffer;
    .end local v12    # "email":Ljava/lang/String;
    .restart local v2    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    .restart local v15    # "inputBasicField":I
    .restart local v17    # "mNewData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_d
    const/16 v22, 0x11

    .line 142
    .local v22, "result":I
    const/16 v24, 0x0

    .line 143
    .local v24, "tryCount":I
    const/16 v18, 0x5

    .local v18, "maxTryCount":I
    move/from16 v25, v24

    .line 149
    .end local v24    # "tryCount":I
    .local v25, "tryCount":I
    :goto_3
    if-eqz v15, :cond_17

    if-eqz v22, :cond_17

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "tryCount":I
    .restart local v24    # "tryCount":I
    move/from16 v0, v25

    move/from16 v1, v18

    if-ge v0, v1, :cond_18

    .line 151
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->usimToByteBuffer(Ljava/util/Map;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 152
    .local v10, "data":Ljava/nio/ByteBuffer;
    if-eqz v10, :cond_19

    .line 153
    sget v6, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->total_data_size:I

    .line 154
    .local v6, "data_size":I
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 156
    .local v7, "btdata":[B
    const/4 v3, 0x3

    sget v5, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->field_count:I

    move/from16 v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ISkyIccPhoneBook;->fw_qmi_sky(IIII[B)[B

    move-result-object v16

    .line 158
    .local v16, "ioResult":[B
    sget-object v3, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->getPayload([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 159
    sget-boolean v3, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v3, :cond_e

    .line 160
    const-string v3, "fw_qmi_write_record_sky success."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 161
    :cond_e
    sget-object v3, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->getRecordId([B)I

    move-result v23

    .line 162
    if-nez p2, :cond_10

    .line 163
    if-lez v23, :cond_f

    .line 164
    const/16 v22, 0x0

    :cond_f
    :goto_4
    move/from16 v25, v24

    .line 234
    .end local v24    # "tryCount":I
    .restart local v25    # "tryCount":I
    goto :goto_3

    .line 167
    .end local v25    # "tryCount":I
    .restart local v24    # "tryCount":I
    :cond_10
    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 168
    const/16 v22, 0x0

    goto :goto_4

    .line 172
    :cond_11
    sget-object v3, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->getPayload([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 173
    sget-boolean v3, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v3, :cond_12

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fw_qmi_write_record_sky() : result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 176
    :cond_12
    packed-switch v22, :pswitch_data_0

    goto :goto_4

    .line 222
    :pswitch_0
    sget-boolean v3, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v3, :cond_13

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fw_qmi_write_record_sky fail : QMI_ERR_MEM_FULL_EMAIL_V01("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 225
    :cond_13
    const-string v3, "email"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 226
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    xor-int/lit16 v15, v15, 0x1000

    .line 228
    goto :goto_4

    .line 178
    :pswitch_1
    sget-boolean v3, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v3, :cond_14

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fw_qmi_write_record_sky fail : QMI_ERR_MEM_FULL_ANR_V01("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 181
    :cond_14
    const-string v3, "addnumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 182
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    xor-int/lit16 v15, v15, 0x100

    .line 184
    goto/16 :goto_4

    .line 187
    :pswitch_2
    sget-boolean v3, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v3, :cond_15

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fw_qmi_write_record_sky fail : QMI_ERR_MEM_FULL_EXT_V01("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 193
    :cond_15
    const-string v3, "addnumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 194
    const-string v3, "addnumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 197
    .local v8, "addNumber":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_16

    .line 199
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->getCutUTFString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 201
    const-string v3, "addnumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_4

    .line 240
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    .end local v6    # "data_size":I
    .end local v7    # "btdata":[B
    .end local v8    # "addNumber":Ljava/lang/String;
    .end local v10    # "data":Ljava/nio/ByteBuffer;
    .end local v15    # "inputBasicField":I
    .end local v16    # "ioResult":[B
    .end local v17    # "mNewData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v18    # "maxTryCount":I
    .end local v22    # "result":I
    .end local v24    # "tryCount":I
    :catch_2
    move-exception v14

    .line 241
    .local v14, "ex":Landroid/os/RemoteException;
    const-string v3, "USimPBMSynchronizer"

    invoke-virtual {v14}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    .end local v14    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    .restart local v6    # "data_size":I
    .restart local v7    # "btdata":[B
    .restart local v10    # "data":Ljava/nio/ByteBuffer;
    .restart local v15    # "inputBasicField":I
    .restart local v16    # "ioResult":[B
    .restart local v17    # "mNewData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v18    # "maxTryCount":I
    .restart local v22    # "result":I
    .restart local v24    # "tryCount":I
    :cond_16
    :try_start_4
    const-string v3, "number"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 208
    const-string v3, "number"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 211
    .local v21, "number":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_f

    .line 212
    const/16 v3, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->getCutUTFString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    .line 214
    const-string v3, "number"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_4

    .line 242
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    .end local v6    # "data_size":I
    .end local v7    # "btdata":[B
    .end local v10    # "data":Ljava/nio/ByteBuffer;
    .end local v15    # "inputBasicField":I
    .end local v16    # "ioResult":[B
    .end local v17    # "mNewData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v18    # "maxTryCount":I
    .end local v21    # "number":Ljava/lang/String;
    .end local v22    # "result":I
    .end local v24    # "tryCount":I
    :catch_3
    move-exception v14

    .line 243
    .local v14, "ex":Ljava/lang/SecurityException;
    const-string v3, "USimPBMSynchronizer"

    invoke-virtual {v14}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v14    # "ex":Ljava/lang/SecurityException;
    .restart local v2    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    .restart local v15    # "inputBasicField":I
    .restart local v17    # "mNewData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v18    # "maxTryCount":I
    .restart local v22    # "result":I
    .restart local v25    # "tryCount":I
    :cond_17
    move/from16 v24, v25

    .line 237
    .end local v25    # "tryCount":I
    .restart local v24    # "tryCount":I
    :cond_18
    :try_start_5
    sget-boolean v3, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v3, :cond_1

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .restart local v10    # "data":Ljava/nio/ByteBuffer;
    :cond_19
    move/from16 v25, v24

    .end local v24    # "tryCount":I
    .restart local v25    # "tryCount":I
    goto/16 :goto_3

    .line 176
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateGroup(ILandroid/content/ContentValues;)I
    .locals 16
    .param p1, "recordId"    # I
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 251
    sget-boolean v2, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v2, :cond_0

    .line 252
    const-string v2, "updateGroup()"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 254
    :cond_0
    if-nez p2, :cond_2

    .line 255
    const/high16 v14, -0x80000000

    .line 333
    :cond_1
    :goto_0
    return v14

    .line 258
    :cond_2
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 259
    const/high16 v14, -0x80000000

    goto :goto_0

    .line 262
    :cond_3
    const/high16 v14, -0x80000000

    .line 264
    .local v14, "resultId":I
    sget-object v2, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->getFieldLength(II)I

    move-result v10

    .line 265
    .local v10, "gasNumber":I
    if-gtz v10, :cond_4

    .line 266
    const-string v2, "USimPBMSynchronizer"

    const-string v3, "GAS field not surpported."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/high16 v14, -0x80000000

    goto :goto_0

    .line 270
    :cond_4
    const-string v2, "KT"

    invoke-static {v2}, Lcom/pantech/provider/skycontacts/DeviceInfo;->equalsOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 271
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 272
    .local v12, "name":Ljava/lang/String;
    if-eqz v12, :cond_8

    .line 273
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->getKTValidKSC5601(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 274
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v7, :cond_7

    .line 276
    :try_start_0
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const-string v3, "KSC5601"

    invoke-direct {v13, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v12    # "name":Ljava/lang/String;
    .local v13, "name":Ljava/lang/String;
    move-object v12, v13

    .line 280
    .end local v13    # "name":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    :goto_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 281
    const/high16 v14, -0x80000000

    goto :goto_0

    .line 277
    :catch_0
    move-exception v8

    .line 278
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 283
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_5
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .end local v12    # "name":Ljava/lang/String;
    :cond_6
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 293
    .local v11, "groupName":Ljava/lang/String;
    if-nez v11, :cond_9

    .line 294
    const/high16 v14, -0x80000000

    goto :goto_0

    .line 285
    .end local v11    # "groupName":Ljava/lang/String;
    .restart local v7    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v12    # "name":Ljava/lang/String;
    :cond_7
    const/high16 v14, -0x80000000

    goto :goto_0

    .line 288
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    :cond_8
    const/high16 v14, -0x80000000

    goto :goto_0

    .line 298
    .end local v12    # "name":Ljava/lang/String;
    .restart local v11    # "groupName":Ljava/lang/String;
    :cond_9
    :try_start_1
    const-string v2, "skyusimphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISkyIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISkyIccPhoneBook;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    .line 300
    .local v1, "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    if-eqz v1, :cond_1

    .line 302
    const/4 v6, 0x0

    .line 303
    .local v6, "btdata":[B
    const/4 v5, 0x0

    .line 306
    .local v5, "data_size":I
    :try_start_2
    const-string v2, "KSC5601"

    invoke-virtual {v11, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 307
    array-length v5, v6
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    .line 312
    :goto_2
    if-nez p1, :cond_a

    .line 313
    :try_start_3
    sget-object v15, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    const/4 v2, 0x6

    const/4 v4, 0x0

    move/from16 v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ISkyIccPhoneBook;->fw_qmi_sky(IIII[B)[B

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->getRecordId([B)I

    move-result v14

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertGroup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 316
    if-gtz v14, :cond_1

    .line 317
    const/high16 v14, -0x80000000

    goto/16 :goto_0

    .line 308
    :catch_1
    move-exception v8

    .line 309
    .restart local v8    # "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "USimPBMSynchronizer"

    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 327
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    .end local v5    # "data_size":I
    .end local v6    # "btdata":[B
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v9

    .line 328
    .local v9, "ex":Landroid/os/RemoteException;
    const-string v2, "USimPBMSynchronizer"

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    .end local v9    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    .restart local v5    # "data_size":I
    .restart local v6    # "btdata":[B
    :cond_a
    :try_start_4
    sget-object v15, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    const/4 v2, 0x6

    const/4 v4, 0x1

    move/from16 v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ISkyIccPhoneBook;->fw_qmi_sky(IIII[B)[B

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->getRecordId([B)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v14

    .line 322
    move/from16 v0, p1

    if-ne v14, v0, :cond_1

    goto/16 :goto_0

    .line 329
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    .end local v5    # "data_size":I
    .end local v6    # "btdata":[B
    :catch_3
    move-exception v9

    .line 330
    .local v9, "ex":Ljava/lang/SecurityException;
    const-string v2, "USimPBMSynchronizer"

    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public usimToByteBuffer(Ljava/util/Map;)Ljava/nio/ByteBuffer;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "usimData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 399
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .line 400
    .local v6, "nLength":I
    const/4 v9, 0x0

    sput v9, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->field_count:I

    .line 401
    const/4 v9, 0x0

    sput v9, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->total_data_size:I

    .line 403
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v9, 0x4

    if-gt v5, v9, :cond_2

    .line 405
    const/4 v4, 0x0

    .line 406
    .local v4, "header":[B
    const/4 v2, 0x0

    .line 408
    .local v2, "data":Ljava/nio/ByteBuffer;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 409
    .local v7, "str":Ljava/lang/String;
    sget-boolean v9, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v9, :cond_0

    .line 410
    const-string v9, "UsimToByteBuffer() : usimData.get(%d,%s)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 412
    :cond_0
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 414
    sget-boolean v9, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->DBG:Z

    if-eqz v9, :cond_1

    .line 415
    const-string v9, "UsimToByteBuffer() ??? "

    invoke-virtual {p0, v9}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->log(Ljava/lang/String;)V

    .line 419
    :cond_1
    if-nez v5, :cond_6

    .line 420
    :try_start_0
    const-string v9, "KT"

    invoke-static {v9}, Lcom/pantech/provider/skycontacts/DeviceInfo;->equalsOperator(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 421
    invoke-virtual {p0, v7}, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->getKTValidKSC5601(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 458
    :goto_1
    if-eqz v2, :cond_4

    .line 459
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    array-length v6, v9

    .line 461
    const-string v9, "%01d%04d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "KSC5601"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 462
    if-nez v4, :cond_4

    .line 463
    const/4 v0, 0x0

    .line 486
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "data":Ljava/nio/ByteBuffer;
    .end local v4    # "header":[B
    .end local v7    # "str":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v0

    .line 424
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "data":Ljava/nio/ByteBuffer;
    .restart local v4    # "header":[B
    .restart local v7    # "str":Ljava/lang/String;
    :cond_3
    const-string v9, "KSC5601"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 425
    .local v1, "bytes":[B
    array-length v9, v1

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 426
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 466
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v3

    .line 467
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v9, "USimPBMSynchronizer"

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 471
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    array-length v9, v9

    array-length v10, v4

    add-int/2addr v9, v10

    add-int/2addr v9, v6

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 473
    .local v8, "tmp":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    array-length v11, v11

    array-length v12, v4

    invoke-static {v4, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    array-length v12, v12

    array-length v13, v4

    add-int/2addr v12, v13

    invoke-static {v9, v10, v11, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    move-object v0, v8

    .line 479
    sget v9, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->field_count:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->field_count:I

    .line 480
    sget v9, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->total_data_size:I

    add-int/2addr v9, v6

    sput v9, Lcom/pantech/provider/skycontacts/impl/SkyPBMSynchronizerImpl;->total_data_size:I

    .line 403
    .end local v8    # "tmp":Ljava/nio/ByteBuffer;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 429
    :cond_6
    const/4 v9, 0x1

    if-eq v5, v9, :cond_7

    const/4 v9, 0x2

    if-ne v5, v9, :cond_8

    .line 432
    :cond_7
    :try_start_1
    const-string v9, "KT"

    invoke-static {v9}, Lcom/pantech/provider/skycontacts/DeviceInfo;->equalsOperator(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 433
    const-string v9, ";"

    const-string v10, "D"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 436
    const-string v9, ","

    const-string v10, "C"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 449
    :cond_8
    const-string v9, "KSC5601"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 450
    .restart local v1    # "bytes":[B
    array-length v9, v1

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 451
    if-nez v2, :cond_9

    .line 452
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 455
    :cond_9
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
