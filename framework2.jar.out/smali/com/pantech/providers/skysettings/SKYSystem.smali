.class public Lcom/pantech/providers/skysettings/SKYSystem;
.super Ljava/lang/Object;
.source "SKYSystem.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "skysystem_set"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final Carrier:I = 0x0

.field public static final Device:I = 0x1

.field public static final KEY_BACKTOUCH_ENABLE:Ljava/lang/String; = "backtouch_enable"

.field public static final KEY_BACKTOUCH_TARGET_CLASS:Ljava/lang/String; = "double_touch_target_class"

.field public static final KEY_BACKTOUCH_TARGET_PACKAGE:Ljava/lang/String; = "double_touch_target_package"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_LOCK_HANDSET_MODE:Ljava/lang/String; = "handset_lock"

.field public static final KEY_MODEL:Ljava/lang/String; = "model"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_SHOW_SETTINGS_WHEN_USB_CONNECTED:Ljava/lang/String; = "show_settings_when_usb_connected"

.field public static final KEY_SPEAKER_DOCK_SETTING:Ljava/lang/String; = "speaker_dock_setting"

.field public static final KEY_SYSTEM_AIRPLANE_MODE:Ljava/lang/String; = "airplane_mode"

.field public static final KEY_SYSTEM_AUTO_STORE_MODE:Ljava/lang/String; = "auto_store_mode"

.field public static final KEY_SYSTEM_AUTO_TIME:Ljava/lang/String; = "auto_time"

.field public static final KEY_SYSTEM_ENABLE_MENU_MODE:Ljava/lang/String; = "enable_menu_mode"

.field public static final KEY_SYSTEM_LOCALE:Ljava/lang/String; = "locale_mode"

.field public static final KEY_SYSTEM_MENUAL_TIME:Ljava/lang/String; = "menual_time"

.field public static final KEY_SYSTEM_PASSWORD_ENABLE:Ljava/lang/String; = "enable_password"

.field public static final KEY_SYSTEM_PASSWORD_ISEXISTPASSWORD:Ljava/lang/String; = "isexist_password"

.field public static final KEY_SYSTEM_PASSWORD_STRING:Ljava/lang/String; = "password_string"

.field public static final KEY_SYSTEM_PATTERN_ENABLE:Ljava/lang/String; = "pattern_enable"

.field public static final KEY_SYSTEM_PATTERN_MASK:Ljava/lang/String; = "pattern_mask"

.field public static final KEY_URI:Ljava/lang/String; = "uri"

.field public static final KEY_VALUE:Ljava/lang/String; = "value"

.field public static final KEY_VR_FILE_PATH:Ljava/lang/String; = "voice_record_file_path"

.field public static final KEY_VR_PLAY_TYPE:Ljava/lang/String; = "voice_record_play_type"

.field public static final KEY_VR_VOLUME:Ljava/lang/String; = "voice_record_vol"

.field public static final KEY_XPEN_ENABLE:Ljava/lang/String; = "xpen_enable"

.field public static final KEY_XPEN_ENABLE_POINTER:Ljava/lang/String; = "xpen_enable_pointer"

.field public static final KEY_XPEN_INPUT_SIDE:Ljava/lang/String; = "xpen_input_side"

.field public static final KEY_XPEN_INPUT_SIZE:Ljava/lang/String; = "xpen_input_size"

.field public static final KEY_XPEN_POINTER_TYPE:Ljava/lang/String; = "xpen_pointer_type"

.field public static final KTF:I = 0x1

.field public static final LGT:I = 0x2

.field public static final SKT:I = 0x0

