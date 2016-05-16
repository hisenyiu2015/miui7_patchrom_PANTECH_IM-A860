.class public Lcom/deskangel/kblight/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 16
    new-instance v0, Lcom/deskangel/lights/LightsController;

    invoke-direct {v0}, Lcom/deskangel/lights/LightsController;-><init>()V

    .line 17
    .local v0, "lc":Lcom/deskangel/lights/LightsController;
    const-string v3, "com.deskangel.kblight_preferences"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 19
    .local v1, "share":Landroid/content/SharedPreferences;
    const-string v3, "kbLight"

    const-string v4, "boot receiver entry."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const v3, 0x7f06001e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "strKey":Ljava/lang/String;
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    const-string v3, "kbLight"

    const-string v4, "lockOnButton"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {v0}, Lcom/deskangel/lights/LightsController;->lockOnButtonBkLight()V

    .line 27
    :cond_0
    const v3, 0x7f060024

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    const-string v3, "kbLight"

    const-string v4, "lockOffButton"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {v0}, Lcom/deskangel/lights/LightsController;->lockOffButtonBkLight()V

    .line 34
    :cond_1
    return-void
.end method
