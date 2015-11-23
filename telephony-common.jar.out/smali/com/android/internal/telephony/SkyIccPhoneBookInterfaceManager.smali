.class public Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/ISkyIccPhoneBook$Stub;
.source "SkyIccPhoneBookInterfaceManager.java"


# static fields
.field protected static final ALLOW_SIM_OP_IN_UI_THREAD:Z = false

.field protected static final DBG:Z = false

.field protected static final EVENT_DEL_RECORD_SKY:I = 0x3

.field protected static final EVENT_FUNC_MAX_SKY:I = 0x9

.field protected static final EVENT_GET_FILE_INFO_SKY:I = 0x8

.field protected static final EVENT_GET_PB_INFO_SKY:I = 0x6

.field protected static final EVENT_GET_PB_STATE_SKY:I = 0x0

.field protected static final EVENT_NUM_RECS_SKY:I = 0x7

.field protected static final EVENT_READ_GAS_SKY:I = 0x4

.field protected static final EVENT_READ_RECORD_SKY:I = 0x1

.field protected static final EVENT_SET_GAS_SKY:I = 0x5

.field protected static final EVENT_WRITE_RECORD_SKY:I = 0x2

.field protected static final SUBFN_ADN:I = 0x1

.field protected static final SUBFN_ANR:I = 0x3

.field protected static final SUBFN_DEFAULT:I = 0x0

.field protected static final SUBFN_EMAIL:I = 0x5

.field protected static final SUBFN_EXT1:I = 0x4

.field protected static final SUBFN_FIND_NUM:I = 0x9

.field protected static final SUBFN_GAS:I = 0x6

.field protected static final SUBFN_GENERIC:I = 0x2

.field protected static final SUBFN_ICI:I = 0x7

.field protected static final SUBFN_OCI:I = 0x8

.field private static final TAG:Ljava/lang/String; = "SkyIccPhoneBookInterfaceManager"

.field public static final USIM_LOAD_NONE:I


# instance fields
.field protected mBaseHandler:Landroid/os/Handler;

.field private mLoadState:I