.field public static final UnistallDisabledPackageList:[Ljava/lang/String;

.field public static final XPEN_INPUT_LEFT_SIDE:I = 0x1

.field public static final XPEN_INPUT_RIGHT_SIDE:I = 0x0

.field public static final XPEN_INPUT_SIZE_720x1280:I = 0x0

.field public static final XPEN_INPUT_SIZE_A4:I = 0x2

.field public static final XPEN_INPUT_SIZE_A6:I = 0x1

.field public static final XPEN_INPUT_SIZE_MID_1224x2176:I = 0x2

.field public static final XPEN_INPUT_SIZE_MID_936x1664:I = 0x1

.field public static final XPEN_INPUT_SIZE_PHONE:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-string v0, "content://skysystem_set/skysystem"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skysettings/SKYSystem;->CONTENT_URI:Landroid/net/Uri;

    .line 303
    const/16 v0, 0x34

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.pantech.app.weather"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.pantech.app.simplehomeweather"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.pantech.app.simplehomeweatherapp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.pantech.app.skyweatherwidget"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.exchange"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.pantech.app.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.providers.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.pantech.app.vegacamera"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.pantech.app.wfdvtp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.pantech.app.dlna"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.pantech.app.textaction"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.pantech.app.miracast"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.android.providers.media"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.android.facelock"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.pantech.app.apkmanager"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.pantech.app.lbs.platform"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.pantech.app.movie"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.pantech.app.music"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.vlingo.odyssey"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.android.providers.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.pantech.app.voiceguide"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.pantech.app.appcontrolguide"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.pantech.app.devicecontrolguide"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.android.providers.downloads"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.skt.skaf.A000Z00040"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.skt.skaf.Z00000TAPI"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.skt.skaf.OA00018282"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.skt.skaf.Z0000OMPDL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.skt.skaf.Z0000SLOAD"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.skt.skaf.Z0000TSEED"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.skt.skaf.CID00SID02"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.skt.skaf.Z000Z00028"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.skt.prod.dialer"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.skt.prod.phone"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.skt.prod.phonebook"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.lguplus.common.wificm.mwlan"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.lguplus.common_api_impl"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.lguplus.appstore"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "android.lgt.appstore"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.lguplus.downloader"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "com.lguplus.installer"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "com.lgt.arm"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "com.lguplus.common"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "com.lguplus.wipi"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "com.lguplus.common.contents.manager"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "com.uplus.ipagent"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "com.google.android.tts"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "lgt.call"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "com.pineone.easyRoamingService"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/providers/skysettings/SKYSystem;->UnistallDisabledPackageList:[Ljava/lang/String;

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
    .line 386
    invoke-static {p0, p1}, Lcom/pantech/providers/skysettings/SKYSystem;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 361
    const-class v9, Lcom/pantech/providers/skysettings/SKYSystem;

    monitor-enter v9

    :try_start_0
    sget-object v1, Lcom/pantech/providers/skysettings/SKYSystem;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 363
    .local v6, "cur":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 382
    :cond_0
    :goto_0
    monitor-exit v9

    return-object v8

    .line 367
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 370
    :cond_2
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 371
    .local v7, "strTemp":Ljava/lang/String;
    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 376
    :goto_1
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 378
    .local v8, "strValue":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 379
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 361
    .end local v6    # "cur":Landroid/database/Cursor;
    .end local v7    # "strTemp":Ljava/lang/String;
    .end local v8    # "strValue":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 374
    .restart local v6    # "cur":Landroid/database/Cursor;
    .restart local v7    # "strTemp":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 411
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/pantech/providers/skysettings/SKYSystem;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 396
    const-class v4, Lcom/pantech/providers/skysettings/SKYSystem;

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

    .line 399
    .local v2, "where":Ljava/lang/String;
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 400
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v3, "value"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sget-object v3, Lcom/pantech/providers/skysettings/SKYSystem;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v1, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    const/4 v3, 0x1

    .line 406
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    monitor-exit v4

    return v3

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Landroid/database/SQLException;
    const/4 v3, 0x0

    goto :goto_0

    .line 396
    .end local v0    # "e":Landroid/database/SQLException;
    .end local v2    # "where":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
