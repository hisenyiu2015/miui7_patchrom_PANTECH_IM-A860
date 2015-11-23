.class public Landroid/net/wifi/skynetworksettings/SkyWifiLog;
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

.field public static final KEY_IPADDRESS:Ljava/lang/String; = "_ipaddress"

.field public static final KEY_KEYTYPE:Ljava/lang/String; = "_keytype"

.field public static final KEY_KEYTYPE_BAK:Ljava/lang/String; = "_keytype_bak"

.field public static final KEY_LEASEDURATION:Ljava/lang/String; = "_leaseduration"

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

    sput-object v0, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->SUCCESS_CONTENT_URI:Landroid/net/Uri;

    .line 30
    const-string v0, "content://skywifilogfail/skywifilogfail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->FAIL_CONTENT_URI:Landroid/net/Uri;

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
    .line 69
    const-string v0, "SkyWifiLog"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public static addFail(Landroid/content/Context;Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiloginfo"    # Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;

    .prologue
    .line 126
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_ssid"

    iget-object v3, p1, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "_time"

    iget-wide v3, p1, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    const-string v2, "_keytype"

    iget-object v3, p1, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mKeyType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "_mac_address"

    iget-object v3, p1, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v2, "_errortype"

    iget-object v3, p1, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mErrorType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "_errorcode"

    iget-object v3, p1, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->FAIL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 136
    .local v0, "uri":Landroid/net/Uri;
    return-void
.end method

.method public static addSuccess(Landroid/content/Context;Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiloginfo"    # Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;

    .prologue
    .line 115
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_ssid"

    iget-object v3, p1, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "_time"

    iget-wide v3, p1, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    const-string v2, "_keytype"

    iget-object v3, p1, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mKeyType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "_mac_address"

    iget-object v3, p1, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->SUCCESS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 123
    .local v0, "uri":Landroid/net/Uri;
    return-void
.end method

.method public static deleteFail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id LIKE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->FAIL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    .end local v0    # "selection":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static deleteSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id LIKE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->SUCCESS_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 191
    .end local v0    # "selection":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getFail(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->FAIL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 297
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 298
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 301
    new-instance v7, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;

    invoke-direct {v7}, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;-><init>()V

    .line 302
    .local v7, "info":Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mID:I

    .line 303
    const-string v0, "_ssid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mSSID:Ljava/lang/String;

    .line 304
    const-string v0, "_time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mTime:J

    .line 305
    const-string v0, "_keytype"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mKeyType:Ljava/lang/String;

    .line 306
    const-string v0, "_mac_address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mMacAddress:Ljava/lang/String;

    .line 307
    const-string v0, "_errortype"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mErrorType:Ljava/lang/String;

    .line 308
    const-string v0, "_errorcode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mErrorCode:Ljava/lang/String;

    .line 310
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 318
    .end local v7    # "info":Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
    :goto_0
    return-object v7

    .line 315
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v2

    .line 318
    goto :goto_0
.end method

.method public static getFailCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v7, 0x0

    .line 95
    .local v7, "itemCount":I
    const/4 v6, 0x0

    .line 97
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->FAIL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 98
    if-nez v6, :cond_1

    .line 99
    const/4 v0, 0x0

    .line 106
    if-eqz v6, :cond_0

    .line 107
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    .line 106
    if-eqz v6, :cond_2

    .line 107
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_1
    move v0, v7

    .line 111
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 106
    if-eqz v6, :cond_2

    .line 107
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 108
    :catch_1
    move-exception v0

    goto :goto_1

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    if-eqz v6, :cond_3

    .line 107
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 108
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
            "Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 236
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v9, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->FAIL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_time DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 243
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 248
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

    .line 249
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 250
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p1, :cond_2

    .line 251
    const-string v0, "_ssid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 252
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

    .line 253
    if-eqz v11, :cond_1

    .line 254
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 255
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

    .line 256
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->getFail(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;

    move-result-object v8

    .line 257
    .local v8, "info":Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
    invoke-virtual {v8}, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->cloneFail()Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v8    # "info":Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
    .end local v10    # "nId":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 250
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 264
    .end local v7    # "i":I
    .end local v11    # "strSSID":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 266
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
            "Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 201
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v9, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->SUCCESS_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_time DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 208
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 213
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

    .line 215
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 216
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p1, :cond_2

    .line 217
    const-string v0, "_ssid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 218
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

    .line 219
    if-eqz v11, :cond_1

    .line 220
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 221
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

    .line 222
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->getSuccess(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;

    move-result-object v8

    .line 223
    .local v8, "info":Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
    invoke-virtual {v8}, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->cloneSuccess()Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v8    # "info":Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
    .end local v10    # "nId":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 216
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 230
    .end local v7    # "i":I
    .end local v11    # "strSSID":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 232
    return-object v9
.end method

.method public static getSuccess(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->SUCCESS_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 272
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 276
    new-instance v7, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;

    invoke-direct {v7}, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;-><init>()V

    .line 277
    .local v7, "info":Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mID:I

    .line 278
    const-string v0, "_ssid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mSSID:Ljava/lang/String;

    .line 279
    const-string v0, "_time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mTime:J

    .line 280
    const-string v0, "_keytype"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mKeyType:Ljava/lang/String;

    .line 281
    const-string v0, "_mac_address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;->mMacAddress:Ljava/lang/String;

    .line 283
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 291
    .end local v7    # "info":Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;
    :goto_0
    return-object v7

    .line 288
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v2

    .line 291
    goto :goto_0
.end method

.method public static getSuccessCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v7, 0x0

    .line 74
    .local v7, "itemCount":I
    const/4 v6, 0x0

    .line 76
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->SUCCESS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 77
    if-nez v6, :cond_1

    .line 78
    const/4 v0, 0x0

    .line 85
    if-eqz v6, :cond_0

    .line 86
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    .line 85
    if-eqz v6, :cond_2

    .line 86
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_1
    move v0, v7

    .line 90
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 85
    if-eqz v6, :cond_2

    .line 86
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 87
    :catch_1
    move-exception v0

    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    if-eqz v6, :cond_3

    .line 86
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 87
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

    .line 163
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v8, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->FAIL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_time DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 170
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 171
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 172
    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 173
    move v7, p1

    .local v7, "index":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 174
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 175
    .local v9, "nId":I
    const-string v0, "SkyWifiLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRecentsFail nId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->deleteFail(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 173
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 183
    .end local v7    # "index":I
    .end local v9    # "nId":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 184
    return-void
.end method

.method public static removeOldSuccessItem(Landroid/content/Context;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remainItemNum"    # I

    .prologue
    const/4 v2, 0x0

    .line 139
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v8, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/skynetworksettings/SkyWifiLogInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->SUCCESS_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_time DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 146
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 147
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 148
    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 149
    move v7, p1

    .local v7, "index":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 150
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 151
    .local v9, "nId":I
    const-string v0, "SkyWifiLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRecentsFail nId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/skynetworksettings/SkyWifiLog;->deleteSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 149
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 159
    .end local v7    # "index":I
    .end local v9    # "nId":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 160
    return-void
.end method
