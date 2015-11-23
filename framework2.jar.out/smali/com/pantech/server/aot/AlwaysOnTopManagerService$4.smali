.class Lcom/pantech/server/aot/AlwaysOnTopManagerService$4;
.super Ljava/lang/Object;
.source "AlwaysOnTopManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/server/aot/AlwaysOnTopManagerService;->showAlwaysOnTopMenu()V
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
    .line 1457
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$4;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-virtual {v0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenu()V

    .line 1461
    return-void
.end method
