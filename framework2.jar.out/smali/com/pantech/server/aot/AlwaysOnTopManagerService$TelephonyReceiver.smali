.class Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlwaysOnTopManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/aot/AlwaysOnTopManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TelephonyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 386
    const-string v6, "AlwaysOnTopManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive : Action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 390
    const-string v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, "mPhoneState":Ljava/lang/String;
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 392
    :try_start_0
    sget-object v6, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 393
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v6, v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v6, v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v6}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 394
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v6}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenu()V

    .line 396
    :cond_0
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-boolean v6, v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v6, v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 397
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v6, v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 398
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v6, v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 399
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 400
    .local v5, "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 401
    .local v3, "id":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v6, "com.pantech.app.alwaysoncall/.PCUAlwaysonCallActivity"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 402
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v6, v3}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->saveState(Ljava/lang/String;)V

    .line 403
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v6, v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v6, v3}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->stopAlwaysOnTop(Ljava/lang/String;)Z

    goto :goto_0

    .line 411
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 409
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    .line 411
    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    .end local v4    # "mPhoneState":Ljava/lang/String;
    :cond_4
    return-void
.end method
