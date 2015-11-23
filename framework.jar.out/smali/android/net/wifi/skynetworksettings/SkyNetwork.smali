.class public Landroid/net/wifi/skynetworksettings/SkyNetwork;
.super Ljava/lang/Object;
.source "SkyNetwork.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "skynetwork"

.field public static final CHANGE_RETURN_POPUP_FLAG:Ljava/lang/String; = "change_return_popup_flag"

.field public static final CHANGE_RETURN_POPUP_FLAG_DEFAULT:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_NAME:Ljava/lang/String; = "_name"

.field public static final KEY_VALUE:Ljava/lang/String; = "_value"

.field public static final NETWORK_SELECTION_MODE:Ljava/lang/String; = "network_selection_mode"

.field public static final NETWORK_SELECTION_MODE_AUTO:Ljava/lang/String; = "Automatic"

.field public static final NETWORK_SELECTION_MODE_DEFAULT:Ljava/lang/String; = "Automatic"

.field public static final NETWORK_SELECTION_MODE_MANUAL:Ljava/lang/String; = "Manual"

.field public static final WIFI_HOTSPOT_FIRST_ENTRY:Ljava/lang/String; = "wifi_hotspot_first_entry"

.field public static final WIFI_HOTSPOT_FIRST_ENTRY_DEFAULT:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "content://skynetwork/skynetwork"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/skynetworksettings/SkyNetwork;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p0, p1}, Landroid/net/wifi/skynetworksettings/SkyNetwork;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 43
    const-class v10, Landroid/net/wifi/skynetworksettings/SkyNetwork;

    monitor-enter v10

    const/4 v8, 0x0

    .line 44
    .local v8, "strValue":Ljava/lang/String;
    :try_start_0
    sget-object v1, Landroid/net/wifi/skynetworksettings/SkyNetwork;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 46
    .local v6, "cur":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move-object v0, v9

    .line 69
    :goto_0
    monitor-exit v10

    return-object v0

    .line 49
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 52
    :cond_1
    const-string v0, "_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, "strTemp":Ljava/lang/String;
    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v11, :cond_3

    .line 64
    :goto_1
    const-string v0, "_value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 66
    if-eqz v6, :cond_2

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    .line 69
    goto :goto_0

    .line 56
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-ne v0, v11, :cond_5

    .line 57
    if-eqz v6, :cond_4

    .line 58
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v9

    .line 60
    goto :goto_0

    .line 62
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 43
    .end local v6    # "cur":Landroid/database/Cursor;
    .end local v7    # "strTemp":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 104
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/net/wifi/skynetworksettings/SkyNetwork;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    const-class v4, Landroid/net/wifi/skynetworksettings/SkyNetwork;

    monitor-enter v4

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_name= \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 90
    .local v2, "where":Ljava/lang/String;
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "_name"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v3, "_value"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v3, Landroid/net/wifi/skynetworksettings/SkyNetwork;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v1, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    const/4 v3, 0x1

    .line 97
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    monitor-exit v4

    return v3

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/database/SQLException;
    const/4 v3, 0x0

    goto :goto_0

    .line 87
    .end local v0    # "e":Landroid/database/SQLException;
    .end local v2    # "where":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
