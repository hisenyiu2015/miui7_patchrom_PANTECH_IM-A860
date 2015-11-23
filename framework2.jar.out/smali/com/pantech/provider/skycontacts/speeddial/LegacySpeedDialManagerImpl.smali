.class public Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;
.super Lcom/pantech/provider/skycontacts/speeddial/BaseSpeedDialManager;
.source "LegacySpeedDialManagerImpl.java"


# static fields
.field private static final PHONES_NUMBER_COLUMN:I = 0x1

.field private static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final PHONES_RAW_CONTACT_COLUMN:I = 0x0

.field private static final SDIAL_DATA_ID_COLUMN:I = 0x2

.field private static final SDIAL_ID_COLUMN:I = 0x0

.field private static final SDIAL_PHONE_NUM_COLUMN:I = 0x3

.field private static final SDIAL_RAWCONTACT_ID_COLUMN:I = 0x1

.field private static final SPEED_DIAL_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v2

    const-string v1, "data1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "rawcontact_id"

    aput-object v1, v0, v3

    const-string v1, "data_id"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/pantech/provider/skycontacts/speeddial/BaseSpeedDialManager;-><init>(Landroid/content/ContentResolver;)V

    .line 42
    return-void
.end method

.method private getSpeedDialValue(J)I
    .locals 11
    .param p1, "phoneNumberID"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 270
    const/4 v9, 0x0

    .line 271
    .local v9, "ret":I
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "value"

    aput-object v4, v2, v5

    const-string v4, "data_id"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 273
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 275
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 277
    .local v7, "phoneNumId":J
    cmp-long v0, p1, v7

    if-nez v0, :cond_0

    .line 278
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 283
    .end local v7    # "phoneNumId":J
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_2
    return v9

    .line 283
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public deleteSpeedDial(I)Z
    .locals 11
    .param p1, "speedDialValue"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 174
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->isValidParam(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v6, v10

    .line 203
    :cond_0
    :goto_0
    return v6

    .line 178
    :cond_1
    const/4 v6, 0x0

    .line 179
    .local v6, "fSuccess":Z
    const/4 v8, 0x0

    .line 181
    .local v8, "speedDialId":I
    sget-object v0, Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDial;->VALUE_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 182
    .local v1, "sdialUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 184
    .local v7, "speedDialCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 186
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 193
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_2
    if-eqz v8, :cond_0

    .line 198
    sget-object v0, Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v8

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 199
    .local v9, "speedDialUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v9, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 200
    const/4 v6, 0x1

    goto :goto_0

    .line 189
    .end local v9    # "speedDialUri":Landroid/net/Uri;
    :cond_3
    :try_start_1
    const-string v0, "SpeedDialManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Speed dial value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v6, v10

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getSpeedDial(I)Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    .locals 16
    .param p1, "speedDialValue"    # I

    .prologue
    .line 210
    invoke-virtual/range {p0 .. p1}, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->isValidParam(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    const/4 v12, 0x0

    .line 252
    :cond_0
    :goto_0
    return-object v12

    .line 214
    :cond_1
    const/4 v12, 0x0

    .line 215
    .local v12, "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    sget-object v1, Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDial;->VALUE_URI:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v5, v0

    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 216
    .local v2, "sdialUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 218
    .local v15, "speedDialCursor":Landroid/database/Cursor;
    if-eqz v15, :cond_0

    .line 220
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    const/4 v1, 0x2

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 222
    .local v10, "dataId":J
    const/4 v1, 0x3

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 225
    .local v14, "number":Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 226
    .local v4, "phoneUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "data1"

    aput-object v6, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 229
    .local v9, "dataCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 231
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 233
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v14, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    new-instance v13, Lcom/pantech/provider/skycontacts/impl/SpeedDialEntryImpl;

    move/from16 v0, p1

    invoke-direct {v13, v0, v14}, Lcom/pantech/provider/skycontacts/impl/SpeedDialEntryImpl;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    .end local v12    # "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    .local v13, "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    const/4 v1, 0x1

    :try_start_2
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v13, v5, v6}, Lcom/pantech/provider/skycontacts/SpeedDialEntry;->setRawContactId(J)V

    .line 236
    invoke-virtual {v13, v10, v11}, Lcom/pantech/provider/skycontacts/SpeedDialEntry;->setDataId(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v12, v13

    .line 240
    .end local v13    # "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    .restart local v12    # "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    :cond_2
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 248
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v1

    :goto_1
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 248
    .end local v4    # "phoneUri":Landroid/net/Uri;
    .end local v9    # "dataCursor":Landroid/database/Cursor;
    .end local v10    # "dataId":J
    .end local v14    # "number":Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v1

    .line 244
    :cond_4
    :try_start_5
    const-string v1, "SpeedDialManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Speed dial value "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is empty"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 245
    const/4 v12, 0x0

    .line 248
    .end local v12    # "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 240
    .restart local v4    # "phoneUri":Landroid/net/Uri;
    .restart local v9    # "dataCursor":Landroid/database/Cursor;
    .restart local v10    # "dataId":J
    .restart local v13    # "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    .restart local v14    # "number":Ljava/lang/String;
    :catchall_2
    move-exception v1

    move-object v12, v13

    .end local v13    # "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    .restart local v12    # "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    goto :goto_1
.end method

.method public insertSpeedDial(IJ)Landroid/net/Uri;
    .locals 16
    .param p1, "speedDialValue"    # I
    .param p2, "dataId"    # J

    .prologue
    .line 48
    invoke-virtual/range {p0 .. p3}, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->isValidParam(IJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const/4 v2, 0x0

    .line 100
    :goto_0
    return-object v2

    .line 52
    :cond_0
    sget-object v2, Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDial;->VALUE_URI:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v6, v0

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 53
    .local v3, "sdialUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 55
    .local v14, "speedDialCursor":Landroid/database/Cursor;
    if-eqz v14, :cond_2

    .line 57
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const-string v2, "SpeedDialManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Speed dial value "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " is used, update speed dial or delete first"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    const/4 v2, 0x0

    .line 62
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 67
    .local v5, "phoneUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 69
    .local v11, "phoneCursor":Landroid/database/Cursor;
    const-wide/16 v12, 0x0

    .line 70
    .local v12, "rawContact_Id":J
    const/4 v10, 0x0

    .line 71
    .local v10, "number":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 73
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 77
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 78
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    const/4 v2, 0x0

    .line 86
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 62
    .end local v5    # "phoneUri":Landroid/net/Uri;
    .end local v10    # "number":Ljava/lang/String;
    .end local v11    # "phoneCursor":Landroid/database/Cursor;
    .end local v12    # "rawContact_Id":J
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    .line 82
    .restart local v5    # "phoneUri":Landroid/net/Uri;
    .restart local v10    # "number":Ljava/lang/String;
    .restart local v11    # "phoneCursor":Landroid/database/Cursor;
    .restart local v12    # "rawContact_Id":J
    :cond_3
    :try_start_2
    const-string v2, "SpeedDialManager"

    const-string v4, "No vaild phone information"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    const/4 v2, 0x0

    .line 86
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_5
    const-wide/16 v6, 0x0

    cmp-long v2, v12, v6

    if-eqz v2, :cond_6

    .line 91
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v15, "values":Landroid/content/ContentValues;
    const-string v2, "value"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v2, "rawcontact_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    const-string v2, "data_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    const-string v2, "number"

    invoke-virtual {v15, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_0

    .line 86
    .end local v15    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 100
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public refreshSpeedDialData(Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "sDialPhoneNumID":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 258
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 259
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 261
    .local v0, "dataId":J
    invoke-direct {p0, v0, v1}, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->getSpeedDialValue(J)I

    move-result v3

    .line 262
    .local v3, "sDialValue":I
    if-lez v3, :cond_0

    .line 263
    invoke-virtual {p0, v3, v0, v1}, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->updateSpeedDial(IJ)Z

    goto :goto_0

    .line 267
    .end local v0    # "dataId":J
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v3    # "sDialValue":I
    :cond_1
    return-void
.end method

.method public updateSpeedDial(IJ)Z
    .locals 18
    .param p1, "speedDialValue"    # I
    .param p2, "dataId"    # J

    .prologue
    .line 107
    invoke-virtual/range {p0 .. p3}, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->isValidParam(IJ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    const/4 v10, 0x0

    .line 167
    :cond_0
    :goto_0
    return v10

    .line 110
    :cond_1
    const/4 v10, 0x0

    .line 111
    .local v10, "fSuccess":Z
    const/4 v15, 0x0

    .line 113
    .local v15, "speedDialId":I
    sget-object v2, Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDial;->VALUE_URI:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v6, v0

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 114
    .local v3, "sdialUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 116
    .local v14, "speedDialCursor":Landroid/database/Cursor;
    if-eqz v14, :cond_2

    .line 118
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    .line 125
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 130
    .local v5, "phoneUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 132
    .local v12, "phoneCursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 133
    .local v13, "rawContact_Id":I
    const/4 v11, 0x0

    .line 134
    .local v11, "number":Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 136
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 137
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 140
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 141
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_5

    .line 142
    const/4 v10, 0x0

    .line 149
    .end local v10    # "fSuccess":Z
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 121
    .end local v5    # "phoneUri":Landroid/net/Uri;
    .end local v11    # "number":Ljava/lang/String;
    .end local v12    # "phoneCursor":Landroid/database/Cursor;
    .end local v13    # "rawContact_Id":I
    .restart local v10    # "fSuccess":Z
    :cond_3
    :try_start_2
    const-string v2, "SpeedDialManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Speed dial value "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " is empty, use insertSpeedDial"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    const/4 v10, 0x0

    .line 125
    .end local v10    # "fSuccess":Z
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .restart local v10    # "fSuccess":Z
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    .line 145
    .restart local v5    # "phoneUri":Landroid/net/Uri;
    .restart local v11    # "number":Ljava/lang/String;
    .restart local v12    # "phoneCursor":Landroid/database/Cursor;
    .restart local v13    # "rawContact_Id":I
    :cond_4
    :try_start_3
    const-string v2, "SpeedDialManager"

    const-string v4, "No vaild phone information"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    const/4 v10, 0x0

    .line 149
    .end local v10    # "fSuccess":Z
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .restart local v10    # "fSuccess":Z
    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_6
    if-eqz v13, :cond_0

    if-eqz v15, :cond_0

    .line 155
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v17, "values":Landroid/content/ContentValues;
    const-string v2, "value"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v2, "rawcontact_id"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v2, "data_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    const-string v2, "number"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v2, Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v15

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 162
    .local v16, "speedDialuri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/provider/skycontacts/speeddial/LegacySpeedDialManagerImpl;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 163
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 149
    .end local v16    # "speedDialuri":Landroid/net/Uri;
    .end local v17    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2
.end method
