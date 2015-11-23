.class public Lcom/pantech/providers/skynetworksettings/SkyWifiLog;
.super Ljava/lang/Object;
.source "SkyWifiLog.java"


# static fields
.field public static final COLUMN_ERRORTYPE:I = 0x5

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_KEYTYPE:I = 0x3

.field public static final COLUMN_MACADDRESS:I = 0x4

.field public static final COLUMN_SSID:I = 0x1

.field public static final COLUMN_TIME:I = 0x2

.field public static final ERROR_DHCP:I = 0x3

.field public static final ERROR_DNS:I = 0x1

.field public static final ERROR_IP:I = 0x2

.field public static final ERROR_PASSWORD:I = 0x0

.field public static final ERROR_STATIC_IP:I = 0x4

.field public static final FAIL_AUTHORITY:Ljava/lang/String; = "skywifilogfail"

.field public static final FAIL_CONTENT_URI:Landroid/net/Uri;

.field public static final KEY_ERRORCODE:Ljava/lang/String; = "_errorcode"

.field public static final KEY_ERRORCODE_BAK:Ljava/lang/String; = "_errorcode_bak"

.field public static final KEY_ERRORTYPE:Ljava/lang/String; = "_errortype"

.field public static final KEY_ERRORTYPE_BAK:Ljava/lang/String; = "_errortype_bak"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_ID_BAK:Ljava/lang/String; = "_id_bak"

.field public static final KEY_KEYTYPE:Ljava/lang/String; = "_keytype"

.field public static final KEY_KEYTYPE_BAK:Ljava/lang/String; = "_keytype_bak"

.field public static final KEY_MACADDRESS:Ljava/lang/String; = "_mac_address"

.field public static final KEY_MACADDRESS_BAK:Ljava/lang/String; = "_mac_address_bak"

.field public static final KEY_SSID:Ljava/lang/String; = "_ssid"

.field public static final KEY_SSID_BAK:Ljava/lang/String; = "_ssid_bak"

.field public static final KEY_TIME:Ljava/lang/String; = "_time"

.field public static final KEY_TIME_BAK:Ljava/lang/String; = "_time_bak"

.field public static final SUCCESS_AUTHORITY:Ljava/lang/String; = "skywifilogsuccess"

.field public static final SUCCESS_CONTENT_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SkyWifiLog"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "content://skywifilogsuccess/skywifilogsuccess"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->SUCCESS_CONTENT_URI:Landroid/net/Uri;

    .line 30
    const-string v0, "content://skywifilogfail/skywifilogfail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->FAIL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "SkyWifiLog"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public static addFail(Landroid/content/Context;Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiloginfo"    # Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;

    .prologue
    .line 126
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_ssid"

    iget-object v3, p1, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "_time"

    iget-wide v3, p1, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    const-string v2, "_keytype"

    iget-object v3, p1, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mKeyType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "_mac_address"

    iget-object v3, p1, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v2, "_errortype"

    iget-object v3, p1, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mErrorType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "_errorcode"

    iget-object v3, p1, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->FAIL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "SkyWifiLog"

    const-string v3, "Exception unknown addFail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static addSuccess(Landroid/content/Context;Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiloginfo"    # Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;

    .prologue
    .line 111
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_ssid"

    iget-object v3, p1, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "_time"

    iget-wide v3, p1, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    const-string v2, "_keytype"

    iget-object v3, p1, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mKeyType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "_mac_address"

    iget-object v3, p1, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->SUCCESS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "SkyWifiLog"

    const-string v3, "Exception unknown addSuccess"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteFail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 198
    if-eqz p1, :cond_0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id LIKE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->FAIL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 202
    .end local v0    # "selection":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static deleteSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id LIKE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->SUCCESS_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    .end local v0    # "selection":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getFail(Landroid/content/Context;Ljava/lang/String;)Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->FAIL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 301
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 302
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 305
    new-instance v7, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;

    invoke-direct {v7}, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;-><init>()V

    .line 306
    .local v7, "info":Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mID:I

    .line 307
    const-string v0, "_ssid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mSSID:Ljava/lang/String;

    .line 308
    const-string v0, "_time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mTime:J

    .line 309
    const-string v0, "_keytype"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mKeyType:Ljava/lang/String;

    .line 310
    const-string v0, "_mac_address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mMacAddress:Ljava/lang/String;

    .line 311
    const-string v0, "_errortype"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mErrorType:Ljava/lang/String;

    .line 312
    const-string v0, "_errorcode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mErrorCode:Ljava/lang/String;

    .line 314
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 322
    .end local v7    # "info":Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;
    :goto_0
    return-object v7

    .line 319
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v2

    .line 322
    goto :goto_0
.end method

