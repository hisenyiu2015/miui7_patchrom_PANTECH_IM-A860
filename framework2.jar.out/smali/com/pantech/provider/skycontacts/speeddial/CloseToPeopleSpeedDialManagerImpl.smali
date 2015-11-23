.class public Lcom/pantech/provider/skycontacts/speeddial/CloseToPeopleSpeedDialManagerImpl;
.super Lcom/pantech/provider/skycontacts/speeddial/BaseSpeedDialManager;
.source "CloseToPeopleSpeedDialManagerImpl.java"


# static fields
.field private static final DATA_ID:I = 0x1

.field private static final PHONE_NUMBER:I = 0x3

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final RAW_CONTACT_ID:I = 0x2

.field private static final SPEED_DIAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "speed_dial"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "phone_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/provider/skycontacts/speeddial/CloseToPeopleSpeedDialManagerImpl;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/pantech/provider/skycontacts/speeddial/BaseSpeedDialManager;-><init>(Landroid/content/ContentResolver;)V

    .line 32
    return-void
.end method


# virtual methods
.method public deleteSpeedDial(I)Z
    .locals 6
    .param p1, "speedDialValue"    # I

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/speeddial/CloseToPeopleSpeedDialManagerImpl;->isValidParam(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/pantech/provider/skycontacts/speeddial/CloseToPeopleSpeedDialManagerImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/pantech/provider/skycontacts/SkyContacts$SkyImportantContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "speed_dial="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 76
    .local v0, "count":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getSpeedDial(I)Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    .locals 13
    .param p1, "speedDialValue"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 84
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/speeddial/CloseToPeopleSpeedDialManagerImpl;->isValidParam(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-object v9

    .line 88
    :cond_1
    const/4 v8, 0x0

    .line 89
    .local v8, "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    const/4 v6, 0x0

    .line 91
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/speeddial/CloseToPeopleSpeedDialManagerImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/pantech/provider/skycontacts/SkyContacts$SkyImportantContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/pantech/provider/skycontacts/speeddial/CloseToPeopleSpeedDialManagerImpl;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speed_dial="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 93
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 107
    :cond_2
    if-eqz v6, :cond_0

    .line 108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 97
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 98
    .local v12, "speedDial":I
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, "phoneNumber":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 100
    .local v7, "dataId":I
    :goto_2
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 102
    .local v11, "rawContactId":I
    :cond_4
    new-instance v9, Lcom/pantech/provider/skycontacts/impl/SpeedDialEntryImpl;

    invoke-direct {v9, v12, v10}, Lcom/pantech/provider/skycontacts/impl/SpeedDialEntryImpl;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .end local v8    # "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    .local v9, "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    int-to-long v0, v11

    :try_start_2
    invoke-virtual {v9, v0, v1}, Lcom/pantech/provider/skycontacts/SpeedDialEntry;->setRawContactId(J)V

    .line 104
    int-to-long v0, v7

    invoke-virtual {v9, v0, v1}, Lcom/pantech/provider/skycontacts/SpeedDialEntry;->setDataId(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    if-eqz v6, :cond_0

    .line 108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 98
    .end local v7    # "dataId":I
    .end local v9    # "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    .end local v10    # "phoneNumber":Ljava/lang/String;
    .end local v11    # "rawContactId":I
    .restart local v8    # "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    :cond_5
    :try_start_3
    const-string v10, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .restart local v10    # "phoneNumber":Ljava/lang/String;
    :cond_6
    move v7, v11

    .line 99
    goto :goto_2

    .line 107
    .end local v10    # "phoneNumber":Ljava/lang/String;
    .end local v12    # "speedDial":I
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_7

    .line 108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 107
    .end local v8    # "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    .restart local v7    # "dataId":I
    .restart local v9    # "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    .restart local v10    # "phoneNumber":Ljava/lang/String;
    .restart local v11    # "rawContactId":I
    .restart local v12    # "speedDial":I
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9    # "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    .restart local v8    # "entry":Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    goto :goto_3
.end method

.method public insertSpeedDial(IJ)Landroid/net/Uri;
    .locals 3
    .param p1, "speedDialValue"    # I
    .param p2, "dataId"    # J

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/pantech/provider/skycontacts/speeddial/CloseToPeopleSpeedDialManagerImpl;->isValidParam(IJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const/4 v1, 0x0

    .line 46
    :goto_0
    return-object v1

    .line 43
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "speed_dial"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    const-string v1, "data_id"

    long-to-int v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    iget-object v1, p0, Lcom/pantech/provider/skycontacts/speeddial/CloseToPeopleSpeedDialManagerImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/pantech/provider/skycontacts/SkyContacts$SkyImportantContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public refreshSpeedDialData(Ljava/util/HashSet;)V
    .locals 0
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
    .line 118
    .local p1, "sDialPhoneNumID":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    return-void
.end method

.method public updateSpeedDial(IJ)Z
    .locals 7
    .param p1, "speedDialValue"    # I
    .param p2, "dataId"    # J

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/pantech/provider/skycontacts/speeddial/CloseToPeopleSpeedDialManagerImpl;->isValidParam(IJ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v2

    .line 58
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 59
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "data_id"

    long-to-int v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    iget-object v3, p0, Lcom/pantech/provider/skycontacts/speeddial/CloseToPeopleSpeedDialManagerImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/pantech/provider/skycontacts/SkyContacts$SkyImportantContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "speed_dial="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "count":I
    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
