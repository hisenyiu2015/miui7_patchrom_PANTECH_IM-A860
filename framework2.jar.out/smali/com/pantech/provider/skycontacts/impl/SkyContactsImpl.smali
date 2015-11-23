.class public Lcom/pantech/provider/skycontacts/impl/SkyContactsImpl;
.super Ljava/lang/Object;
.source "SkyContactsImpl.java"

# interfaces
.implements Lcom/pantech/provider/skycontacts/SkyContacts;


# static fields
.field private static final TAG:Ljava/lang/String; = "SkyContactsImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private queryForRawContactIds(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;
    .locals 8
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "contactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 607
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 610
    .local v6, "rawContactIdCursor":Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v7, "rawContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v6, :cond_1

    .line 614
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 619
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 620
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 619
    :cond_1
    if-eqz v6, :cond_2

    .line 620
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 623
    :cond_2
    return-object v7
.end method


# virtual methods
.method public addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "rawContactId"    # J
    .param p4, "groupId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public addToGroup(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "rawContactId"    # J
    .param p4, "groupName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultSpeedDial(Landroid/content/ContentResolver;J)J
    .locals 21
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "contactId"    # J

    .prologue
    .line 634
    const-wide/16 v19, -0x1

    .line 636
    .local v19, "sDialIndex":J
    const/4 v2, 0x3

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v11, v2

    const/4 v2, 0x1

    const-string v5, "data1"

    aput-object v5, v11, v2

    const/4 v2, 0x2

    const-string v5, "raw_contact_id"

    aput-object v5, v11, v2

    .line 642
    .local v11, "PHONES_PROJECTION":[Ljava/lang/String;
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "value"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "rawcontact_id"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "data_id"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "number"

    aput-object v5, v4, v2

    .line 650
    .local v4, "SPEED_DIAL_PROJECTION":[Ljava/lang/String;
    invoke-direct/range {p0 .. p3}, Lcom/pantech/provider/skycontacts/impl/SkyContactsImpl;->queryForRawContactIds(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;

    move-result-object v18

    .line 651
    .local v18, "rawConactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 652
    const-wide/16 v7, -0x1

    .line 687
    :goto_0
    return-wide v7

    .line 654
    :cond_0
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 655
    .local v14, "id":Ljava/lang/Long;
    const-wide/16 v7, 0x0

    cmp-long v2, v19, v7

    if-lez v2, :cond_3

    .end local v14    # "id":Ljava/lang/Long;
    :cond_2
    move-wide/from16 v7, v19

    .line 687
    goto :goto_0

    .line 659
    .restart local v14    # "id":Ljava/lang/Long;
    :cond_3
    sget-object v2, Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDial;->RAW_CONTACT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v2, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 660
    .local v3, "sdialUri":Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "value ASC"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 661
    .local v12, "c":Landroid/database/Cursor;
    if-eqz v12, :cond_1

    .line 663
    :cond_4
    :goto_2
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 664
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v2, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 665
    .local v6, "phoneUri":Landroid/net/Uri;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    move-object v7, v11

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 666
    .local v17, "phc":Landroid/database/Cursor;
    if-eqz v17, :cond_4

    .line 668
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    .line 669
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 670
    .local v15, "numberFormDataTable":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 672
    .local v16, "numberFormSdialTable":Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 673
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v19, v0

    .line 678
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 683
    .end local v6    # "phoneUri":Landroid/net/Uri;
    .end local v15    # "numberFormDataTable":Ljava/lang/String;
    .end local v16    # "numberFormSdialTable":Ljava/lang/String;
    .end local v17    # "phc":Landroid/database/Cursor;
    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 678
    .restart local v6    # "phoneUri":Landroid/net/Uri;
    .restart local v17    # "phc":Landroid/database/Cursor;
    :cond_6
    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 683
    .end local v6    # "phoneUri":Landroid/net/Uri;
    .end local v17    # "phc":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 678
    .restart local v6    # "phoneUri":Landroid/net/Uri;
    .restart local v17    # "phc":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getGroupIdForContact(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "contactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getGroupIdForRawContact(Landroid/content/ContentResolver;J)I
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "rawContactId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    const/4 v0, -0x1

    return v0
.end method

.method public getGroupLedColor(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 16
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "id"    # J

    .prologue
    .line 960
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    .line 961
    const-string v0, "SkyContactsImpl"

    const-string v2, "getGroupLedColor - wrong input"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v9, 0x0

    .line 1025
    :goto_0
    return-object v9

    .line 965
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 967
    .local v10, "groupLedColors":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "content://ledpersonalprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_COLOR"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_URI"

    aput-object v3, v2, v0

    const-string v3, "_GROUP=\'group\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 973
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 975
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 977
    .local v12, "ledColor":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    .line 978
    .local v13, "ledGroup":Ljava/lang/String;
    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 981
    .end local v12    # "ledColor":Ljava/lang/String;
    .end local v13    # "ledGroup":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 985
    :cond_2
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 986
    const-string v0, "SkyContactsImpl"

    const-string v2, "getGroupLedColor - saved LED group count : 0"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v9, 0x0

    goto :goto_0

    .line 990
    :cond_3
    invoke-direct/range {p0 .. p3}, Lcom/pantech/provider/skycontacts/impl/SkyContactsImpl;->queryForRawContactIds(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;

    move-result-object v14

    .line 991
    .local v14, "rawConactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 992
    const-string v0, "SkyContactsImpl"

    const-string v2, "getGroupLedColor - empty contact"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v9, 0x0

    goto :goto_0

    .line 996
    :cond_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 997
    .local v15, "rcid":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 1001
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1002
    .local v6, "baseUri":Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1004
    .local v1, "dataUri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "data1"

    aput-object v3, v2, v0

    const-string v3, "mimetype=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "vnd.android.cursor.item/group_membership"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1009
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 1011
    :cond_6
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1012
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1013
    .local v9, "groupLedColor":Ljava/lang/String;
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 1014
    const-string v0, "SkyContactsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGroupLedColor - FOUND : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1019
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v9    # "groupLedColor":Ljava/lang/String;
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1024
    .end local v1    # "dataUri":Landroid/net/Uri;
    .end local v6    # "baseUri":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v15    # "rcid":Ljava/lang/Long;
    :cond_8
    const-string v0, "SkyContactsImpl"

    const-string v2, "getGroupLedColor - NOT FOUND"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public getGroupMemberCount(Landroid/content/Context;J)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupName(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "groupId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupNameFromContact(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "contactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getGroupNameFromRawContact(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "rawContactId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupRingtone(Landroid/content/ContentResolver;JZ)Landroid/net/Uri;
    .locals 12
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "id"    # J
    .param p4, "isGroupId"    # Z

    .prologue
    .line 901
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    .line 902
    const/4 v8, 0x0

    .line 954
    :goto_0
    return-object v8

    .line 905
    :cond_0
    if-eqz p4, :cond_3

    .line 906
    sget-object v1, Lcom/pantech/provider/skycontacts/SkyContacts$SkyGroups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "custom_ringtone"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 911
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 913
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 914
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 917
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 954
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 917
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 921
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/provider/skycontacts/impl/SkyContactsImpl;->queryForRawContactIds(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;

    move-result-object v10

    .line 922
    .local v10, "rawConactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 923
    const/4 v8, 0x0

    goto :goto_0

    .line 926
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 927
    .local v11, "rcid":Ljava/lang/Long;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 931
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 932
    .local v6, "baseUri":Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 934
    .local v1, "dataUri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "data1"

    aput-object v3, v2, v0

    const-string v3, "mimetype=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "vnd.android.cursor.item/group_membership"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 939
    .restart local v7    # "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 941
    :cond_6
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 942
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/pantech/provider/skycontacts/impl/SkyContactsImpl;->getGroupRingtone(Landroid/content/ContentResolver;JZ)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 943
    .local v8, "groupRingtone":Landroid/net/Uri;
    if-eqz v8, :cond_6

    .line 948
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "groupRingtone":Landroid/net/Uri;
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getGroupRingtoneForPerson(Landroid/content/ContentResolver;JZ)Landroid/net/Uri;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "contactId"    # J
    .param p4, "msgRingtone"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGrowingImageLevel(Landroid/content/ContentResolver;J)I
    .locals 28
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "contactId"    # J

    .prologue
    .line 790
    const/4 v11, 0x0

    .line 792
    .local v11, "imageLevel":I
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "times_contacted"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "last_time_contacted"

    aput-object v5, v4, v2

    .line 798
    .local v4, "LAST_CONACT_PROJECTION":[Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 799
    .local v3, "contactUri":Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 800
    .local v8, "contactCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 802
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 803
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 804
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 806
    .local v20, "timesContacted":J
    const-wide/16 v5, 0x0

    cmp-long v2, v20, v5

    if-lez v2, :cond_0

    .line 807
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 808
    .local v12, "lastTimeContacted":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 809
    .local v9, "currentTime":J
    const-wide/16 v14, 0x0

    .line 811
    .local v14, "offset":J
    cmp-long v2, v9, v12

    if-lez v2, :cond_0

    .line 812
    sub-long v5, v9, v12

    const-wide/32 v22, 0x5265c00

    div-long v16, v5, v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    .local v16, "offsetDay":J
    const-wide/16 v5, 0x5

    cmp-long v2, v16, v5

    if-gez v2, :cond_2

    .line 815
    const-wide/16 v14, 0x0

    .line 822
    :goto_0
    sub-long v18, v20, v14

    .line 824
    .local v18, "pointLevel":J
    const-wide/16 v5, 0x140

    cmp-long v2, v18, v5

    if-ltz v2, :cond_4

    .line 825
    const/4 v11, 0x6

    .line 843
    .end local v9    # "currentTime":J
    .end local v12    # "lastTimeContacted":J
    .end local v14    # "offset":J
    .end local v16    # "offsetDay":J
    .end local v18    # "pointLevel":J
    .end local v20    # "timesContacted":J
    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 847
    :cond_1
    return v11

    .line 816
    .restart local v9    # "currentTime":J
    .restart local v12    # "lastTimeContacted":J
    .restart local v14    # "offset":J
    .restart local v16    # "offsetDay":J
    .restart local v20    # "timesContacted":J
    :cond_2
    const-wide/16 v5, 0xe

    cmp-long v2, v16, v5

    if-gez v2, :cond_3

    .line 817
    const-wide/16 v14, 0x5

    goto :goto_0

    .line 819
    :cond_3
    const-wide/16 v5, 0x5

    const-wide/16 v22, 0xa

    const-wide/16 v24, 0x7

    :try_start_1
    div-long v24, v16, v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v26, 0x1

    sub-long v24, v24, v26

    mul-long v22, v22, v24

    add-long v14, v5, v22

    goto :goto_0

    .line 826
    .restart local v18    # "pointLevel":J
    :cond_4
    const-wide/16 v5, 0xf0

    cmp-long v2, v18, v5

    if-ltz v2, :cond_5

    .line 827
    const/4 v11, 0x5

    goto :goto_1

    .line 828
    :cond_5
    const-wide/16 v5, 0xb4

    cmp-long v2, v18, v5

    if-ltz v2, :cond_6

    .line 829
    const/4 v11, 0x4

    goto :goto_1

    .line 830
    :cond_6
    const-wide/16 v5, 0x78

    cmp-long v2, v18, v5

    if-ltz v2, :cond_7

    .line 831
    const/4 v11, 0x3

    goto :goto_1

    .line 832
    :cond_7
    const-wide/16 v5, 0x46

    cmp-long v2, v18, v5

    if-ltz v2, :cond_8

    .line 833
    const/4 v11, 0x2

    goto :goto_1

    .line 834
    :cond_8
    const-wide/16 v5, 0x1e

    cmp-long v2, v18, v5

    if-ltz v2, :cond_9

    .line 835
    const/4 v11, 0x1

    goto :goto_1

    .line 837
    :cond_9
    const/4 v11, 0x0

    goto :goto_1

    .line 843
    .end local v9    # "currentTime":J
    .end local v12    # "lastTimeContacted":J
    .end local v14    # "offset":J
    .end local v16    # "offsetDay":J
    .end local v18    # "pointLevel":J
    .end local v20    # "timesContacted":J
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public getSpeedDialNumber(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "speedDialValue"    # J

    .prologue
    .line 699
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/pantech/provider/skycontacts/impl/SkyContactsImpl;->getSpeedDialNumber(Landroid/content/ContentResolver;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpeedDialNumber(Landroid/content/ContentResolver;JZ)Ljava/lang/String;
    .locals 15
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "speedDialValue"    # J
    .param p4, "fStripSeparators"    # Z

    .prologue
    .line 705
    sget-object v1, Lcom/pantech/provider/skycontacts/SkyContacts$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    .line 706
    .local v1, "sdialUri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "data_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "number"

    aput-object v4, v2, v0

    const-string v3, "value=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 708
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 710
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 711
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 712
    .local v10, "dataId":J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 713
    .local v13, "savedNumberOrig":Ljava/lang/String;
    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 716
    .local v12, "savedNumber":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 717
    .local v3, "phoneUri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "data1"

    aput-object v2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 720
    .local v9, "dataCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 722
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-ne v0, v2, :cond_1

    .line 723
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 728
    .local v14, "speedDialNum":Ljava/lang/String;
    invoke-static {v12, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    if-eqz p4, :cond_0

    .line 733
    .end local v12    # "savedNumber":Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 739
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 743
    .end local v3    # "phoneUri":Landroid/net/Uri;
    .end local v9    # "dataCursor":Landroid/database/Cursor;
    .end local v10    # "dataId":J
    .end local v13    # "savedNumberOrig":Ljava/lang/String;
    .end local v14    # "speedDialNum":Ljava/lang/String;
    :goto_1
    return-object v12

    .restart local v3    # "phoneUri":Landroid/net/Uri;
    .restart local v9    # "dataCursor":Landroid/database/Cursor;
    .restart local v10    # "dataId":J
    .restart local v12    # "savedNumber":Ljava/lang/String;
    .restart local v13    # "savedNumberOrig":Ljava/lang/String;
    .restart local v14    # "speedDialNum":Ljava/lang/String;
    :cond_0
    move-object v12, v13

    .line 729
    goto :goto_0

    .line 733
    .end local v14    # "speedDialNum":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 739
    .end local v3    # "phoneUri":Landroid/net/Uri;
    .end local v9    # "dataCursor":Landroid/database/Cursor;
    .end local v10    # "dataId":J
    .end local v12    # "savedNumber":Ljava/lang/String;
    .end local v13    # "savedNumberOrig":Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 743
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 733
    .restart local v3    # "phoneUri":Landroid/net/Uri;
    .restart local v9    # "dataCursor":Landroid/database/Cursor;
    .restart local v10    # "dataId":J
    .restart local v12    # "savedNumber":Ljava/lang/String;
    .restart local v13    # "savedNumberOrig":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 739
    .end local v3    # "phoneUri":Landroid/net/Uri;
    .end local v9    # "dataCursor":Landroid/database/Cursor;
    .end local v10    # "dataId":J
    .end local v12    # "savedNumber":Ljava/lang/String;
    .end local v13    # "savedNumberOrig":Ljava/lang/String;
    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public isCallAllowedGroup(Landroid/content/ContentResolver;J)Z
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "groupId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public isCallRejectedGroup(Landroid/content/ContentResolver;J)Z
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "groupId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public loadGroupPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Landroid/net/Uri;
    .param p3, "placeholderImageResource"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 580
    const/4 v0, 0x0

    return-object v0
.end method

.method public openGroupPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "group"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 550
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryGroupMember(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "groupId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 748
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveGroupRingtone(Landroid/content/ContentResolver;JLandroid/net/Uri;)Z
    .locals 12
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "groupId"    # J
    .param p4, "groupRingtone"    # Landroid/net/Uri;

    .prologue
    .line 852
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 853
    const/4 v0, 0x0

    .line 897
    :goto_0
    return v0

    .line 856
    :cond_0
    const/4 v6, 0x0

    .line 857
    .local v6, "SkyGroupUri":Landroid/net/Uri;
    sget-object v1, Lcom/pantech/provider/skycontacts/SkyContacts$SkyGroups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 861
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 863
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 864
    sget-object v0, Lcom/pantech/provider/skycontacts/SkyContacts$SkyGroups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 867
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 871
    :cond_2
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 872
    .local v11, "values":Landroid/content/ContentValues;
    if-eqz p4, :cond_4

    .line 874
    const-string v0, "group_id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v0, "custom_ringtone"

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    if-nez v6, :cond_3

    .line 878
    sget-object v0, Lcom/pantech/provider/skycontacts/SkyContacts$SkyGroups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 879
    .local v10, "resultUri":Landroid/net/Uri;
    if-eqz v10, :cond_5

    .line 880
    const/4 v0, 0x1

    goto :goto_0

    .line 867
    .end local v10    # "resultUri":Landroid/net/Uri;
    .end local v11    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 883
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v6, v11, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 884
    .local v9, "numOfRowUpdate":I
    if-lez v9, :cond_5

    .line 885
    const/4 v0, 0x1

    goto :goto_0

    .line 889
    .end local v9    # "numOfRowUpdate":I
    :cond_4
    if-eqz v6, :cond_5

    .line 890
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v6, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 891
    .local v8, "numOfRowDelete":I
    if-lez v8, :cond_5

    .line 892
    const/4 v0, 0x1

    goto :goto_0

    .line 897
    .end local v8    # "numOfRowDelete":I
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateGroupMembership(Landroid/content/ContentResolver;JJ)I
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "rawContactId"    # J
    .param p4, "groupId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 513
    const/4 v0, -0x1

    return v0
.end method

.method public updateGroupMembership(Landroid/content/ContentResolver;JLjava/lang/String;)I
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "rawContactId"    # J
    .param p4, "groupName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 480
    const/4 v0, -0x1

    return v0
.end method
