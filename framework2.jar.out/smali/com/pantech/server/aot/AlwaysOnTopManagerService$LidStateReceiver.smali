.class Lcom/pantech/server/aot/AlwaysOnTopManagerService$LidStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlwaysOnTopManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/aot/AlwaysOnTopManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LidStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$LidStateReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 314
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.LID_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const-string v1, "value"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 316
    .local v0, "value":Ljava/lang/Boolean;
    const-string v1, "AlwaysOnTopManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lidStateReceiver - value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$LidStateReceiver;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->skipAOTWindow()V

    .line 334
    .end local v0    # "value":Ljava/lang/Boolean;
    :cond_0
    return-void
.end method
