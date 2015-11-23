.class Lcom/pantech/server/aot/AlwaysOnTopManagerService$1;
.super Ljava/lang/Object;
.source "AlwaysOnTopManagerService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/server/aot/AlwaysOnTopManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$1;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v0, p1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 503
    return-void
.end method
