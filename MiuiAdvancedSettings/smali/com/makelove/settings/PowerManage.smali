.class public Lcom/makelove/settings/PowerManage;
.super Landroid/app/Activity;
.source "PowerManage.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public fastboot(Landroid/view/View;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    new-instance v6, Landroid/content/Intent;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    :try_start_0
    const-string v9, "com.makelove.settings.PowerManage$4"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v6

    .line 56
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/makelove/settings/PowerManage;->startActivity(Landroid/content/Intent;)V

    .line 57
    move-object v6, v0

    invoke-virtual {v6}, Lcom/makelove/settings/PowerManage;->finish()V

    .line 59
    move-object v6, v0

    const/high16 v7, 0x7f0b0000

    const v8, 0x7f0b0001

    invoke-virtual {v6, v7, v8}, Lcom/makelove/settings/PowerManage;->overridePendingTransition(II)V

    return-void

    .line 55
    :catch_0
    move-exception v6

    move-object v4, v6

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "com.aide.ui"

    invoke-static {v3, v4}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    move-object v3, v0

    const v4, 0x1030010

    invoke-virtual {v3, v4}, Lcom/makelove/settings/PowerManage;->setTheme(I)V

    .line 18
    move-object v3, v0

    invoke-virtual {v3}, Lcom/makelove/settings/PowerManage;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 19
    move-object v3, v0

    invoke-virtual {v3}, Lcom/makelove/settings/PowerManage;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 20
    move-object v3, v0

    const v4, 0x7f030005

    invoke-virtual {v3, v4}, Lcom/makelove/settings/PowerManage;->setContentView(I)V

    return-void
.end method

.method public poweroff(Landroid/view/View;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    new-instance v6, Landroid/content/Intent;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    :try_start_0
    const-string v9, "com.makelove.settings.PowerManage$1"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v6

    .line 25
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/makelove/settings/PowerManage;->startActivity(Landroid/content/Intent;)V

    .line 26
    move-object v6, v0

    invoke-virtual {v6}, Lcom/makelove/settings/PowerManage;->finish()V

    .line 28
    move-object v6, v0

    const/high16 v7, 0x7f0b0000

    const v8, 0x7f0b0001

    invoke-virtual {v6, v7, v8}, Lcom/makelove/settings/PowerManage;->overridePendingTransition(II)V

    return-void

    .line 24
    :catch_0
    move-exception v6

    move-object v4, v6

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public reboot(Landroid/view/View;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    new-instance v6, Landroid/content/Intent;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    :try_start_0
    const-string v9, "com.makelove.settings.PowerManage$2"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v6

    .line 35
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/makelove/settings/PowerManage;->startActivity(Landroid/content/Intent;)V

    .line 36
    move-object v6, v0

    invoke-virtual {v6}, Lcom/makelove/settings/PowerManage;->finish()V

    .line 38
    move-object v6, v0

    const/high16 v7, 0x7f0b0000

    const v8, 0x7f0b0001

    invoke-virtual {v6, v7, v8}, Lcom/makelove/settings/PowerManage;->overridePendingTransition(II)V

    return-void

    .line 34
    :catch_0
    move-exception v6

    move-object v4, v6

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public recovery(Landroid/view/View;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    new-instance v6, Landroid/content/Intent;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    :try_start_0
    const-string v9, "com.makelove.settings.PowerManage$3"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v6

    .line 45
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/makelove/settings/PowerManage;->startActivity(Landroid/content/Intent;)V

    .line 46
    move-object v6, v0

    invoke-virtual {v6}, Lcom/makelove/settings/PowerManage;->finish()V

    .line 48
    move-object v6, v0

    const/high16 v7, 0x7f0b0000

    const v8, 0x7f0b0001

    invoke-virtual {v6, v7, v8}, Lcom/makelove/settings/PowerManage;->overridePendingTransition(II)V

    return-void

    .line 44
    :catch_0
    move-exception v6

    move-object v4, v6

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6
.end method