.method public static getFailCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v7, 0x0

    .line 91
    .local v7, "itemCount":I
    const/4 v6, 0x0

    .line 93
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->FAIL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 94
    if-nez v6, :cond_1

    .line 95
    const/4 v0, 0x0

    .line 102
    if-eqz v6, :cond_0

    .line 103
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    .line 102
    if-eqz v6, :cond_2

    .line 103
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_1
    move v0, v7

    .line 107
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 102
    if-eqz v6, :cond_2

    .line 103
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 104
    :catch_1
    move-exception v0

    goto :goto_1

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    if-eqz v6, :cond_3

    .line 103
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 104
    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public static getListWifiFailLog(Landroid/content/Context;I)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 240
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v9, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->FAIL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_time DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 247
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 248
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 249
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 252
    :cond_0
    const-string v0, "SkyWifiLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getListWifiFailLog max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 254
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p1, :cond_2

    .line 255
    const-string v0, "_ssid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 256
    .local v11, "strSSID":Ljava/lang/String;
    const-string v0, "SkyWifiLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiFailLog nstrSSID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz v11, :cond_1

    .line 258
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 259
    .local v10, "nId":I
    const-string v0, "SkyWifiLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiFailLog nId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->getFail(Landroid/content/Context;Ljava/lang/String;)Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;

    move-result-object v8

    .line 261
    .local v8, "info":Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;
    invoke-virtual {v8}, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->cloneFail()Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v8    # "info":Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;
    .end local v10    # "nId":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 254
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 268
    .end local v7    # "i":I
    .end local v11    # "strSSID":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 270
    return-object v9
.end method

.method public static getListWifiSuccessLog(Landroid/content/Context;I)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 205
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v9, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->SUCCESS_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_time DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 212
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 213
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 215
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 217
    :cond_0
    const-string v0, "SkyWifiLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getListWifiSuccessLog max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 220
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p1, :cond_2

    .line 221
    const-string v0, "_ssid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 222
    .local v11, "strSSID":Ljava/lang/String;
    const-string v0, "SkyWifiLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getListWifiSuccessLog nstrSSID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-eqz v11, :cond_1

    .line 224
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 225
    .local v10, "nId":I
    const-string v0, "SkyWifiLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getListWifiSuccessLog nId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->getSuccess(Landroid/content/Context;Ljava/lang/String;)Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;

    move-result-object v8

    .line 227
    .local v8, "info":Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;
    invoke-virtual {v8}, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->cloneSuccess()Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v8    # "info":Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;
    .end local v10    # "nId":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 220
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 234
    .end local v7    # "i":I
    .end local v11    # "strSSID":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 236
    return-object v9
.end method

.method public static getSuccess(Landroid/content/Context;Ljava/lang/String;)Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->SUCCESS_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 276
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 277
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 280
    new-instance v7, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;

    invoke-direct {v7}, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;-><init>()V

    .line 281
    .local v7, "info":Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mID:I

    .line 282
    const-string v0, "_ssid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mSSID:Ljava/lang/String;

    .line 283
    const-string v0, "_time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mTime:J

    .line 284
    const-string v0, "_keytype"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mKeyType:Ljava/lang/String;

    .line 285
    const-string v0, "_mac_address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;->mMacAddress:Ljava/lang/String;

    .line 287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 295
    .end local v7    # "info":Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;
    :goto_0
    return-object v7

    .line 292
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v2

    .line 295
    goto :goto_0
.end method

.method public static getSuccessCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v7, 0x0

    .line 70
    .local v7, "itemCount":I
    const/4 v6, 0x0

    .line 72
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->SUCCESS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 73
    if-nez v6, :cond_1

    .line 74
    const/4 v0, 0x0

    .line 81
    if-eqz v6, :cond_0

    .line 82
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    .line 81
    if-eqz v6, :cond_2

    .line 82
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_1
    move v0, v7

    .line 86
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 81
    if-eqz v6, :cond_2

    .line 82
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 83
    :catch_1
    move-exception v0

    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    if-eqz v6, :cond_3

    .line 82
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 83
    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public static removeOldFailItem(Landroid/content/Context;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remainItemNum"    # I

    .prologue
    const/4 v2, 0x0

    .line 167
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v8, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->FAIL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_time DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 174
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 176
    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 177
    move v7, p1

    .local v7, "index":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 178
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 179
    .local v9, "nId":I
    const-string v0, "SkyWifiLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecentsFail nId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->deleteFail(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 177
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 187
    .end local v7    # "index":I
    .end local v9    # "nId":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 188
    return-void
.end method

.method public static removeOldSuccessItem(Landroid/content/Context;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remainItemNum"    # I

    .prologue
    const/4 v2, 0x0

    .line 143
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v8, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/providers/skynetworksettings/SkyWifiLogInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->SUCCESS_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_time DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 150
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 151
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 152
    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 153
    move v7, p1

    .local v7, "index":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 154
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 155
    .local v9, "nId":I
    const-string v0, "SkyWifiLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecentsFail nId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pantech/providers/skynetworksettings/SkyWifiLog;->deleteSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 153
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 163
    .end local v7    # "index":I
    .end local v9    # "nId":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 164
    return-void
.end method
