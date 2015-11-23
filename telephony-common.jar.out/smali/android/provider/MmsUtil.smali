.class public Landroid/provider/MmsUtil;
.super Ljava/lang/Object;
.source "MmsUtil.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MmsUtil"

.field private static mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 14
    const-string v1, "ro.debuggable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Landroid/provider/MmsUtil;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormatedSnippet(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "snippet"    # Ljava/lang/String;
    .param p2, "subMsgType"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/provider/MmsUtil;->getFormatedSnippet(Landroid/content/Context;ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatedSnippet(Landroid/content/Context;ZLjava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isLocked"    # Z
    .param p2, "snippet"    # Ljava/lang/String;
    .param p3, "subMsgType"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const v3, 0x10406a2

    .line 107
    if-nez p0, :cond_1

    .line 108
    const/4 v1, 0x0

    .line 200
    :cond_0
    :goto_0
    return-object v1

    .line 111
    :cond_1
    const/4 v1, 0x0

    .line 112
    .local v1, "mFormatedSnippet":Ljava/lang/String;
    if-nez p1, :cond_9

    .line 113
    sparse-switch p3, :sswitch_data_0

    .line 189
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 190
    move-object v1, p2

    goto :goto_0

    .line 116
    :sswitch_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 117
    move-object v1, p2

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    goto :goto_0

    .line 126
    :sswitch_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 127
    move-object v1, p2

    goto :goto_0

    .line 129
    :cond_3
    const v2, 0x10406af

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    goto :goto_0

    .line 135
    :sswitch_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 136
    const-string v2, " "

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "formatArr":[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v4, :cond_4

    .line 138
    aget-object v1, v0, v5

    goto :goto_0

    .line 140
    :cond_4
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    goto :goto_0

    .line 144
    .end local v0    # "formatArr":[Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    goto :goto_0

    .line 150
    :sswitch_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 151
    const-string v2, "\u000b"

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 152
    .restart local v0    # "formatArr":[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v4, :cond_6

    .line 153
    aget-object v1, v0, v5

    goto :goto_0

    .line 155
    :cond_6
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    goto :goto_0

    .line 159
    .end local v0    # "formatArr":[Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    goto :goto_0

    .line 175
    :sswitch_4
    invoke-static {p0, p3}, Landroid/provider/MmsUtil;->getLGTPushMessageTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 184
    :sswitch_5
    const v2, 0x10406ae

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    goto :goto_0

    .line 192
    :cond_8
    const v2, 0x10406a3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    goto/16 :goto_0

    .line 198
    :cond_9
    const v2, 0x10406a4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 113
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x64 -> :sswitch_3
        0xc8 -> :sswitch_5
        0x12e -> :sswitch_4
        0x12f -> :sswitch_4
        0x130 -> :sswitch_4
        0x131 -> :sswitch_4
        0x132 -> :sswitch_4
        0x133 -> :sswitch_4
        0x134 -> :sswitch_4
        0x135 -> :sswitch_4
        0x136 -> :sswitch_4
        0x137 -> :sswitch_4
        0x139 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getKPASHiddenMenuInfo(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 60
    :try_start_0
    const-string v5, "com.pantech.app.mms"

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 61
    .local v3, "mMmsContext":Landroid/content/Context;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_preferences"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    sput-object v5, Landroid/provider/MmsUtil;->mPrefs:Landroid/content/SharedPreferences;

    .line 62
    sget-object v5, Landroid/provider/MmsUtil;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "pref_key_set_message_id_in_KPAS"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "getHiddenMessageID":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 65
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "mHiddenMessageID":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    array-length v5, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v8, :cond_0

    .line 67
    const/4 v4, 0x1

    .line 78
    .end local v1    # "getHiddenMessageID":Ljava/lang/String;
    .end local v2    # "mHiddenMessageID":[Ljava/lang/String;
    .end local v3    # "mMmsContext":Landroid/content/Context;
    :cond_0
    :goto_0
    return v4

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v5, Landroid/provider/MmsUtil;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 76
    const-string v5, "MmsUtil"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getLGTPushMessageTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subMsgType"    # I

    .prologue
    const v0, 0x10406a5

    .line 211
    packed-switch p1, :pswitch_data_0

    .line 244
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 213
    :pswitch_1
    const v0, 0x10406a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :pswitch_2
    const v0, 0x10406aa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :pswitch_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    :pswitch_4
    const v0, 0x10406a8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    :pswitch_5
    const v0, 0x10406a6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 228
    :pswitch_6
    const v0, 0x10406a9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 232
    :pswitch_7
    const v0, 0x10406ab

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :pswitch_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 238
    :pswitch_9
    const v0, 0x10406ac

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 241
    :pswitch_a
    const v0, 0x10406ad

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x12e
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public static getMmsLocked(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 33
    :try_start_0
    const-string v3, "com.pantech.app.mms"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 35
    .local v1, "mMmsContext":Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_preferences"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Landroid/provider/MmsUtil;->mPrefs:Landroid/content/SharedPreferences;

    .line 37
    sget-object v3, Landroid/provider/MmsUtil;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "pref_key_chatting_style_msg_lock_type"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/provider/MmsUtil;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "pref_key_message_lock_check"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    .end local v1    # "mMmsContext":Landroid/content/Context;
    :cond_0
    :goto_0
    return v2

    .line 41
    .restart local v1    # "mMmsContext":Landroid/content/Context;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "mMmsContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v3, Landroid/provider/MmsUtil;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 45
    const-string v3, "MmsUtil"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
