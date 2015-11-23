.class public Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CallerInfoWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 129
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 130
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 135
    .local v7, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    iget-object v9, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    .line 137
    .local v9, "cw":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    if-nez v9, :cond_0

    .line 146
    invoke-super/range {p0 .. p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V

    .line 262
    :goto_0
    return-void

    .line 152
    :cond_0
    iget v2, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 156
    :pswitch_0
    const/4 v8, 0x0

    .line 158
    .local v8, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$000(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$000(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 160
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 163
    .local v12, "isMatch":Z
    iget-object v2, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_b

    iget-object v2, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v11, 0x1

    .line 165
    .local v11, "isLookupUri":Z
    :goto_1
    iget-object v2, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 166
    iget-object v0, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 174
    .local v18, "number":Ljava/lang/String;
    :goto_2
    :try_start_0
    iget-object v2, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v4, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v5, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 177
    const/16 v17, 0x0

    .line 179
    .local v17, "normalizedRemovePlus82":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 180
    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 181
    .local v14, "normalized1":Ljava/lang/String;
    const/4 v15, 0x0

    .line 183
    .local v15, "normalized1RemovePound":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    const/4 v2, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 186
    :cond_1
    const/4 v2, -0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 187
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 188
    const-string v2, "number"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 189
    .local v19, "phoneColumn":I
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 193
    .local v16, "normalized2":Ljava/lang/String;
    const-string v2, "+820"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 194
    const-string v2, "\\+820"

    const-string v3, "0"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 199
    :cond_3
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    if-eqz v15, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    :cond_5
    new-instance v13, Landroid/database/MatrixCursor;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "label"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "custom_ringtone"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "send_to_voicemail"

    aput-object v4, v2, v3

    invoke-direct {v13, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 204
    .local v13, "newCursor":Landroid/database/MatrixCursor;
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "_id"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "number"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "label"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "type"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "custom_ringtone"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "send_to_voicemail"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v13, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 212
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 213
    move-object v8, v13

    .line 214
    const/4 v12, 0x1

    .line 218
    .end local v13    # "newCursor":Landroid/database/MatrixCursor;
    .end local v16    # "normalized2":Ljava/lang/String;
    .end local v19    # "phoneColumn":I
    :cond_6
    if-nez v12, :cond_7

    .line 219
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 220
    const/4 v8, 0x0

    .line 225
    .end local v14    # "normalized1":Ljava/lang/String;
    .end local v15    # "normalized1RemovePound":Ljava/lang/String;
    :cond_7
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_a

    .line 226
    :cond_8
    if-eqz v8, :cond_9

    .line 227
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_9
    const-string v2, "content://com.pantech.skyusimcontacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "usimsearchbookrecentcall"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, v18

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 239
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v11    # "isLookupUri":Z
    .end local v12    # "isMatch":Z
    .end local v17    # "normalizedRemovePlus82":Ljava/lang/String;
    .end local v18    # "number":Ljava/lang/String;
    :cond_a
    :goto_4
    iput-object v8, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 252
    .end local v8    # "cursor":Landroid/database/Cursor;
    :pswitch_1
    iget-object v2, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 253
    .local v20, "reply":Landroid/os/Message;
    move-object/from16 v0, v20

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 256
    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 163
    .end local v20    # "reply":Landroid/os/Message;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "isMatch":Z
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 167
    .restart local v11    # "isLookupUri":Z
    :cond_c
    if-eqz v11, :cond_d

    iget-object v2, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_d

    .line 168
    iget-object v2, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "number":Ljava/lang/String;
    goto/16 :goto_2

    .line 170
    .end local v18    # "number":Ljava/lang/String;
    :cond_d
    const/16 v18, 0x0

    .restart local v18    # "number":Ljava/lang/String;
    goto/16 :goto_2

    .line 195
    .restart local v14    # "normalized1":Ljava/lang/String;
    .restart local v15    # "normalized1RemovePound":Ljava/lang/String;
    .restart local v16    # "normalized2":Ljava/lang/String;
    .restart local v17    # "normalizedRemovePlus82":Ljava/lang/String;
    .restart local v19    # "phoneColumn":I
    :cond_e
    :try_start_1
    const-string v2, "+82"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    const-string v2, "\\+82"

    const-string v3, "0"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    goto/16 :goto_3

    .line 232
    .end local v14    # "normalized1":Ljava/lang/String;
    .end local v15    # "normalized1RemovePound":Ljava/lang/String;
    .end local v16    # "normalized2":Ljava/lang/String;
    .end local v17    # "normalizedRemovePlus82":Ljava/lang/String;
    .end local v19    # "phoneColumn":I
    :catch_0
    move-exception v10

    .line 234
    .local v10, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    goto :goto_4

    .line 237
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "isLookupUri":Z
    .end local v12    # "isMatch":Z
    .end local v18    # "number":Ljava/lang/String;
    :cond_f
    const/4 v8, 0x0

    goto :goto_4

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
