.class public Lcom/pantech/providers/skysettings/SKYGestures;
.super Ljava/lang/Object;
.source "SKYGestures.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "skygestures"

.field public static final COLUMN_CATEGORYURI:I = 0x6

.field public static final COLUMN_DEFAULT:I = 0x1

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_NAME:I = 0x3

.field public static final COLUMN_SCORE:I = 0x4

.field public static final COLUMN_THUMBNAIL:I = 0x7

.field public static final COLUMN_TYPE:I = 0x2

.field public static final COLUMN_URI:I = 0x5

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_GESTURE_INTENTURI_BROWSER:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.browser/.BrowserActivity;end"

.field public static final DEFAULT_GESTURE_INTENTURI_CALENDAR:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x14200000;component=com.android.calendar/.AllInOneActivity;end"

.field public static final DEFAULT_GESTURE_INTENTURI_CALL:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.contacts/.activities.PCUDialtactsActivity;end"

.field public static final DEFAULT_GESTURE_INTENTURI_CAMERA:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.vegacamera/.Camera;end"

.field public static final DEFAULT_GESTURE_INTENTURI_EMAIL:Ljava/lang/String; = "#Intent;action=android.intent.action.EMAIL_FOLDER;category=android.intent.category.LAUNCHER;launchFlags=0x34200000;component=com.android.email/.activity.Welcome;end"

.field public static final DEFAULT_GESTURE_INTENTURI_MESSAGE:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x34200000;component=com.pantech.app.mms/.ui.EntryActivity;end"

.field public static final DEFAULT_GESTURE_INTENTURI_NOTEPAD:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.notepad/.NotePadLauncher;end"

.field public static final DEFAULT_GESTURE_INTENTURI_PLAYER:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.music/.MusicStarter;end"

.field public static final DEFAULT_GESTURE_INTENTURI_SMARTVOICE:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.vlingo.odyssey/.gui.ConversationActivity;end"

.field public static final DEFAULT_GESTURE_INTENTURI_SNSMANAGER:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.sns/.activity.MainHomeActivity;end"

.field public static final DEFAULT_GESTURE_INTENTURI_TEXTACTION:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10208000;component=com.pantech.app.textaction/.QuickLauncherActivity;end"

.field public static final DEFAULT_GESTURE_INTENTURI_VNOTE:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10000000;component=com.pantech.app.skypen/.page.SkyPenLauncher;end"

.field public static final DEFAULT_GESTURE_INTENTURI_VVM:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x34200000;component=com.pantech.VVM/.VVMStartActivity;end"

.field public static final DEFAULT_GESTURE_SCORE_BROWSER:I = 0x3

.field public static final DEFAULT_GESTURE_SCORE_CALENDAR:I = 0x3

.field public static final DEFAULT_GESTURE_SCORE_CALL:I = 0x2

.field public static final DEFAULT_GESTURE_SCORE_CAMERA:I = 0x3

.field public static final DEFAULT_GESTURE_SCORE_EMAIL:I = 0x3

.field public static final DEFAULT_GESTURE_SCORE_MESSAGE:I = 0x2

.field public static final DEFAULT_GESTURE_SCORE_NOTEPAD:I = 0x3

.field public static final DEFAULT_GESTURE_SCORE_PLAYER:I = 0x3

.field public static final DEFAULT_GESTURE_SCORE_SMARTVOICE:I = 0x3

.field public static final DEFAULT_GESTURE_SCORE_SNSMANAGER:I = 0x3

.field public static final DEFAULT_GESTURE_SCORE_TEXTACTION:I = 0x3

.field public static final DEFAULT_GESTURE_SCORE_UNLOCK:I = 0xa

.field public static final DEFAULT_GESTURE_SCORE_VNOTE:I = 0x3

.field public static final DEFAULT_GESTURE_SCORE_VVM:I = 0x3

.field public static final GESTUREBIN_PATH:Ljava/lang/String; = "/data/data/com.pantech.providers.skysettings/files/SKYGestures.bin"

.field public static final GESTURE_DEFAULT:I = 0x0

.field public static final GESTURE_THUMBNAIL_COLOR:I = -0x1000000

.field public static final GESTURE_THUMBNAIL_INSET:I = 0x5

