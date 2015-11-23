.class public Lcom/android/server/PowerSaverService;
.super Landroid/os/Binder;
.source "PowerSaverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_POWERSAVER_READ_FILE:Ljava/lang/String; = "ACTION_POWERSAVER_READ_FILE"

.field public static final ACTION_POWERSAVER_TURN_OFF:Ljava/lang/String; = "ACTION_POWERSAVER_TURN_OFF"

.field public static final ACTION_POWERSAVER_TURN_ON:Ljava/lang/String; = "ACTION_POWERSAVER_TURN_ON"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static DEBUG:Z = false

.field public static final POWER_SAVER_OFF:I = 0x0

.field public static final POWER_SAVER_ON:I = 0x1

.field public static final POWER_SAVER_READ_COMPLETE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "powerSaverService"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static sInstance:Lcom/android/server/PowerSaverService;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBroadcastList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRestrictedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictedListFile:Ljava/io/File;

.field private mRestrictedUIDs:[I

.field private mScreenOn:Z

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/PowerSaverService;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerSaverService;->mScreenOn:Z

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/PowerSaverService;->mStatus:I

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/PowerSaverService;->mRestrictedUIDs:[I

    .line 93
    new-instance v0, Ljava/io/File;

    const-string v1, "data"

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "restrictions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerSaverService;->mRestrictedListFile:Ljava/io/File;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/PowerSaverService;->mRestrictedList:Ljava/util/ArrayList;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/PowerSaverService;->mBroadcastList:Ljava/util/ArrayList;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PowerSaverService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerSaverService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/PowerSaverService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/PowerSaverService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerSaverService;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/server/PowerSaverService;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/PowerSaverService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerSaverService;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/server/PowerSaverService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/server/PowerSaverService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/PowerSaverService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerSaverService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/PowerSaverService;->mBroadcastList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PowerSaverService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerSaverService;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/server/PowerSaverService;->mStatus:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/PowerSaverService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerSaverService;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/android/server/PowerSaverService;->mStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/PowerSaverService;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerSaverService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerSaverService;->startBroadcast(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/PowerSaverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerSaverService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/PowerSaverService;->readRestrictedListLocked()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/PowerSaverService;
    .locals 2

    .prologue
    .line 85
    const-class v1, Lcom/android/server/PowerSaverService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/PowerSaverService;->sInstance:Lcom/android/server/PowerSaverService;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/server/PowerSaverService;

    invoke-direct {v0}, Lcom/android/server/PowerSaverService;-><init>()V

    sput-object v0, Lcom/android/server/PowerSaverService;->sInstance:Lcom/android/server/PowerSaverService;

    .line 89
    :cond_0
    sget-object v0, Lcom/android/server/PowerSaverService;->sInstance:Lcom/android/server/PowerSaverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readRestrictedListLocked()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 129
    sget-boolean v7, Lcom/android/server/PowerSaverService;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "powerSaverService"

    const-string v8, "readRestrictedListLocked()"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    iget-object v7, p0, Lcom/android/server/PowerSaverService;->mRestrictedListFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 132
    const-string v7, "powerSaverService"

    const-string v8, "No exist RestrictedList file"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    iget-object v7, p0, Lcom/android/server/PowerSaverService;->mRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/server/PowerSaverService;->mRestrictedListFile:Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 142
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v5, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 145
    :cond_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v9, :cond_4

    if-ne v6, v10, :cond_3

    .line 149
    :cond_4
    if-eq v6, v9, :cond_5

    .line 150
    const-string v7, "powerSaverService"

    const-string v8, "Unable to read user list"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    if-eqz v2, :cond_1

    .line 179
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 180
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_0
    move-exception v7

    goto :goto_0

    .line 154
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_5
    :goto_1
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v10, :cond_6

    .line 155
    if-ne v6, v9, :cond_5

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "user"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 157
    const/4 v7, 0x0

    const-string v8, "id"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/PowerSaverService;->mRestrictedList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 173
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 174
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    if-eqz v1, :cond_1

    .line 179
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 162
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_6
    :try_start_6
    iget-object v7, p0, Lcom/android/server/PowerSaverService;->mRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_8

    .line 163
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/PowerSaverService;->mRestrictedUIDs:[I

    .line 168
    :goto_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    iget-object v7, p0, Lcom/android/server/PowerSaverService;->mRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_9

    .line 169
    iget-object v8, p0, Lcom/android/server/PowerSaverService;->mRestrictedUIDs:[I

    iget-object v7, p0, Lcom/android/server/PowerSaverService;->mRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v8, v3

    .line 170
    sget-boolean v7, Lcom/android/server/PowerSaverService;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "powerSaverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/PowerSaverService;->mRestrictedUIDs:[I

    aget v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 165
    .end local v3    # "i":I
    :cond_8
    iget-object v7, p0, Lcom/android/server/PowerSaverService;->mRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/server/PowerSaverService;->mRestrictedUIDs:[I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 175
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_2
    move-exception v7

    move-object v1, v2

    .line 177
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_5
    if-eqz v1, :cond_1

    .line 179
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 177
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "i":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_9
    if-eqz v2, :cond_a

    .line 179
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_a
    :goto_6
    move-object v1, v2

    .line 183
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 177
    .end local v3    # "i":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catchall_0
    move-exception v7

    :goto_7
    if-eqz v1, :cond_b

    .line 179
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 177
    :cond_b
    :goto_8
    throw v7

    .line 180
    :catch_3
    move-exception v8

    goto :goto_8

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "i":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :catch_4
    move-exception v7

    goto :goto_6

    .line 177
    .end local v3    # "i":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .line 175
    :catch_5
    move-exception v7

    goto :goto_5

    .line 173
    :catch_6
    move-exception v0

    goto :goto_2
.end method

.method private startBroadcast(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "interval"    # I

    .prologue
    .line 357
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/PowerSaverService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/PowerSaverService$1;-><init>(Lcom/android/server/PowerSaverService;Landroid/content/Intent;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 365
    return-void
.end method

.method private startService(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "interval"    # I

    .prologue
    .line 368
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/PowerSaverService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/PowerSaverService$2;-><init>(Lcom/android/server/PowerSaverService;Landroid/content/Intent;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 376
    return-void
.end method


# virtual methods
.method public getRestrictedUIDs()[I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/PowerSaverService;->mRestrictedUIDs:[I

    return-object v0
.end method

.method public getScreenOnOff()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/server/PowerSaverService;->mScreenOn:Z

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/android/server/PowerSaverService;->mStatus:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/server/PowerSaverService;->mContext:Landroid/content/Context;

    .line 102
    iget-object v1, p0, Lcom/android/server/PowerSaverService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerSaverService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 103
    iget-object v1, p0, Lcom/android/server/PowerSaverService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/PowerSaverService;->mActivityManager:Landroid/app/ActivityManager;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "ACTION_POWERSAVER_TURN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "ACTION_POWERSAVER_TURN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "ACTION_POWERSAVER_READ_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/server/PowerSaverService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;-><init>(Lcom/android/server/PowerSaverService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    return-void
.end method

.method public restrictBroadcast(Landroid/content/Intent;ILjava/lang/String;)Z
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "uid"    # I
    .param p3, "resolvedType"    # Ljava/lang/String;

    .prologue
    .line 227
    iget v9, p0, Lcom/android/server/PowerSaverService;->mStatus:I

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/server/PowerSaverService;->mScreenOn:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 228
    :cond_0
    sget-boolean v9, Lcom/android/server/PowerSaverService;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "powerSaverService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "status : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/PowerSaverService;->mStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", screenOn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/PowerSaverService;->mScreenOn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    const/4 v3, 0x0

    .line 306
    :cond_2
    :goto_0
    return v3

    .line 232
    :cond_3
    iget-object v9, p0, Lcom/android/server/PowerSaverService;->mRestrictedUIDs:[I

    if-nez v9, :cond_5

    .line 233
    sget-boolean v9, Lcom/android/server/PowerSaverService;->DEBUG:Z

    if-eqz v9, :cond_4

    const-string v9, "powerSaverService"

    const-string v10, "restrictedUIDs is null "

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 237
    :cond_5
    const/4 v3, 0x0

    .line 238
    .local v3, "exist":Z
    const/4 v8, 0x0

    .line 240
    .local v8, "pkgName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/PowerSaverService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, "packages":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v7, v9

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 243
    sget-boolean v9, Lcom/android/server/PowerSaverService;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "powerSaverService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[restrictBroadcast] callingUid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_6
    const/4 v9, 0x0

    aget-object v8, v7, v9

    .line 261
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 262
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    .line 263
    const/4 v5, 0x0

    .line 265
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/PowerSaverService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v10, 0x80

    invoke-virtual {v9, v8, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 266
    iget p2, v5, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/server/PowerSaverService;->mRestrictedUIDs:[I

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v6, :cond_9

    aget v2, v0, v4

    .line 274
    .local v2, "element":I
    if-ne v2, p2, :cond_c

    .line 275
    const/4 v3, 0x1

    .line 288
    .end local v2    # "element":I
    :cond_9
    const/4 v9, 0x1

    if-ne v3, v9, :cond_b

    .line 289
    const-string v9, "com.facebook.katana"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 290
    iget-object v9, p0, Lcom/android/server/PowerSaverService;->mBroadcastList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 291
    iget-object v9, p0, Lcom/android/server/PowerSaverService;->mBroadcastList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 293
    :cond_a
    iget-object v9, p0, Lcom/android/server/PowerSaverService;->mBroadcastList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_b
    :goto_3
    sget-boolean v9, Lcom/android/server/PowerSaverService;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 303
    const-string v9, "powerSaverService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[restrictBroadcast] exist : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 268
    .end local v0    # "arr$":[I
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 273
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "arr$":[I
    .restart local v2    # "element":I
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 294
    .end local v2    # "element":I
    :cond_d
    const-string v9, "jp.naver.line.android"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 295
    iget-object v9, p0, Lcom/android/server/PowerSaverService;->mBroadcastList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 296
    iget-object v9, p0, Lcom/android/server/PowerSaverService;->mBroadcastList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 298
    :cond_e
    iget-object v9, p0, Lcom/android/server/PowerSaverService;->mBroadcastList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public restrictService(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "si"    # Landroid/content/pm/ServiceInfo;
    .param p3, "resolvedType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 311
    iget v3, p0, Lcom/android/server/PowerSaverService;->mStatus:I

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/PowerSaverService;->mScreenOn:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 312
    :cond_0
    sget-boolean v3, Lcom/android/server/PowerSaverService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "powerSaverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/PowerSaverService;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", screenOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/PowerSaverService;->mScreenOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_1
    :goto_0
    return v6

    .line 316
    :cond_2
    iget-object v3, p0, Lcom/android/server/PowerSaverService;->mRestrictedUIDs:[I

    if-nez v3, :cond_3

    .line 317
    sget-boolean v3, Lcom/android/server/PowerSaverService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "powerSaverService"

    const-string v4, "restrictedUIDs is null "

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    :cond_3
    iget-object v3, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 322
    .local v2, "uid":I
    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 324
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 326
    .local v0, "exist":Z
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 330
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 347
    :cond_5
    sget-boolean v3, Lcom/android/server/PowerSaverService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 348
    const-string v3, "powerSaverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", exist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
