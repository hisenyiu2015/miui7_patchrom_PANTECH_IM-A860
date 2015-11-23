.class Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlwaysOnTopManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/aot/AlwaysOnTopManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenOnOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 345
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mScreenOn:Z

    .line 347
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->showAlwaysOnTopEntryWindow()V

    .line 350
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # invokes: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isEnableRearTouch(Landroid/content/Context;)Z
    invoke-static {v1, p1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$000(Lcom/pantech/server/aot/AlwaysOnTopManagerService;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->registerGyroSensorListener()Z

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mScreenOn:Z

    .line 357
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->unRegisterGyroSensorListener()V

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 361
    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v1, "aotmenu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    :cond_3
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v1, v1, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v1, v1, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v1}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenu()V

    goto :goto_0

    .line 367
    .end local v0    # "reason":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 370
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v1, v1, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v1, v1, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v1}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->initWindow()V

    goto :goto_0

    .line 375
    :cond_5
    const-string v1, "AlwaysOnTopManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
