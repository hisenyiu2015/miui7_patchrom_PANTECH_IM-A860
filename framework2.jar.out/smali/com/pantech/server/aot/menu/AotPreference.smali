.class public Lcom/pantech/server/aot/menu/AotPreference;
.super Ljava/lang/Object;
.source "AotPreference.java"


# static fields
.field static final AOT_LOCAL_PREFERENCE_DIR:Ljava/lang/String; = "/data/system/"

.field static final AOT_PREFERENCE:Ljava/lang/String; = "AotMenu"

.field static final TAG:Ljava/lang/String; = "AlwaysOnTopMenu"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferenceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotPreference;->mContext:Landroid/content/Context;

    .line 27
    const-string v0, "AotMenu"

    iput-object v0, p0, Lcom/pantech/server/aot/menu/AotPreference;->mPreferenceName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotPreference;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/pantech/server/aot/menu/AotPreference;->mPreferenceName:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method getPreference([Ljava/lang/String;ILjava/util/HashMap;)Z
    .locals 11
    .param p1, "order"    # [Ljava/lang/String;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 64
    if-eqz p1, :cond_0

    if-nez p3, :cond_3

    .line 65
    :cond_0
    const-string v9, "AlwaysOnTopMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPreference : order is "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p1, :cond_1

    const-string v7, "null"

    :goto_0
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " , hashMap is "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p3, :cond_2

    const-string v7, "null"

    :goto_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 105
    :goto_2
    return v7

    .line 65
    :cond_1
    const-string v7, "ok"

    goto :goto_0

    :cond_2
    const-string v7, "ok"

    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 69
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 71
    .local v2, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/pantech/server/aot/menu/AotPreference;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/pantech/server/aot/menu/AotPreference;->mPreferenceName:Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 72
    .local v5, "pref":Landroid/content/SharedPreferences;
    if-nez v5, :cond_4

    .line 73
    const-string v7, "AlwaysOnTopMenu"

    const-string v9, "getPreference : pref is  null"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 74
    goto :goto_2

    .line 77
    :cond_4
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 78
    .local v0, "hashSize":I
    if-nez v0, :cond_5

    .line 79
    const-string v7, "AlwaysOnTopMenu"

    const-string v9, "getPreference : hash size is 0 !!!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 80
    goto :goto_2

    .line 83
    :cond_5
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    if-nez v7, :cond_6

    .line 84
    const-string v7, "AlwaysOnTopMenu"

    const-string v9, "getPreference : sharedpreference is  null"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_9

    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 91
    .local v6, "s":Ljava/lang/String;
    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 92
    .local v4, "orderNumber":I
    aget-object v7, p1, v4

    if-eqz v7, :cond_7

    move v7, v8

    .line 93
    goto :goto_2

    .line 86
    .end local v1    # "i":I
    .end local v4    # "orderNumber":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_6
    const-string v7, "AlwaysOnTopMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPreference : ok = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 96
    .restart local v1    # "i":I
    .restart local v4    # "orderNumber":I
    .restart local v6    # "s":Ljava/lang/String;
    :cond_7
    if-ltz v4, :cond_8

    if-ge v4, p2, :cond_8

    .line 97
    aput-object v6, p1, v4

    .line 98
    const-string v7, "AlwaysOnTopMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "string = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 100
    :cond_8
    const-string v7, "AlwaysOnTopMenu"

    const-string v9, "getPreference : illegal order number"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 101
    goto/16 :goto_2

    .line 105
    .end local v4    # "orderNumber":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_2
.end method

.method putPreference(Ljava/util/HashMap;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 37
    const-string v8, "AlwaysOnTopMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "putPreference : hashMap = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 39
    const-string v8, "AlwaysOnTopMenu"

    const-string v9, "puttPreference : hashMap Size is 0!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    return v7

    .line 43
    :cond_0
    iget-object v8, p0, Lcom/pantech/server/aot/menu/AotPreference;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/pantech/server/aot/menu/AotPreference;->mPreferenceName:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 44
    .local v5, "pref":Landroid/content/SharedPreferences;
    if-nez v5, :cond_1

    .line 45
    const-string v8, "AlwaysOnTopMenu"

    const-string v9, "putPreference : pref is  null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 51
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 52
    .local v3, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 53
    .local v1, "hashSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 55
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 56
    const-string v7, "AlwaysOnTopMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "putPreference : tag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 58
    .end local v6    # "s":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    const/4 v7, 0x1

    goto :goto_0
.end method
