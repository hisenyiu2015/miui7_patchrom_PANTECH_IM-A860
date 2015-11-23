.class Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerSaverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenOnOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerSaverService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerSaverService;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;->this$0:Lcom/android/server/PowerSaverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 382
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 384
    iget-object v2, p0, Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;->this$0:Lcom/android/server/PowerSaverService;

    # setter for: Lcom/android/server/PowerSaverService;->mScreenOn:Z
    invoke-static {v2, v5}, Lcom/android/server/PowerSaverService;->access$102(Lcom/android/server/PowerSaverService;Z)Z

    .line 385
    # getter for: Lcom/android/server/PowerSaverService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PowerSaverService;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "powerSaverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCREEN ON : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;->this$0:Lcom/android/server/PowerSaverService;

    # getter for: Lcom/android/server/PowerSaverService;->mScreenOn:Z
    invoke-static {v4}, Lcom/android/server/PowerSaverService;->access$100(Lcom/android/server/PowerSaverService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;->this$0:Lcom/android/server/PowerSaverService;

    # getter for: Lcom/android/server/PowerSaverService;->mBroadcastList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/PowerSaverService;->access$300(Lcom/android/server/PowerSaverService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 390
    .local v0, "NP":I
    # getter for: Lcom/android/server/PowerSaverService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PowerSaverService;->access$200()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "powerSaverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NP : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1
    iget-object v2, p0, Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;->this$0:Lcom/android/server/PowerSaverService;

    # getter for: Lcom/android/server/PowerSaverService;->mStatus:I
    invoke-static {v2}, Lcom/android/server/PowerSaverService;->access$400(Lcom/android/server/PowerSaverService;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 399
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;->this$0:Lcom/android/server/PowerSaverService;

    # getter for: Lcom/android/server/PowerSaverService;->mBroadcastList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/PowerSaverService;->access$300(Lcom/android/server/PowerSaverService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 400
    iget-object v3, p0, Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;->this$0:Lcom/android/server/PowerSaverService;

    iget-object v2, p0, Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;->this$0:Lcom/android/server/PowerSaverService;

    # getter for: Lcom/android/server/PowerSaverService;->mBroadcastList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/PowerSaverService;->access$300(Lcom/android/server/PowerSaverService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    const/16 v4, 0x64

    # invokes: Lcom/android/server/PowerSaverService;->startBroadcast(Landroid/content/Intent;I)V
    invoke-static {v3, v2, v4}, Lcom/android/server/PowerSaverService;->access$500(Lcom/android/server/PowerSaverService;Landroid/content/Intent;I)V

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    :cond_2
    iget-object v2, p0, Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;->this$0:Lcom/android/server/PowerSaverService;

    # getter for: Lcom/android/server/PowerSaverService;->mBroadcastList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/PowerSaverService;->access$300(Lcom/android/server/PowerSaverService;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;->this$0:Lcom/android/server/PowerSaverService;

    # getter for: Lcom/android/server/PowerSaverService;->mBroadcastList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/PowerSaverService;->access$300(Lcom/android/server/PowerSaverService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 423
    .end local v0    # "NP":I
    .end local v1    # "i":I
    :cond_3
    :goto_1
    return-void

    .line 405
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 406
    # getter for: Lcom/android/server/PowerSaverService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PowerSaverService;->access$200()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "powerSaverService"

    const-string v3, "SCREEN OFF"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_5
    iget-object v2, p0, Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;->this$0:Lcom/android/server/PowerSaverService;

    # setter for: Lcom/android/server/PowerSaverService;->mScreenOn:Z
    invoke-static {v2, v4}, Lcom/android/server/PowerSaverService;->access$102(Lcom/android/server/PowerSaverService;Z)Z

    goto :goto_1

    .line 409
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_POWERSAVER_TURN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 410
    # getter for: Lcom/android/server/PowerSaverService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PowerSaverService;->access$200()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "powerSaverService"

    const-string v3, "ACTION_POWERSAVER_TURN_OFF"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_7
    iget-object v2, p0, Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;->this$0:Lcom/android/server/PowerSaverService;

    # setter for: Lcom/android/server/PowerSaverService;->mStatus:I
    invoke-static {v2, v4}, Lcom/android/server/PowerSaverService;->access$402(Lcom/android/server/PowerSaverService;I)I

    goto :goto_1

    .line 413
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_POWERSAVER_TURN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 414
    # getter for: Lcom/android/server/PowerSaverService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PowerSaverService;->access$200()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "powerSaverService"

    const-string v3, "ACTION_POWERSAVER_TURN_ON"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_9
    iget-object v2, p0, Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;->this$0:Lcom/android/server/PowerSaverService;

    # setter for: Lcom/android/server/PowerSaverService;->mStatus:I
    invoke-static {v2, v5}, Lcom/android/server/PowerSaverService;->access$402(Lcom/android/server/PowerSaverService;I)I

    goto :goto_1

    .line 417
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_POWERSAVER_READ_FILE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 418
    # getter for: Lcom/android/server/PowerSaverService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PowerSaverService;->access$200()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "powerSaverService"

    const-string v3, "ACTION_POWERSAVER_READ_FILE"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_b
    iget-object v2, p0, Lcom/android/server/PowerSaverService$ScreenOnOffReceiver;->this$0:Lcom/android/server/PowerSaverService;

    # invokes: Lcom/android/server/PowerSaverService;->readRestrictedListLocked()V
    invoke-static {v2}, Lcom/android/server/PowerSaverService;->access$600(Lcom/android/server/PowerSaverService;)V

    goto :goto_1
.end method
