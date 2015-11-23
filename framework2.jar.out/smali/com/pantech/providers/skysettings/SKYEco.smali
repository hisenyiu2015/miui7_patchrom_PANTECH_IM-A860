.class public Lcom/pantech/providers/skysettings/SKYEco;
.super Ljava/lang/Object;
.source "SKYEco.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "skyeco_set"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_ECO_BATT_LEVEL:I = 0x1e

.field public static final DEFAULT_ECO_BATT_LEV_CHECK_ENABLE:Z = false

.field public static final DEFAULT_ECO_HARDWARE_ENABLE:Z = false

.field public static final DEFAULT_ECO_MODE_ENABLE:Z = false

.field public static final DEFAULT_ECO_NOBUTTON_CLICKED:Z = false

.field public static final DEFAULT_ECO_OPTION_BG_DATA:Z = true

.field public static final DEFAULT_ECO_OPTION_BR:Z = true

.field public static final DEFAULT_ECO_OPTION_BT:Z = true

.field public static final DEFAULT_ECO_OPTION_CPU:Z = false

.field public static final DEFAULT_ECO_OPTION_GPS:Z = true

.field public static final DEFAULT_ECO_OPTION_HAPTIC:Z = true

.field public static final DEFAULT_ECO_OPTION_NFC:Z = true

.field public static final DEFAULT_ECO_OPTION_TIMEOUT:Z = true

.field public static final DEFAULT_ECO_OPTION_WIFI:Z = true

.field public static final DEFAULT_ECO_SESSION_ON:Z = false

.field public static final DEFAULT_ECO_SOFTWARE_ENABLE:Z = false

.field public static final ECO_BACKUP_BG_DATA_OLD:Ljava/lang/String; = "eco_backup_bg_data_old"

.field public static final ECO_BACKUP_BRIGHTNESS_AUTO:Ljava/lang/String; = "eco_backup_brightness_auto"

.field public static final ECO_BACKUP_BRIGHTNESS_MODE_OLD:Ljava/lang/String; = "eco_backup_brightness__mode_old"

.field public static final ECO_BACKUP_BRIGHTNESS_OLD:Ljava/lang/String; = "eco_backup_brightness_old"

.field public static final ECO_BACKUP_BT:Ljava/lang/String; = "eco_backup_bt"

.field public static final ECO_BACKUP_CPU:Ljava/lang/String; = "eco_backup_cpu"

.field public static final ECO_BACKUP_GPS:Ljava/lang/String; = "eco_backup_gps"

.field public static final ECO_BACKUP_HAPTIC_OLD:Ljava/lang/String; = "eco_backup_haptic_old"

.field public static final ECO_BACKUP_NFC:Ljava/lang/String; = "eco_backup_nfc"

.field public static final ECO_BACKUP_SOUND_OLD:Ljava/lang/String; = "eco_backup_sound_old"

.field public static final ECO_BACKUP_TIMEOUT_OLD:Ljava/lang/String; = "eco_backup_timeout_old"

.field public static final ECO_BACKUP_WIFI:Ljava/lang/String; = "eco_backup_wifi"

.field public static final ECO_BATT_LEVEL:Ljava/lang/String; = "eco_batt_level"

.field public static final ECO_BATT_LEV_CHECK_ENABLE:Ljava/lang/String; = "eco_batt_lev_check_enable"

.field public static final ECO_HARDWARE_MODE_ENABLE:Ljava/lang/String; = "eco_hardware_mode_enable"

.field public static final ECO_MODE_ENABLE:Ljava/lang/String; = "eco_mode_enable"

.field public static final ECO_NOBUTTON_CLICKED:Ljava/lang/String; = "eco_nobutton_clicked"

.field public static final ECO_OPTION_BG_DATA:Ljava/lang/String; = "eco_option_bg_data"

.field public static final ECO_OPTION_BRIGHTNESS:Ljava/lang/String; = "eco_option_brightness"

.field public static final ECO_OPTION_BR_LEVEL:Ljava/lang/String; = "eco_option_br_level"

.field public static final ECO_OPTION_BR_MODE:Ljava/lang/String; = "eco_option_br_mode"

.field public static final ECO_OPTION_BT:Ljava/lang/String; = "eco_option_bt"

.field public static final ECO_OPTION_CPU:Ljava/lang/String; = "eco_option_cpu"

.field public static final ECO_OPTION_GPS:Ljava/lang/String; = "eco_option_gps"

.field public static final ECO_OPTION_HAPTIC:Ljava/lang/String; = "eco_option_haptic"

.field public static final ECO_OPTION_NFC:Ljava/lang/String; = "eco_option_nfc"

.field public static final ECO_OPTION_TIMEOUT:Ljava/lang/String; = "eco_option_timeout"

.field public static final ECO_OPTION_WIFI:Ljava/lang/String; = "eco_option_wifi"

.field public static final ECO_POWER_CONNECTED:Ljava/lang/String; = "eco_power_connected"

.field public static final ECO_POWER_LEVEL:Ljava/lang/String; = "eco_power_level"

.field public static final ECO_SESSION_ON:Ljava/lang/String; = "eco_session_on"

.field public static final ECO_SOFTWARE_MODE_ENABLE:Ljava/lang/String; = "eco_software_mode_enable"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "content://skyeco_set/skyeco"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skysettings/SKYEco;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 121
    const-class v3, Lcom/pantech/providers/skysettings/SKYEco;

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1}, Lcom/pantech/providers/skysettings/SKYEco;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 123
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_1
    const-string v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    const/4 v2, 0x1

    .line 131
    :cond_0
    :goto_0
    monitor-exit v3

    return v2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "v":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 112
    const-class v3, Lcom/pantech/providers/skysettings/SKYEco;

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1}, Lcom/pantech/providers/skysettings/SKYEco;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 114
    .local v1, "v":Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "v":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 80
    const-class v10, Lcom/pantech/providers/skysettings/SKYEco;

    monitor-enter v10

    const/4 v8, 0x0

    .line 81
    .local v8, "strValue":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/pantech/providers/skysettings/SKYEco;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 83
    .local v6, "cur":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move-object v0, v9

    .line 108
    :goto_0
    monitor-exit v10

    return-object v0

    .line 87
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 90
    :cond_1
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "strTemp":Ljava/lang/String;
    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v11, :cond_3

    .line 102
    :goto_1
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 104
    if-eqz v6, :cond_2

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    .line 108
    goto :goto_0

    .line 94
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-ne v0, v11, :cond_5

    .line 95
    if-eqz v6, :cond_4

    .line 96
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v9

    .line 98
    goto :goto_0

    .line 100
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 80
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
    .line 153
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 138
    const-class v4, Lcom/pantech/providers/skysettings/SKYEco;

    monitor-enter v4

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name= \'"

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

    .line 141
    .local v2, "where":Ljava/lang/String;
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 142
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v3, "value"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v3, Lcom/pantech/providers/skysettings/SKYEco;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v1, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    const/4 v3, 0x1

    .line 148
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    monitor-exit v4

    return v3

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/database/SQLException;
    const/4 v3, 0x0

    goto :goto_0

    .line 138
    .end local v0    # "e":Landroid/database/SQLException;
    .end local v2    # "where":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
