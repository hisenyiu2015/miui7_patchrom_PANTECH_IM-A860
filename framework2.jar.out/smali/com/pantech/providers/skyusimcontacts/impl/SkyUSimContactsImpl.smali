.class public final Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;
.super Ljava/lang/Object;
.source "SkyUSimContactsImpl.java"

# interfaces
.implements Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;


# static fields
.field private static final PUSIM_CHECKLOAD:I = 0x1002

.field private static final PUSIM_FREE_COUTNT:I = 0x1023

.field private static final PUSIM_FREE_FIELD_COUNT:I = 0x1025

.field private static final PUSIM_FREE_GRP_COUNT:I = 0x1024

.field private static final PUSIM_MAX_COUTNT:I = 0x1003

.field private static final PUSIM_MAX_GRP_COUTNT:I = 0x1005

.field private static final PUSIM_NUM_COUNT:I = 0x1004

.field private static final PUSIM_NUM_GRP_COUNT:I = 0x1006

.field private static final TAG:Ljava/lang/String; = "SkyUSimContacts"

.field private static final USIM_RECORD_DEFAULT:I = 0x1000

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->sUriMatcher:Landroid/content/UriMatcher;

    .line 38
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->sUriMatcher:Landroid/content/UriMatcher;

    .line 40
    .local v0, "matcher":Landroid/content/UriMatcher;
    const-string v1, "com.pantech.skyusimcontacts"

    const-string v2, "usimcheckload"

    const/16 v3, 0x1002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    const-string v1, "com.pantech.skyusimcontacts"

    const-string v2, "usimcount"

    const/16 v3, 0x1003

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    const-string v1, "com.pantech.skyusimcontacts"

    const-string v2, "usimnumcount"

    const/16 v3, 0x1004

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    const-string v1, "com.pantech.skyusimcontacts"

    const-string v2, "usimcountgrp"

    const/16 v3, 0x1005

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    const-string v1, "com.pantech.skyusimcontacts"

    const-string v2, "usimnumgrpcount"

    const/16 v3, 0x1006

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    const-string v1, "com.pantech.skyusimcontacts"

    const-string v2, "usimfreecount"

    const/16 v3, 0x1023

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    const-string v1, "com.pantech.skyusimcontacts"

    const-string v2, "usimfreegrpcount"

    const/16 v3, 0x1024

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    const-string v1, "com.pantech.skyusimcontacts"

    const-string v2, "usimfreefieldcount/#"

    const/16 v3, 0x1025

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRecordCountFromPBM(II)I
    .locals 12
    .param p1, "mode"    # I
    .param p2, "subfn"    # I

    .prologue
    const/4 v11, 0x0

    .line 296
    :try_start_0
    const-string v1, "skyusimphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISkyIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISkyIccPhoneBook;

    move-result-object v0

    .line 298
    .local v0, "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    if-eqz v0, :cond_0

    .line 299
    const/16 v1, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISkyIccPhoneBook;->fw_qmi_sky(IIII[B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->getPayload([B)Ljava/lang/String;

    move-result-object v8

    .line 302
    .local v8, "strResult":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    const-string v1, "\t"

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 304
    .local v9, "tmp":[Ljava/lang/String;
    array-length v1, v9

    if-lez v1, :cond_0

    .line 305
    const/4 v1, 0x1

    aget-object v1, v9, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 306
    .local v7, "maxCount":I
    const/4 v1, 0x2

    aget-object v1, v9, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 308
    .local v10, "usedCount":I
    packed-switch p1, :pswitch_data_0

    .end local v0    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    .end local v7    # "maxCount":I
    .end local v8    # "strResult":Ljava/lang/String;
    .end local v9    # "tmp":[Ljava/lang/String;
    .end local v10    # "usedCount":I
    :cond_0
    :goto_0
    move v7, v11

    .line 325
    :goto_1
    :pswitch_0
    return v7

    .restart local v0    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    .restart local v7    # "maxCount":I
    .restart local v8    # "strResult":Ljava/lang/String;
    .restart local v9    # "tmp":[Ljava/lang/String;
    .restart local v10    # "usedCount":I
    :pswitch_1
    move v7, v10

    .line 312
    goto :goto_1

    .line 314
    :pswitch_2
    sub-int/2addr v7, v10

    goto :goto_1

    .line 319
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    .end local v7    # "maxCount":I
    .end local v8    # "strResult":Ljava/lang/String;
    .end local v9    # "tmp":[Ljava/lang/String;
    .end local v10    # "usedCount":I
    :catch_0
    move-exception v6

    .line 320
    .local v6, "ex":Landroid/os/RemoteException;
    const-string v1, "SkyUSimContacts"

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 322
    .local v6, "ex":Ljava/lang/SecurityException;
    const-string v1, "SkyUSimContacts"

    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getFieldCount(I)I
    .locals 3
    .param p1, "fieldType"    # I

    .prologue
    const/4 v2, 0x0

    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "fieldCount":I
    packed-switch p1, :pswitch_data_0

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 183
    :pswitch_0
    invoke-virtual {p0, v2, v2}, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->getFieldLength(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->getFieldLength(II)I

    move-result v1

    if-lez v1, :cond_1

    .line 188
    add-int/lit8 v0, v0, 0x1

    .line 189
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->getFieldLength(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :pswitch_2
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->getFieldLength(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :pswitch_3
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->getFieldLength(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getFieldLength(II)I
    .locals 13
    .param p1, "fieldType"    # I
    .param p2, "flag"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 206
    const/4 v9, 0x5

    if-le p1, v9, :cond_1

    .line 207
    const-string v9, "SkyUSimContacts"

    const-string v10, "fieldType is invalid."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    .line 244
    :cond_0
    :goto_0
    return v3

    .line 211
    :cond_1
    const/4 v7, 0x0

    .line 213
    .local v7, "pbrInfo":[Ljava/lang/String;
    :try_start_0
    const-string v9, "skyusimphonebook"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ISkyIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISkyIccPhoneBook;

    move-result-object v5

    .line 215
    .local v5, "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    if-eqz v5, :cond_2

    .line 216
    invoke-interface {v5}, Lcom/android/internal/telephony/ISkyIccPhoneBook;->getPbrInfo()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 224
    .end local v5    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    :cond_2
    :goto_1
    if-nez v7, :cond_3

    move v3, v8

    .line 225
    goto :goto_0

    .line 218
    :catch_0
    move-exception v2

    .line 219
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v9, "SkyUSimContacts"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 220
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 221
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v9, "SkyUSimContacts"

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 229
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :cond_3
    :try_start_1
    array-length v0, v7

    .line 230
    .local v0, "count":I
    const/4 v3, 0x0

    .line 231
    .local v3, "fieldLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_0

    .line 232
    aget-object v9, v7, v4

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, "infoArray2":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, p1, :cond_4

    .line 234
    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 235
    const-string v9, "SkyUSimContacts"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPbrFieldLength("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 236
    if-ne p2, v12, :cond_0

    .line 237
    const/16 v3, 0x14

    goto :goto_0

    .line 231
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 243
    .end local v0    # "count":I
    .end local v3    # "fieldLength":I
    .end local v4    # "i":I
    .end local v6    # "infoArray2":[Ljava/lang/String;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    move v3, v8

    .line 244
    goto/16 :goto_0
.end method

.method public getFieldsNumber([B)I
    .locals 3
    .param p1, "result"    # [B

    .prologue
    const/4 v1, 0x0

    .line 342
    if-eqz p1, :cond_0

    .line 343
    array-length v2, p1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 344
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 345
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 346
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 350
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    return v1
.end method

.method public getPayload([B)Ljava/lang/String;
    .locals 4
    .param p1, "result"    # [B

    .prologue
    .line 368
    if-eqz p1, :cond_0

    .line 369
    array-length v3, p1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 370
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 371
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    add-int/lit8 v3, v3, -0xc

    new-array v1, v3, [B

    .line 372
    .local v1, "payload":[B
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 373
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 374
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 378
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "payload":[B
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPbrDefNumFieldLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    const/16 v0, 0x14

    return v0
.end method

.method public getPbrFieldLength(I)I
    .locals 12
    .param p1, "fieldType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 250
    const/4 v9, 0x5

    if-le p1, v9, :cond_1

    .line 251
    const-string v9, "SkyUSimContacts"

    const-string v10, "fieldType is invalid."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    .line 285
    :cond_0
    :goto_0
    return v3

    .line 255
    :cond_1
    const/4 v7, 0x0

    .line 257
    .local v7, "pbrInfo":[Ljava/lang/String;
    :try_start_0
    const-string v9, "skyusimphonebook"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ISkyIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISkyIccPhoneBook;

    move-result-object v5

    .line 259
    .local v5, "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    if-eqz v5, :cond_2

    .line 260
    invoke-interface {v5}, Lcom/android/internal/telephony/ISkyIccPhoneBook;->getPbrInfo()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 268
    .end local v5    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    :cond_2
    :goto_1
    if-nez v7, :cond_3

    move v3, v8

    .line 269
    goto :goto_0

    .line 262
    :catch_0
    move-exception v2

    .line 263
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v9, "SkyUSimContacts"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 264
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 265
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v9, "SkyUSimContacts"

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 273
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :cond_3
    :try_start_1
    array-length v0, v7

    .line 274
    .local v0, "count":I
    const/4 v3, 0x0

    .line 275
    .local v3, "fieldLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_0

    .line 276
    aget-object v9, v7, v4

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 277
    .local v6, "infoArray2":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, p1, :cond_4

    .line 278
    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 279
    const-string v9, "SkyUSimContacts"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPbrFieldLength("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 284
    .end local v0    # "count":I
    .end local v3    # "fieldLength":I
    .end local v4    # "i":I
    .end local v6    # "infoArray2":[Ljava/lang/String;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    move v3, v8

    .line 285
    goto :goto_0

    .line 275
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "count":I
    .restart local v3    # "fieldLength":I
    .restart local v4    # "i":I
    .restart local v6    # "infoArray2":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public getRecordCount(II)I
    .locals 4
    .param p1, "mode"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 128
    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 130
    const-string v1, "SkyUSimContacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecordCount() mode is invalid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return v0

    .line 134
    :cond_0
    if-eq p2, v2, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    const/4 v1, 0x6

    if-eq p2, v1, :cond_1

    .line 137
    const-string v1, "SkyUSimContacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecordCount() type is invalid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->getRecordCountFromPBM(II)I

    move-result v0

    goto :goto_0
.end method

.method public getRecordId([B)I
    .locals 3
    .param p1, "result"    # [B

    .prologue
    const/4 v1, 0x0

    .line 329
    if-eqz p1, :cond_0

    .line 330
    array-length v2, p1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 331
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 332
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 333
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 337
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    return v1
.end method

.method public getRecordsNumber([B)I
    .locals 3
    .param p1, "result"    # [B

    .prologue
    const/4 v1, 0x0

    .line 355
    if-eqz p1, :cond_0

    .line 356
    array-length v2, p1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 357
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 358
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 359
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 363
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    return v1
.end method

.method public getUSIMInfo(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 65
    const-string v4, "SkyUSimContacts"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUSIMInfo():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-nez p2, :cond_1

    instance-of v4, p2, Landroid/net/Uri;

    if-nez v4, :cond_1

    .line 67
    if-nez p2, :cond_0

    .line 68
    const-string v4, "SkyUSimContacts"

    const-string v5, "getUSIMInfo():url == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v1, v3

    .line 123
    :goto_1
    return v1

    .line 70
    :cond_0
    const-string v4, "SkyUSimContacts"

    const-string v5, "getUSIMInfo():!(url instanceof Uri)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_1
    const/4 v1, 0x0

    .line 76
    .local v1, "result":I
    sget-object v4, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 77
    .local v0, "match":I
    sparse-switch v0, :sswitch_data_0

    .line 120
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not supported uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :sswitch_0
    const-string v3, "SkyUSimContacts"

    const-string v4, "getUSIMInfo():PUSIM_CHECKLOAD"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->getUSimLoadState()I

    move-result v1

    .line 81
    goto :goto_1

    .line 84
    :sswitch_1
    const-string v4, "SkyUSimContacts"

    const-string v5, "getUSIMInfo():PUSIM_MAX_COUTNT"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0, v3, v7}, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->getRecordCountFromPBM(II)I

    move-result v1

    .line 86
    goto :goto_1

    .line 89
    :sswitch_2
    const-string v3, "SkyUSimContacts"

    const-string v4, "getUSIMInfo():PUSIM_NUM_COUNT"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0, v7, v7}, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->getRecordCountFromPBM(II)I

    move-result v1

    .line 91
    goto :goto_1

    .line 94
    :sswitch_3
    const-string v4, "SkyUSimContacts"

    const-string v5, "getUSIMInfo():PUSIM_MAX_GRP_COUTNT"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0, v3, v9}, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->getRecordCountFromPBM(II)I

    move-result v1

    .line 96
    goto :goto_1

    .line 99
    :sswitch_4
    const-string v3, "SkyUSimContacts"

    const-string v4, "getUSIMInfo():PUSIM_NUM_GRP_COUNT"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0, v7, v9}, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->getRecordCountFromPBM(II)I

    move-result v1

    .line 101
    goto :goto_1

    .line 104
    :sswitch_5
    const-string v3, "SkyUSimContacts"

    const-string v4, "getUSIMInfo():PUSIM_FREE_COUTNT"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0, v8, v7}, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->getRecordCountFromPBM(II)I

    move-result v1

    .line 106
    goto :goto_1

    .line 109
    :sswitch_6
    const-string v3, "SkyUSimContacts"

    const-string v4, "getUSIMInfo():PUSIM_FREE_GRP_COUNT"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0, v8, v9}, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->getRecordCountFromPBM(II)I

    move-result v1

    .line 111
    goto :goto_1

    .line 114
    :sswitch_7
    const-string v3, "SkyUSimContacts"

    const-string v4, "getUSIMInfo():PUSIM_FREE_FIELD_COUNT"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    long-to-int v2, v3

    .line 116
    .local v2, "subfn":I
    invoke-direct {p0, v8, v2}, Lcom/pantech/providers/skyusimcontacts/impl/SkyUSimContactsImpl;->getRecordCountFromPBM(II)I

    move-result v1

    .line 117
    goto/16 :goto_1

    .line 77
    :sswitch_data_0
    .sparse-switch
        0x1002 -> :sswitch_0
        0x1003 -> :sswitch_1
        0x1004 -> :sswitch_2
        0x1005 -> :sswitch_3
        0x1006 -> :sswitch_4
        0x1023 -> :sswitch_5
        0x1024 -> :sswitch_6
        0x1025 -> :sswitch_7
    .end sparse-switch
.end method

.method public getUSimLoadState()I
    .locals 4

    .prologue
    .line 146
    :try_start_0
    const-string v2, "skyusimphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISkyIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISkyIccPhoneBook;

    move-result-object v1

    .line 148
    .local v1, "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v1}, Lcom/android/internal/telephony/ISkyIccPhoneBook;->getLoadState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 157
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    :goto_0
    return v2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SkyUSimContacts"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 153
    :catch_1
    move-exception v0

    .line 154
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v2, "SkyUSimContacts"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setUSimLoadState(I)V
    .locals 4
    .param p1, "loadState"    # I

    .prologue
    .line 162
    :try_start_0
    const-string v2, "skyusimphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISkyIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISkyIccPhoneBook;

    move-result-object v1

    .line 164
    .local v1, "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    if-eqz v1, :cond_0

    .line 169
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISkyIccPhoneBook;->setLoadState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/ISkyIccPhoneBook;
    :cond_0
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SkyUSimContacts"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v2, "SkyUSimContacts"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
