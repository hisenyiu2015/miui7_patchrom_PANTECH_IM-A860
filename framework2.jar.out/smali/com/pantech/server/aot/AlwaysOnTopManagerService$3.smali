.class Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;
.super Ljava/lang/Object;
.source "AlwaysOnTopManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/server/aot/AlwaysOnTopManagerService;->setAlwaysOnTopLocked(Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

.field final synthetic val$aotBundle:Landroid/os/Bundle;

.field final synthetic val$aotId:Ljava/lang/String;

.field final synthetic val$aotRestart:Z


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iput-object p2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->val$aotId:Ljava/lang/String;

    iput-object p3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->val$aotBundle:Landroid/os/Bundle;

    iput-boolean p4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->val$aotRestart:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1307
    const-string v0, "AlwaysOnTopManagerService"

    const-string v1, "Run setAlwaysOnTopLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->val$aotId:Ljava/lang/String;

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->val$aotBundle:Landroid/os/Bundle;

    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;->val$aotRestart:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->setAlwaysOnTopLocked(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 1309
    return-void
.end method
