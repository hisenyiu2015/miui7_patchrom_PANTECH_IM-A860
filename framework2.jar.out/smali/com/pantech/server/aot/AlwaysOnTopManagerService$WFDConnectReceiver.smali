.class Lcom/pantech/server/aot/AlwaysOnTopManagerService$WFDConnectReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlwaysOnTopManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/aot/AlwaysOnTopManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WFDConnectReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$WFDConnectReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x2

    .line 423
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WFD_START_SINK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$WFDConnectReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->sendMediaStateEvent(II)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WFD_STOP_SINK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$WFDConnectReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v0, v2, v2}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->sendMediaStateEvent(II)V

    goto :goto_0

    .line 427
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WFD_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$WFDConnectReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v0, v2, v2}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->sendMediaStateEvent(II)V

    goto :goto_0
.end method
