.class Lcom/android/internal/telephony/SmsBootReceiver$1;
.super Ljava/lang/Object;
.source "SmsBootReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SmsBootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SmsBootReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsBootReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/internal/telephony/SmsBootReceiver$1;->this$0:Lcom/android/internal/telephony/SmsBootReceiver;

    iput-object p2, p0, Lcom/android/internal/telephony/SmsBootReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 27
    const-string v2, "content://sms/lgu_lms_message_group_by_session_id"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 28
    .local v3, "mUri":Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "session_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "address"

    aput-object v5, v4, v2

    .line 32
    .local v4, "mProjection":[Ljava/lang/String;
    const/4 v15, 0x0

    .line 34
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SmsBootReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 35
    if-eqz v15, :cond_1

    .line 36
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    const-string v2, "session_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 38
    .local v22, "mSessionIdColumn":I
    const-string v2, "address"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 39
    .local v18, "mAddressColumn":I
    const/16 v21, 0x0

    .line 40
    .local v21, "mSessionId":I
    const/16 v17, 0x0

    .line 41
    .local v17, "mAddress":Ljava/lang/String;
    const/16 v23, 0x0

    .line 42
    .local v23, "mWhere":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 43
    .local v8, "mWhereArgs":[Ljava/lang/String;
    const-string v2, "content://sms/lgu_lms_message"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 44
    .local v6, "mTimerUri":Landroid/net/Uri;
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 46
    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 47
    new-instance v23, Ljava/lang/StringBuilder;

    .end local v23    # "mWhere":Ljava/lang/StringBuilder;
    const-string v2, "session_id ="

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .restart local v23    # "mWhere":Ljava/lang/StringBuilder;
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v2, " AND "

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v2, "address = ?"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    .end local v8    # "mWhereArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v17, v8, v2

    .line 53
    .restart local v8    # "mWhereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SmsBootReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/32 v9, 0x927c0

    invoke-static/range {v5 .. v10}, Lcom/android/internal/telephony/SmsGarbageCollectionTimer;->createTimer(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 58
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 62
    .end local v6    # "mTimerUri":Landroid/net/Uri;
    .end local v8    # "mWhereArgs":[Ljava/lang/String;
    .end local v17    # "mAddress":Ljava/lang/String;
    .end local v18    # "mAddressColumn":I
    .end local v21    # "mSessionId":I
    .end local v22    # "mSessionIdColumn":I
    .end local v23    # "mWhere":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v16

    .line 63
    .local v16, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v2, "SmsBootReceiver"

    const-string v5, "Can\'t access LGTLmsMessage SMS database"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    if-eqz v15, :cond_0

    .line 67
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 111
    .end local v16    # "e":Landroid/database/SQLException;
    :cond_0
    :goto_1
    return-void

    .line 66
    :cond_1
    if-eqz v15, :cond_2

    .line 67
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_2
    const-string v2, "content://sms/raw_group_by_reference_number"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 73
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    .end local v4    # "mProjection":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v5, "reference_number"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "address"

    aput-object v5, v4, v2

    .line 77
    .restart local v4    # "mProjection":[Ljava/lang/String;
    const/4 v15, 0x0

    .line 79
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SmsBootReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v3

    move-object v11, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 80
    if-eqz v15, :cond_4

    .line 81
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 82
    const-string v2, "reference_number"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 83
    .local v20, "mReferenceNumberColumn":I
    const-string v2, "address"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 84
    .restart local v18    # "mAddressColumn":I
    const/16 v19, 0x0

    .line 85
    .local v19, "mReferenceNumber":I
    const/16 v17, 0x0

    .line 86
    .restart local v17    # "mAddress":Ljava/lang/String;
    const-string v23, "address=? AND reference_number=?"

    .line 87
    .local v23, "mWhere":Ljava/lang/String;
    const/4 v8, 0x0

    .line 88
    .restart local v8    # "mWhereArgs":[Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "raw"

    invoke-static {v2, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 89
    .restart local v6    # "mTimerUri":Landroid/net/Uri;
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    .line 90
    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 91
    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 92
    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/String;

    .end local v8    # "mWhereArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v17, v8, v2

    const/4 v2, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v2

    .line 94
    .restart local v8    # "mWhereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SmsBootReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/32 v9, 0x927c0

    invoke-static/range {v5 .. v10}, Lcom/android/internal/telephony/SmsGarbageCollectionTimer;->createTimer(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 99
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 103
    .end local v6    # "mTimerUri":Landroid/net/Uri;
    .end local v8    # "mWhereArgs":[Ljava/lang/String;
    .end local v17    # "mAddress":Ljava/lang/String;
    .end local v18    # "mAddressColumn":I
    .end local v19    # "mReferenceNumber":I
    .end local v20    # "mReferenceNumberColumn":I
    .end local v23    # "mWhere":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 104
    .restart local v16    # "e":Landroid/database/SQLException;
    :try_start_3
    const-string v2, "SmsBootReceiver"

    const-string v5, "Can\'t access Raw Message SMS database"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    if-eqz v15, :cond_0

    .line 108
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 66
    .end local v16    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_3

    .line 67
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 107
    :cond_4
    if-eqz v15, :cond_0

    .line 108
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 107
    :catchall_1
    move-exception v2

    if-eqz v15, :cond_5

    .line 108
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method
