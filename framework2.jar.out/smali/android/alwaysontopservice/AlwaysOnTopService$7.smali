.class Landroid/alwaysontopservice/AlwaysOnTopService$7;
.super Ljava/lang/Object;
.source "AlwaysOnTopService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/alwaysontopservice/AlwaysOnTopService;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/alwaysontopservice/AlwaysOnTopService;


# direct methods
.method constructor <init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$7;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 771
    const-string v0, "AlwaysOnTopService"

    const-string v1, "Max Button"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$7;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v0, v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$7;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v1, v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 773
    return-void
.end method
