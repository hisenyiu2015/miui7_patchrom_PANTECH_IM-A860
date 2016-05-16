.class Lcom/mi/a/PixleActivity$1;
.super Landroid/os/Handler;
.source "PixleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/a/PixleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/a/PixleActivity;


# direct methods
.method constructor <init>(Lcom/mi/a/PixleActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mi/a/PixleActivity$1;->this$0:Lcom/mi/a/PixleActivity;

    .line 776
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 778
    iget-object v0, p0, Lcom/mi/a/PixleActivity$1;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->viewpager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/mi/a/PixleActivity;->access$0(Lcom/mi/a/PixleActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/a/PixleActivity$1;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->viewpager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/mi/a/PixleActivity;->access$0(Lcom/mi/a/PixleActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 779
    iget-object v0, p0, Lcom/mi/a/PixleActivity$1;->this$0:Lcom/mi/a/PixleActivity;

    iget-boolean v0, v0, Lcom/mi/a/PixleActivity;->is_running:Z

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/mi/a/PixleActivity$1;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mi/a/PixleActivity;->access$1(Lcom/mi/a/PixleActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 782
    :cond_0
    return-void
.end method
