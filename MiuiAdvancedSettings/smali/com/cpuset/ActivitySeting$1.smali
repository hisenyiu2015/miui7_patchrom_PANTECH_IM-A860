.class Lcom/cpuset/ActivitySeting$1;
.super Landroid/os/Handler;
.source "ActivitySeting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cpuset/ActivitySeting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cpuset/ActivitySeting;


# direct methods
.method constructor <init>(Lcom/cpuset/ActivitySeting;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cpuset/ActivitySeting$1;->this$0:Lcom/cpuset/ActivitySeting;

    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 41
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/cpuset/ActivitySeting$1;->this$0:Lcom/cpuset/ActivitySeting;

    # getter for: Lcom/cpuset/ActivitySeting;->mTextcpuvalue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/cpuset/ActivitySeting;->access$0(Lcom/cpuset/ActivitySeting;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 43
    return-void
.end method
