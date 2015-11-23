.class public Lcom/pantech/providers/networksettings/NetworkSettings;
.super Ljava/lang/Object;
.source "NetworkSettings.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "networksettings"

.field public static final COLUMN_IDX_EXCLUDED:I = 0x2

.field public static final COLUMN_IDX_ID:I = 0x0

.field public static final COLUMN_IDX_SSID:I = 0x1

.field public static final EXCLUDED_AP_LIST_CONTENT_URI:Landroid/net/Uri;

.field public static final KEY_EXCLUDED:Ljava/lang/String; = "excluded"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_SSID:Ljava/lang/String; = "ssid"

.field static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const-string v0, "content://networksettings/excluded"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/networksettings/NetworkSettings;->EXCLUDED_AP_LIST_CONTENT_URI:Landroid/net/Uri;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ssid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "excluded"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/providers/networksettings/NetworkSettings;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addAp(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 53
    const-class v2, Lcom/pantech/providers/networksettings/NetworkSettings;

    monitor-enter v2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 63
    :goto_0
    monitor-exit v2

    return v1

    .line 56
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "ssid"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v3, "excluded"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 61
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    .end local v0    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized deleteAll(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 80
    const-class v2, Lcom/pantech/providers/networksettings/NetworkSettings;

    monitor-enter v2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 81
    :cond_0
    const/4 v1, 0x0

    .line 87
    :goto_0
    monitor-exit v2

    return v1

    .line 82
    :cond_1
    :try_start_0
    const-string v0, "_id NOT NULL"

    .line 83
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 85
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const/4 v1, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized deleteAp(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 67
    const-class v4, Lcom/pantech/providers/networksettings/NetworkSettings;

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

    .line 76
    :goto_0
    monitor-exit v4

    return v2

    .line 70
    :cond_1
    :try_start_1
    const-string v0, "ssid=?"

    .line 71
    .local v0, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    .line 72
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    .end local v0    # "selection":Ljava/lang/String;
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public static declared-synchronized findAp(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 25
    const-class v8, Lcom/pantech/providers/networksettings/NetworkSettings;

    monitor-enter v8

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v7

    .line 38
    :goto_0
    monitor-exit v8

    return-object v0

    .line 28
    :cond_1
    :try_start_1
    const-string v3, "ssid=?"

    .line 29
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 33
    :try_start_2
    sget-object v2, Lcom/pantech/providers/networksettings/NetworkSettings;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v6

    .line 36
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v0, v7

    .line 38
    goto :goto_0

    .line 25
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized getCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 106
    const-class v8, Lcom/pantech/providers/networksettings/NetworkSettings;

    monitor-enter v8

    const/4 v6, 0x0

    .line 107
    .local v6, "c":Landroid/database/Cursor;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 108
    :try_start_0
    sget-object v2, Lcom/pantech/providers/networksettings/NetworkSettings;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    :cond_0
    const/4 v7, 0x0

    .line 111
    .local v7, "count":I
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 112
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit v8

    return v7

    .line 106
    .end local v7    # "count":I
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized getFullList(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 43
    const-class v8, Lcom/pantech/providers/networksettings/NetworkSettings;

    monitor-enter v8

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 44
    :try_start_0
    sget-object v2, Lcom/pantech/providers/networksettings/NetworkSettings;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 49
    :goto_0
    monitor-exit v8

    return-object v0

    .line 46
    :catch_0
    move-exception v6

    .line 47
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v0, v7

    .line 49
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized setExclusion(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;I)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "exclusion"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 91
    const-class v5, Lcom/pantech/providers/networksettings/NetworkSettings;

    monitor-enter v5

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v3, v4

    .line 102
    :goto_0
    monitor-exit v5

    return v3

    .line 94
    :cond_1
    :try_start_1
    const-string v1, "ssid=?"

    .line 95
    .local v1, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v2, v4

    .line 96
    .local v2, "selectionArgs":[Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v4, "excluded"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "selection":Ljava/lang/String;
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3
.end method