.field public static final GESTURE_THUMBNAIL_SIZE:I = 0x41

.field public static final GESTURE_THUMBNAIL_STROKEWIDTH:I = 0x3

.field public static final GESTURE_USER:I = 0x1

.field public static final KEY_CATEGORYURI:Ljava/lang/String; = "_categoryuri"

.field public static final KEY_DEFAULT:Ljava/lang/String; = "_default"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_SCORE:Ljava/lang/String; = "_score"

.field public static final KEY_TITLE:Ljava/lang/String; = "_title"

.field public static final KEY_TYPE:Ljava/lang/String; = "_type"

.field public static final KEY_URI:Ljava/lang/String; = "_uri"

.field public static final SCORE_DEFAULT_VALUE:I = 0x3

.field public static final SCORE_DUPLICATE_VALUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SKYGestures"

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_RELEASE:I = 0x0

.field public static final TYPE_SHORTCUT:I = 0x2


# instance fields
.field private mStore:Landroid/gesture/GestureLibrary;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "content://skygestures/skygestures"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skysettings/SKYGestures;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v0, "SKYGestures"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public static getLabelFromIntentURI(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentURI"    # Ljava/lang/String;

    .prologue
    .line 450
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 453
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 454
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p1}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 456
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 457
    :cond_0
    const-string v4, ""

    .line 468
    .end local v1    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v4

    .line 460
    .restart local v1    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 461
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    .end local v1    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 468
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_2
    const-string v4, ""

    goto :goto_0
.end method

