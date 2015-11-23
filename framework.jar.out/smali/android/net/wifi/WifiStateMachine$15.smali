.class Landroid/net/wifi/WifiStateMachine$15;
.super Landroid/database/ContentObserver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1269
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$15;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const v5, 0x20090

    const/4 v4, 0x0

    .line 1272
    const-string v1, "WifiStateMachine"

    const-string v2, "Settings.System.WIFI_CONNECTION_PRIORITY_MODE changed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$15;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$15;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_connection_priority_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    # setter for: Landroid/net/wifi/WifiStateMachine;->mConnectionPriorityMode:I
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$902(Landroid/net/wifi/WifiStateMachine;I)I

    .line 1274
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$15;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mConnectionPriorityMode:I
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1275
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$15;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(II)V

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$15;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mConnectionPriorityMode:I
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1277
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$15;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_environment_configuration"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1278
    .local v0, "environ":I
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$15;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v5, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(II)V

    goto :goto_0
.end method
