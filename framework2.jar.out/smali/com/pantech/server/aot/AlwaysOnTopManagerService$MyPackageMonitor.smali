.class Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AlwaysOnTopManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/aot/AlwaysOnTopManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    .line 440
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v1, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 442
    :try_start_0
    const-string v0, "AlwaysOnTopManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleForceStop():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    monitor-exit v1

    .line 444
    const/4 v0, 0x0

    return v0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 470
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v5, v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 474
    :try_start_0
    const-string v4, "AlwaysOnTopManagerService"

    const-string v6, "onPackageChanged()"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v6, v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    invoke-virtual {v4, v6, v7}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->buildAlwaysOnTopListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 478
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 479
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 480
    .local v2, "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-nez v2, :cond_0

    .line 481
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 482
    .local v3, "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v3, :cond_0

    .line 483
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v6, v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x406

    invoke-virtual {v6, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 484
    const/4 v4, 0x1

    monitor-exit v5

    .line 489
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v2    # "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    .end local v3    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    :goto_0
    return v4

    .line 488
    :cond_1
    monitor-exit v5

    .line 489
    const/4 v4, 0x0

    goto :goto_0

    .line 488
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onSomePackagesChanged()V
    .locals 8

    .prologue
    .line 449
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v5, v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 453
    :try_start_0
    const-string v4, "AlwaysOnTopManagerService"

    const-string v6, "onSomePackagesChanged()"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v6, v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v7, v7, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    invoke-virtual {v4, v6, v7}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->buildAlwaysOnTopListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 457
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 458
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 459
    .local v2, "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-nez v2, :cond_0

    .line 460
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 461
    .local v3, "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v3, :cond_0

    .line 462
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v4, v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v6, v6, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x406

    invoke-virtual {v6, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 465
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    .end local v3    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    return-void
.end method
