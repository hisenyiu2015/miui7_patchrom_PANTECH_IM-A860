.class public Lcom/pantech/providers/skysettings/SKYDisplay;
.super Ljava/lang/Object;
.source "SKYDisplay.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "skydisplay_set"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FONT_SCALE:Ljava/lang/String; = "font_scale"

.field public static final FONT_SCALE_DEFAULT:I = 0x1

.field public static final FONT_TYPE:Ljava/lang/String; = "font_type"

.field public static final FONT_TYPE_DEFAULT:I = 0x0

.field public static final HOLD_SCREEN_DEFAULT:Ljava/lang/String; = "hold_screen_default"

.field public static final HOLD_SCREEN_PATH:Ljava/lang/String; = "hold_screen_path"

.field public static final HOLD_SCREEN_PATH_DEFAULT:Ljava/lang/String; = "/system/media/images/hold/home_default/wallpaper_001.jpg"

.field public static final HOLD_SCREEN_TYPE:Ljava/lang/String; = "hold_screen_type"

.field public static final HOLD_SCREEN_TYPE_DEFAULT:I = 0x1

.field public static final HOLD_SCREEN_TYPE_GALLERY:I = 0x0

.field public static final HOLD_SCREEN_TYPE_HOME_DEF:I = 0x1

.field public static final HOLD_SCREEN_TYPE_HOME_SETTING:I = 0x2

.field public static final HOLD_STYLE_TYPE:Ljava/lang/String; = "hold_style_type"

.field public static final HOLD_STYLE_TYPE_ANDROID:I = 0x0

.field public static final HOLD_STYLE_TYPE_DEFAULT:I = 0x2

.field public static final HOLD_STYLE_TYPE_GESTURE:I = 0x2

.field public static final HOLD_STYLE_TYPE_GREEN:I = 0x3

.field public static final HOLD_STYLE_TYPE_MODERN:I = 0x1

.field public static final HOLD_STYLE_TYPE_VISUAL:I = 0x4

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_VALUE:Ljava/lang/String; = "value"

.field public static final SCREEN_DIALER:Ljava/lang/String; = "dialer_screen"

.field public static final SCREEN_DIALER_DEFAULT:I = 0x0

.field public static final SCREEN_DIALER_GESTURE:Ljava/lang/String; = "dialer_gesture"

.field public static final SCREEN_DIALER_GESTURE_DEFAULT:I = 0x0

.field public static final SKY_GESTURE_SLIDE_VIEWMODE:Ljava/lang/String; = "sky_gesture_slide_viewmode"

.field public static final SKY_GESTURE_VIEWMODE:Ljava/lang/String; = "sky_gesture_viewmode"

.field public static final SKY_LIGHTING_ALARM:Ljava/lang/String; = "sky_lighing_alarm"

.field public static final SKY_LIGHTING_CALL:Ljava/lang/String; = "sky_lighing_call"

.field public static final SKY_LIGHTING_HOLD:Ljava/lang/String; = "sky_lighing_hold"

.field public static final SKY_LIGHTING_MSG:Ljava/lang/String; = "sky_lighing_msg"

.field public static final VEILVIEW_IMAGE_DEFAULT:I = 0x0

.field public static final VEILVIEW_LEVEL_DEFAULT:I = 0x6

.field public static final VEILVIEW_MODE_DEFAULT:I = 0x0

.field public static final VEIL_IMAGE:Ljava/lang/String; = "veil_image"

.field public static final VEIL_LEVEL:Ljava/lang/String; = "veil_level"

.field public static final VEIL_MODE_STATE:Ljava/lang/String; = "veil_mode_state"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "content://skydisplay_set/skydisplay"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skysettings/SKYDisplay;->CONTENT_URI:Landroid/net/Uri;

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
    .line 118
    invoke-static {p0, p1}, Lcom/pantech/providers/skysettings/SKYDisplay;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 121
    :catch_0
    move-exception v0

    .line 122
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

    .line 86
    const-class v10, Lcom/pantech/providers/skysettings/SKYDisplay;

    monitor-enter v10

    const/4 v8, 0x0

    .line 87
    .local v8, "strValue":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/pantech/providers/skysettings/SKYDisplay;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 89
    .local v6, "cur":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move-object v0, v9

    .line 112
    :goto_0
    monitor-exit v10

    return-object v0

    .line 92
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 95
    :cond_1
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 96
    .local v7, "strTemp":Ljava/lang/String;
    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v11, :cond_3

    .line 107
    :goto_1
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 109
    if-eqz v6, :cond_2

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    .line 112
    goto :goto_0

    .line 99
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-ne v0, v11, :cond_5

    .line 100
    if-eqz v6, :cond_4

    .line 101
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v9

    .line 103
    goto :goto_0

    .line 105
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 86
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
    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/pantech/providers/skysettings/SKYDisplay;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 130
    const-class v4, Lcom/pantech/providers/skysettings/SKYDisplay;

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

    .line 133
    .local v2, "where":Ljava/lang/String;
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 134
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v3, "value"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v3, Lcom/pantech/providers/skysettings/SKYDisplay;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v1, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    const/4 v3, 0x1

    .line 140
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    monitor-exit v4

    return v3

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/database/SQLException;
    const/4 v3, 0x0

    goto :goto_0

    .line 130
    .end local v0    # "e":Landroid/database/SQLException;
    .end local v2    # "where":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