.field protected mLock:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPBMIoResult:[B

.field private mPbrInfo:[Ljava/lang/String;

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field protected success:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/16 v3, 0x9

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/ISkyIccPhoneBook$Stub;-><init>()V

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mLock:Ljava/util/ArrayList;

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mLoadState:I

    .line 90
    new-instance v1, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager$1;-><init>(Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    .line 156
    const-string v1, "SkyIccPhoneBookInterfaceManager"

    const-string v2, "SkyIccPhoneBookInterfaceManager()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-object p1, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mLock:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;
    .param p1, "x1"    # [B

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    return-object p1
.end method


# virtual methods
.method protected checkThread()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "SkyIccPhoneBookInterfaceManager"

    const-string v1, "query() called on the main UI thread!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call query on this provder from the main UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    return-void
.end method

.method public fw_qmi_sky(IIII[B)[B
    .locals 23
    .param p1, "func"    # I
    .param p2, "data1"    # I
    .param p3, "data2"    # I
    .param p4, "data3"    # I
    .param p5, "bytedata"    # [B

    .prologue
    .line 210
    packed-switch p1, :pswitch_data_0

    .line 497
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 212
    :pswitch_0
    move/from16 v20, p2

    .line 217
    .local v20, "session":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mLock:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 223
    .local v18, "lock":Ljava/lang/Object;
    monitor-enter v18

    .line 224
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->checkThread()V

    .line 225
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 227
    .local v8, "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getUiccPBMHandler()Lcom/android/internal/telephony/uicc/UiccPBMHandler;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0, v8}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->fw_qmi_get_pb_state(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :goto_1
    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    goto :goto_0

    .line 230
    :catch_0
    move-exception v16

    .line 231
    .local v16, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "SkyIccPhoneBookInterfaceManager"

    const-string v3, "interrupted while trying to update by search"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 233
    .end local v8    # "response":Landroid/os/Message;
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 242
    .end local v18    # "lock":Ljava/lang/Object;
    .end local v20    # "session":I
    :pswitch_1
    move/from16 v21, p2

    .line 243
    .local v21, "start_rec_id":I
    move/from16 v17, p3

    .line 248
    .local v17, "end_rec_id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mLock:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 254
    .restart local v18    # "lock":Ljava/lang/Object;
    monitor-enter v18

    .line 255
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->checkThread()V

    .line 256
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 258
    .restart local v8    # "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getUiccPBMHandler()Lcom/android/internal/telephony/uicc/UiccPBMHandler;

    move-result-object v2

    const/4 v3, 0x1

    move/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v2, v3, v0, v1, v8}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->fw_qmi_read_item(IIILandroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 260
    const-wide/16 v2, 0x2710

    :try_start_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 264
    :goto_2
    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    if-nez v2, :cond_2

    .line 268
    const-string v2, "QMI_ERROR"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 269
    .local v19, "resultBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 270
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 271
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 272
    const-string v2, "QMI_ERROR"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 274
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    .line 280
    .end local v19    # "resultBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    goto/16 :goto_0

    .line 261
    :catch_1
    move-exception v16

    .line 262
    .restart local v16    # "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string v2, "SkyIccPhoneBookInterfaceManager"

    const-string v3, "interrupted while trying to update by search"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 264
    .end local v8    # "response":Landroid/os/Message;
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .line 284
    .end local v17    # "end_rec_id":I
    .end local v18    # "lock":Ljava/lang/Object;
    .end local v21    # "start_rec_id":I
    :pswitch_2
    move/from16 v4, p2

    .line 285
    .local v4, "rec_id":I
    move/from16 v5, p3

    .line 286
    .local v5, "num_fields":I
    move/from16 v7, p4

    .line 291
    .local v7, "data_size":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 293
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mLock:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 297
    .restart local v18    # "lock":Ljava/lang/Object;
    monitor-enter v18

    .line 298
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->checkThread()V

    .line 299
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 301
    .restart local v8    # "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getUiccPBMHandler()Lcom/android/internal/telephony/uicc/UiccPBMHandler;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->fw_qmi_write_item(III[BILandroid/os/Message;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 304
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 308
    :goto_3
    :try_start_a
    monitor-exit v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    goto/16 :goto_0

    .line 305
    :catch_2
    move-exception v16

    .line 306
    .restart local v16    # "e":Ljava/lang/InterruptedException;
    :try_start_b
    const-string v2, "SkyIccPhoneBookInterfaceManager"

    const-string v3, "interrupted while trying to update by search"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 308
    .end local v8    # "response":Landroid/os/Message;
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v2

    monitor-exit v18
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v2

    .line 317
    .end local v4    # "rec_id":I
    .end local v5    # "num_fields":I
    .end local v7    # "data_size":I
    .end local v18    # "lock":Ljava/lang/Object;
    :pswitch_3
    move/from16 v4, p2

    .line 322
    .restart local v4    # "rec_id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 324
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 327
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mLock:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 328
    .restart local v18    # "lock":Ljava/lang/Object;
    monitor-enter v18

    .line 329
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->checkThread()V

    .line 330
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 332
    .restart local v8    # "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getUiccPBMHandler()Lcom/android/internal/telephony/uicc/UiccPBMHandler;

    move-result-object v2

    invoke-virtual {v2, v4, v8}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->fw_qmi_del_record(ILandroid/os/Message;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 334
    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 338
    :goto_4
    :try_start_e
    monitor-exit v18
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    goto/16 :goto_0

    .line 335
    :catch_3
    move-exception v16

    .line 336
    .restart local v16    # "e":Ljava/lang/InterruptedException;
    :try_start_f
    const-string v2, "SkyIccPhoneBookInterfaceManager"

    const-string v3, "interrupted while trying to update by search"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 338
    .end local v8    # "response":Landroid/os/Message;
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_3
    move-exception v2

    monitor-exit v18
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v2

    .line 350
    .end local v4    # "rec_id":I
    .end local v18    # "lock":Ljava/lang/Object;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 352
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 355
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mLock:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 356
    .restart local v18    # "lock":Ljava/lang/Object;
    monitor-enter v18

    .line 357
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->checkThread()V

    .line 358
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 360
    .restart local v8    # "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getUiccPBMHandler()Lcom/android/internal/telephony/uicc/UiccPBMHandler;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v6, v9, v8}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->fw_qmi_read_item(IIILandroid/os/Message;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 362
    :try_start_11
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 366
    :goto_5
    :try_start_12
    monitor-exit v18
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    goto/16 :goto_0

    .line 363
    :catch_4
    move-exception v16

    .line 364
    .restart local v16    # "e":Ljava/lang/InterruptedException;
    :try_start_13
    const-string v2, "SkyIccPhoneBookInterfaceManager"

    const-string v3, "interrupted while trying to read all gas"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 366
    .end local v8    # "response":Landroid/os/Message;
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_4
    move-exception v2

    monitor-exit v18
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw v2

    .line 375
    .end local v18    # "lock":Ljava/lang/Object;
    :pswitch_5
    move/from16 v4, p2

    .line 376
    .restart local v4    # "rec_id":I
    move/from16 v12, p3

    .line 377
    .local v12, "subfun":I
    move/from16 v7, p4

    .line 382
    .restart local v7    # "data_size":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_6

    .line 384
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 387
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mLock:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 388
    .restart local v18    # "lock":Ljava/lang/Object;
    monitor-enter v18

    .line 389
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->checkThread()V

    .line 390
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 392
    .restart local v8    # "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getUiccPBMHandler()Lcom/android/internal/telephony/uicc/UiccPBMHandler;

    move-result-object v9

    const/4 v10, 0x5

    move v11, v4

    move-object/from16 v13, p5

    move v14, v7

    move-object v15, v8

    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->fw_qmi_write_item(III[BILandroid/os/Message;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 395
    :try_start_15
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 399
    :goto_6
    :try_start_16
    monitor-exit v18
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    goto/16 :goto_0

    .line 396
    :catch_5
    move-exception v16

    .line 397
    .restart local v16    # "e":Ljava/lang/InterruptedException;
    :try_start_17
    const-string v2, "SkyIccPhoneBookInterfaceManager"

    const-string v3, "interrupted while trying to update by search"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 399
    .end local v8    # "response":Landroid/os/Message;
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_5
    move-exception v2

    monitor-exit v18
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    throw v2

    .line 411
    .end local v4    # "rec_id":I
    .end local v7    # "data_size":I
    .end local v12    # "subfun":I
    .end local v18    # "lock":Ljava/lang/Object;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_7

    .line 413
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mLock:Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 417
    .restart local v18    # "lock":Ljava/lang/Object;
    monitor-enter v18

    .line 418
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->checkThread()V

    .line 419
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 421
    .restart local v8    # "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getUiccPBMHandler()Lcom/android/internal/telephony/uicc/UiccPBMHandler;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v8}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->fw_qmi_get_item_info(IILandroid/os/Message;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 423
    :try_start_19
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 427
    :goto_7
    :try_start_1a
    monitor-exit v18
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    goto/16 :goto_0

    .line 424
    :catch_6
    move-exception v16

    .line 425
    .restart local v16    # "e":Ljava/lang/InterruptedException;
    :try_start_1b
    const-string v2, "SkyIccPhoneBookInterfaceManager"

    const-string v3, "interrupted while trying to update by search"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 427
    .end local v8    # "response":Landroid/os/Message;
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_6
    move-exception v2

    monitor-exit v18
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    throw v2

    .line 436
    .end local v18    # "lock":Ljava/lang/Object;
    :pswitch_7
    move/from16 v22, p2

    .line 441
    .local v22, "subfunc":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8

    .line 443
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 446
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mLock:Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 447
    .restart local v18    # "lock":Ljava/lang/Object;
    monitor-enter v18

    .line 448
    :try_start_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->checkThread()V

    .line 449
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 451
    .restart local v8    # "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getUiccPBMHandler()Lcom/android/internal/telephony/uicc/UiccPBMHandler;

    move-result-object v2

    const/4 v3, 0x7

    move/from16 v0, v22

    invoke-virtual {v2, v3, v0, v8}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->fw_qmi_get_item_info(IILandroid/os/Message;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 453
    :try_start_1d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    .line 457
    :goto_8
    :try_start_1e
    monitor-exit v18
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    goto/16 :goto_0

    .line 454
    :catch_7
    move-exception v16

    .line 455
    .restart local v16    # "e":Ljava/lang/InterruptedException;
    :try_start_1f
    const-string v2, "SkyIccPhoneBookInterfaceManager"

    const-string v3, "interrupted while trying to update by search"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 457
    .end local v8    # "response":Landroid/os/Message;
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_7
    move-exception v2

    monitor-exit v18
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    throw v2

    .line 466
    .end local v18    # "lock":Ljava/lang/Object;
    .end local v22    # "subfunc":I
    :pswitch_8
    move/from16 v22, p2

    .line 468
    .restart local v22    # "subfunc":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9

    .line 470
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 476
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mLock:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 477
    .restart local v18    # "lock":Ljava/lang/Object;
    monitor-enter v18

    .line 478
    :try_start_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->checkThread()V

    .line 479
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 482
    .restart local v8    # "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getUiccPBMHandler()Lcom/android/internal/telephony/uicc/UiccPBMHandler;

    move-result-object v2

    const/16 v3, 0x8

    move/from16 v0, v22

    invoke-virtual {v2, v3, v0, v8}, Lcom/android/internal/telephony/uicc/UiccPBMHandler;->fw_qmi_get_item_info(IILandroid/os/Message;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .line 484
    :try_start_21
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_8
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    .line 488
    :goto_9
    :try_start_22
    monitor-exit v18
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPBMIoResult:[B

    goto/16 :goto_0

    .line 485
    :catch_8
    move-exception v16

    .line 486
    .restart local v16    # "e":Ljava/lang/InterruptedException;
    :try_start_23
    const-string v2, "SkyIccPhoneBookInterfaceManager"

    const-string v3, "interrupted while trying to update by search"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 488
    .end local v8    # "response":Landroid/os/Message;
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_8
    move-exception v2

    monitor-exit v18
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    throw v2

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getLoadState()I
    .locals 3

    .prologue
    .line 172
    const-string v0, "SkyIccPhoneBookInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLoadState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mLoadState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mLoadState:I

    return v0
.end method

.method public getPbrInfo()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 186
    const-string v0, "SkyIccPhoneBookInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPbrInfo() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPbrInfo:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPbrInfo:[Ljava/lang/String;

    return-object v0
.end method

.method protected publish()V
    .locals 1

    .prologue
    .line 167
    const-string v0, "skyusimphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 168
    return-void
.end method

.method public setLoadState(I)V
    .locals 3
    .param p1, "loadState"    # I

    .prologue
    .line 179
    const-string v0, "SkyIccPhoneBookInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoadState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput p1, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mLoadState:I

    .line 182
    return-void
.end method

.method public setPbrInfo([Ljava/lang/String;)V
    .locals 3
    .param p1, "pbrInfo"    # [Ljava/lang/String;

    .prologue
    .line 193
    const-string v0, "SkyIccPhoneBookInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPbrInfo() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iput-object p1, p0, Lcom/android/internal/telephony/SkyIccPhoneBookInterfaceManager;->mPbrInfo:[Ljava/lang/String;

    .line 196
    return-void
.end method
