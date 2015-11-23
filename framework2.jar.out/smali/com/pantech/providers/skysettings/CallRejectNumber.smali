.class public Lcom/pantech/providers/skysettings/CallRejectNumber;
.super Ljava/lang/Object;
.source "CallRejectNumber.java"


# static fields
.field public static final ACCEPT_CONTENT_URI:Landroid/net/Uri;

.field public static final AUTHORITY:Ljava/lang/String; = "callreject"

.field public static final COLUMN_IDX_ID:I = 0x0

.field public static final COLUMN_IDX_NUMBER:I = 0x1

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_NUMBER:Ljava/lang/String; = "number"

.field static final PROJECTION:[Ljava/lang/String;

.field public static final REJECT_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const-string v0, "content://callreject/reject"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skysettings/CallRejectNumber;->REJECT_CONTENT_URI:Landroid/net/Uri;

    .line 13
    const-string v0, "content://callreject/accept"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skysettings/CallRejectNumber;->ACCEPT_CONTENT_URI:Landroid/net/Uri;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/providers/skysettings/CallRejectNumber;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addNumber(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v2, Lcom/pantech/providers/skysettings/CallRejectNumber;

    monitor-enter v2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_0
    monitor-exit v2

    return v1

    .line 35
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 36
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    const/4 v1, 0x1

    goto :goto_0

    .line 32
    .end local v0    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized addNumbersArray(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;)Z
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v3, Lcom/pantech/providers/skysettings/CallRejectNumber;

    monitor-enter v3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 52
    :goto_0
    monitor-exit v3

    return v2

    .line 45
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Landroid/content/ContentValues;

    .line 47
    .local v0, "cvs":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 48
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v0, v1

    .line 49
    aget-object v4, v0, v1

    const-string v5, "number"

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    const/4 v2, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "cvs":[Landroid/content/ContentValues;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized deleteAll(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 68
    const-class v2, Lcom/pantech/providers/skysettings/CallRejectNumber;

    monitor-enter v2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 69
    :cond_0
    const/4 v1, 0x0

    .line 72
    :goto_0
    monitor-exit v2

    return v1

    .line 70
    :cond_1
    :try_start_0
    const-string v0, "_id NOT NULL"

    .line 71
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    const/4 v1, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized deleteNumber(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 76
    const-class v4, Lcom/pantech/providers/skysettings/CallRejectNumber;

    monitor-enter v4

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v2, v3

    .line 82
    :goto_0
    monitor-exit v4

    return v2

    .line 79
    :cond_1
    :try_start_1
    const-string v0, "number=?"

    .line 80
    .local v0, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    .line 81
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    .end local v0    # "selection":Ljava/lang/String;
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static declared-synchronized getCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 86
    const-class v8, Lcom/pantech/providers/skysettings/CallRejectNumber;

    monitor-enter v8

    const/4 v6, 0x0

    .line 87
    .local v6, "c":Landroid/database/Cursor;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 88
    :try_start_0
    sget-object v2, Lcom/pantech/providers/skysettings/CallRejectNumber;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 90
    :cond_0
    const/4 v7, 0x0

    .line 91
    .local v7, "count":I
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 92
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit v8

    return v7

    .line 86
    .end local v7    # "count":I
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized readNumbers(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 24
    const-class v7, Lcom/pantech/providers/skysettings/CallRejectNumber;

    monitor-enter v7

    const/4 v6, 0x0

    .line 25
    .local v6, "c":Landroid/database/Cursor;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 26
    :try_start_0
    sget-object v2, Lcom/pantech/providers/skysettings/CallRejectNumber;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 28
    :cond_0
    monitor-exit v7

    return-object v6

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized updateNumber(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "oldNumber"    # Ljava/lang/String;
    .param p3, "newNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 56
    const-class v5, Lcom/pantech/providers/skysettings/CallRejectNumber;

    monitor-enter v5

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v3, v4

    .line 64
    :goto_0
    monitor-exit v5

    return v3

    .line 59
    :cond_1
    :try_start_1
    const-string v1, "number=?"

    .line 60
    .local v1, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v2, v4

    .line 61
    .local v2, "selectionArgs":[Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 62
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v4, "number"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "selection":Ljava/lang/String;
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3
.end method
