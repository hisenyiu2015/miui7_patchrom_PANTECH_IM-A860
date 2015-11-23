.class Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;
.super Ljava/lang/Object;
.source "ContactManageHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupInfoCache"
.end annotation


# instance fields
.field mGroupInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;


# direct methods
.method public constructor <init>(Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;)V
    .locals 18

    .prologue
    .line 2365
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;->this$0:Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2363
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;->mGroupInfo:Ljava/util/HashMap;

    .line 2367
    const/16 v2, 0x9

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "account_name"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "account_type"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "res_package"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "title_res"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "system_id"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "auto_add"

    aput-object v3, v4, v2

    const/16 v2, 0x8

    const-string v3, "group_is_read_only"

    aput-object v3, v4, v2

    .line 2381
    .local v4, "PROJECTION":[Ljava/lang/String;
    # getter for: Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->access$200(Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "deleted!=1 AND (sourceid != \'plus\' OR sourceid is null) AND (account_type!=\'com.android.contacts.sim\' OR account_type is null)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2389
    .local v17, "c":Landroid/database/Cursor;
    if-eqz v17, :cond_3

    .line 2391
    :goto_0
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;->mGroupInfo:Ljava/util/HashMap;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v5, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v6, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v13, 0x0

    :goto_1
    const/4 v6, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v6, 0x7

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v15, 0x1

    if-ne v6, v15, :cond_1

    const/4 v15, 0x1

    :goto_2
    const/16 v6, 0x8

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v16}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;-><init>(Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZI)V

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2398
    :catchall_0
    move-exception v2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2392
    :cond_0
    const/4 v6, 0x5

    :try_start_1
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    goto :goto_2

    .line 2398
    :cond_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2402
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p1

    # setter for: Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->fRefreshGroupInfo:Z
    invoke-static {v0, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->access$302(Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;Z)Z

    .line 2403
    return-void
.end method


# virtual methods
.method public getGroupInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2406
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;->mGroupInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public isGoogleMyContacts(J)Z
    .locals 4
    .param p1, "groupId"    # J

    .prologue
    .line 2427
    const/4 v0, 0x0

    .line 2428
    .local v0, "googleMyContacts":Z
    iget-object v2, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;->mGroupInfo:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;

    .line 2429
    .local v1, "info":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;
    if-eqz v1, :cond_0

    .line 2430
    const-string v2, "Contacts"

    iget-object v3, v1, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->systemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.google"

    iget-object v3, v1, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2432
    const/4 v0, 0x1

    .line 2435
    :cond_0
    return v0
.end method

.method public isPossibleToAdd(Ljava/lang/String;J)Z
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "groupId"    # J

    .prologue
    .line 2410
    const/4 v1, 0x0

    .line 2411
    .local v1, "okToAdd":Z
    iget-object v2, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;->mGroupInfo:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;

    .line 2412
    .local v0, "info":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;
    if-eqz v0, :cond_0

    .line 2413
    if-nez p1, :cond_1

    .line 2414
    iget-object v2, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2415
    const/4 v1, 0x1

    .line 2423
    :cond_0
    :goto_0
    return v1

    .line 2418
    :cond_1
    iget-object v2, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2419
    const/4 v1, 0x1

    goto :goto_0
.end method