.method public static getSKYGestureIDByIntentURI(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentURI"    # Ljava/lang/String;

    .prologue
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_uri LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "selection":Ljava/lang/String;
    const/4 v7, 0x0

    .line 475
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 478
    .local v6, "ID":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/providers/skysettings/SKYGestures;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 481
    if-eqz v7, :cond_0

    .line 482
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 483
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 485
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 491
    :cond_0
    if-eqz v7, :cond_1

    .line 492
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 493
    const/4 v7, 0x0

    .line 496
    :cond_1
    :goto_0
    return v6

    .line 488
    :catch_0
    move-exception v8

    .line 489
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    if-eqz v7, :cond_1

    .line 492
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 493
    const/4 v7, 0x0

    goto :goto_0

    .line 491
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 492
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 493
    const/4 v7, 0x0

    :cond_2
    throw v0
.end method

.method public static getUserSKYGestureCount(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    const-string v3, "_default LIKE 1"

    .line 427
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 428
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 431
    .local v8, "itemCount":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/providers/skysettings/SKYGestures;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 434
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 439
    if-eqz v6, :cond_0

    .line 440
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 441
    const/4 v6, 0x0

    .line 445
    :cond_0
    :goto_0
    return v8

    .line 436
    :catch_0
    move-exception v7

    .line 437
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    if-eqz v6, :cond_0

    .line 440
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 441
    const/4 v6, 0x0

    goto :goto_0

    .line 439
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 440
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 441
    const/4 v6, 0x0

    :cond_1
    throw v0
.end method

.method private isDeviceEncrypted()Z
    .locals 3

    .prologue
    .line 501
    const-string v1, "ro.crypto.state"

    const-string v2, "unsupported"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "status":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeviceEncrypted ro.crypto.state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/providers/skysettings/SKYGestures;->Log(Ljava/lang/String;)V

    .line 504
    if-eqz v0, :cond_0

    const-string v1, "encrypted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeviceEncrypted vold.decrypt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/providers/skysettings/SKYGestures;->Log(Ljava/lang/String;)V

    .line 507
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    const/4 v1, 0x1

    .line 512
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSKYGesture(Landroid/content/Context;Lcom/pantech/providers/skysettings/SKYGestureInfo;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gestureInfo"    # Lcom/pantech/providers/skysettings/SKYGestureInfo;

    .prologue
    .line 191
    iget-object v3, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    if-nez v3, :cond_0

    .line 192
    const-string v3, "getPredictionList() Guesture store is not loaded."

    invoke-direct {p0, v3}, Lcom/pantech/providers/skysettings/SKYGestures;->Log(Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 197
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "_default"

    iget v4, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mDefault:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v3, "_type"

    iget v4, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v3, "_categoryuri"

    iget-object v4, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mCategoryURI:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v3, "_title"

    iget-object v4, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v3, "_score"

    iget v4, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mScore:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v3, "_uri"

    iget-object v4, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mIntentURI:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/pantech/providers/skysettings/SKYGestures;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 207
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mID:I

    .line 211
    iget-object v3, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    iget-object v4, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mGesture:Landroid/gesture/Gesture;

    invoke-virtual {v3, v0, v4}, Landroid/gesture/GestureLibrary;->addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    .line 212
    iget-object v3, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    invoke-virtual {v3}, Landroid/gesture/GestureLibrary;->save()Z

    goto :goto_0
.end method

.method public checkDuplicateSKYGesture(Landroid/content/Context;Landroid/gesture/Gesture;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gesture"    # Landroid/gesture/Gesture;

    .prologue
    .line 402
    invoke-virtual {p0, p2}, Lcom/pantech/providers/skysettings/SKYGestures;->getPredictionList(Landroid/gesture/Gesture;)Ljava/util/List;

    move-result-object v2

    .line 403
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/gesture/Prediction;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 404
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 405
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/Prediction;

    .line 406
    .local v3, "prediction":Landroid/gesture/Prediction;
    iget-wide v4, v3, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 408
    iget-object v4, v3, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/pantech/providers/skysettings/SKYGestures;->getSKYGuestureInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/pantech/providers/skysettings/SKYGestureInfo;

    move-result-object v0

    .line 409
    .local v0, "gestureInfo":Lcom/pantech/providers/skysettings/SKYGestureInfo;
    iget v4, v0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mID:I

    .line 417
    .end local v0    # "gestureInfo":Lcom/pantech/providers/skysettings/SKYGestureInfo;
    .end local v1    # "index":I
    .end local v3    # "prediction":Landroid/gesture/Prediction;
    :goto_1
    return v4

    .line 404
    .restart local v1    # "index":I
    .restart local v3    # "prediction":Landroid/gesture/Prediction;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v1    # "index":I
    .end local v3    # "prediction":Landroid/gesture/Prediction;
    :cond_1
    const-string v4, "checkDuplicateSKYGesture. no matched gesture"

    invoke-direct {p0, v4}, Lcom/pantech/providers/skysettings/SKYGestures;->Log(Ljava/lang/String;)V

    .line 417
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public deleteGesture(Landroid/content/Context;Lcom/pantech/providers/skysettings/SKYGestureInfo;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gestureInfo"    # Lcom/pantech/providers/skysettings/SKYGestureInfo;

    .prologue
    .line 253
    iget-object v2, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    if-nez v2, :cond_0

    .line 254
    const-string v2, "deleteGesture() Guesture store is not loaded."

    invoke-direct {p0, v2}, Lcom/pantech/providers/skysettings/SKYGestures;->Log(Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 258
    :cond_0
    iget v2, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/gesture/GestureLibrary;->removeEntry(Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    invoke-virtual {v2}, Landroid/gesture/GestureLibrary;->save()Z

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id LIKE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "selection":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/pantech/providers/skysettings/SKYGestures;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAllSKYGestureInfo(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/util/List;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bDefault"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/pantech/providers/skysettings/SKYGestureInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/pantech/providers/skysettings/SKYGestures;->getGestureEntries()Ljava/util/Set;

    move-result-object v0

    .line 331
    .local v0, "gestureEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 352
    :cond_0
    return-object v4

    .line 335
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    .line 336
    .local v5, "length":I
    if-eqz v5, :cond_0

    .line 340
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v4, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/providers/skysettings/SKYGestureInfo;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 342
    .local v1, "gestureName":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lcom/pantech/providers/skysettings/SKYGestures;->getSKYGuestureInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/pantech/providers/skysettings/SKYGestureInfo;

    move-result-object v3

    .line 343
    .local v3, "info":Lcom/pantech/providers/skysettings/SKYGestureInfo;
    if-eqz v3, :cond_2

    .line 347
    iget v6, v3, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mDefault:I

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v6, v7, :cond_2

    .line 348
    invoke-virtual {v3}, Lcom/pantech/providers/skysettings/SKYGestureInfo;->clone()Lcom/pantech/providers/skysettings/SKYGestureInfo;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 347
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getGestureEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    if-nez v0, :cond_0

    .line 161
    const-string v0, "getGestureEntries(). Guesture store is not loaded."

    invoke-direct {p0, v0}, Lcom/pantech/providers/skysettings/SKYGestures;->Log(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    invoke-virtual {v0}, Landroid/gesture/GestureLibrary;->getGestureEntries()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getPredictionList(Landroid/gesture/Gesture;)Ljava/util/List;
    .locals 2
    .param p1, "gesture"    # Landroid/gesture/Gesture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/gesture/Gesture;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v1, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    if-nez v1, :cond_0

    .line 176
    const-string v1, "getPredictionList() Guesture store is not loaded."

    invoke-direct {p0, v1}, Lcom/pantech/providers/skysettings/SKYGestures;->Log(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    invoke-virtual {v1, p1}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v0

    .line 181
    .local v0, "NameList":Ljava/util/List;, "Ljava/util/List<Landroid/gesture/Prediction;>;"
    goto :goto_0
.end method

.method public getSKYGuestureInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/pantech/providers/skysettings/SKYGestureInfo;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gestureName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 274
    iget-object v0, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    invoke-virtual {v0, p2}, Landroid/gesture/GestureLibrary;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 275
    .local v9, "gestureList":Ljava/util/List;, "Ljava/util/List<Landroid/gesture/Gesture;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 276
    :cond_0
    const-string v0, "getGuestureInfo() Gesture list is empty."

    invoke-direct {p0, v0}, Lcom/pantech/providers/skysettings/SKYGestures;->Log(Ljava/lang/String;)V

    .line 325
    :cond_1
    :goto_0
    return-object v10

    .line 280
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 281
    .local v11, "length":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/gesture/Gesture;

    .line 283
    .local v8, "gesture":Landroid/gesture/Gesture;
    const/4 v6, 0x0

    .line 284
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v10, Lcom/pantech/providers/skysettings/SKYGestureInfo;

    invoke-direct {v10}, Lcom/pantech/providers/skysettings/SKYGestureInfo;-><init>()V

    .line 287
    .local v10, "info":Lcom/pantech/providers/skysettings/SKYGestureInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/providers/skysettings/SKYGestures;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 288
    if-eqz v6, :cond_3

    .line 289
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 290
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 292
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mID:I

    .line 293
    const-string v0, "_default"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mDefault:I

    .line 294
    const-string v0, "_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mType:I

    .line 295
    const-string v0, "_categoryuri"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mCategoryURI:Ljava/lang/String;

    .line 296
    const-string v0, "_title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mTitle:Ljava/lang/String;

    .line 297
    const-string v0, "_score"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mScore:I

    .line 298
    const-string v0, "_uri"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mIntentURI:Ljava/lang/String;

    .line 300
    iget v0, v10, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 312
    :goto_1
    :pswitch_0
    iput-object v8, v10, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mGesture:Landroid/gesture/Gesture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :cond_3
    if-eqz v6, :cond_1

    .line 320
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 321
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 308
    :pswitch_1
    :try_start_1
    iget-object v0, v10, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mCategoryURI:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/pantech/providers/skysettings/SKYGestures;->getLabelFromIntentURI(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mCategory:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 316
    :catch_0
    move-exception v7

    .line 317
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    if-eqz v6, :cond_1

    .line 320
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 321
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 319
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 320
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 321
    const/4 v6, 0x0

    :cond_4
    throw v0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSimilarSKYGestureInfo(Landroid/content/Context;Landroid/gesture/Gesture;)Lcom/pantech/providers/skysettings/SKYGestureInfo;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gesture"    # Landroid/gesture/Gesture;

    .prologue
    .line 363
    invoke-virtual {p0, p2}, Lcom/pantech/providers/skysettings/SKYGestures;->getPredictionList(Landroid/gesture/Gesture;)Ljava/util/List;

    move-result-object v1

    .line 364
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/gesture/Prediction;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 365
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/Prediction;

    .line 366
    .local v3, "prediction":Landroid/gesture/Prediction;
    iget-object v4, v3, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/pantech/providers/skysettings/SKYGestures;->getSKYGuestureInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/pantech/providers/skysettings/SKYGestureInfo;

    move-result-object v0

    .line 367
    .local v0, "gestureInfo":Lcom/pantech/providers/skysettings/SKYGestureInfo;
    const-string v4, "getSimilarSKYGestureInfo. prediction gestureInfo check!!"

    invoke-direct {p0, v4}, Lcom/pantech/providers/skysettings/SKYGestures;->Log(Ljava/lang/String;)V

    .line 368
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 370
    iget-wide v4, v3, Landroid/gesture/Prediction;->score:D

    iget v6, v0, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mScore:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 371
    invoke-virtual {v0}, Lcom/pantech/providers/skysettings/SKYGestureInfo;->clone()Lcom/pantech/providers/skysettings/SKYGestureInfo;

    move-result-object v2

    .line 373
    .local v2, "newInfo":Lcom/pantech/providers/skysettings/SKYGestureInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimilarSKYGestureInfo prediction.name =>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/pantech/providers/skysettings/SKYGestures;->Log(Ljava/lang/String;)V

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimilarSKYGestureInfo prediction.score =>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Landroid/gesture/Prediction;->score:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/pantech/providers/skysettings/SKYGestures;->Log(Ljava/lang/String;)V

    .line 376
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimilarSKYGestureInfo newInfo.mTitle =>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/pantech/providers/skysettings/SKYGestures;->Log(Ljava/lang/String;)V

    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimilarSKYGestureInfo newInfo.mScore =>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mScore:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/pantech/providers/skysettings/SKYGestures;->Log(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/pantech/providers/skysettings/SKYGestures;->isDeviceEncrypted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 381
    iget-object v4, v3, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mID:I

    .line 391
    .end local v0    # "gestureInfo":Lcom/pantech/providers/skysettings/SKYGestureInfo;
    .end local v2    # "newInfo":Lcom/pantech/providers/skysettings/SKYGestureInfo;
    .end local v3    # "prediction":Landroid/gesture/Prediction;
    :cond_0
    :goto_0
    return-object v2

    .line 389
    :cond_1
    const-string v4, "getSimilarSKYGestureInfo. no matched gesture"

    invoke-direct {p0, v4}, Lcom/pantech/providers/skysettings/SKYGestures;->Log(Ljava/lang/String;)V

    .line 391
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    const-string v1, "load() Called"

    invoke-direct {p0, v1}, Lcom/pantech/providers/skysettings/SKYGestures;->Log(Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    .line 148
    .local v0, "rtnval":Z
    iget-object v1, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/gesture/GestureLibrary;->setOrientationStyle(I)V

    .line 149
    iget-object v1, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    invoke-virtual {v1}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v0

    .line 151
    return v0
.end method

.method public updateSKYGesture(Landroid/content/Context;Lcom/pantech/providers/skysettings/SKYGestureInfo;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gestureInfo"    # Lcom/pantech/providers/skysettings/SKYGestureInfo;

    .prologue
    .line 222
    iget-object v3, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    if-nez v3, :cond_0

    .line 223
    const-string v3, "updateGesture() Guesture store is not loaded."

    invoke-direct {p0, v3}, Lcom/pantech/providers/skysettings/SKYGestures;->Log(Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "_default"

    iget v4, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mDefault:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const-string v3, "_type"

    iget v4, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    const-string v3, "_categoryuri"

    iget-object v4, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mCategoryURI:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v3, "_title"

    iget-object v4, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v3, "_score"

    iget v4, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mScore:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v3, "_uri"

    iget-object v4, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mIntentURI:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id LIKE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "selection":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/pantech/providers/skysettings/SKYGestures;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 240
    iget v3, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mID:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    invoke-virtual {v3, v0}, Landroid/gesture/GestureLibrary;->removeEntry(Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    iget-object v4, p2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mGesture:Landroid/gesture/Gesture;

    invoke-virtual {v3, v0, v4}, Landroid/gesture/GestureLibrary;->addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    .line 243
    iget-object v3, p0, Lcom/pantech/providers/skysettings/SKYGestures;->mStore:Landroid/gesture/GestureLibrary;

    invoke-virtual {v3}, Landroid/gesture/GestureLibrary;->save()Z

    goto :goto_0
.end method
