.class public Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;
.super Lcom/pantech/provider/skycontacts/USIMContactManageHelper;
.source "USIMContactManageHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$1;,
        Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    }
.end annotation


# static fields
.field private static final CONTACTS_ADDNUMBER_COLUMN:I = 0x3

.field private static final CONTACTS_EMAIL_COLUMN:I = 0x5

.field private static final CONTACTS_GROUP_ID_COLUMN:I = 0x4

.field private static final CONTACTS_ID_COLUMN:I = 0x0

.field private static final CONTACTS_NAME_COLUMN:I = 0x1

.field private static final CONTACTS_NUMBER_COLUMN:I = 0x2

.field private static final GROUPS_ID_COLUMN:I = 0x0

.field private static final GROUPS_NAME_COLUMN:I = 0x1

.field private static final PROJECTION_CONTACT_ALL:[Ljava/lang/String;

.field private static final PROJECTION_GROUP_ALL:[Ljava/lang/String;

.field public static final SKYPBMSYNCHRONIZER_CLASS_NAME:Ljava/lang/String; = "com.pantech.provider.skycontacts.impl.SkyPBMSynchronizerImpl"

.field private static final TAG:Ljava/lang/String; = "USIMContactManageHelperImpl"

.field private static skyPBMSynchronizer:Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field mGroupRecordIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 47
    const/4 v2, 0x0

    sput-object v2, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->skyPBMSynchronizer:Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;

    .line 50
    :try_start_0
    const-string v2, "com.pantech.provider.skycontacts.impl.SkyPBMSynchronizerImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 51
    .local v1, "skyPBMSynchronizerClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;

    sput-object v2, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->skyPBMSynchronizer:Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 64
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "name"

    aput-object v3, v2, v6

    const-string v3, "number"

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const-string v4, "addnumber"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "group_id"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "email"

    aput-object v4, v2, v3

    sput-object v2, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->PROJECTION_CONTACT_ALL:[Ljava/lang/String;

    .line 80
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "name"

    aput-object v3, v2, v6

    sput-object v2, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->PROJECTION_GROUP_ALL:[Ljava/lang/String;

    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.pantech.provider.skycontacts.impl.SkyPBMSynchronizerImpl could not be loaded"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 55
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 56
    .local v0, "ex":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.pantech.provider.skycontacts.impl.SkyPBMSynchronizerImpl could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 58
    .end local v0    # "ex":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.pantech.provider.skycontacts.impl.SkyPBMSynchronizerImpl could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/pantech/provider/skycontacts/USIMContactManageHelper;-><init>(Landroid/content/Context;)V

    .line 93
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 95
    invoke-static {}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->installedType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getGroupRecordIds()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mGroupRecordIds:Ljava/util/Map;

    .line 97
    :cond_0
    return-void
.end method

.method private getContactRecordId(I)I
    .locals 12
    .param p1, "contactId"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v5, 0x2

    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 660
    const/4 v9, -0x1

    .line 662
    .local v9, "recordId":I
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "account_type"

    aput-object v3, v2, v4

    const-string v3, "account_name"

    aput-object v3, v2, v5

    const-string v3, "sync1"

    aput-object v3, v2, v11

    const-string v3, "contact_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 671
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 673
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 675
    .local v7, "accountType":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 676
    .local v6, "accountName":Ljava/lang/String;
    const-string v0, "com.android.contacts.sim"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "USIM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 682
    .end local v6    # "accountName":Ljava/lang/String;
    .end local v7    # "accountType":Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 686
    :cond_1
    return v9

    .line 682
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getEntryDataMap(JLjava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "rawContactId"    # J
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 1206
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1207
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;>;"
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "mimetype"

    aput-object v3, v2, v5

    const-string v3, "data1"

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raw_contact_id=? AND mimetype=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1212
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1214
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1215
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1216
    .local v7, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_0

    .line 1217
    new-instance v8, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;-><init>(Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$1;)V

    .line 1218
    .local v8, "entryData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mId:J

    .line 1219
    iput-wide p1, v8, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mRawContactId:J

    .line 1220
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mMimeType:Ljava/lang/String;

    .line 1221
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mData1:Ljava/lang/String;

    .line 1222
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1223
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1216
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1226
    .end local v8    # "entryData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1230
    .end local v7    # "count":I
    .end local v9    # "i":I
    :cond_1
    return-object v10

    .line 1226
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getEntryInsertOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 315
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 316
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 317
    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 318
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    const-string v1, "data2"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 323
    :cond_0
    :goto_0
    const-string v1, "data1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 324
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1

    .line 320
    :cond_1
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const-string v1, "data2"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method private getEntryUpdateOperation(Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 11
    .param p1, "data"    # Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    .param p2, "before"    # Ljava/lang/String;
    .param p3, "after"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 328
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    move v1, v3

    .line 329
    .local v1, "beforeExist":Z
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v3

    .line 332
    .local v0, "afterExist":Z
    :goto_1
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 333
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 334
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "_id=?"

    new-array v3, v3, [Ljava/lang/String;

    iget-wide v7, p1, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 335
    iget-object v3, p1, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mMimeType:Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 336
    const-string v3, "data1"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 337
    const-string v3, "data2"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 338
    const-string v3, "data3"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 348
    :goto_2
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 365
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :goto_3
    return-object v3

    .end local v0    # "afterExist":Z
    .end local v1    # "beforeExist":Z
    :cond_0
    move v1, v4

    .line 328
    goto :goto_0

    .restart local v1    # "beforeExist":Z
    :cond_1
    move v0, v4

    .line 329
    goto :goto_1

    .line 339
    .restart local v0    # "afterExist":Z
    .restart local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    iget-object v3, p1, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mMimeType:Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 340
    const-string v3, "data2"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 341
    const-string v3, "data1"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 342
    :cond_3
    iget-object v3, p1, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mMimeType:Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 343
    const-string v3, "data2"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 344
    const-string v3, "data1"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 346
    :cond_4
    const-string v3, "data1"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 349
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_5
    if-eqz v1, :cond_6

    if-nez v0, :cond_6

    .line 350
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 351
    .restart local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "_id=?"

    new-array v3, v3, [Ljava/lang/String;

    iget-wide v6, p1, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 352
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    goto :goto_3

    .line 353
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_6
    if-nez v1, :cond_9

    if-eqz v0, :cond_9

    .line 354
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 355
    .restart local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id"

    iget-wide v4, p1, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mRawContactId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 356
    const-string v3, "mimetype"

    iget-object v4, p1, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 357
    iget-object v3, p1, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mMimeType:Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 358
    const-string v3, "data2"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 362
    :cond_7
    :goto_4
    const-string v3, "data1"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 363
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    goto/16 :goto_3

    .line 359
    :cond_8
    iget-object v3, p1, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mMimeType:Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 360
    const-string v3, "data2"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_9
    move-object v3, v5

    .line 365
    goto/16 :goto_3
.end method

.method private getGroupRecordIds()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1156
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    const-string v0, "account_type"

    aput-object v0, v2, v5

    const-string v0, "account_name"

    aput-object v0, v2, v13

    const-string v0, "sync1"

    aput-object v0, v2, v14

    .line 1163
    .local v2, "PROJECTION":[Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1164
    .local v8, "groupRecordIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 1165
    .local v1, "groupUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1166
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 1168
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1169
    .local v6, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_1

    .line 1170
    invoke-interface {v7, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1172
    .local v12, "type":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1173
    .local v10, "name":Ljava/lang/String;
    const-string v0, "com.android.contacts.sim"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "USIM"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1176
    .local v11, "recordId":I
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "recordId":I
    .end local v12    # "type":Ljava/lang/String;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1181
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1185
    .end local v6    # "count":I
    .end local v9    # "i":I
    :cond_2
    return-object v8

    .line 1181
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getRawContactId(J)J
    .locals 7
    .param p1, "contactId"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1189
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1192
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1194
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1198
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1202
    :goto_0
    return-wide v0

    .line 1198
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1202
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1198
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getUSIMContactsItemCount(Lcom/pantech/provider/skycontacts/USIMContactEntry;)I
    .locals 2
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/USIMContactEntry;

    .prologue
    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, "numValues":I
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    add-int/lit8 v0, v0, 0x1

    .line 849
    :cond_0
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getPhoneList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 850
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getGroupList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 852
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 853
    add-int/lit8 v0, v0, 0x1

    .line 856
    :cond_1
    return v0
.end method

.method public static installedType()Z
    .locals 1

    .prologue
    .line 1243
    const-string v0, "63"

    invoke-static {v0}, Lcom/pantech/provider/skycontacts/DeviceInfo;->equalsOrNextGroup(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public deleteUSIMContact(I)Z
    .locals 2
    .param p1, "contactId"    # I

    .prologue
    .line 690
    const/4 v0, 0x0

    .line 692
    .local v0, "result":Z
    invoke-static {}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->installedType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->deleteUSIMContactEF63(I)Z

    move-result v0

    .line 698
    :goto_0
    return v0

    .line 695
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->deleteUSIMContactEF60(I)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteUSIMContactEF60(I)Z
    .locals 6
    .param p1, "contactId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 702
    if-gez p1, :cond_0

    neg-int p1, p1

    .line 704
    :cond_0
    sget-object v2, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 705
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 709
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteUSIMContactEF63(I)Z
    .locals 7
    .param p1, "contactId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 713
    if-gez p1, :cond_0

    neg-int p1, p1

    .line 715
    :cond_0
    invoke-direct {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getContactRecordId(I)I

    move-result v1

    .line 716
    .local v1, "recordId":I
    if-lez v1, :cond_1

    .line 717
    sget-object v3, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->skyPBMSynchronizer:Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;

    invoke-virtual {v3, v1}, Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;->deleteContact(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 718
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "delete fail pbm record."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 722
    :cond_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 723
    .local v0, "contactUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 727
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteUSIMGroup(I)Z
    .locals 2
    .param p1, "groupId"    # I

    .prologue
    .line 1025
    const/4 v0, 0x0

    .line 1027
    .local v0, "result":Z
    invoke-static {}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->installedType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1028
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->deleteUSIMGroupEF63(I)Z

    move-result v0

    .line 1033
    :goto_0
    return v0

    .line 1030
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->deleteUSIMGroupEF60(I)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteUSIMGroupEF60(I)Z
    .locals 7
    .param p1, "groupId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1037
    if-nez p1, :cond_1

    .line 1038
    const-string v2, "USIMContactManageHelperImpl"

    const-string v3, "deleteUSIMGroup(): id value is invalid(0)!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_0
    :goto_0
    return v1

    .line 1042
    :cond_1
    if-gez p1, :cond_2

    .line 1043
    neg-int p1, p1

    .line 1045
    :cond_2
    sget-object v3, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1046
    .local v0, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 1047
    goto :goto_0
.end method

.method public deleteUSIMGroupEF63(I)Z
    .locals 8
    .param p1, "groupId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1054
    if-nez p1, :cond_0

    .line 1055
    const-string v2, "USIMContactManageHelperImpl"

    const-string v4, "deleteUSIMGroup(): id value is invalid(0)!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1076
    :goto_0
    return v2

    .line 1059
    :cond_0
    if-gez p1, :cond_1

    .line 1060
    neg-int p1, p1

    .line 1062
    :cond_1
    const/4 v1, -0x1

    .line 1064
    .local v1, "result":I
    iget-object v2, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mGroupRecordIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1066
    .local v0, "recordId":I
    sget-object v2, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->skyPBMSynchronizer:Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;

    invoke-virtual {v2, v0}, Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;->deleteGroup(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1067
    const-string v2, "USIMContactManageHelperImpl"

    const-string v4, "fail to delete usim contact via PBM."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1068
    goto :goto_0

    .line 1071
    :cond_2
    iget-object v2, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, p1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1073
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    move v2, v3

    .line 1074
    goto :goto_0

    .line 1076
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getUSIMContact(I)Lcom/pantech/provider/skycontacts/USIMContactEntry;
    .locals 2
    .param p1, "contactId"    # I

    .prologue
    .line 731
    const/4 v0, 0x0

    .line 733
    .local v0, "entry":Lcom/pantech/provider/skycontacts/USIMContactEntry;
    invoke-static {}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->installedType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getUSIMContactEF63(I)Lcom/pantech/provider/skycontacts/USIMContactEntry;

    move-result-object v0

    .line 739
    :goto_0
    return-object v0

    .line 736
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getUSIMContactEF60(I)Lcom/pantech/provider/skycontacts/USIMContactEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public getUSIMContactEF60(I)Lcom/pantech/provider/skycontacts/USIMContactEntry;
    .locals 8
    .param p1, "contactId"    # I

    .prologue
    const/4 v4, 0x0

    .line 743
    if-nez p1, :cond_1

    .line 744
    const-string v0, "USIMContactManageHelperImpl"

    const-string v2, "getUSIMContact(): id value is invalid(0)!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_0
    :goto_0
    return-object v4

    .line 748
    :cond_1
    if-gez p1, :cond_2

    .line 749
    neg-int p1, p1

    .line 751
    :cond_2
    sget-object v1, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 752
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 753
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->PROJECTION_CONTACT_ALL:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 754
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 756
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 758
    new-instance v7, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, p1, v0}, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;-><init>(ILjava/lang/String;)V

    .line 760
    .local v7, "entry":Lcom/pantech/provider/skycontacts/USIMContactEntry;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 761
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->addPhoneNumber(Ljava/lang/String;)V

    .line 763
    :cond_3
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 764
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->addPhoneNumber(Ljava/lang/String;)V

    .line 766
    :cond_4
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 767
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->addGroupID(Ljava/lang/String;)V

    .line 769
    :cond_5
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 770
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->setEmail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v4, v7

    goto :goto_0

    .end local v7    # "entry":Lcom/pantech/provider/skycontacts/USIMContactEntry;
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getUSIMContactEF63(I)Lcom/pantech/provider/skycontacts/USIMContactEntry;
    .locals 14
    .param p1, "contactId"    # I

    .prologue
    .line 784
    if-nez p1, :cond_0

    .line 785
    const-string v0, "USIMContactManageHelperImpl"

    const-string v1, "getUSIMContact(): id value is invalid(0)!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v8, 0x0

    .line 840
    :goto_0
    return-object v8

    .line 789
    :cond_0
    if-gez p1, :cond_1

    .line 790
    neg-int p1, p1

    .line 792
    :cond_1
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getRawContactId(J)J

    move-result-wide v11

    .line 800
    .local v11, "rawContactId":J
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mimetype"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "data1"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 811
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_8

    .line 813
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 815
    new-instance v8, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;

    const/4 v0, 0x0

    invoke-direct {v8, p1, v0}, Lcom/pantech/provider/skycontacts/impl/USIMContactEntryImpl;-><init>(ILjava/lang/String;)V

    .line 817
    .local v8, "entry":Lcom/pantech/provider/skycontacts/USIMContactEntry;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 818
    .local v6, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_6

    .line 819
    invoke-interface {v7, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 820
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 822
    .local v10, "mimeType":Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 823
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->setName(Ljava/lang/String;)V

    .line 818
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 824
    :cond_3
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 825
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->addPhoneNumber(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 836
    .end local v6    # "count":I
    .end local v8    # "entry":Lcom/pantech/provider/skycontacts/USIMContactEntry;
    .end local v9    # "i":I
    .end local v10    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 826
    .restart local v6    # "count":I
    .restart local v8    # "entry":Lcom/pantech/provider/skycontacts/USIMContactEntry;
    .restart local v9    # "i":I
    .restart local v10    # "mimeType":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 827
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->addGroupID(Ljava/lang/String;)V

    goto :goto_2

    .line 828
    :cond_5
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 829
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->setEmail(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 836
    .end local v10    # "mimeType":Ljava/lang/String;
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v6    # "count":I
    .end local v8    # "entry":Lcom/pantech/provider/skycontacts/USIMContactEntry;
    .end local v9    # "i":I
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 840
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public getUSIMGroup(I)Lcom/pantech/provider/skycontacts/USIMGroupEntry;
    .locals 2
    .param p1, "groupId"    # I

    .prologue
    .line 1081
    const/4 v0, 0x0

    .line 1083
    .local v0, "entry":Lcom/pantech/provider/skycontacts/USIMGroupEntry;
    invoke-static {}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->installedType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1084
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getUSIMGroupEF63(I)Lcom/pantech/provider/skycontacts/USIMGroupEntry;

    move-result-object v0

    .line 1089
    :goto_0
    return-object v0

    .line 1086
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getUSIMGroupEF60(I)Lcom/pantech/provider/skycontacts/USIMGroupEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public getUSIMGroupEF60(I)Lcom/pantech/provider/skycontacts/USIMGroupEntry;
    .locals 10
    .param p1, "groupId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1093
    if-gez p1, :cond_0

    .line 1094
    neg-int p1, p1

    .line 1098
    :cond_0
    if-lez p1, :cond_1

    .line 1099
    sget-object v1, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 1100
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1105
    .local v3, "selection":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->PROJECTION_GROUP_ALL:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1106
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1108
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1110
    new-instance v7, Lcom/pantech/provider/skycontacts/impl/USIMGroupEntryImpl;

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, p1, v0}, Lcom/pantech/provider/skycontacts/impl/USIMGroupEntryImpl;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    .local v7, "entry":Lcom/pantech/provider/skycontacts/USIMGroupEntry;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1118
    .end local v7    # "entry":Lcom/pantech/provider/skycontacts/USIMGroupEntry;
    :goto_1
    return-object v7

    .line 1102
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->GRP_URI:Landroid/net/Uri;

    int-to-long v8, p1

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1103
    .restart local v1    # "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    .restart local v3    # "selection":Ljava/lang/String;
    goto :goto_0

    .line 1114
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, v4

    .line 1118
    goto :goto_1

    .line 1114
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getUSIMGroupEF63(I)Lcom/pantech/provider/skycontacts/USIMGroupEntry;
    .locals 9
    .param p1, "groupId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1122
    if-gez p1, :cond_0

    .line 1123
    neg-int p1, p1

    .line 1126
    :cond_0
    if-nez p1, :cond_1

    .line 1128
    new-instance v7, Lcom/pantech/provider/skycontacts/impl/USIMGroupEntryImpl;

    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContext:Landroid/content/Context;

    const v2, 0x104033c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lcom/pantech/provider/skycontacts/impl/USIMGroupEntryImpl;-><init>(ILjava/lang/String;)V

    .line 1150
    :goto_0
    return-object v7

    .line 1132
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1133
    .local v1, "entityUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1138
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1140
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1142
    new-instance v7, Lcom/pantech/provider/skycontacts/impl/USIMGroupEntryImpl;

    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, p1, v0}, Lcom/pantech/provider/skycontacts/impl/USIMGroupEntryImpl;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    .local v7, "entry":Lcom/pantech/provider/skycontacts/USIMGroupEntry;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "entry":Lcom/pantech/provider/skycontacts/USIMGroupEntry;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, v3

    .line 1150
    goto :goto_0

    .line 1146
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public insertUSIMContact(Lcom/pantech/provider/skycontacts/USIMContactEntry;)Landroid/net/Uri;
    .locals 2
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/USIMContactEntry;

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->installedType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->insertUSIMContactEF63(Lcom/pantech/provider/skycontacts/USIMContactEntry;)Landroid/net/Uri;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->insertUSIMContactEF60(Lcom/pantech/provider/skycontacts/USIMContactEntry;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public insertUSIMContactEF60(Lcom/pantech/provider/skycontacts/USIMContactEntry;)Landroid/net/Uri;
    .locals 17
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/USIMContactEntry;

    .prologue
    .line 112
    invoke-direct/range {p0 .. p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getUSIMContactsItemCount(Lcom/pantech/provider/skycontacts/USIMContactEntry;)I

    move-result v14

    if-nez v14, :cond_0

    .line 113
    const-string v14, "USIMContactManageHelperImpl"

    const-string v15, "no Data set"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v12, 0x0

    .line 181
    :goto_0
    return-object v12

    .line 117
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getId()I

    move-result v6

    .line 118
    .local v6, "id":I
    if-eqz v6, :cond_1

    .line 119
    const-string v14, "USIMContactManageHelperImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "requesting id must be 0 if insert entry! id : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v12, 0x0

    goto :goto_0

    .line 123
    :cond_1
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v13, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 127
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 128
    const-string v14, "name"

    invoke-virtual {v13, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getPhoneList()Ljava/util/ArrayList;

    move-result-object v10

    .line 133
    .local v10, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 134
    .local v8, "nCnt":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 135
    .local v7, "item":Ljava/lang/String;
    const-string v14, "USIMContactManageHelperImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "item : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-nez v8, :cond_4

    .line 137
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 138
    const-string v14, "number"

    invoke-virtual {v13, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 140
    :cond_4
    const/4 v14, 0x1

    if-ne v8, v14, :cond_5

    .line 141
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 142
    const-string v14, "addnumber"

    invoke-virtual {v13, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 151
    .end local v7    # "item":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getGroupList()Ljava/util/ArrayList;

    move-result-object v4

    .line 152
    .local v4, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 153
    .restart local v7    # "item":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 155
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 156
    .local v3, "groupId":I
    if-eqz v3, :cond_6

    .line 157
    const-string v14, "group_id"

    invoke-virtual {v13, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v3    # "groupId":I
    .end local v7    # "item":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "email":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 169
    const-string v14, "email"

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 174
    .local v11, "resultUri":Landroid/net/Uri;
    if-eqz v11, :cond_9

    .line 175
    sget-object v14, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v15, "usimsavebook"

    invoke-static {v14, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 176
    .local v12, "uri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_0

    .line 160
    .end local v2    # "email":Ljava/lang/String;
    .end local v11    # "resultUri":Landroid/net/Uri;
    .end local v12    # "uri":Landroid/net/Uri;
    .restart local v7    # "item":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v14, "USIMContactManageHelperImpl"

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 178
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "item":Ljava/lang/String;
    .restart local v2    # "email":Ljava/lang/String;
    .restart local v11    # "resultUri":Landroid/net/Uri;
    :cond_9
    const/4 v12, 0x0

    .restart local v12    # "uri":Landroid/net/Uri;
    goto/16 :goto_0
.end method

.method public insertUSIMContactEF63(Lcom/pantech/provider/skycontacts/USIMContactEntry;)Landroid/net/Uri;
    .locals 25
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/USIMContactEntry;

    .prologue
    .line 185
    invoke-direct/range {p0 .. p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getUSIMContactsItemCount(Lcom/pantech/provider/skycontacts/USIMContactEntry;)I

    move-result v22

    if-nez v22, :cond_0

    .line 186
    const-string v22, "USIMContactManageHelperImpl"

    const-string v23, "no Data set"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/16 v22, 0x0

    .line 310
    :goto_0
    return-object v22

    .line 190
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getId()I

    move-result v12

    .line 191
    .local v12, "id":I
    if-eqz v12, :cond_1

    .line 192
    const-string v22, "USIMContactManageHelperImpl"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "requesting id must be 0 if insert entry! id : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/16 v22, 0x0

    goto :goto_0

    .line 196
    :cond_1
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v21, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getName()Ljava/lang/String;

    move-result-object v15

    .line 200
    .local v15, "name":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 201
    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getPhoneList()Ljava/util/ArrayList;

    move-result-object v18

    .line 206
    .local v18, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 207
    .local v14, "nCnt":I
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 208
    .local v13, "item":Ljava/lang/String;
    const-string v22, "USIMContactManageHelperImpl"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "item : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-nez v14, :cond_4

    .line 210
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 211
    const-string v22, "number"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 213
    :cond_4
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_5

    .line 214
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 215
    const-string v22, "addnumber"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 224
    .end local v13    # "item":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getGroupList()Ljava/util/ArrayList;

    move-result-object v9

    .line 225
    .local v9, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 226
    .restart local v13    # "item":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 228
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 229
    .local v8, "groupId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mGroupRecordIds:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 230
    .local v10, "groupRecordId":I
    if-eqz v10, :cond_6

    .line 231
    const-string v22, "group_id"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v8    # "groupId":I
    .end local v10    # "groupRecordId":I
    .end local v13    # "item":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getEmail()Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, "email":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 243
    const-string v22, "email"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_8
    sget-object v22, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->skyPBMSynchronizer:Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;->updateContact(Landroid/content/Context;ILandroid/content/ContentValues;)I

    move-result v19

    .line 248
    .local v19, "recordId":I
    const-string v22, "USIMContactManageHelperImpl"

    const-string v23, "fail to insert contact via PBM."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-gez v19, :cond_9

    .line 250
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 234
    .end local v6    # "email":Ljava/lang/String;
    .end local v19    # "recordId":I
    .restart local v13    # "item":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 235
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v22, "USIMContactManageHelperImpl"

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 253
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v13    # "item":Ljava/lang/String;
    .restart local v6    # "email":Ljava/lang/String;
    .restart local v19    # "recordId":I
    :cond_9
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v16, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v22, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v22 .. v22}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 257
    .local v4, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v22, "account_name"

    const-string v23, "USIM"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 258
    const-string v22, "account_type"

    const-string v23, "com.android.contacts.sim"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 259
    const-string v22, "aggregation_mode"

    const/16 v23, 0x3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 260
    const-string v22, "sync1"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 261
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 266
    const-string v22, "vnd.android.cursor.item/name"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v15}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getEntryInsertOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 272
    .local v17, "phone":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 273
    const-string v22, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getEntryInsertOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 279
    .end local v17    # "phone":Ljava/lang/String;
    :cond_c
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_d
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 280
    .local v7, "group":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 281
    const-string v22, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v7}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getEntryInsertOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 287
    .end local v7    # "group":Ljava/lang/String;
    :cond_e
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 288
    const-string v22, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v6}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getEntryInsertOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    const-string v23, "com.android.contacts"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v20

    .line 294
    .local v20, "results":[Landroid/content/ContentProviderResult;
    if-eqz v20, :cond_10

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_10

    .line 302
    const/16 v22, 0x0

    aget-object v22, v20, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v22, v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 304
    .end local v20    # "results":[Landroid/content/ContentProviderResult;
    :catch_1
    move-exception v5

    .line 305
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 310
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_6
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 306
    :catch_2
    move-exception v5

    .line 307
    .local v5, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_6
.end method

.method public insertUSIMGroup(Lcom/pantech/provider/skycontacts/USIMGroupEntry;)Landroid/net/Uri;
    .locals 2
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/USIMGroupEntry;

    .prologue
    .line 860
    const/4 v0, 0x0

    .line 862
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->installedType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->insertUSIMGroupEF63(Lcom/pantech/provider/skycontacts/USIMGroupEntry;)Landroid/net/Uri;

    move-result-object v0

    .line 868
    :goto_0
    return-object v0

    .line 865
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->insertUSIMGroupEF60(Lcom/pantech/provider/skycontacts/USIMGroupEntry;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public insertUSIMGroupEF60(Lcom/pantech/provider/skycontacts/USIMGroupEntry;)Landroid/net/Uri;
    .locals 6
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/USIMGroupEntry;

    .prologue
    .line 872
    const/4 v2, 0x0

    .line 873
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 876
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/USIMGroupEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 878
    const-string v4, "name"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :cond_0
    iget-object v4, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 882
    .local v1, "resultUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 883
    sget-object v4, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "usimsavegrp"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 884
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 888
    :cond_1
    return-object v2
.end method

.method public insertUSIMGroupEF63(Lcom/pantech/provider/skycontacts/USIMGroupEntry;)Landroid/net/Uri;
    .locals 12
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/USIMGroupEntry;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 892
    if-nez p1, :cond_1

    .line 893
    const-string v9, "USIMContactManageHelperImpl"

    const-string v10, "USIMGroupEntry is null."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_0
    :goto_0
    return-object v8

    .line 897
    :cond_1
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/USIMGroupEntry;->getId()I

    move-result v2

    .line 898
    .local v2, "id":I
    if-eqz v2, :cond_2

    .line 899
    const-string v9, "USIMContactManageHelperImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requesting id must be 0 if insert entry! id : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 903
    :cond_2
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 906
    .local v7, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/USIMGroupEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 907
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 908
    const-string v9, "name"

    invoke-virtual {v7, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    :cond_3
    sget-object v9, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->skyPBMSynchronizer:Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;

    invoke-virtual {v9, v10, v7}, Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;->updateGroup(ILandroid/content/ContentValues;)I

    move-result v5

    .line 912
    .local v5, "recordId":I
    const-string v9, "USIMContactManageHelperImpl"

    const-string v10, "fail to insert group via PBM."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    if-ltz v5, :cond_0

    .line 917
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v4, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v9, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 920
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v9, "account_name"

    const-string v10, "USIM"

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 921
    const-string v9, "account_type"

    const-string v10, "com.android.contacts.sim"

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 922
    const-string v9, "title"

    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/USIMGroupEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 923
    const-string v9, "sync1"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 924
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    :try_start_0
    iget-object v9, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "com.android.contacts"

    invoke-virtual {v9, v10, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    .line 929
    .local v6, "results":[Landroid/content/ContentProviderResult;
    if-eqz v6, :cond_0

    array-length v9, v6

    if-lez v9, :cond_0

    const/4 v9, 0x0

    aget-object v9, v6, v9

    iget-object v8, v9, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 930
    .end local v6    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v1

    .line 931
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 932
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 933
    .local v1, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public updateUSIMContact(Lcom/pantech/provider/skycontacts/USIMContactEntry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/USIMContactEntry;

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 372
    .local v0, "result":Z
    invoke-static {}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->installedType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->updateUSIMContactEF63(Lcom/pantech/provider/skycontacts/USIMContactEntry;)Z

    move-result v0

    .line 378
    :goto_0
    return v0

    .line 375
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->updateUSIMContactEF60(Lcom/pantech/provider/skycontacts/USIMContactEntry;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateUSIMContactEF60(Lcom/pantech/provider/skycontacts/USIMContactEntry;)Z
    .locals 27
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/USIMContactEntry;

    .prologue
    .line 383
    const-string v19, ""

    .line 384
    .local v19, "number":Ljava/lang/String;
    const-string v7, ""

    .line 385
    .local v7, "addnumber":Ljava/lang/String;
    const-string v6, ""

    .line 386
    .local v6, "GroupID":Ljava/lang/String;
    const-string v5, ""

    .line 387
    .local v5, "Email":Ljava/lang/String;
    const/4 v9, 0x0

    .line 389
    .local v9, "fSuccess":Z
    invoke-direct/range {p0 .. p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getUSIMContactsItemCount(Lcom/pantech/provider/skycontacts/USIMContactEntry;)I

    move-result v17

    .line 392
    .local v17, "nDBItemCnt":I
    if-nez v17, :cond_0

    .line 393
    const-string v24, "USIMContactManageHelperImpl"

    const-string v25, "no Data set"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 473
    .end local v9    # "fSuccess":Z
    .local v10, "fSuccess":I
    :goto_0
    return v10

    .line 397
    .end local v10    # "fSuccess":I
    .restart local v9    # "fSuccess":Z
    :cond_0
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 398
    .local v23, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getId()I

    move-result v14

    .line 399
    .local v14, "id":I
    if-gez v14, :cond_1

    .line 400
    neg-int v14, v14

    .line 402
    :cond_1
    if-eqz v14, :cond_d

    .line 404
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getName()Ljava/lang/String;

    move-result-object v18

    .line 407
    .local v18, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getPhoneList()Ljava/util/ArrayList;

    move-result-object v20

    .line 408
    .local v20, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 409
    .local v16, "nCnt":I
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 410
    .local v15, "item":Ljava/lang/String;
    if-nez v16, :cond_2

    .line 411
    move-object/from16 v19, v15

    .line 417
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 412
    :cond_2
    const/16 v24, 0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 413
    move-object v7, v15

    goto :goto_2

    .line 421
    .end local v15    # "item":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getGroupList()Ljava/util/ArrayList;

    move-result-object v12

    .line 422
    .local v12, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 424
    .restart local v15    # "item":Ljava/lang/String;
    :try_start_0
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v24

    if-nez v24, :cond_4

    .line 425
    move-object v6, v15

    .line 433
    .end local v15    # "item":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getEmail()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_6

    .line 434
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getEmail()Ljava/lang/String;

    move-result-object v5

    .line 436
    :cond_6
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 437
    const-string v24, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_7
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 441
    const-string v24, "number"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 445
    const-string v24, "addnumber"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_a

    .line 450
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 451
    .local v11, "groupId":I
    if-eqz v11, :cond_a

    .line 452
    const-string v24, "group_id"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 459
    .end local v11    # "groupId":I
    :cond_a
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 460
    const-string v24, "email"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_b
    sget-object v24, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v0, v14

    move-wide/from16 v25, v0

    invoke-static/range {v24 .. v26}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 464
    .local v22, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    .line 466
    .local v21, "result":I
    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 467
    const/4 v9, 0x1

    .end local v12    # "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "nCnt":I
    .end local v18    # "name":Ljava/lang/String;
    .end local v20    # "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "result":I
    .end local v22    # "uri":Landroid/net/Uri;
    :cond_c
    :goto_4
    move v10, v9

    .line 473
    .restart local v10    # "fSuccess":I
    goto/16 :goto_0

    .line 428
    .end local v10    # "fSuccess":I
    .restart local v12    # "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v15    # "item":Ljava/lang/String;
    .restart local v16    # "nCnt":I
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v20    # "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v24

    throw v24

    .line 454
    .end local v15    # "item":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 455
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string v24, "USIMContactManageHelperImpl"

    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 470
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "nCnt":I
    .end local v18    # "name":Ljava/lang/String;
    .end local v20    # "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    const-string v24, "USIMContactManageHelperImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "requesting id must be set for update entry ! id : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public updateUSIMContactEF63(Lcom/pantech/provider/skycontacts/USIMContactEntry;)Z
    .locals 44
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/USIMContactEntry;

    .prologue
    .line 477
    invoke-direct/range {p0 .. p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getUSIMContactsItemCount(Lcom/pantech/provider/skycontacts/USIMContactEntry;)I

    move-result v41

    if-nez v41, :cond_0

    .line 478
    const-string v41, "USIMContactManageHelperImpl"

    const-string v42, "no Data set"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/16 v41, 0x0

    .line 656
    :goto_0
    return v41

    .line 482
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getId()I

    move-result v22

    .line 483
    .local v22, "id":I
    if-nez v22, :cond_1

    .line 484
    const-string v41, "USIMContactManageHelperImpl"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "requesting id must not be 0 if update entry! id : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/16 v41, 0x0

    goto :goto_0

    .line 489
    :cond_1
    const-string v28, ""

    .line 490
    .local v28, "number":Ljava/lang/String;
    const-string v4, ""

    .line 491
    .local v4, "addnumber":Ljava/lang/String;
    const-string v18, ""

    .line 492
    .local v18, "groupRecordID":Ljava/lang/String;
    const-string v10, ""

    .line 494
    .local v10, "email":Ljava/lang/String;
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 498
    .local v40, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getName()Ljava/lang/String;

    move-result-object v25

    .line 501
    .local v25, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getPhoneList()Ljava/util/ArrayList;

    move-result-object v34

    .line 502
    .local v34, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .line 503
    .local v24, "nCnt":I
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 504
    .local v23, "item":Ljava/lang/String;
    if-nez v24, :cond_2

    .line 505
    move-object/from16 v28, v23

    .line 511
    :goto_2
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 506
    :cond_2
    const/16 v41, 0x1

    move/from16 v0, v24

    move/from16 v1, v41

    if-ne v0, v1, :cond_3

    .line 507
    move-object/from16 v4, v23

    goto :goto_2

    .line 515
    .end local v23    # "item":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getGroupList()Ljava/util/ArrayList;

    move-result-object v17

    .line 516
    .local v17, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 518
    .restart local v23    # "item":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_4

    .line 519
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 520
    .local v16, "groupId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mGroupRecordIds:Ljava/util/Map;

    move-object/from16 v41, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 521
    .local v19, "groupRecordId":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .line 529
    .end local v16    # "groupId":I
    .end local v19    # "groupRecordId":I
    .end local v23    # "item":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getEmail()Ljava/lang/String;

    move-result-object v41

    if-eqz v41, :cond_6

    .line 530
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getEmail()Ljava/lang/String;

    move-result-object v10

    .line 532
    :cond_6
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_7

    .line 533
    const-string v41, "name"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_7
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_8

    .line 537
    const-string v41, "number"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_9

    .line 541
    const-string v41, "addnumber"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_9
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_a

    .line 546
    :try_start_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 547
    .restart local v16    # "groupId":I
    if-eqz v16, :cond_a

    .line 548
    const-string v41, "group_id"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 555
    .end local v16    # "groupId":I
    :cond_a
    :goto_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_b

    .line 556
    const-string v41, "email"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getContactRecordId(I)I

    move-result v37

    .line 560
    .local v37, "recordId":I
    sget-object v41, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->skyPBMSynchronizer:Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move/from16 v2, v37

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;->updateContact(Landroid/content/Context;ILandroid/content/ContentValues;)I

    move-result v41

    if-gez v41, :cond_c

    .line 561
    const-string v41, "USIMContactManageHelperImpl"

    const-string v42, "fail to update usim contact via PBM."

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/16 v41, 0x0

    goto/16 :goto_0

    .line 524
    .end local v37    # "recordId":I
    .restart local v23    # "item":Ljava/lang/String;
    :catchall_0
    move-exception v41

    throw v41

    .line 550
    .end local v23    # "item":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 551
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string v41, "USIMContactManageHelperImpl"

    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 565
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v37    # "recordId":I
    :cond_c
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v41, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v41

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getRawContactId(J)J

    move-result-wide v35

    .line 566
    .local v35, "rawContactId":J
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v29, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v41, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v42, v0

    invoke-static/range {v41 .. v43}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v39

    .line 570
    .local v39, "uri":Landroid/net/Uri;
    invoke-static/range {v39 .. v39}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 571
    .local v7, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v41, "account_name"

    const-string v42, "USIM"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 572
    const-string v41, "account_type"

    const-string v42, "com.android.contacts.sim"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 573
    const-string v41, "aggregation_mode"

    const/16 v42, 0x3

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 574
    const-string v41, "sync1"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 575
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v41

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    const/4 v6, 0x0

    .line 578
    .local v6, "before":Ljava/lang/String;
    const/4 v5, 0x0

    .line 581
    .local v5, "after":Ljava/lang/String;
    const-string v41, "vnd.android.cursor.item/name"

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getEntryDataMap(JLjava/lang/String;)Ljava/util/List;

    move-result-object v27

    .line 582
    .local v27, "nameEntries":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;>;"
    const/16 v26, 0x0

    .line 583
    .local v26, "nameData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v41

    if-lez v41, :cond_d

    .line 584
    const/16 v41, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "nameData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    check-cast v26, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;

    .line 585
    .restart local v26    # "nameData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mData1:Ljava/lang/String;

    .line 591
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 592
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v6, v5}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getEntryUpdateOperation(Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v41

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    const-string v41, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getEntryDataMap(JLjava/lang/String;)Ljava/util/List;

    move-result-object v33

    .line 597
    .local v33, "phoneDataList":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v41

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v42

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v31

    .line 598
    .local v31, "phoneCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, v31

    if-ge v0, v1, :cond_13

    .line 599
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v41

    move/from16 v0, v41

    move/from16 v1, v20

    if-le v0, v1, :cond_e

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;

    move-object/from16 v32, v41

    .line 600
    .local v32, "phoneData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    :goto_6
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    move/from16 v1, v20

    if-le v0, v1, :cond_f

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    move-object/from16 v30, v41

    .line 601
    .local v30, "phone":Ljava/lang/String;
    :goto_7
    const/4 v6, 0x0

    .line 602
    if-eqz v32, :cond_11

    .line 603
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mData1:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_10

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mData1:Ljava/lang/String;

    .line 609
    :goto_8
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_12

    move-object/from16 v5, v30

    .line 610
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v6, v5}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getEntryUpdateOperation(Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v41

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 587
    .end local v20    # "i":I
    .end local v30    # "phone":Ljava/lang/String;
    .end local v31    # "phoneCount":I
    .end local v32    # "phoneData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    .end local v33    # "phoneDataList":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;>;"
    :cond_d
    new-instance v26, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;

    .end local v26    # "nameData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    const/16 v41, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;-><init>(Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$1;)V

    .line 588
    .restart local v26    # "nameData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    move-wide/from16 v0, v35

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mRawContactId:J

    .line 589
    const-string v41, "vnd.android.cursor.item/name"

    move-object/from16 v0, v41

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mMimeType:Ljava/lang/String;

    goto/16 :goto_4

    .line 599
    .restart local v20    # "i":I
    .restart local v31    # "phoneCount":I
    .restart local v33    # "phoneDataList":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;>;"
    :cond_e
    const/16 v32, 0x0

    goto :goto_6

    .line 600
    .restart local v32    # "phoneData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    :cond_f
    const/16 v30, 0x0

    goto :goto_7

    .line 603
    .restart local v30    # "phone":Ljava/lang/String;
    :cond_10
    const/4 v6, 0x0

    goto :goto_8

    .line 605
    :cond_11
    new-instance v32, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;

    .end local v32    # "phoneData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    const/16 v41, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;-><init>(Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$1;)V

    .line 606
    .restart local v32    # "phoneData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    move-wide/from16 v0, v35

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mRawContactId:J

    .line 607
    const-string v41, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mMimeType:Ljava/lang/String;

    goto :goto_8

    .line 609
    :cond_12
    const/4 v5, 0x0

    goto :goto_9

    .line 614
    .end local v30    # "phone":Ljava/lang/String;
    .end local v32    # "phoneData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    :cond_13
    const-string v41, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getEntryDataMap(JLjava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 616
    .local v15, "groupDataList":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v41

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v42

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 617
    .local v13, "groupCount":I
    const/16 v20, 0x0

    :goto_a
    move/from16 v0, v20

    if-ge v0, v13, :cond_19

    .line 618
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v41

    move/from16 v0, v41

    move/from16 v1, v20

    if-le v0, v1, :cond_14

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;

    move-object/from16 v14, v41

    .line 619
    .local v14, "groupData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    :goto_b
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    move/from16 v1, v20

    if-le v0, v1, :cond_15

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    move-object/from16 v12, v41

    .line 620
    .local v12, "group":Ljava/lang/String;
    :goto_c
    const/4 v6, 0x0

    .line 621
    if-eqz v14, :cond_17

    .line 622
    iget-object v0, v14, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mData1:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_16

    iget-object v6, v14, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mData1:Ljava/lang/String;

    .line 628
    :goto_d
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_18

    move-object v5, v12

    .line 629
    :goto_e
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6, v5}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getEntryUpdateOperation(Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v41

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 618
    .end local v12    # "group":Ljava/lang/String;
    .end local v14    # "groupData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    :cond_14
    const/4 v14, 0x0

    goto :goto_b

    .line 619
    .restart local v14    # "groupData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    :cond_15
    const/4 v12, 0x0

    goto :goto_c

    .line 622
    .restart local v12    # "group":Ljava/lang/String;
    :cond_16
    const/4 v6, 0x0

    goto :goto_d

    .line 624
    :cond_17
    new-instance v14, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;

    .end local v14    # "groupData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v14, v0, v1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;-><init>(Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$1;)V

    .line 625
    .restart local v14    # "groupData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    move-wide/from16 v0, v35

    iput-wide v0, v14, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mRawContactId:J

    .line 626
    const-string v41, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v41

    iput-object v0, v14, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mMimeType:Ljava/lang/String;

    goto :goto_d

    .line 628
    :cond_18
    const/4 v5, 0x0

    goto :goto_e

    .line 633
    .end local v12    # "group":Ljava/lang/String;
    .end local v14    # "groupData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    :cond_19
    const-string v41, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getEntryDataMap(JLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 634
    .local v11, "emailEntries":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;>;"
    const/4 v9, 0x0

    .line 635
    .local v9, "eamilData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v41

    if-lez v41, :cond_1a

    .line 636
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "eamilData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    check-cast v9, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;

    .line 637
    .restart local v9    # "eamilData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    iget-object v6, v9, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mData1:Ljava/lang/String;

    .line 643
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/USIMContactEntry;->getEmail()Ljava/lang/String;

    move-result-object v5

    .line 644
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v5}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->getEntryUpdateOperation(Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v41

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v41, v0

    const-string v42, "com.android.contacts"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v38

    .line 649
    .local v38, "results":[Landroid/content/ContentProviderResult;
    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v41, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v42

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_1b

    const/16 v41, 0x1

    goto/16 :goto_0

    .line 639
    .end local v38    # "results":[Landroid/content/ContentProviderResult;
    :cond_1a
    new-instance v9, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;

    .end local v9    # "eamilData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v9, v0, v1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;-><init>(Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$1;)V

    .line 640
    .restart local v9    # "eamilData":Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;
    move-wide/from16 v0, v35

    iput-wide v0, v9, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mRawContactId:J

    .line 641
    const-string v41, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v41

    iput-object v0, v9, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl$EntryData;->mMimeType:Ljava/lang/String;

    goto :goto_f

    .line 649
    .restart local v38    # "results":[Landroid/content/ContentProviderResult;
    :cond_1b
    const/16 v41, 0x0

    goto/16 :goto_0

    .line 650
    .end local v38    # "results":[Landroid/content/ContentProviderResult;
    :catch_1
    move-exception v8

    .line 651
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 656
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_10
    const/16 v41, 0x0

    goto/16 :goto_0

    .line 652
    :catch_2
    move-exception v8

    .line 653
    .local v8, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v8}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_10
.end method

.method public updateUSIMGroup(Lcom/pantech/provider/skycontacts/USIMGroupEntry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/USIMGroupEntry;

    .prologue
    .line 940
    const/4 v0, 0x0

    .line 942
    .local v0, "result":Z
    invoke-static {}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->installedType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->updateUSIMGroupEF63(Lcom/pantech/provider/skycontacts/USIMGroupEntry;)Z

    move-result v0

    .line 948
    :goto_0
    return v0

    .line 945
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->updateUSIMGroupEF60(Lcom/pantech/provider/skycontacts/USIMGroupEntry;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateUSIMGroupEF60(Lcom/pantech/provider/skycontacts/USIMGroupEntry;)Z
    .locals 9
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/USIMGroupEntry;

    .prologue
    const/4 v8, 0x0

    .line 952
    const/4 v0, 0x0

    .line 954
    .local v0, "fSuccess":Z
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 955
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/USIMGroupEntry;->getId()I

    move-result v1

    .line 956
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 957
    neg-int v1, v1

    .line 959
    :cond_0
    if-eqz v1, :cond_2

    .line 960
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 963
    const-string v5, "name"

    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/USIMGroupEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    sget-object v5, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v1

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 966
    .local v3, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v3, v4, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 967
    .local v2, "result":I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 968
    const/4 v0, 0x1

    .line 974
    .end local v2    # "result":I
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return v0

    .line 971
    :cond_2
    const-string v5, "USIMContactManageHelperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requesting id must be set for update entry ! id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateUSIMGroupEF63(Lcom/pantech/provider/skycontacts/USIMGroupEntry;)Z
    .locals 13
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/USIMGroupEntry;

    .prologue
    const/4 v10, 0x0

    .line 978
    if-nez p1, :cond_0

    .line 979
    const-string v9, "USIMContactManageHelperImpl"

    const-string v11, "USIMGroupEntry is null."

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :goto_0
    return v10

    .line 983
    :cond_0
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/USIMGroupEntry;->getId()I

    move-result v2

    .line 984
    .local v2, "groupId":I
    if-gez v2, :cond_1

    .line 985
    neg-int v2, v2

    .line 987
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 990
    .local v8, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/USIMGroupEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 991
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 992
    const-string v9, "name"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    :cond_2
    iget-object v9, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mGroupRecordIds:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 996
    .local v5, "recordId":I
    sget-object v9, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->skyPBMSynchronizer:Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;

    invoke-virtual {v9, v5, v8}, Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;->updateGroup(ILandroid/content/ContentValues;)I

    move-result v9

    if-gez v9, :cond_3

    .line 997
    const-string v9, "USIMContactManageHelperImpl"

    const-string v11, "fail to update usim contact via PBM."

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1001
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .local v4, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v9, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v11, v2

    invoke-static {v9, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1004
    .local v7, "uri":Landroid/net/Uri;
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1005
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v9, "account_name"

    const-string v11, "USIM"

    invoke-virtual {v0, v9, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1006
    const-string v9, "account_type"

    const-string v11, "com.android.contacts.sim"

    invoke-virtual {v0, v9, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1007
    const-string v9, "title"

    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/USIMGroupEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1008
    const-string v9, "sync1"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1009
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    :try_start_0
    iget-object v9, p0, Lcom/pantech/provider/skycontacts/impl/USIMContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "com.android.contacts"

    invoke-virtual {v9, v11, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    .line 1014
    .local v6, "results":[Landroid/content/ContentProviderResult;
    array-length v9, v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    if-ne v9, v11, :cond_4

    const/4 v9, 0x1

    :goto_1
    move v10, v9

    goto/16 :goto_0

    :cond_4
    move v9, v10

    goto :goto_1

    .line 1015
    .end local v6    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v1

    .line 1016
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1017
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1018
    .local v1, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method
