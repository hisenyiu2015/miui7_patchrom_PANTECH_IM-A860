.class public final Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;
.super Lcom/pantech/provider/skycontacts/ContactManageHelper;
.source "ContactManageHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;,
        Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_EXCHANGE:Ljava/lang/String; = "com.android.exchange"

.field private static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field private static final ACCOUNT_TYPE_NULL:Ljava/lang/String; = "local_fallback"

.field private static final DATE_FORMATS:[Ljava/text/SimpleDateFormat;

.field private static final GOOGLE_MY_CONTACTS_GROUP:Ljava/lang/String; = "System Group: My Contacts"

.field private static final GOOGLE_MY_CONTACTS_SYSTEM_ID:Ljava/lang/String; = "Contacts"

.field private static final GOOGLE_SYSTEM_GRP_ID:[Ljava/lang/String;

.field private static final NO_YEAR_PATTERN_PREFIX:Ljava/lang/String; = "--"

.field private static final OUT_FORMAT_WITHOUT_YEAR:Ljava/text/SimpleDateFormat;

.field private static final OUT_FORMAT_WITH_YEAR:Ljava/text/SimpleDateFormat;

.field private static final PATTERN_WITHOUT_YEAR:Ljava/lang/String; = "--MM-dd"

.field private static final PATTERN_WITH_YEAR:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final TAG:Ljava/lang/String; = "ContactManageHelperImpl"


# instance fields
.field private fRefreshGroupInfo:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupInfoCache:Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;

.field mKindSections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSpeedDialManager:Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 129
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->OUT_FORMAT_WITH_YEAR:Ljava/text/SimpleDateFormat;

    .line 131
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "--MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->OUT_FORMAT_WITHOUT_YEAR:Ljava/text/SimpleDateFormat;

    .line 141
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->OUT_FORMAT_WITHOUT_YEAR:Ljava/text/SimpleDateFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->OUT_FORMAT_WITH_YEAR:Ljava/text/SimpleDateFormat;

    aput-object v1, v0, v6

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v1, v0, v7

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v1, v0, v8

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd\'T\'HHmmssSSS\'Z\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd\'T\'HHmmss\'Z\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd\'T\'HHmm\'Z\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .line 160
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "Contacts"

    aput-object v1, v0, v5

    const-string v1, "Friends"

    aput-object v1, v0, v6

    const-string v1, "Family"

    aput-object v1, v0, v7

    const-string v1, "Coworkers"

    aput-object v1, v0, v8

    sput-object v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->GOOGLE_SYSTEM_GRP_ID:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/pantech/provider/skycontacts/ContactManageHelper;-><init>(Landroid/content/Context;)V

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mKindSections:Ljava/util/HashMap;

    .line 185
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContext:Ljava/lang/ref/WeakReference;

    .line 186
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 187
    invoke-virtual {p0}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->setDefaultKindByAccountType()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->fRefreshGroupInfo:Z

    .line 190
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager$SpeedDialManagerFactory;->get(Landroid/content/ContentResolver;)Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mSpeedDialManager:Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->isGoogleSystemGroup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$302(Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->fRefreshGroupInfo:Z

    return p1
.end method

.method private buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;
    .locals 6
    .param p1, "beforeId"    # Ljava/lang/Long;
    .param p2, "entry"    # Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    .line 1664
    const/4 v0, 0x0

    .line 1666
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1668
    invoke-virtual {p2}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->getId()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1670
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1671
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1685
    :cond_0
    :goto_0
    return-object v0

    .line 1674
    :cond_1
    invoke-virtual {p2}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->getId()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p2, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mData:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "vnd.android.cursor.item/photo"

    iget-object v2, p2, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1675
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 1680
    :cond_2
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method private buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V
    .locals 23
    .param p2, "builder"    # Landroid/content/ContentProviderOperation$Builder;
    .param p3, "entry"    # Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
    .param p4, "insert"    # Z
    .param p5, "accoutType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderOperation$Builder;",
            "Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1690
    .local p1, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v10, 0x0

    .line 1691
    .local v10, "fDataValueExist":Z
    if-nez p2, :cond_1

    .line 1960
    :cond_0
    :goto_0
    return-void

    .line 1694
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->hasChanged()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1698
    const-string v20, "vnd.android.cursor.item/name"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v20, p3

    .line 1699
    check-cast v20, Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1700
    .local v6, "data":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1701
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1704
    const-string v20, "data2"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1707
    const-string v20, "data3"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1708
    const-string v20, "data5"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1709
    const-string v20, "data6"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1710
    const-string v20, "data9"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1711
    const-string v20, "data8"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1712
    const-string v20, "data7"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1713
    const-string v20, "data4"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1715
    const/4 v10, 0x1

    .line 1957
    .end local v6    # "data":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    if-nez v10, :cond_4

    :cond_3
    if-nez p4, :cond_0

    .line 1958
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1717
    :cond_5
    const-string v20, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v20, p3

    .line 1718
    check-cast v20, Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;->getNickName()Ljava/lang/String;

    move-result-object v6

    .line 1719
    .restart local v6    # "data":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1720
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1721
    const-string v20, "data1"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1722
    const/4 v10, 0x1

    goto :goto_1

    .line 1724
    .end local v6    # "data":Ljava/lang/String;
    :cond_6
    const-string v20, "vnd.android.cursor.item/note"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v20, p3

    .line 1725
    check-cast v20, Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;->getMemo()Ljava/lang/String;

    move-result-object v6

    .line 1726
    .restart local v6    # "data":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1727
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1728
    const-string v20, "data1"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1729
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1731
    .end local v6    # "data":Ljava/lang/String;
    :cond_7
    const-string v20, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1736
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mData:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v20, p3

    .line 1738
    check-cast v20, Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;->getPhoto()[B

    move-result-object v6

    .line 1739
    .local v6, "data":[B
    if-eqz v6, :cond_8

    .line 1740
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1741
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->setPhotoBitmap(Landroid/content/ContentProviderOperation$Builder;[B)V

    .line 1742
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1744
    :cond_8
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1745
    const-string v20, "data15"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 1751
    .end local v6    # "data":[B
    :cond_9
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1752
    const-string v20, "data15"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 1755
    :cond_a
    const-string v20, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    move-object/from16 v20, p3

    .line 1756
    check-cast v20, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 1757
    .local v6, "data":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->getDataType()I

    move-result v16

    .line 1758
    .local v16, "phoneType":I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1759
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1760
    const-string v20, "data1"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1761
    const-string v20, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v20

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->isSupportedType(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1762
    const-string v20, "data2"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1763
    if-nez v16, :cond_b

    .line 1764
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->getCustomLabel()Ljava/lang/String;

    move-result-object v5

    .line 1765
    .local v5, "customLabel":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 1766
    const-string v20, "data3"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1772
    .end local v5    # "customLabel":Ljava/lang/String;
    :cond_b
    :goto_2
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1768
    .restart local v5    # "customLabel":Ljava/lang/String;
    :cond_c
    const-string v20, "data2"

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 1774
    .end local v5    # "customLabel":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    .end local v16    # "phoneType":I
    :cond_d
    const-string v20, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    move-object/from16 v20, p3

    .line 1775
    check-cast v20, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;->getEmail()Ljava/lang/String;

    move-result-object v6

    .line 1776
    .restart local v6    # "data":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->getDataType()I

    move-result v9

    .line 1777
    .local v9, "emailType":I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1778
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1779
    const-string v20, "data1"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1780
    const-string v20, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->isSupportedType(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 1781
    const-string v20, "data2"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1783
    if-nez v9, :cond_e

    .line 1784
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->getCustomLabel()Ljava/lang/String;

    move-result-object v5

    .line 1785
    .restart local v5    # "customLabel":Ljava/lang/String;
    if-eqz v5, :cond_f

    .line 1786
    const-string v20, "data3"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1792
    .end local v5    # "customLabel":Ljava/lang/String;
    :cond_e
    :goto_3
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1788
    .restart local v5    # "customLabel":Ljava/lang/String;
    :cond_f
    const-string v20, "data2"

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 1794
    .end local v5    # "customLabel":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    .end local v9    # "emailType":I
    :cond_10
    const-string v20, "vnd.android.cursor.item/website"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    move-object/from16 v20, p3

    .line 1795
    check-cast v20, Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;->getBlog()Ljava/lang/String;

    move-result-object v6

    .line 1796
    .restart local v6    # "data":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1797
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1798
    const-string v20, "data1"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1799
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1801
    .end local v6    # "data":Ljava/lang/String;
    :cond_11
    const-string v20, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_12

    const-string v20, "vnd.pantech.cursor.item/lunar_event"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 1805
    :cond_12
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;->getDateType()I

    move-result v7

    .line 1806
    .local v7, "dateType":I
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->getDataType()I

    move-result v4

    .line 1807
    .local v4, "annivType":I
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mData:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1808
    const-string v20, "data1"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mData:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->format(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1809
    const-string v20, "data14"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1810
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1811
    const-string v20, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v4}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->isSupportedType(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 1812
    const-string v20, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1814
    :cond_13
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1816
    .end local v4    # "annivType":I
    .end local v7    # "dateType":I
    :catch_0
    move-exception v8

    .line 1817
    .local v8, "e":Ljava/text/ParseException;
    const-string v20, "ContactManageHelperImpl"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "date is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mData:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ". "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1834
    .end local v8    # "e":Ljava/text/ParseException;
    :cond_14
    const-string v20, "vnd.android.cursor.item/im"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    move-object/from16 v20, p3

    .line 1835
    check-cast v20, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;->getIm()Ljava/lang/String;

    move-result-object v6

    .line 1836
    .restart local v6    # "data":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->getDataType()I

    move-result v13

    .line 1837
    .local v13, "imType":I
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mData:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1838
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1839
    const-string v20, "data1"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1840
    const-string v20, "data2"

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1841
    const-string v20, "vnd.android.cursor.item/im"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v13}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->isSupportedType(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 1842
    const-string v20, "data5"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1844
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_15

    .line 1845
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->getCustomLabel()Ljava/lang/String;

    move-result-object v5

    .line 1846
    .restart local v5    # "customLabel":Ljava/lang/String;
    if-eqz v5, :cond_16

    .line 1847
    const-string v20, "data6"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1853
    .end local v5    # "customLabel":Ljava/lang/String;
    :cond_15
    :goto_4
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1849
    .restart local v5    # "customLabel":Ljava/lang/String;
    :cond_16
    const-string v20, "data5"

    const/16 v21, 0x5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    .line 1855
    .end local v5    # "customLabel":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    .end local v13    # "imType":I
    :cond_17
    const-string v20, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    move-object/from16 v17, p3

    .line 1856
    check-cast v17, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;

    .line 1857
    .local v17, "postalEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->size()I

    move-result v20

    if-lez v20, :cond_2

    .line 1858
    invoke-virtual/range {v17 .. v17}, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->getDataType()I

    move-result v18

    .line 1859
    .local v18, "postalType":I
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1860
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mValues:Landroid/content/ContentValues;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1861
    const-string v20, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v20

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->isSupportedType(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 1862
    const-string v20, "data2"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1864
    if-nez v18, :cond_18

    .line 1865
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->getCustomLabel()Ljava/lang/String;

    move-result-object v5

    .line 1866
    .restart local v5    # "customLabel":Ljava/lang/String;
    if-eqz v5, :cond_19

    .line 1867
    const-string v20, "data3"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1873
    .end local v5    # "customLabel":Ljava/lang/String;
    :cond_18
    :goto_5
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1869
    .restart local v5    # "customLabel":Ljava/lang/String;
    :cond_19
    const-string v20, "data2"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_5

    .line 1875
    .end local v5    # "customLabel":Ljava/lang/String;
    .end local v17    # "postalEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;
    .end local v18    # "postalType":I
    :cond_1a
    const-string v20, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1d

    move-object/from16 v14, p3

    .line 1876
    check-cast v14, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;

    .line 1877
    .local v14, "orgEntry":Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;
    iget-object v0, v14, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mValues:Landroid/content/ContentValues;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->size()I

    move-result v20

    if-lez v20, :cond_2

    .line 1878
    invoke-virtual {v14}, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->getDataType()I

    move-result v15

    .line 1879
    .local v15, "organizationType":I
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1880
    iget-object v0, v14, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mValues:Landroid/content/ContentValues;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1881
    const-string v20, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v15}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->isSupportedType(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_1b

    .line 1882
    const-string v20, "data2"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1884
    if-nez v15, :cond_1b

    .line 1885
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->getCustomLabel()Ljava/lang/String;

    move-result-object v5

    .line 1886
    .restart local v5    # "customLabel":Ljava/lang/String;
    if-eqz v5, :cond_1c

    .line 1887
    const-string v20, "data3"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1893
    .end local v5    # "customLabel":Ljava/lang/String;
    :cond_1b
    :goto_6
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1889
    .restart local v5    # "customLabel":Ljava/lang/String;
    :cond_1c
    const-string v20, "data2"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_6

    .line 1895
    .end local v5    # "customLabel":Ljava/lang/String;
    .end local v14    # "orgEntry":Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;
    .end local v15    # "organizationType":I
    :cond_1d
    const-string v20, "vnd.android.cursor.item/me2day"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e

    move-object/from16 v20, p3

    .line 1896
    check-cast v20, Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;->getMe2Day()Ljava/lang/String;

    move-result-object v6

    .line 1897
    .restart local v6    # "data":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1898
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1899
    const-string v20, "data1"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1900
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1902
    .end local v6    # "data":Ljava/lang/String;
    :cond_1e
    const-string v20, "vnd.android.cursor.item/twitter"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1f

    move-object/from16 v20, p3

    .line 1903
    check-cast v20, Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;->getTwitter()Ljava/lang/String;

    move-result-object v6

    .line 1904
    .restart local v6    # "data":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1905
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1906
    const-string v20, "data1"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1907
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1910
    .end local v6    # "data":Ljava/lang/String;
    :cond_1f
    const-string v20, "vnd.android.cursor.item/facebook"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20

    move-object/from16 v20, p3

    .line 1911
    check-cast v20, Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;->getFacebook()Ljava/lang/String;

    move-result-object v6

    .line 1912
    .restart local v6    # "data":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1913
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1914
    const-string v20, "data1"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1915
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1918
    .end local v6    # "data":Ljava/lang/String;
    :cond_20
    const-string v20, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_21

    move-object/from16 v20, p3

    .line 1919
    check-cast v20, Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;->getGroupId()J

    move-result-wide v11

    .line 1920
    .local v11, "groupId":J
    const-wide/16 v20, 0x0

    cmp-long v20, v11, v20

    if-lez v20, :cond_2

    .line 1921
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1922
    const-string v20, "data1"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1923
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1925
    .end local v11    # "groupId":J
    :cond_21
    const-string v20, "vnd.android.cursor.item/relation"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_24

    move-object/from16 v20, p3

    .line 1926
    check-cast v20, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;->getRelation()Ljava/lang/String;

    move-result-object v6

    .line 1927
    .restart local v6    # "data":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->getDataType()I

    move-result v19

    .line 1928
    .local v19, "type":I
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mData:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1929
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1930
    const-string v20, "data1"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1931
    const-string v20, "vnd.android.cursor.item/relation"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v20

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->isSupportedType(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1932
    if-nez v19, :cond_23

    .line 1933
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->getCustomLabel()Ljava/lang/String;

    move-result-object v5

    .line 1934
    .restart local v5    # "customLabel":Ljava/lang/String;
    if-eqz v5, :cond_22

    .line 1935
    const-string v20, "data2"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1936
    const-string v20, "data3"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1944
    .end local v5    # "customLabel":Ljava/lang/String;
    :cond_22
    :goto_7
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1939
    :cond_23
    const-string v20, "data2"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_7

    .line 1946
    .end local v6    # "data":Ljava/lang/String;
    .end local v19    # "type":I
    :cond_24
    const-string v20, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v20, p3

    .line 1947
    check-cast v20, Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;->getSipAddress()Ljava/lang/String;

    move-result-object v6

    .line 1948
    .restart local v6    # "data":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1949
    const-string v20, "mimetype"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;->mMimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1950
    const-string v20, "data1"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1951
    const/4 v10, 0x1

    goto/16 :goto_1
.end method

.method private checkVaildAccountType(Landroid/accounts/Account;)Z
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 2187
    const/4 v0, 0x0

    .line 2190
    .local v0, "vaild":Z
    if-nez p1, :cond_1

    .line 2191
    const/4 v0, 0x1

    .line 2199
    :cond_0
    :goto_0
    return v0

    .line 2193
    :cond_1
    const-string v1, "com.google"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2194
    const/4 v0, 0x1

    goto :goto_0

    .line 2195
    :cond_2
    const-string v1, "com.android.exchange"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2196
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ensureGroupInfoCache()Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;
    .locals 2

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mGroupInfoCache:Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->fRefreshGroupInfo:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2252
    :cond_0
    new-instance v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;

    invoke-direct {v0, p0}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;-><init>(Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;)V

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mGroupInfoCache:Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;

    .line 2254
    :cond_1
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mGroupInfoCache:Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;

    return-object v0
.end method

.method private static findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 6
    .param p0, "auths"    # [Landroid/accounts/AuthenticatorDescription;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 2005
    move-object v0, p0

    .local v0, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 2006
    .local v1, "auth":Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2007
    return-object v1

    .line 2005
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2010
    .end local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Couldn\'t find authenticator for specific account type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private format(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "dateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 2265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2266
    new-instance v7, Ljava/text/ParseException;

    const-string v8, "date not set"

    invoke-direct {v7, v8, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 2268
    :cond_0
    const/4 v6, 0x0

    .line 2270
    .local v6, "result":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 2296
    new-instance v7, Ljava/text/ParseException;

    const-string v8, "not support date type"

    invoke-direct {v7, v8, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 2272
    :pswitch_0
    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v9}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2273
    .local v5, "parsePosition":Ljava/text/ParsePosition;
    const/4 v1, 0x0

    .line 2274
    .local v1, "dateObj":Ljava/util/Date;
    sget-object v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .local v0, "arr$":[Ljava/text/SimpleDateFormat;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .line 2275
    .local v2, "f":Ljava/text/SimpleDateFormat;
    monitor-enter v2

    .line 2276
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2277
    invoke-virtual {v2, p1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 2278
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 2279
    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    const-string v8, "--MM-dd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2280
    sget-object v7, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->OUT_FORMAT_WITHOUT_YEAR:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "date":Ljava/lang/String;
    monitor-exit v2

    .line 2293
    .end local v0    # "arr$":[Ljava/text/SimpleDateFormat;
    .end local v1    # "dateObj":Ljava/util/Date;
    .end local v2    # "f":Ljava/text/SimpleDateFormat;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "parsePosition":Ljava/text/ParsePosition;
    :goto_1
    :pswitch_1
    return-object p1

    .line 2282
    .restart local v0    # "arr$":[Ljava/text/SimpleDateFormat;
    .restart local v1    # "dateObj":Ljava/util/Date;
    .restart local v2    # "f":Ljava/text/SimpleDateFormat;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "parsePosition":Ljava/text/ParsePosition;
    .restart local p1    # "date":Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->OUT_FORMAT_WITH_YEAR:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "date":Ljava/lang/String;
    monitor-exit v2

    goto :goto_1

    .line 2284
    :catchall_0
    move-exception v7

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local p1    # "date":Ljava/lang/String;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2274
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2286
    .end local v2    # "f":Ljava/text/SimpleDateFormat;
    :cond_3
    new-instance v7, Ljava/text/ParseException;

    const-string v8, "not support pattern"

    invoke-direct {v7, v8, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 2270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J
    .locals 5
    .param p2, "results"    # [Landroid/content/ContentProviderResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            ")J"
        }
    .end annotation

    .prologue
    .line 1991
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1992
    .local v0, "diffSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1993
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 1994
    .local v2, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1997
    aget-object v3, p2, v1

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 2000
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    :goto_1
    return-wide v3

    .line 1992
    .restart local v2    # "operation":Landroid/content/ContentProviderOperation;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2000
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    :cond_1
    const-wide/16 v3, -0x1

    goto :goto_1
.end method

.method private isGoogleSystemGroup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;

    .prologue
    .line 2204
    const/4 v0, 0x0

    .line 2205
    .local v0, "fIsSystemGroup":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.google"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2207
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->GOOGLE_SYSTEM_GRP_ID:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2208
    sget-object v2, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->GOOGLE_SYSTEM_GRP_ID:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2210
    const/4 v0, 0x1

    .line 2215
    .end local v1    # "i":I
    :cond_0
    return v0

    .line 2207
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isSupportedType(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "kind"    # I

    .prologue
    const/high16 v7, 0x10000000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2162
    const/high16 v3, 0x10000000

    .line 2163
    .local v3, "kindNotExist":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "local_fallback"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v4, v5

    .line 2183
    :cond_1
    :goto_0
    return v4

    .line 2168
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2172
    iget-object v6, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mKindSections:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 2173
    .local v2, "kindMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v2, :cond_1

    .line 2174
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    .line 2175
    .local v1, "kindList":Landroid/util/SparseIntArray;
    if-eqz v1, :cond_1

    .line 2176
    invoke-virtual {v1, p3, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2177
    .local v0, "foundKind":I
    if-eq v0, v7, :cond_1

    move v4, v5

    .line 2178
    goto :goto_0
.end method

.method private isVaildGroupName(Landroid/accounts/Account;Ljava/lang/String;J)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "newGroupName"    # Ljava/lang/String;
    .param p3, "myGroupId"    # J

    .prologue
    .line 2219
    const/4 v3, 0x1

    .line 2221
    .local v3, "vaild":Z
    invoke-direct {p0}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->ensureGroupInfoCache()Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;

    move-result-object v1

    .line 2222
    .local v1, "infoCache":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;
    invoke-virtual {v1}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;->getGroupInfo()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2224
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2225
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;

    .line 2228
    .local v0, "info":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;
    iget-wide v4, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->groupId:J

    cmp-long v4, v4, p3

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->groupTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2231
    if-eqz p1, :cond_2

    .line 2232
    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2233
    iget-object v4, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->groupTitle:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2234
    const/4 v3, 0x0

    .line 2247
    .end local v0    # "info":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;
    :cond_1
    :goto_0
    return v3

    .line 2239
    .restart local v0    # "info":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;
    :cond_2
    iget-object v4, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountName:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountType:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 2240
    iget-object v4, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->groupTitle:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2241
    const/4 v3, 0x0

    .line 2242
    goto :goto_0
.end method

.method private setPhotoBitmap(Landroid/content/ContentProviderOperation$Builder;[B)V
    .locals 2
    .param p1, "builder"    # Landroid/content/ContentProviderOperation$Builder;
    .param p2, "photo"    # [B

    .prologue
    .line 1983
    const-string v0, "data15"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1984
    const-string v0, "is_super_primary"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1985
    return-void
.end method


# virtual methods
.method public deleteContact(J)Z
    .locals 4
    .param p1, "rawContactId"    # J

    .prologue
    const/4 v3, 0x0

    .line 762
    const/4 v0, 0x0

    .line 764
    .local v0, "fSuccess":Z
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 765
    .local v1, "rawContactUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 766
    const/4 v0, 0x1

    .line 769
    :cond_0
    return v0
.end method

.method public deleteGroup(J)Z
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 1346
    const/4 v1, 0x0

    .line 1348
    .local v1, "fSuccess":Z
    invoke-direct {p0}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->ensureGroupInfoCache()Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;

    move-result-object v6

    .line 1349
    .local v6, "infoCache":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;
    invoke-virtual {v6}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;->getGroupInfo()Ljava/util/HashMap;

    move-result-object v4

    .line 1350
    .local v4, "groupInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;

    .line 1351
    .local v3, "groupInfo":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;
    if-eqz v3, :cond_3

    .line 1353
    const/4 v0, 0x1

    .line 1355
    .local v0, "fIsDeletable":Z
    iget-boolean v8, v3, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->isDefaultGroup:Z

    if-eqz v8, :cond_0

    .line 1356
    const/4 v0, 0x0

    .line 1361
    :goto_0
    if-nez v0, :cond_2

    .line 1362
    const-string v7, "ContactManageHelperImpl"

    const-string v8, "this group cannot be modified"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1372
    .end local v0    # "fIsDeletable":Z
    .end local v1    # "fSuccess":Z
    .local v2, "fSuccess":I
    :goto_1
    return v2

    .line 1358
    .end local v2    # "fSuccess":I
    .restart local v0    # "fIsDeletable":Z
    .restart local v1    # "fSuccess":Z
    :cond_0
    iget-object v8, v3, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountType:Ljava/lang/String;

    iget-object v9, v3, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->systemId:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->isGoogleSystemGroup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    move v0, v7

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 1366
    :cond_2
    sget-object v8, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1367
    .local v5, "groupUri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v5, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_3

    .line 1368
    const/4 v1, 0x1

    .line 1369
    iput-boolean v7, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->fRefreshGroupInfo:Z

    .end local v0    # "fIsDeletable":Z
    .end local v5    # "groupUri":Landroid/net/Uri;
    :cond_3
    move v2, v1

    .line 1372
    .restart local v2    # "fSuccess":I
    goto :goto_1
.end method

.method public deleteSpeedDial(I)Z
    .locals 1
    .param p1, "speedDialValue"    # I

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mSpeedDialManager:Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;

    invoke-interface {v0, p1}, Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;->deleteSpeedDial(I)Z

    move-result v0

    return v0
.end method

.method public destroyContactManageHelper()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public getAllGroupList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/GroupEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1258
    .local v0, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/GroupEntry;>;"
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->fRefreshGroupInfo:Z

    .line 1259
    invoke-direct {p0}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->ensureGroupInfoCache()Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;

    move-result-object v2

    .line 1260
    .local v2, "infoCache":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;
    invoke-virtual {v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;->getGroupInfo()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1262
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1263
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;

    .line 1264
    .local v1, "info":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;
    invoke-virtual {v1}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->toGroupEntry()Lcom/pantech/provider/skycontacts/GroupEntry;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1266
    .end local v1    # "info":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;
    :cond_0
    return-object v0
.end method

.method public getContact(J)Lcom/pantech/provider/skycontacts/ContactEntry;
    .locals 99
    .param p1, "rawContactId"    # J

    .prologue
    .line 779
    const/16 v44, 0x0

    .line 780
    .local v44, "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    const/16 v59, 0x0

    .line 783
    .local v59, "iterator":Landroid/content/EntityIterator;
    const/16 v23, 0x0

    .line 784
    .local v23, "addName":Z
    const/16 v24, 0x0

    .line 785
    .local v24, "addNickName":Z
    const/16 v25, 0x0

    .line 786
    .local v25, "addPhoto":Z
    const/16 v22, 0x0

    .line 787
    .local v22, "addMe2Day":Z
    const/16 v27, 0x0

    .line 788
    .local v27, "addTwitter":Z
    const/16 v21, 0x0

    .line 789
    .local v21, "addFacebook":Z
    const/16 v26, 0x0

    .line 792
    .local v26, "addSipAddress":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "_id=?"

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-static {v10}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v59

    .line 798
    if-eqz v59, :cond_34

    move-object/from16 v45, v44

    .line 799
    .end local v44    # "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    .local v45, "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    :goto_0
    :try_start_1
    invoke-interface/range {v59 .. v59}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_33

    .line 801
    invoke-interface/range {v59 .. v59}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/Entity;

    .line 803
    .local v31, "before":Landroid/content/Entity;
    invoke-virtual/range {v31 .. v31}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v43

    .line 806
    .local v43, "entValues":Landroid/content/ContentValues;
    const/16 v17, 0x0

    .line 807
    .local v17, "accountInfo":Landroid/accounts/Account;
    const-string v10, "account_type"

    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 808
    .local v19, "accountType":Ljava/lang/String;
    const-string v10, "account_name"

    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 810
    .local v18, "accountName":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 811
    new-instance v85, Landroid/accounts/Account;

    move-object/from16 v0, v85

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .local v85, "readAccout":Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v28

    .line 813
    .local v28, "am":Landroid/accounts/AccountManager;
    invoke-virtual/range {v28 .. v28}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v20

    .line 814
    .local v20, "accounts":[Landroid/accounts/Account;
    move-object/from16 v29, v20

    .local v29, "arr$":[Landroid/accounts/Account;
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v60, v0

    .local v60, "len$":I
    const/16 v55, 0x0

    .local v55, "i$":I
    :goto_1
    move/from16 v0, v55

    move/from16 v1, v60

    if-ge v0, v1, :cond_0

    aget-object v16, v29, v55

    .line 815
    .local v16, "account":Landroid/accounts/Account;
    move-object/from16 v0, v16

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 816
    move-object/from16 v17, v16

    .line 822
    .end local v16    # "account":Landroid/accounts/Account;
    .end local v20    # "accounts":[Landroid/accounts/Account;
    .end local v28    # "am":Landroid/accounts/AccountManager;
    .end local v29    # "arr$":[Landroid/accounts/Account;
    .end local v55    # "i$":I
    .end local v60    # "len$":I
    .end local v85    # "readAccout":Landroid/accounts/Account;
    :cond_0
    const-string v10, "_id"

    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v84

    .line 823
    .local v84, "rawId":Ljava/lang/Long;
    const-string v10, "version"

    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v97

    .line 825
    .local v97, "version":Ljava/lang/Long;
    new-instance v44, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;

    move-object/from16 v0, v44

    move-object/from16 v1, v17

    move-object/from16 v2, v84

    move-object/from16 v3, v97

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/provider/skycontacts/impl/ContactEntryImpl;-><init>(Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 827
    .end local v45    # "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    .restart local v44    # "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    :try_start_2
    invoke-virtual/range {v31 .. v31}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v55

    .local v55, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v93

    check-cast v93, Landroid/content/Entity$NamedContentValues;

    .line 828
    .local v93, "subValue":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v93

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v46, v0

    .line 829
    .local v46, "entryValues":Landroid/content/ContentValues;
    const-string v10, "raw_contact_id"

    move-object/from16 v0, v46

    move-object/from16 v1, v84

    invoke-virtual {v0, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 831
    const-string v10, "_id"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 832
    .local v5, "dataId":J
    const-string v10, "mimetype"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .line 833
    .local v65, "mimeType":Ljava/lang/String;
    if-eqz v65, :cond_1

    .line 835
    const-string v10, "vnd.android.cursor.item/name"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 836
    const-string v10, "data1"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 837
    .local v66, "name":Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    if-nez v23, :cond_1

    .line 840
    new-instance v67, Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;

    move-object/from16 v0, v67

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v6, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;-><init>(JLjava/lang/String;)V

    .line 841
    .local v67, "nameEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;
    const/4 v10, 0x0

    move-object/from16 v0, v67

    iput-boolean v10, v0, Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;->mDataOrTypeUpdated:Z

    .line 842
    move-object/from16 v0, v44

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry;->addName(Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;)V

    .line 843
    const/16 v23, 0x1

    .line 845
    goto :goto_2

    .line 814
    .end local v5    # "dataId":J
    .end local v44    # "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    .end local v46    # "entryValues":Landroid/content/ContentValues;
    .end local v65    # "mimeType":Ljava/lang/String;
    .end local v66    # "name":Ljava/lang/String;
    .end local v67    # "nameEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;
    .end local v84    # "rawId":Ljava/lang/Long;
    .end local v93    # "subValue":Landroid/content/Entity$NamedContentValues;
    .end local v97    # "version":Ljava/lang/Long;
    .restart local v16    # "account":Landroid/accounts/Account;
    .restart local v20    # "accounts":[Landroid/accounts/Account;
    .restart local v28    # "am":Landroid/accounts/AccountManager;
    .restart local v29    # "arr$":[Landroid/accounts/Account;
    .restart local v45    # "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    .local v55, "i$":I
    .restart local v60    # "len$":I
    .restart local v85    # "readAccout":Landroid/accounts/Account;
    :cond_2
    add-int/lit8 v55, v55, 0x1

    goto/16 :goto_1

    .line 845
    .end local v16    # "account":Landroid/accounts/Account;
    .end local v20    # "accounts":[Landroid/accounts/Account;
    .end local v28    # "am":Landroid/accounts/AccountManager;
    .end local v29    # "arr$":[Landroid/accounts/Account;
    .end local v45    # "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    .end local v60    # "len$":I
    .end local v85    # "readAccout":Landroid/accounts/Account;
    .restart local v5    # "dataId":J
    .restart local v44    # "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    .restart local v46    # "entryValues":Landroid/content/ContentValues;
    .local v55, "i$":Ljava/util/Iterator;
    .restart local v65    # "mimeType":Ljava/lang/String;
    .restart local v84    # "rawId":Ljava/lang/Long;
    .restart local v93    # "subValue":Landroid/content/Entity$NamedContentValues;
    .restart local v97    # "version":Ljava/lang/Long;
    :cond_3
    const-string v10, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 846
    const-string v10, "data1"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 847
    .local v69, "nickname":Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    if-nez v24, :cond_1

    .line 850
    new-instance v70, Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;

    move-object/from16 v0, v70

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v6, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;-><init>(JLjava/lang/String;)V

    .line 851
    .local v70, "nicknameEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;
    const/4 v10, 0x0

    move-object/from16 v0, v70

    iput-boolean v10, v0, Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;->mDataOrTypeUpdated:Z

    .line 852
    move-object/from16 v0, v44

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry;->addNickName(Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;)V

    .line 853
    const/16 v24, 0x1

    .line 855
    goto/16 :goto_2

    .end local v69    # "nickname":Ljava/lang/String;
    .end local v70    # "nicknameEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;
    :cond_4
    const-string v10, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 856
    const-string v10, "data1"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v71

    .line 857
    .local v71, "number":Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 861
    const-string v10, "data2"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 862
    const-string v10, "data2"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 866
    .local v7, "type":I
    :goto_3
    new-instance v74, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;

    move-object/from16 v0, v74

    move-object/from16 v1, v71

    invoke-direct {v0, v5, v6, v7, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;-><init>(JILjava/lang/String;)V

    .line 867
    .local v74, "phoneEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;
    if-nez v7, :cond_5

    .line 868
    const-string v10, "data3"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v74

    invoke-virtual {v0, v10}, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->setCustomLabel(Ljava/lang/String;)V

    .line 870
    :cond_5
    const/4 v10, 0x0

    move-object/from16 v0, v74

    iput-boolean v10, v0, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->mDataOrTypeUpdated:Z

    .line 871
    move-object/from16 v0, v44

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry;->addPhoneNumber(Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 1187
    .end local v5    # "dataId":J
    .end local v7    # "type":I
    .end local v17    # "accountInfo":Landroid/accounts/Account;
    .end local v18    # "accountName":Ljava/lang/String;
    .end local v19    # "accountType":Ljava/lang/String;
    .end local v31    # "before":Landroid/content/Entity;
    .end local v43    # "entValues":Landroid/content/ContentValues;
    .end local v46    # "entryValues":Landroid/content/ContentValues;
    .end local v55    # "i$":Ljava/util/Iterator;
    .end local v65    # "mimeType":Ljava/lang/String;
    .end local v71    # "number":Ljava/lang/String;
    .end local v74    # "phoneEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;
    .end local v84    # "rawId":Ljava/lang/Long;
    .end local v93    # "subValue":Landroid/content/Entity$NamedContentValues;
    .end local v97    # "version":Ljava/lang/Long;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v59, :cond_6

    .line 1188
    invoke-interface/range {v59 .. v59}, Landroid/content/EntityIterator;->close()V

    :cond_6
    throw v10

    .line 864
    .restart local v5    # "dataId":J
    .restart local v17    # "accountInfo":Landroid/accounts/Account;
    .restart local v18    # "accountName":Ljava/lang/String;
    .restart local v19    # "accountType":Ljava/lang/String;
    .restart local v31    # "before":Landroid/content/Entity;
    .restart local v43    # "entValues":Landroid/content/ContentValues;
    .restart local v46    # "entryValues":Landroid/content/ContentValues;
    .restart local v55    # "i$":Ljava/util/Iterator;
    .restart local v65    # "mimeType":Ljava/lang/String;
    .restart local v71    # "number":Ljava/lang/String;
    .restart local v84    # "rawId":Ljava/lang/Long;
    .restart local v93    # "subValue":Landroid/content/Entity$NamedContentValues;
    .restart local v97    # "version":Ljava/lang/Long;
    :cond_7
    const/4 v7, -0x1

    .restart local v7    # "type":I
    goto :goto_3

    .line 872
    .end local v7    # "type":I
    .end local v71    # "number":Ljava/lang/String;
    :cond_8
    :try_start_3
    const-string v10, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 875
    const-string v10, "data2"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 876
    const-string v10, "data2"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 881
    .restart local v7    # "type":I
    :goto_5
    const-string v10, "data1"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 882
    .local v41, "email":Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 885
    new-instance v42, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-direct {v0, v5, v6, v7, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;-><init>(JILjava/lang/String;)V

    .line 886
    .local v42, "emailEntry":Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;
    if-nez v7, :cond_9

    .line 887
    const-string v10, "data3"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;->setCustomLabel(Ljava/lang/String;)V

    .line 889
    :cond_9
    const/4 v10, 0x0

    move-object/from16 v0, v42

    iput-boolean v10, v0, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;->mDataOrTypeUpdated:Z

    .line 890
    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry;->addEmail(Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;)V

    goto/16 :goto_2

    .line 878
    .end local v7    # "type":I
    .end local v41    # "email":Ljava/lang/String;
    .end local v42    # "emailEntry":Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;
    :cond_a
    const/4 v7, -0x1

    .restart local v7    # "type":I
    goto :goto_5

    .line 891
    .end local v7    # "type":I
    :cond_b
    const-string v10, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "vnd.pantech.cursor.item/lunar_event"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 898
    :cond_c
    const-string v10, "data2"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 899
    const-string v10, "data2"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 904
    .restart local v7    # "type":I
    :goto_6
    const-string v10, "data1"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 905
    .local v39, "date":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 922
    const/4 v9, 0x0

    .line 923
    .local v9, "dateType":I
    const-string v10, "data14"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 924
    const-string v10, "data14"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    .line 926
    :cond_d
    const/4 v8, 0x0

    .line 928
    .local v8, "formattedDate":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->format(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    .line 934
    :try_start_5
    new-instance v4, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;

    invoke-direct/range {v4 .. v9}, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;-><init>(JILjava/lang/String;I)V

    .line 936
    .local v4, "annivEntry":Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;
    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;->mDataOrTypeUpdated:Z

    .line 937
    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/pantech/provider/skycontacts/ContactEntry;->addAnniversary(Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;)V

    goto/16 :goto_2

    .line 901
    .end local v4    # "annivEntry":Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;
    .end local v7    # "type":I
    .end local v8    # "formattedDate":Ljava/lang/String;
    .end local v9    # "dateType":I
    .end local v39    # "date":Ljava/lang/String;
    :cond_e
    const/4 v7, -0x1

    .restart local v7    # "type":I
    goto :goto_6

    .line 929
    .restart local v8    # "formattedDate":Ljava/lang/String;
    .restart local v9    # "dateType":I
    .restart local v39    # "date":Ljava/lang/String;
    :catch_0
    move-exception v40

    .line 930
    .local v40, "e":Ljava/text/ParseException;
    const-string v10, "ContactManageHelperImpl"

    const-string v11, "Unable to parse date. "

    move-object/from16 v0, v40

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 939
    .end local v7    # "type":I
    .end local v8    # "formattedDate":Ljava/lang/String;
    .end local v9    # "dateType":I
    .end local v39    # "date":Ljava/lang/String;
    .end local v40    # "e":Ljava/text/ParseException;
    :cond_f
    const-string v10, "vnd.android.cursor.item/website"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 940
    const-string v10, "data1"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 941
    .local v32, "blog":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 944
    new-instance v33, Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v6, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;-><init>(JLjava/lang/String;)V

    .line 945
    .local v33, "blogEntry":Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;
    const/4 v10, 0x0

    move-object/from16 v0, v33

    iput-boolean v10, v0, Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;->mDataOrTypeUpdated:Z

    .line 946
    move-object/from16 v0, v44

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry;->addBlog(Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;)V

    goto/16 :goto_2

    .line 947
    .end local v32    # "blog":Ljava/lang/String;
    .end local v33    # "blogEntry":Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;
    :cond_10
    const-string v10, "vnd.android.cursor.item/note"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 948
    const-string v10, "data1"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 949
    .local v63, "memo":Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 952
    new-instance v64, Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-direct {v0, v5, v6, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;-><init>(JLjava/lang/String;)V

    .line 953
    .local v64, "memoEntry":Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;
    const/4 v10, 0x0

    move-object/from16 v0, v64

    iput-boolean v10, v0, Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;->mDataOrTypeUpdated:Z

    .line 954
    move-object/from16 v0, v44

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry;->addMemo(Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;)V

    goto/16 :goto_2

    .line 955
    .end local v63    # "memo":Ljava/lang/String;
    .end local v64    # "memoEntry":Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;
    :cond_11
    const-string v10, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 957
    const-wide/16 v77, 0x0

    .line 958
    .local v77, "photoFileId":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "data14"

    aput-object v14, v12, v13

    const-string v13, "_id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v98

    aput-object v98, v14, v15

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 963
    .local v35, "c":Landroid/database/Cursor;
    if-eqz v35, :cond_12

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 964
    const/4 v10, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v77

    .line 966
    :cond_12
    if-eqz v35, :cond_13

    .line 967
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    .line 970
    :cond_13
    const/16 v75, 0x0

    .line 971
    .local v75, "photoBytes":[B
    sget-object v10, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v77

    invoke-static {v10, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v79

    .line 973
    .local v79, "photoUri":Landroid/net/Uri;
    const-wide/16 v10, 0x0

    cmp-long v10, v77, v10

    if-eqz v10, :cond_15

    if-eqz v79, :cond_15

    .line 975
    :try_start_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "r"

    move-object/from16 v0, v79

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v50

    .line 977
    .local v50, "fd":Landroid/content/res/AssetFileDescriptor;
    const/16 v10, 0x4000

    new-array v0, v10, [B

    move-object/from16 v34, v0

    .line 978
    .local v34, "buffer":[B
    invoke-virtual/range {v50 .. v50}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v51

    .line 979
    .local v51, "fis":Ljava/io/FileInputStream;
    new-instance v30, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 982
    .local v30, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_7
    :try_start_7
    move-object/from16 v0, v51

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v91

    .local v91, "size":I
    const/4 v10, -0x1

    move/from16 v0, v91

    if-eq v0, v10, :cond_14

    .line 983
    const/4 v10, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    move/from16 v2, v91

    invoke-virtual {v0, v1, v10, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    .line 987
    .end local v91    # "size":I
    :catchall_1
    move-exception v10

    :try_start_8
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 988
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileInputStream;->close()V

    .line 989
    invoke-virtual/range {v50 .. v50}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v10
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 991
    .end local v30    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v34    # "buffer":[B
    .end local v50    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v51    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v10

    .line 1000
    :goto_8
    if-nez v25, :cond_1

    .line 1009
    :try_start_9
    new-instance v76, Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;

    move-object/from16 v0, v76

    move-object/from16 v1, v75

    invoke-direct {v0, v5, v6, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;-><init>(J[B)V

    .line 1010
    .local v76, "photoEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;
    const/4 v10, 0x0

    move-object/from16 v0, v76

    iput-boolean v10, v0, Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;->mDataOrTypeUpdated:Z

    .line 1011
    move-object/from16 v0, v44

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry;->addPhoto(Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1012
    const/16 v25, 0x1

    .line 1013
    goto/16 :goto_2

    .line 985
    .end local v76    # "photoEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;
    .restart local v30    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v34    # "buffer":[B
    .restart local v50    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v51    # "fis":Ljava/io/FileInputStream;
    .restart local v91    # "size":I
    :cond_14
    :try_start_a
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v75

    .line 987
    :try_start_b
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 988
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileInputStream;->close()V

    .line 989
    invoke-virtual/range {v50 .. v50}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_8

    .line 997
    .end local v30    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v34    # "buffer":[B
    .end local v50    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v51    # "fis":Ljava/io/FileInputStream;
    .end local v91    # "size":I
    :cond_15
    :try_start_c
    const-string v10, "data15"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v75

    goto :goto_8

    .line 1013
    .end local v35    # "c":Landroid/database/Cursor;
    .end local v75    # "photoBytes":[B
    .end local v77    # "photoFileId":J
    .end local v79    # "photoUri":Landroid/net/Uri;
    :cond_16
    const-string v10, "vnd.android.cursor.item/im"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 1014
    const-string v10, "data1"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1015
    .local v56, "im":Ljava/lang/String;
    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1019
    const-string v10, "data5"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 1020
    const-string v10, "data5"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v58

    .line 1024
    .local v58, "imType":I
    :goto_9
    new-instance v57, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;

    move-object/from16 v0, v57

    move/from16 v1, v58

    move-object/from16 v2, v56

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;-><init>(JILjava/lang/String;)V

    .line 1025
    .local v57, "imEntry":Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;
    const/4 v10, -0x1

    move/from16 v0, v58

    if-ne v0, v10, :cond_17

    .line 1026
    const-string v10, "data6"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v57

    invoke-virtual {v0, v10}, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;->setCustomLabel(Ljava/lang/String;)V

    .line 1028
    :cond_17
    const/4 v10, 0x0

    move-object/from16 v0, v57

    iput-boolean v10, v0, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;->mDataOrTypeUpdated:Z

    .line 1029
    move-object/from16 v0, v44

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry;->addIm(Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;)V

    goto/16 :goto_2

    .line 1022
    .end local v57    # "imEntry":Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;
    .end local v58    # "imType":I
    :cond_18
    const/16 v58, -0x1

    .restart local v58    # "imType":I
    goto :goto_9

    .line 1030
    .end local v56    # "im":Ljava/lang/String;
    .end local v58    # "imType":I
    :cond_19
    const-string v10, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 1031
    const/16 v47, 0x0

    .line 1032
    .local v47, "fDataExist":Z
    const-string v10, "data10"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1033
    .local v38, "country":Ljava/lang/String;
    const-string v10, "data8"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    .line 1034
    .local v86, "region":Ljava/lang/String;
    const-string v10, "data7"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1035
    .local v36, "city":Ljava/lang/String;
    const-string v10, "data4"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    .line 1036
    .local v92, "street":Ljava/lang/String;
    const-string v10, "data9"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v83

    .line 1037
    .local v83, "postcode":Ljava/lang/String;
    const-string v10, "data5"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v82

    .line 1038
    .local v82, "postbox":Ljava/lang/String;
    const-string v10, "data6"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 1041
    .local v68, "neighborhood":Ljava/lang/String;
    const-string v10, "data2"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 1042
    const-string v10, "data2"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v81

    .line 1047
    .local v81, "postalType":I
    :goto_a
    new-instance v80, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;

    move-object/from16 v0, v80

    move/from16 v1, v81

    invoke-direct {v0, v5, v6, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;-><init>(JI)V

    .line 1048
    .local v80, "postalEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;
    if-nez v81, :cond_1a

    .line 1049
    const-string v10, "data3"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v80

    invoke-virtual {v0, v10}, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->setCustomLabel(Ljava/lang/String;)V

    .line 1052
    :cond_1a
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1b

    .line 1053
    move-object/from16 v0, v80

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->setCountry(Ljava/lang/String;)V

    .line 1054
    const/16 v47, 0x1

    .line 1056
    :cond_1b
    invoke-static/range {v86 .. v86}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1c

    .line 1057
    move-object/from16 v0, v80

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->setRegion(Ljava/lang/String;)V

    .line 1058
    const/16 v47, 0x1

    .line 1060
    :cond_1c
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 1061
    move-object/from16 v0, v80

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->setCity(Ljava/lang/String;)V

    .line 1062
    const/16 v47, 0x1

    .line 1064
    :cond_1d
    invoke-static/range {v92 .. v92}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1e

    .line 1065
    move-object/from16 v0, v80

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->setStreet(Ljava/lang/String;)V

    .line 1066
    const/16 v47, 0x1

    .line 1068
    :cond_1e
    invoke-static/range {v83 .. v83}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1f

    .line 1069
    move-object/from16 v0, v80

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->setPostCode(Ljava/lang/String;)V

    .line 1070
    const/16 v47, 0x1

    .line 1072
    :cond_1f
    invoke-static/range {v82 .. v82}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_20

    .line 1073
    move-object/from16 v0, v80

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->setPostBox(Ljava/lang/String;)V

    .line 1074
    const/16 v47, 0x1

    .line 1076
    :cond_20
    invoke-static/range {v68 .. v68}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_21

    .line 1077
    move-object/from16 v0, v80

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->setNeighborhood(Ljava/lang/String;)V

    .line 1078
    const/16 v47, 0x1

    .line 1081
    :cond_21
    if-eqz v47, :cond_1

    .line 1082
    const/4 v10, 0x0

    move-object/from16 v0, v80

    iput-boolean v10, v0, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;->mDataOrTypeUpdated:Z

    .line 1083
    move-object/from16 v0, v44

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry;->addPostal(Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;)V

    goto/16 :goto_2

    .line 1044
    .end local v80    # "postalEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;
    .end local v81    # "postalType":I
    :cond_22
    const/16 v81, -0x1

    .restart local v81    # "postalType":I
    goto/16 :goto_a

    .line 1087
    .end local v36    # "city":Ljava/lang/String;
    .end local v38    # "country":Ljava/lang/String;
    .end local v47    # "fDataExist":Z
    .end local v68    # "neighborhood":Ljava/lang/String;
    .end local v81    # "postalType":I
    .end local v82    # "postbox":Ljava/lang/String;
    .end local v83    # "postcode":Ljava/lang/String;
    .end local v86    # "region":Ljava/lang/String;
    .end local v92    # "street":Ljava/lang/String;
    :cond_23
    const-string v10, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 1088
    const-string v10, "data1"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1089
    .local v37, "company":Ljava/lang/String;
    const-string v10, "data4"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v94

    .line 1090
    .local v94, "title":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_24

    invoke-static/range {v94 .. v94}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1095
    :cond_24
    const-string v10, "data2"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 1096
    const-string v10, "data2"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v73

    .line 1101
    .local v73, "organizationType":I
    :goto_b
    new-instance v72, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;

    move-object/from16 v0, v72

    move/from16 v1, v73

    invoke-direct {v0, v5, v6, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;-><init>(JI)V

    .line 1102
    .local v72, "organizationEntry":Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;
    if-nez v73, :cond_25

    .line 1103
    const-string v10, "data3"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v72

    invoke-virtual {v0, v10}, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->setCustomLabel(Ljava/lang/String;)V

    .line 1105
    :cond_25
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_26

    .line 1106
    move-object/from16 v0, v72

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->setCompany(Ljava/lang/String;)V

    .line 1108
    :cond_26
    invoke-static/range {v94 .. v94}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_27

    .line 1109
    move-object/from16 v0, v72

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->setTitle(Ljava/lang/String;)V

    .line 1111
    :cond_27
    const/4 v10, 0x0

    move-object/from16 v0, v72

    iput-boolean v10, v0, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;->mDataOrTypeUpdated:Z

    .line 1112
    move-object/from16 v0, v44

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry;->addOrganization(Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;)V

    goto/16 :goto_2

    .line 1098
    .end local v72    # "organizationEntry":Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;
    .end local v73    # "organizationType":I
    :cond_28
    const/16 v73, -0x1

    .restart local v73    # "organizationType":I
    goto :goto_b

    .line 1113
    .end local v37    # "company":Ljava/lang/String;
    .end local v73    # "organizationType":I
    .end local v94    # "title":Ljava/lang/String;
    :cond_29
    const-string v10, "vnd.android.cursor.item/me2day"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 1114
    const-string v10, "data1"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 1115
    .local v61, "me2day":Ljava/lang/String;
    invoke-static/range {v61 .. v61}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    if-nez v22, :cond_1

    .line 1118
    new-instance v62, Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;

    move-object/from16 v0, v62

    move-object/from16 v1, v61

    invoke-direct {v0, v5, v6, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;-><init>(JLjava/lang/String;)V

    .line 1119
    .local v62, "me2dayEntry":Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;
    const/4 v10, 0x0

    move-object/from16 v0, v62

    iput-boolean v10, v0, Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;->mDataOrTypeUpdated:Z

    .line 1120
    move-object/from16 v0, v44

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry;->addMe2Day(Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;)V

    .line 1121
    const/16 v22, 0x1

    .line 1122
    goto/16 :goto_2

    .end local v61    # "me2day":Ljava/lang/String;
    .end local v62    # "me2dayEntry":Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;
    :cond_2a
    const-string v10, "vnd.android.cursor.item/twitter"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 1123
    const-string v10, "data1"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    .line 1124
    .local v95, "twitter":Ljava/lang/String;
    invoke-static/range {v95 .. v95}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    if-nez v27, :cond_1

    .line 1127
    new-instance v96, Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;

    move-object/from16 v0, v96

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v6, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;-><init>(JLjava/lang/String;)V

    .line 1128
    .local v96, "twitterEntry":Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;
    const/4 v10, 0x0

    move-object/from16 v0, v96

    iput-boolean v10, v0, Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;->mDataOrTypeUpdated:Z

    .line 1129
    move-object/from16 v0, v44

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry;->addTwitter(Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;)V

    .line 1130
    const/16 v27, 0x1

    .line 1132
    goto/16 :goto_2

    .end local v95    # "twitter":Ljava/lang/String;
    .end local v96    # "twitterEntry":Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;
    :cond_2b
    const-string v10, "vnd.android.cursor.item/facebook"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 1133
    const-string v10, "data1"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1134
    .local v48, "facebook":Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    if-nez v21, :cond_1

    .line 1137
    new-instance v49, Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v6, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;-><init>(JLjava/lang/String;)V

    .line 1138
    .local v49, "facebookEntry":Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;
    const/4 v10, 0x0

    move-object/from16 v0, v49

    iput-boolean v10, v0, Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;->mDataOrTypeUpdated:Z

    .line 1139
    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry;->addFacebook(Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;)V

    .line 1140
    const/16 v21, 0x1

    .line 1142
    goto/16 :goto_2

    .end local v48    # "facebook":Ljava/lang/String;
    .end local v49    # "facebookEntry":Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;
    :cond_2c
    const-string v10, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 1143
    const-string v10, "data1"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    .line 1144
    .local v52, "groupId":J
    const-wide/16 v10, 0x0

    cmp-long v10, v52, v10

    if-lez v10, :cond_1

    .line 1145
    new-instance v54, Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;

    move-object/from16 v0, v54

    move-wide/from16 v1, v52

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;-><init>(JJ)V

    .line 1147
    .local v54, "groupMembershipEntry":Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;
    const/4 v10, 0x0

    move-object/from16 v0, v54

    iput-boolean v10, v0, Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;->mDataOrTypeUpdated:Z

    .line 1148
    move-object/from16 v0, v44

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry;->addGroupmembership(Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;)V

    goto/16 :goto_2

    .line 1150
    .end local v52    # "groupId":J
    .end local v54    # "groupMembershipEntry":Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;
    :cond_2d
    const-string v10, "vnd.android.cursor.item/relation"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 1152
    if-eqz v17, :cond_2e

    const-string v10, "com.google"

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1155
    :cond_2e
    const-string v10, "data1"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    .line 1156
    .local v87, "relation":Ljava/lang/String;
    invoke-static/range {v87 .. v87}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1160
    const-string v10, "data2"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_30

    .line 1161
    const-string v10, "data2"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1165
    .restart local v7    # "type":I
    :goto_c
    new-instance v88, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;

    move-object/from16 v0, v88

    move-object/from16 v1, v87

    invoke-direct {v0, v5, v6, v7, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;-><init>(JILjava/lang/String;)V

    .line 1166
    .local v88, "relationEntry":Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;
    if-nez v7, :cond_2f

    .line 1167
    const-string v10, "data3"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v88

    invoke-virtual {v0, v10}, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;->setCustomLabel(Ljava/lang/String;)V

    .line 1169
    :cond_2f
    const/4 v10, 0x0

    move-object/from16 v0, v88

    iput-boolean v10, v0, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;->mDataOrTypeUpdated:Z

    .line 1170
    move-object/from16 v0, v44

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry;->addRelation(Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;)V

    goto/16 :goto_2

    .line 1163
    .end local v7    # "type":I
    .end local v88    # "relationEntry":Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;
    :cond_30
    const/4 v7, -0x1

    .restart local v7    # "type":I
    goto :goto_c

    .line 1171
    .end local v7    # "type":I
    .end local v87    # "relation":Ljava/lang/String;
    :cond_31
    const-string v10, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1172
    const-string v10, "data1"

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v89

    .line 1173
    .local v89, "sipAddress":Ljava/lang/String;
    invoke-static/range {v89 .. v89}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    if-nez v26, :cond_1

    .line 1176
    new-instance v90, Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;

    move-object/from16 v0, v90

    move-object/from16 v1, v89

    invoke-direct {v0, v5, v6, v1}, Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;-><init>(JLjava/lang/String;)V

    .line 1177
    .local v90, "sipAddressEntry":Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;
    const/4 v10, 0x0

    move-object/from16 v0, v90

    iput-boolean v10, v0, Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;->mDataOrTypeUpdated:Z

    .line 1178
    move-object/from16 v0, v44

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Lcom/pantech/provider/skycontacts/ContactEntry;->addSipAddress(Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1179
    const/16 v26, 0x1

    goto/16 :goto_2

    .end local v5    # "dataId":J
    .end local v46    # "entryValues":Landroid/content/ContentValues;
    .end local v65    # "mimeType":Ljava/lang/String;
    .end local v89    # "sipAddress":Ljava/lang/String;
    .end local v90    # "sipAddressEntry":Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;
    .end local v93    # "subValue":Landroid/content/Entity$NamedContentValues;
    :cond_32
    move-object/from16 v45, v44

    .line 1182
    .end local v44    # "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    .restart local v45    # "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    goto/16 :goto_0

    .end local v17    # "accountInfo":Landroid/accounts/Account;
    .end local v18    # "accountName":Ljava/lang/String;
    .end local v19    # "accountType":Ljava/lang/String;
    .end local v31    # "before":Landroid/content/Entity;
    .end local v43    # "entValues":Landroid/content/ContentValues;
    .end local v55    # "i$":Ljava/util/Iterator;
    .end local v84    # "rawId":Ljava/lang/Long;
    .end local v97    # "version":Ljava/lang/Long;
    :cond_33
    move-object/from16 v44, v45

    .line 1187
    .end local v45    # "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    .restart local v44    # "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    :cond_34
    if-eqz v59, :cond_35

    .line 1188
    invoke-interface/range {v59 .. v59}, Landroid/content/EntityIterator;->close()V

    .line 1192
    :cond_35
    return-object v44

    .line 1187
    .end local v44    # "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    .restart local v45    # "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    :catchall_2
    move-exception v10

    move-object/from16 v44, v45

    .end local v45    # "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    .restart local v44    # "entry":Lcom/pantech/provider/skycontacts/ContactEntry;
    goto/16 :goto_4
.end method

.method public getGroup(J)Lcom/pantech/provider/skycontacts/GroupEntry;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 1381
    const/4 v0, 0x0

    .line 1382
    .local v0, "entry":Lcom/pantech/provider/skycontacts/GroupEntry;
    invoke-direct {p0}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->ensureGroupInfoCache()Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;

    move-result-object v3

    .line 1383
    .local v3, "infoCache":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;
    invoke-virtual {v3}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;->getGroupInfo()Ljava/util/HashMap;

    move-result-object v2

    .line 1384
    .local v2, "groupInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;

    .line 1385
    .local v1, "groupInfo":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;
    if-eqz v1, :cond_0

    .line 1386
    invoke-virtual {v1}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->toGroupEntry()Lcom/pantech/provider/skycontacts/GroupEntry;

    move-result-object v0

    .line 1388
    :cond_0
    return-object v0
.end method

.method public getGroupList(Landroid/accounts/Account;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/GroupEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1276
    .local v0, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/GroupEntry;>;"
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->fRefreshGroupInfo:Z

    .line 1277
    invoke-direct {p0}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->ensureGroupInfoCache()Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;

    move-result-object v2

    .line 1278
    .local v2, "infoCache":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;
    invoke-virtual {v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;->getGroupInfo()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1280
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1281
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;

    .line 1282
    .local v1, "info":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;
    if-eqz p1, :cond_1

    .line 1283
    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, v1, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, v1, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1284
    invoke-virtual {v1}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->toGroupEntry()Lcom/pantech/provider/skycontacts/GroupEntry;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1287
    :cond_1
    iget-object v4, v1, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountName:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->accountType:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1288
    invoke-virtual {v1}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;->toGroupEntry()Lcom/pantech/provider/skycontacts/GroupEntry;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1292
    .end local v1    # "info":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfo;
    :cond_2
    return-object v0
.end method

.method public getRewritbleContactsId()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1198
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "deleted=0 AND raw_contact_is_read_only=0 AND (account_type = \'com.google\'  OR account_type = \'com.android.exchange\' OR account_type = \'com.pantech.phone\' OR account_type is null)"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1208
    .local v6, "cursor":Landroid/database/Cursor;
    return-object v6
.end method

.method public getSpeedDial(I)Lcom/pantech/provider/skycontacts/SpeedDialEntry;
    .locals 1
    .param p1, "speedDialValue"    # I

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mSpeedDialManager:Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;

    invoke-interface {v0, p1}, Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;->getSpeedDial(I)Lcom/pantech/provider/skycontacts/SpeedDialEntry;

    move-result-object v0

    return-object v0
.end method

.method public insertContact(Lcom/pantech/provider/skycontacts/ContactEntry;)Landroid/net/Uri;
    .locals 97
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/ContactEntry;

    .prologue
    .line 265
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v10, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v78

    .line 269
    .local v78, "builder":Landroid/content/ContentProviderOperation$Builder;
    const/16 v88, 0x0

    .line 271
    .local v88, "myGroupsId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getAccount()Landroid/accounts/Account;

    move-result-object v75

    .line 273
    .local v75, "account":Landroid/accounts/Account;
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-direct {v0, v1}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->checkVaildAccountType(Landroid/accounts/Account;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    const/4 v3, 0x0

    move-object/from16 v5, v78

    .line 508
    .end local v78    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .local v5, "builder":Landroid/content/ContentProviderOperation$Builder;
    :goto_0
    return-object v3

    .line 277
    .end local v5    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v78    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_0
    if-eqz v75, :cond_5

    .line 278
    const-string v3, "account_name"

    move-object/from16 v0, v75

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v78

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 279
    const-string v3, "account_type"

    move-object/from16 v0, v75

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v78

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 282
    const-string v3, "com.google"

    move-object/from16 v0, v75

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "sourceid"

    aput-object v9, v5, v7

    const-string v6, "auto_add=1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v96

    .line 289
    .local v96, "tmpCursor":Landroid/database/Cursor;
    if-eqz v96, :cond_1

    :try_start_0
    invoke-interface/range {v96 .. v96}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    const/4 v3, 0x0

    move-object/from16 v0, v96

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v88

    .line 293
    :cond_1
    if-eqz v96, :cond_2

    .line 294
    invoke-interface/range {v96 .. v96}, Landroid/database/Cursor;->close()V

    .line 301
    .end local v96    # "tmpCursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    invoke-virtual/range {v78 .. v78}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    if-nez v75, :cond_6

    .line 305
    const-string v8, "local_fallback"

    .line 317
    .local v8, "accoutType":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getName()Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;

    move-result-object v6

    .line 318
    .local v6, "nameEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;
    if-eqz v6, :cond_1c

    .line 319
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 320
    .end local v78    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v5    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 321
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-object v4, v10

    invoke-direct/range {v3 .. v8}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    .line 325
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getNickName()Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;

    move-result-object v12

    .line 326
    .local v12, "nicknamEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;
    if-eqz v12, :cond_3

    .line 327
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 328
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 329
    const/4 v13, 0x1

    move-object/from16 v9, p0

    move-object v11, v5

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    .line 333
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getMemoList()Ljava/util/ArrayList;

    move-result-object v87

    .line 334
    .local v87, "memoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;>;"
    if-eqz v87, :cond_9

    .line 335
    invoke-virtual/range {v87 .. v87}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v84

    .local v84, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;

    .line 336
    .local v16, "memoEntry":Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 337
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 338
    const/16 v17, 0x1

    move-object/from16 v13, p0

    move-object v14, v10

    move-object v15, v5

    move-object/from16 v18, v8

    invoke-direct/range {v13 .. v18}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_4

    .line 293
    .end local v5    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v6    # "nameEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;
    .end local v8    # "accoutType":Ljava/lang/String;
    .end local v12    # "nicknamEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;
    .end local v16    # "memoEntry":Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;
    .end local v84    # "i$":Ljava/util/Iterator;
    .end local v87    # "memoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;>;"
    .restart local v78    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v96    # "tmpCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v96, :cond_4

    .line 294
    invoke-interface/range {v96 .. v96}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    .line 299
    .end local v96    # "tmpCursor":Landroid/database/Cursor;
    :cond_5
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 307
    :cond_6
    const-string v3, "com.google"

    move-object/from16 v0, v75

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 308
    const-string v8, "com.google"

    .restart local v8    # "accoutType":Ljava/lang/String;
    goto/16 :goto_2

    .line 309
    .end local v8    # "accoutType":Ljava/lang/String;
    :cond_7
    const-string v3, "com.android.exchange"

    move-object/from16 v0, v75

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 310
    const-string v8, "com.android.exchange"

    .restart local v8    # "accoutType":Ljava/lang/String;
    goto/16 :goto_2

    .line 312
    .end local v8    # "accoutType":Ljava/lang/String;
    :cond_8
    const-string v8, "local_fallback"

    .restart local v8    # "accoutType":Ljava/lang/String;
    goto/16 :goto_2

    .line 343
    .end local v78    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v5    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v6    # "nameEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;
    .restart local v12    # "nicknamEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;
    .restart local v87    # "memoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;>;"
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getPhoto()Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;

    move-result-object v20

    .line 344
    .local v20, "photoEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;
    if-eqz v20, :cond_a

    .line 345
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 346
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 347
    const/16 v21, 0x1

    move-object/from16 v17, p0

    move-object/from16 v18, v10

    move-object/from16 v19, v5

    move-object/from16 v22, v8

    invoke-direct/range {v17 .. v22}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    .line 351
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getPhoneList()Ljava/util/ArrayList;

    move-result-object v90

    .line 352
    .local v90, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;>;"
    if-eqz v90, :cond_b

    .line 353
    invoke-virtual/range {v90 .. v90}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v84

    .restart local v84    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;

    .line 354
    .local v24, "phoneEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 355
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 356
    const/16 v25, 0x1

    move-object/from16 v21, p0

    move-object/from16 v22, v10

    move-object/from16 v23, v5

    move-object/from16 v26, v8

    invoke-direct/range {v21 .. v26}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_5

    .line 361
    .end local v24    # "phoneEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;
    .end local v84    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getEmailList()Ljava/util/ArrayList;

    move-result-object v80

    .line 362
    .local v80, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;>;"
    if-eqz v80, :cond_c

    .line 363
    invoke-virtual/range {v80 .. v80}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v84

    .restart local v84    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;

    .line 364
    .local v28, "emailEntry":Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 365
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 366
    const/16 v29, 0x1

    move-object/from16 v25, p0

    move-object/from16 v26, v10

    move-object/from16 v27, v5

    move-object/from16 v30, v8

    invoke-direct/range {v25 .. v30}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_6

    .line 371
    .end local v28    # "emailEntry":Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;
    .end local v84    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getBlogList()Ljava/util/ArrayList;

    move-result-object v77

    .line 372
    .local v77, "blogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;>;"
    if-eqz v77, :cond_d

    .line 373
    invoke-virtual/range {v77 .. v77}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v84

    .restart local v84    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;

    .line 374
    .local v32, "blogEntry":Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 375
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 376
    const/16 v33, 0x1

    move-object/from16 v29, p0

    move-object/from16 v30, v10

    move-object/from16 v31, v5

    move-object/from16 v34, v8

    invoke-direct/range {v29 .. v34}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_7

    .line 383
    .end local v32    # "blogEntry":Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;
    .end local v84    # "i$":Ljava/util/Iterator;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getAnniversaryList()Ljava/util/ArrayList;

    move-result-object v76

    .line 384
    .local v76, "annivList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;>;"
    if-eqz v76, :cond_e

    .line 385
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v84

    .restart local v84    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;

    .line 386
    .local v36, "annivEntry":Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 387
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 388
    const/16 v37, 0x1

    move-object/from16 v33, p0

    move-object/from16 v34, v10

    move-object/from16 v35, v5

    move-object/from16 v38, v8

    invoke-direct/range {v33 .. v38}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_8

    .line 394
    .end local v36    # "annivEntry":Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;
    .end local v84    # "i$":Ljava/util/Iterator;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getImList()Ljava/util/ArrayList;

    move-result-object v85

    .line 395
    .local v85, "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;>;"
    if-eqz v85, :cond_f

    .line 396
    invoke-virtual/range {v85 .. v85}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v84

    .restart local v84    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;

    .line 397
    .local v40, "imEntry":Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 398
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 399
    const/16 v41, 0x1

    move-object/from16 v37, p0

    move-object/from16 v38, v10

    move-object/from16 v39, v5

    move-object/from16 v42, v8

    invoke-direct/range {v37 .. v42}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_9

    .line 404
    .end local v40    # "imEntry":Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;
    .end local v84    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getPostalList()Ljava/util/ArrayList;

    move-result-object v91

    .line 405
    .local v91, "postalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;>;"
    if-eqz v91, :cond_10

    .line 406
    invoke-virtual/range {v91 .. v91}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v84

    .restart local v84    # "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;

    .line 407
    .local v44, "postalEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 408
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 409
    const/16 v45, 0x1

    move-object/from16 v41, p0

    move-object/from16 v42, v10

    move-object/from16 v43, v5

    move-object/from16 v46, v8

    invoke-direct/range {v41 .. v46}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_a

    .line 414
    .end local v44    # "postalEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;
    .end local v84    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getOrganizationList()Ljava/util/ArrayList;

    move-result-object v89

    .line 415
    .local v89, "organizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;>;"
    if-eqz v89, :cond_11

    .line 416
    invoke-virtual/range {v89 .. v89}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v84

    .restart local v84    # "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;

    .line 417
    .local v48, "organization":Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 418
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 419
    const/16 v49, 0x1

    move-object/from16 v45, p0

    move-object/from16 v46, v10

    move-object/from16 v47, v5

    move-object/from16 v50, v8

    invoke-direct/range {v45 .. v50}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_b

    .line 424
    .end local v48    # "organization":Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;
    .end local v84    # "i$":Ljava/util/Iterator;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getMe2Day()Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;

    move-result-object v52

    .line 425
    .local v52, "me2dayEntry":Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;
    if-eqz v52, :cond_12

    .line 426
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 427
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 428
    const/16 v53, 0x1

    move-object/from16 v49, p0

    move-object/from16 v50, v10

    move-object/from16 v51, v5

    move-object/from16 v54, v8

    invoke-direct/range {v49 .. v54}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    .line 432
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getTwitter()Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;

    move-result-object v56

    .line 433
    .local v56, "twitterEntry":Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;
    if-eqz v56, :cond_13

    .line 434
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 435
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 436
    const/16 v57, 0x1

    move-object/from16 v53, p0

    move-object/from16 v54, v10

    move-object/from16 v55, v5

    move-object/from16 v58, v8

    invoke-direct/range {v53 .. v58}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    .line 441
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getFacebook()Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;

    move-result-object v60

    .line 442
    .local v60, "facebookEntry":Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;
    if-eqz v60, :cond_14

    .line 443
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 444
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 445
    const/16 v61, 0x1

    move-object/from16 v57, p0

    move-object/from16 v58, v10

    move-object/from16 v59, v5

    move-object/from16 v62, v8

    invoke-direct/range {v57 .. v62}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    .line 458
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getGroupmembershipList()Ljava/util/ArrayList;

    move-result-object v83

    .line 459
    .local v83, "groupmemberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;>;"
    if-eqz v83, :cond_17

    .line 460
    invoke-direct/range {p0 .. p0}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->ensureGroupInfoCache()Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;

    move-result-object v86

    .line 461
    .local v86, "infoCache":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;
    invoke-virtual/range {v83 .. v83}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v84

    .restart local v84    # "i$":Ljava/util/Iterator;
    :cond_15
    :goto_c
    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;

    .line 464
    .local v64, "groupmemberEntry":Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;
    invoke-virtual/range {v64 .. v64}, Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;->getGroupId()J

    move-result-wide v81

    .line 465
    .local v81, "groupId":J
    move-object/from16 v0, v86

    move-wide/from16 v1, v81

    invoke-virtual {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;->isGoogleMyContacts(J)Z

    move-result v3

    if-nez v3, :cond_15

    if-eqz v75, :cond_16

    move-object/from16 v0, v75

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_d
    move-object/from16 v0, v86

    move-wide/from16 v1, v81

    invoke-virtual {v0, v3, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;->isPossibleToAdd(Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 467
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 468
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 469
    const/16 v65, 0x1

    move-object/from16 v61, p0

    move-object/from16 v62, v10

    move-object/from16 v63, v5

    move-object/from16 v66, v8

    invoke-direct/range {v61 .. v66}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_c

    .line 465
    :cond_16
    const/4 v3, 0x0

    goto :goto_d

    .line 476
    .end local v64    # "groupmemberEntry":Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;
    .end local v81    # "groupId":J
    .end local v84    # "i$":Ljava/util/Iterator;
    .end local v86    # "infoCache":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;
    :cond_17
    if-eqz v75, :cond_18

    const-string v3, "com.google"

    move-object/from16 v0, v75

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 477
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getRelationList()Ljava/util/ArrayList;

    move-result-object v94

    .line 478
    .local v94, "relationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;>;"
    if-eqz v94, :cond_19

    .line 479
    invoke-virtual/range {v94 .. v94}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v84

    .restart local v84    # "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;

    .line 480
    .local v68, "relationEntry":Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 481
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 482
    const/16 v69, 0x1

    move-object/from16 v65, p0

    move-object/from16 v66, v10

    move-object/from16 v67, v5

    move-object/from16 v70, v8

    invoke-direct/range {v65 .. v70}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_e

    .line 488
    .end local v68    # "relationEntry":Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;
    .end local v84    # "i$":Ljava/util/Iterator;
    .end local v94    # "relationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;>;"
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getSipAddress()Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;

    move-result-object v72

    .line 489
    .local v72, "sipAddressEntry":Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;
    if-eqz v72, :cond_1a

    .line 490
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 491
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 492
    const/16 v73, 0x1

    move-object/from16 v69, p0

    move-object/from16 v70, v10

    move-object/from16 v71, v5

    move-object/from16 v74, v8

    invoke-direct/range {v69 .. v74}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    .line 496
    :cond_1a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v95

    .line 497
    .local v95, "results":[Landroid/content/ContentProviderResult;
    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v10, v1}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->getRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v92

    .line 498
    .local v92, "rawContactId":J
    const-wide/16 v3, -0x1

    cmp-long v3, v92, v3

    if-eqz v3, :cond_1b

    .line 499
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v92

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto/16 :goto_0

    .line 501
    .end local v92    # "rawContactId":J
    .end local v95    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v79

    .line 502
    .local v79, "e":Landroid/os/RemoteException;
    const-string v3, "ContactManageHelperImpl"

    const-string v4, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {v79 .. v79}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-virtual/range {v79 .. v79}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .end local v79    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_f
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 503
    :catch_1
    move-exception v79

    .line 504
    .local v79, "e":Landroid/content/OperationApplicationException;
    const-string v3, "ContactManageHelperImpl"

    const-string v4, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {v79 .. v79}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-virtual/range {v79 .. v79}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .end local v5    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v12    # "nicknamEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;
    .end local v20    # "photoEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;
    .end local v52    # "me2dayEntry":Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;
    .end local v56    # "twitterEntry":Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;
    .end local v60    # "facebookEntry":Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;
    .end local v72    # "sipAddressEntry":Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;
    .end local v76    # "annivList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;>;"
    .end local v77    # "blogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;>;"
    .end local v79    # "e":Landroid/content/OperationApplicationException;
    .end local v80    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;>;"
    .end local v83    # "groupmemberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;>;"
    .end local v85    # "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;>;"
    .end local v87    # "memoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;>;"
    .end local v89    # "organizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;>;"
    .end local v90    # "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;>;"
    .end local v91    # "postalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;>;"
    .restart local v78    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_1c
    move-object/from16 v5, v78

    .end local v78    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v5    # "builder":Landroid/content/ContentProviderOperation$Builder;
    goto/16 :goto_3
.end method

.method public insertGroup(Lcom/pantech/provider/skycontacts/GroupEntry;)Landroid/net/Uri;
    .locals 10
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/GroupEntry;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1217
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1218
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/GroupEntry;->getId()J

    move-result-wide v1

    .line 1219
    .local v1, "id":J
    cmp-long v6, v1, v8

    if-eqz v6, :cond_0

    .line 1220
    const-string v6, "ContactManageHelperImpl"

    const-string v7, "group id must empty when inserting group"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :goto_0
    return-object v5

    .line 1224
    :cond_0
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/GroupEntry;->getGrpName()Ljava/lang/String;

    move-result-object v3

    .line 1227
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/GroupEntry;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-direct {p0, v6, v3, v8, v9}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->isVaildGroupName(Landroid/accounts/Account;Ljava/lang/String;J)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1228
    const-string v6, "ContactManageHelperImpl"

    const-string v7, "group name is not vaild, check its name is already exist or system group name"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1232
    :cond_1
    if-eqz v3, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1233
    const-string v5, "title"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const-string v5, "group_visible"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1240
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/GroupEntry;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 1241
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_2

    .line 1242
    const-string v5, "account_name"

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const-string v5, "account_type"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    :cond_2
    iput-boolean v7, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->fRefreshGroupInfo:Z

    .line 1248
    iget-object v5, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    .line 1235
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_3
    const-string v6, "ContactManageHelperImpl"

    const-string v7, "group name must be set"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertSpeedDial(IJ)Landroid/net/Uri;
    .locals 1
    .param p1, "speedDialValue"    # I
    .param p2, "dataId"    # J

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mSpeedDialManager:Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;->insertSpeedDial(IJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized queryAccount()Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContext:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    .line 203
    .local v8, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v7

    .line 204
    .local v7, "accounts":[Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 205
    .local v18, "matching":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 207
    .local v4, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 209
    .local v12, "cs":Landroid/content/IContentService;
    if-nez v12, :cond_1

    .line 210
    const/16 v18, 0x0

    .line 255
    .end local v18    # "matching":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v18

    .line 214
    .restart local v18    # "matching":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_1
    :try_start_1
    invoke-interface {v12}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v20

    .line 215
    .local v20, "syncs":[Landroid/content/SyncAdapterType;
    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v11

    .line 216
    .local v11, "auths":[Landroid/accounts/AuthenticatorDescription;
    move-object/from16 v9, v20

    .local v9, "arr$":[Landroid/content/SyncAdapterType;
    array-length v0, v9

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_6

    aget-object v19, v9, v14

    .line 217
    .local v19, "sync":Landroid/content/SyncAdapterType;
    const-string v21, "com.android.contacts"

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 216
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 224
    :cond_3
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    .line 225
    .local v5, "accountType":Ljava/lang/String;
    invoke-static {v11, v5}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v10

    .line 227
    .local v10, "auth":Landroid/accounts/AuthenticatorDescription;
    const-string v21, "com.google"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    const-string v21, "com.android.exchange"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 229
    :cond_4
    iget-object v0, v10, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 250
    .end local v5    # "accountType":Ljava/lang/String;
    .end local v9    # "arr$":[Landroid/content/SyncAdapterType;
    .end local v10    # "auth":Landroid/accounts/AuthenticatorDescription;
    .end local v11    # "auths":[Landroid/accounts/AuthenticatorDescription;
    .end local v14    # "i$":I
    .end local v16    # "len$":I
    .end local v19    # "sync":Landroid/content/SyncAdapterType;
    .end local v20    # "syncs":[Landroid/content/SyncAdapterType;
    :catch_0
    move-exception v13

    .line 251
    .local v13, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v21, "ContactManageHelperImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Problem loading accounts: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    const/16 v18, 0x0

    goto :goto_0

    .line 231
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v5    # "accountType":Ljava/lang/String;
    .restart local v9    # "arr$":[Landroid/content/SyncAdapterType;
    .restart local v10    # "auth":Landroid/accounts/AuthenticatorDescription;
    .restart local v11    # "auths":[Landroid/accounts/AuthenticatorDescription;
    .restart local v14    # "i$":I
    .restart local v16    # "len$":I
    .restart local v19    # "sync":Landroid/content/SyncAdapterType;
    .restart local v20    # "syncs":[Landroid/content/SyncAdapterType;
    :cond_5
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 232
    iget-object v0, v10, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 202
    .end local v4    # "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "accountType":Ljava/lang/String;
    .end local v7    # "accounts":[Landroid/accounts/Account;
    .end local v8    # "am":Landroid/accounts/AccountManager;
    .end local v9    # "arr$":[Landroid/content/SyncAdapterType;
    .end local v10    # "auth":Landroid/accounts/AuthenticatorDescription;
    .end local v11    # "auths":[Landroid/accounts/AuthenticatorDescription;
    .end local v12    # "cs":Landroid/content/IContentService;
    .end local v14    # "i$":I
    .end local v16    # "len$":I
    .end local v18    # "matching":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local v19    # "sync":Landroid/content/SyncAdapterType;
    .end local v20    # "syncs":[Landroid/content/SyncAdapterType;
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .line 237
    .restart local v4    # "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "accounts":[Landroid/accounts/Account;
    .restart local v8    # "am":Landroid/accounts/AccountManager;
    .restart local v9    # "arr$":[Landroid/content/SyncAdapterType;
    .restart local v11    # "auths":[Landroid/accounts/AuthenticatorDescription;
    .restart local v12    # "cs":Landroid/content/IContentService;
    .restart local v14    # "i$":I
    .restart local v16    # "len$":I
    .restart local v18    # "matching":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .restart local v20    # "syncs":[Landroid/content/SyncAdapterType;
    :cond_6
    :try_start_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v9    # "arr$":[Landroid/content/SyncAdapterType;
    .end local v14    # "i$":I
    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 238
    .local v6, "accountTypeString":Ljava/lang/String;
    move-object v9, v7

    .local v9, "arr$":[Landroid/accounts/Account;
    array-length v0, v9

    move/from16 v16, v0

    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_3
    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    aget-object v3, v9, v15

    .line 239
    .local v3, "account":Landroid/accounts/Account;
    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 240
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 245
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v6    # "accountTypeString":Ljava/lang/String;
    .end local v9    # "arr$":[Landroid/accounts/Account;
    .end local v15    # "i$":I
    :cond_9
    const-string v21, "63"

    invoke-static/range {v21 .. v21}, Lcom/pantech/provider/skycontacts/DeviceInfo;->equalsOrNextGroup(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 246
    new-instance v17, Landroid/accounts/Account;

    const-string v21, "phone"

    const-string v22, "com.pantech.phone"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v17, "localAccount":Landroid/accounts/Account;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public setDefaultKindByAccountType()V
    .locals 19

    .prologue
    .line 2017
    new-instance v14, Landroid/util/SparseIntArray;

    invoke-direct {v14}, Landroid/util/SparseIntArray;-><init>()V

    .line 2018
    .local v14, "phoneField":Landroid/util/SparseIntArray;
    const/16 v17, 0x2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2019
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2020
    const/16 v17, 0x3

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2021
    const/16 v17, 0x4

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2022
    const/16 v17, 0x5

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2023
    const/16 v17, 0x6

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2024
    const/16 v17, 0x7

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2025
    const/16 v17, 0x0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2026
    const/16 v17, 0x8

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2027
    const/16 v17, 0x9

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2028
    const/16 v17, 0xa

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2029
    const/16 v17, 0xb

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2030
    const/16 v17, 0xc

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2031
    const/16 v17, 0xe

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2032
    const/16 v17, 0x10

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2033
    const/16 v17, 0x11

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2034
    const/16 v17, 0x12

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2035
    const/16 v17, 0x13

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2036
    const/16 v17, 0x14

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2038
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 2039
    .local v2, "emailField":Landroid/util/SparseIntArray;
    const/16 v17, 0x2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2040
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2041
    const/16 v17, 0x3

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2042
    const/16 v17, 0x4

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2043
    const/16 v17, 0x0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2045
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    .line 2046
    .local v15, "postalField":Landroid/util/SparseIntArray;
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2047
    const/16 v17, 0x2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2048
    const/16 v17, 0x3

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2049
    const/16 v17, 0x0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2051
    new-instance v12, Landroid/util/SparseIntArray;

    invoke-direct {v12}, Landroid/util/SparseIntArray;-><init>()V

    .line 2052
    .local v12, "imField":Landroid/util/SparseIntArray;
    const/16 v17, 0x0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2053
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2054
    const/16 v17, 0x2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2055
    const/16 v17, 0x3

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2056
    const/16 v17, 0x4

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2057
    const/16 v17, 0x5

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2058
    const/16 v17, 0x6

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2059
    const/16 v17, 0x7

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2060
    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2062
    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    .line 2063
    .local v13, "organizationField":Landroid/util/SparseIntArray;
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2064
    const/16 v17, 0x2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2065
    const/16 v17, 0x0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2067
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 2068
    .local v3, "eventField":Landroid/util/SparseIntArray;
    const/16 v17, 0x3

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2069
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2070
    const/16 v17, 0x2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2072
    new-instance v16, Landroid/util/SparseIntArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseIntArray;-><init>()V

    .line 2073
    .local v16, "relationField":Landroid/util/SparseIntArray;
    const/16 v17, 0x1

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 2074
    const/16 v17, 0x2

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 2075
    const/16 v17, 0x3

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 2076
    const/16 v17, 0x4

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 2077
    const/16 v17, 0x5

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 2078
    const/16 v17, 0x6

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 2079
    const/16 v17, 0x7

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 2080
    const/16 v17, 0x8

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 2081
    const/16 v17, 0x9

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 2082
    const/16 v17, 0xa

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 2083
    const/16 v17, 0xb

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 2084
    const/16 v17, 0xc

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 2085
    const/16 v17, 0xd

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 2086
    const/16 v17, 0xe

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 2087
    const/16 v17, 0x0

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 2089
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2090
    .local v8, "fallBackSource":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    const-string v17, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    const-string v17, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    const-string v17, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    const-string v17, "vnd.android.cursor.item/im"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    const-string v17, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    const-string v17, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mKindSections:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "local_fallback"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2100
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    .line 2101
    .local v10, "googlePhoneField":Landroid/util/SparseIntArray;
    const/16 v17, 0x2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2102
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2103
    const/16 v17, 0x3

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2104
    const/16 v17, 0x4

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2105
    const/16 v17, 0x5

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2106
    const/16 v17, 0x6

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2107
    const/16 v17, 0x7

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2108
    const/16 v17, 0x0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2110
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 2111
    .local v9, "googleEmailField":Landroid/util/SparseIntArray;
    const/16 v17, 0x2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2112
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2113
    const/16 v17, 0x3

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2114
    const/16 v17, 0x0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2116
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2117
    .local v11, "googleSource":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    const-string v17, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2118
    const-string v17, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2119
    const-string v17, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2120
    const-string v17, "vnd.android.cursor.item/im"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    const-string v17, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    const-string v17, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2123
    const-string v17, "vnd.android.cursor.item/relation"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mKindSections:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "com.google"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 2129
    .local v6, "exchgPhoneFieldCount":Landroid/util/SparseIntArray;
    const/16 v17, 0x2

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2130
    const/16 v17, 0x1

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2131
    const/16 v17, 0x3

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2132
    const/16 v17, 0x4

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2133
    const/16 v17, 0x5

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2134
    const/16 v17, 0x6

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2135
    const/16 v17, 0x9

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2136
    const/16 v17, 0xa

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2137
    const/16 v17, 0x14

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2138
    const/16 v17, 0xe

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2139
    const/16 v17, 0x13

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2141
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 2142
    .local v7, "exchgPostalField":Landroid/util/SparseIntArray;
    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2143
    const/16 v17, 0x2

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2144
    const/16 v17, 0x3

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2146
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    .line 2147
    .local v5, "exchgEventField":Landroid/util/SparseIntArray;
    const/16 v17, 0x3

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2149
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2150
    .local v4, "exchangeSource":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    const-string v17, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    const-string v17, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    const-string v17, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    const-string v17, "vnd.android.cursor.item/im"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    const-string v17, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2155
    const-string v17, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mKindSections:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "com.android.exchange"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2159
    return-void
.end method

.method public updateContact(Lcom/pantech/provider/skycontacts/ContactEntry;)Z
    .locals 97
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/ContactEntry;

    .prologue
    .line 517
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getAccount()Landroid/accounts/Account;

    move-result-object v75

    .line 519
    .local v75, "account":Landroid/accounts/Account;
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-direct {v0, v1}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->checkVaildAccountType(Landroid/accounts/Account;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 520
    const/4 v3, 0x0

    .line 753
    :goto_0
    return v3

    .line 523
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v4, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getId()Ljava/lang/Long;

    move-result-object v77

    .line 528
    .local v77, "beforeId":Ljava/lang/Long;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getVersion()Ljava/lang/Long;

    move-result-object v78

    .line 529
    .local v78, "beforeVersion":Ljava/lang/Long;
    if-eqz v77, :cond_1

    if-nez v78, :cond_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 531
    :cond_2
    invoke-virtual/range {v77 .. v77}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v3, v9, v13

    if-gtz v3, :cond_3

    .line 532
    const-string v3, "ContactManageHelperImpl"

    const-string v7, "raw Contact id must be set when updateContact"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v3, 0x0

    goto :goto_0

    .line 537
    :cond_3
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 539
    .local v5, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v77

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 540
    const-string v3, "version"

    move-object/from16 v0, v78

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 541
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    if-nez v75, :cond_6

    .line 546
    const-string v8, "local_fallback"

    .line 558
    .local v8, "accoutType":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getName()Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;

    move-result-object v6

    .line 559
    .local v6, "nameEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;
    if-eqz v6, :cond_4

    .line 560
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v1, v6}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 561
    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    .line 565
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getNickName()Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;

    move-result-object v12

    .line 566
    .local v12, "nicknamEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;
    if-eqz v12, :cond_5

    .line 567
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v1, v12}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 568
    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object v10, v4

    move-object v11, v5

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    .line 572
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getMemoList()Ljava/util/ArrayList;

    move-result-object v90

    .line 573
    .local v90, "memoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;>;"
    if-eqz v90, :cond_9

    .line 574
    invoke-virtual/range {v90 .. v90}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v87

    .local v87, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;

    .line 575
    .local v16, "memoEntry":Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 576
    const/16 v17, 0x0

    move-object/from16 v13, p0

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v18, v8

    invoke-direct/range {v13 .. v18}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_2

    .line 548
    .end local v6    # "nameEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;
    .end local v8    # "accoutType":Ljava/lang/String;
    .end local v12    # "nicknamEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;
    .end local v16    # "memoEntry":Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;
    .end local v87    # "i$":Ljava/util/Iterator;
    .end local v90    # "memoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;>;"
    :cond_6
    const-string v3, "com.google"

    move-object/from16 v0, v75

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 549
    const-string v8, "com.google"

    .restart local v8    # "accoutType":Ljava/lang/String;
    goto :goto_1

    .line 550
    .end local v8    # "accoutType":Ljava/lang/String;
    :cond_7
    const-string v3, "com.android.exchange"

    move-object/from16 v0, v75

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 551
    const-string v8, "com.android.exchange"

    .restart local v8    # "accoutType":Ljava/lang/String;
    goto :goto_1

    .line 553
    .end local v8    # "accoutType":Ljava/lang/String;
    :cond_8
    const-string v8, "local_fallback"

    .restart local v8    # "accoutType":Ljava/lang/String;
    goto :goto_1

    .line 581
    .restart local v6    # "nameEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;
    .restart local v12    # "nicknamEntry":Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;
    .restart local v90    # "memoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;>;"
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getPhoto()Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;

    move-result-object v20

    .line 582
    .local v20, "photoEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;
    if-eqz v20, :cond_a

    .line 583
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 584
    const/16 v21, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v22, v8

    invoke-direct/range {v17 .. v22}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    .line 588
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getPhoneList()Ljava/util/ArrayList;

    move-result-object v92

    .line 589
    .local v92, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;>;"
    new-instance v96, Ljava/util/HashSet;

    invoke-direct/range {v96 .. v96}, Ljava/util/HashSet;-><init>()V

    .line 590
    .local v96, "sDialPhoneNumID":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz v92, :cond_b

    .line 591
    invoke-virtual/range {v92 .. v92}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v87

    .restart local v87    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;

    .line 592
    .local v24, "phoneEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 593
    const/4 v3, 0x1

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->mDataOrTypeUpdated:Z

    .line 594
    const/16 v25, 0x0

    move-object/from16 v21, p0

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v26, v8

    invoke-direct/range {v21 .. v26}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    .line 595
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->mDataOrTypeUpdated:Z

    .line 596
    invoke-virtual/range {v24 .. v24}, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v96

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 601
    .end local v24    # "phoneEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;
    .end local v87    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getEmailList()Ljava/util/ArrayList;

    move-result-object v83

    .line 602
    .local v83, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;>;"
    if-eqz v83, :cond_c

    .line 603
    invoke-virtual/range {v83 .. v83}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v87

    .restart local v87    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;

    .line 604
    .local v28, "emailEntry":Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 605
    const/16 v29, 0x0

    move-object/from16 v25, p0

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v30, v8

    invoke-direct/range {v25 .. v30}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_4

    .line 610
    .end local v28    # "emailEntry":Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;
    .end local v87    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getBlogList()Ljava/util/ArrayList;

    move-result-object v79

    .line 611
    .local v79, "blogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;>;"
    if-eqz v79, :cond_d

    .line 612
    invoke-virtual/range {v79 .. v79}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v87

    .restart local v87    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;

    .line 613
    .local v32, "blogEntry":Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 614
    const/16 v33, 0x0

    move-object/from16 v29, p0

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v34, v8

    invoke-direct/range {v29 .. v34}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_5

    .line 621
    .end local v32    # "blogEntry":Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;
    .end local v87    # "i$":Ljava/util/Iterator;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getAnniversaryList()Ljava/util/ArrayList;

    move-result-object v76

    .line 622
    .local v76, "annivList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;>;"
    if-eqz v76, :cond_e

    .line 623
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v87

    .restart local v87    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;

    .line 624
    .local v36, "annivEntry":Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 625
    const/16 v37, 0x0

    move-object/from16 v33, p0

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move-object/from16 v38, v8

    invoke-direct/range {v33 .. v38}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_6

    .line 631
    .end local v36    # "annivEntry":Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;
    .end local v87    # "i$":Ljava/util/Iterator;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getImList()Ljava/util/ArrayList;

    move-result-object v88

    .line 632
    .local v88, "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;>;"
    if-eqz v88, :cond_f

    .line 633
    invoke-virtual/range {v88 .. v88}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v87

    .restart local v87    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;

    .line 634
    .local v40, "imEntry":Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 635
    const/16 v41, 0x0

    move-object/from16 v37, p0

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move-object/from16 v42, v8

    invoke-direct/range {v37 .. v42}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_7

    .line 640
    .end local v40    # "imEntry":Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;
    .end local v87    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getPostalList()Ljava/util/ArrayList;

    move-result-object v93

    .line 641
    .local v93, "postalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;>;"
    if-eqz v93, :cond_10

    .line 642
    invoke-virtual/range {v93 .. v93}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v87

    .restart local v87    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;

    .line 643
    .local v44, "postalEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 644
    const/16 v45, 0x0

    move-object/from16 v41, p0

    move-object/from16 v42, v4

    move-object/from16 v43, v5

    move-object/from16 v46, v8

    invoke-direct/range {v41 .. v46}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_8

    .line 649
    .end local v44    # "postalEntry":Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;
    .end local v87    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getOrganizationList()Ljava/util/ArrayList;

    move-result-object v91

    .line 650
    .local v91, "organizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;>;"
    if-eqz v91, :cond_11

    .line 651
    invoke-virtual/range {v91 .. v91}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v87

    .restart local v87    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;

    .line 652
    .local v48, "organization":Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 653
    const/16 v49, 0x0

    move-object/from16 v45, p0

    move-object/from16 v46, v4

    move-object/from16 v47, v5

    move-object/from16 v50, v8

    invoke-direct/range {v45 .. v50}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_9

    .line 658
    .end local v48    # "organization":Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;
    .end local v87    # "i$":Ljava/util/Iterator;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getMe2Day()Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;

    move-result-object v52

    .line 659
    .local v52, "me2dayEntry":Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;
    if-eqz v52, :cond_12

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 661
    const/16 v53, 0x0

    move-object/from16 v49, p0

    move-object/from16 v50, v4

    move-object/from16 v51, v5

    move-object/from16 v54, v8

    invoke-direct/range {v49 .. v54}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    .line 665
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getTwitter()Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;

    move-result-object v56

    .line 666
    .local v56, "twitterEntry":Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;
    if-eqz v56, :cond_13

    .line 667
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 668
    const/16 v57, 0x0

    move-object/from16 v53, p0

    move-object/from16 v54, v4

    move-object/from16 v55, v5

    move-object/from16 v58, v8

    invoke-direct/range {v53 .. v58}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    .line 673
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getFacebook()Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;

    move-result-object v60

    .line 674
    .local v60, "facebookEntry":Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;
    if-eqz v60, :cond_14

    .line 675
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 676
    const/16 v61, 0x0

    move-object/from16 v57, p0

    move-object/from16 v58, v4

    move-object/from16 v59, v5

    move-object/from16 v62, v8

    invoke-direct/range {v57 .. v62}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    .line 681
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getGroupmembershipList()Ljava/util/ArrayList;

    move-result-object v86

    .line 682
    .local v86, "groupmemberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;>;"
    if-eqz v86, :cond_19

    .line 683
    invoke-direct/range {p0 .. p0}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->ensureGroupInfoCache()Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;

    move-result-object v89

    .line 684
    .local v89, "infoCache":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;
    invoke-virtual/range {v86 .. v86}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v87

    .restart local v87    # "i$":Ljava/util/Iterator;
    :cond_15
    :goto_a
    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;

    .line 686
    .local v64, "groupmemberEntry":Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v80

    .line 689
    .local v80, "dataId":J
    const-wide/16 v9, 0x0

    cmp-long v3, v80, v9

    if-eqz v3, :cond_16

    const-wide/16 v9, 0x0

    cmp-long v3, v80, v9

    if-lez v3, :cond_18

    move-object/from16 v0, v64

    iget-object v3, v0, Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;->mData:Ljava/lang/String;

    if-eqz v3, :cond_18

    .line 691
    :cond_16
    invoke-virtual/range {v64 .. v64}, Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;->getGroupId()J

    move-result-wide v84

    .line 692
    .local v84, "groupId":J
    if-eqz v75, :cond_17

    move-object/from16 v0, v75

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_b
    move-object/from16 v0, v89

    move-wide/from16 v1, v84

    invoke-virtual {v0, v3, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;->isPossibleToAdd(Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 693
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v64

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 694
    const/16 v65, 0x0

    move-object/from16 v61, p0

    move-object/from16 v62, v4

    move-object/from16 v63, v5

    move-object/from16 v66, v8

    invoke-direct/range {v61 .. v66}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_a

    .line 692
    :cond_17
    const/4 v3, 0x0

    goto :goto_b

    .line 697
    .end local v84    # "groupId":J
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v64

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 698
    const/16 v65, 0x0

    move-object/from16 v61, p0

    move-object/from16 v62, v4

    move-object/from16 v63, v5

    move-object/from16 v66, v8

    invoke-direct/range {v61 .. v66}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_a

    .line 705
    .end local v64    # "groupmemberEntry":Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;
    .end local v80    # "dataId":J
    .end local v87    # "i$":Ljava/util/Iterator;
    .end local v89    # "infoCache":Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl$GroupInfoCache;
    :cond_19
    if-eqz v75, :cond_1a

    const-string v3, "com.google"

    move-object/from16 v0, v75

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 706
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getRelationList()Ljava/util/ArrayList;

    move-result-object v94

    .line 707
    .local v94, "relationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;>;"
    if-eqz v94, :cond_1b

    .line 708
    invoke-virtual/range {v94 .. v94}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v87

    .restart local v87    # "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface/range {v87 .. v87}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;

    .line 709
    .local v68, "relationEntry":Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v68

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 710
    const/16 v69, 0x0

    move-object/from16 v65, p0

    move-object/from16 v66, v4

    move-object/from16 v67, v5

    move-object/from16 v70, v8

    invoke-direct/range {v65 .. v70}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    goto :goto_c

    .line 716
    .end local v68    # "relationEntry":Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;
    .end local v87    # "i$":Ljava/util/Iterator;
    .end local v94    # "relationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;>;"
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/provider/skycontacts/ContactEntry;->getSipAddress()Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;

    move-result-object v72

    .line 717
    .local v72, "sipAddressEntry":Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;
    if-eqz v72, :cond_1c

    .line 718
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v72

    invoke-direct {v0, v1, v2}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildDiff(Ljava/lang/Long;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 719
    const/16 v73, 0x0

    move-object/from16 v69, p0

    move-object/from16 v70, v4

    move-object/from16 v71, v5

    move-object/from16 v74, v8

    invoke-direct/range {v69 .. v74}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->buildValue(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;ZLjava/lang/String;)V

    .line 723
    :cond_1c
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "com.android.contacts"

    invoke-virtual {v3, v7, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v95

    .line 727
    .local v95, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v95

    array-length v7, v0

    if-ne v3, v7, :cond_1d

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mSpeedDialManager:Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;

    move-object/from16 v0, v96

    invoke-interface {v3, v0}, Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;->refreshSpeedDialData(Ljava/util/HashSet;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 745
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 747
    .end local v95    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v82

    .line 748
    .local v82, "e":Landroid/os/RemoteException;
    const-string v3, "ContactManageHelperImpl"

    const-string v7, "%s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {v82 .. v82}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual/range {v82 .. v82}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v82    # "e":Landroid/os/RemoteException;
    :cond_1d
    :goto_d
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 749
    :catch_1
    move-exception v82

    .line 750
    .local v82, "e":Landroid/content/OperationApplicationException;
    const-string v3, "ContactManageHelperImpl"

    const-string v7, "%s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {v82 .. v82}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual/range {v82 .. v82}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public updateGroup(Lcom/pantech/provider/skycontacts/GroupEntry;)Z
    .locals 12
    .param p1, "entry"    # Lcom/pantech/provider/skycontacts/GroupEntry;

    .prologue
    const/4 v11, 0x0

    .line 1301
    const/4 v0, 0x0

    .line 1303
    .local v0, "fSuccess":Z
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/GroupEntry;->isEditable()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1304
    const-string v8, "ContactManageHelperImpl"

    const-string v9, "this group cannot be modified"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1337
    .end local v0    # "fSuccess":Z
    .local v1, "fSuccess":I
    :goto_0
    return v1

    .line 1308
    .end local v1    # "fSuccess":I
    .restart local v0    # "fSuccess":Z
    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1309
    .local v7, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/GroupEntry;->getId()J

    move-result-wide v3

    .line 1310
    .local v3, "id":J
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-nez v8, :cond_1

    .line 1311
    const-string v8, "ContactManageHelperImpl"

    const-string v9, "group id must be set when update group"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1312
    .restart local v1    # "fSuccess":I
    goto :goto_0

    .line 1315
    .end local v1    # "fSuccess":I
    :cond_1
    sget-object v8, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1317
    .local v2, "groupUri":Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/GroupEntry;->getGrpName()Ljava/lang/String;

    move-result-object v5

    .line 1320
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/GroupEntry;->getAccount()Landroid/accounts/Account;

    move-result-object v8

    invoke-virtual {p1}, Lcom/pantech/provider/skycontacts/GroupEntry;->getId()J

    move-result-wide v9

    invoke-direct {p0, v8, v5, v9, v10}, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->isVaildGroupName(Landroid/accounts/Account;Ljava/lang/String;J)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1321
    const-string v8, "ContactManageHelperImpl"

    const-string v9, "group name is not vaild, check its name is already exist or system group name"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1322
    .restart local v1    # "fSuccess":I
    goto :goto_0

    .line 1325
    .end local v1    # "fSuccess":I
    :cond_2
    if-eqz v5, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1326
    const-string v8, "title"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    iget-object v8, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v2, v7, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1333
    .local v6, "numOfRowUpdate":I
    if-lez v6, :cond_3

    .line 1334
    const/4 v0, 0x1

    .line 1335
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->fRefreshGroupInfo:Z

    :cond_3
    move v1, v0

    .line 1337
    .restart local v1    # "fSuccess":I
    goto :goto_0

    .line 1328
    .end local v1    # "fSuccess":I
    .end local v6    # "numOfRowUpdate":I
    :cond_4
    const-string v8, "ContactManageHelperImpl"

    const-string v9, "group name must be set"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1329
    .restart local v1    # "fSuccess":I
    goto :goto_0
.end method

.method public updateSpeedDial(IJ)Z
    .locals 1
    .param p1, "speedDialValue"    # I
    .param p2, "dataId"    # J

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/ContactManageHelperImpl;->mSpeedDialManager:Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/pantech/provider/skycontacts/speeddial/SpeedDialManager;->updateSpeedDial(IJ)Z

    move-result v0

    return v0
.end method
