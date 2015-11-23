.class Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/aot/drag/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrangeRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field mSource:Lcom/pantech/server/aot/drag/DragSource;

.field mTarget:Lcom/pantech/server/aot/drag/DropTarget;

.field final synthetic this$0:Lcom/pantech/server/aot/drag/DragController;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/drag/DragController;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 658
    iput-object p1, p0, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;->this$0:Lcom/pantech/server/aot/drag/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;->mSource:Lcom/pantech/server/aot/drag/DragSource;

    .line 660
    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;->mTarget:Lcom/pantech/server/aot/drag/DropTarget;

    .line 661
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 664
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;->mSource:Lcom/pantech/server/aot/drag/DragSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;->mTarget:Lcom/pantech/server/aot/drag/DropTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;->this$0:Lcom/pantech/server/aot/drag/DragController;

    # getter for: Lcom/pantech/server/aot/drag/DragController;->mListener:Lcom/pantech/server/aot/drag/DragController$DragListener;
    invoke-static {v0}, Lcom/pantech/server/aot/drag/DragController;->access$200(Lcom/pantech/server/aot/drag/DragController;)Lcom/pantech/server/aot/drag/DragController$DragListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;->this$0:Lcom/pantech/server/aot/drag/DragController;

    # getter for: Lcom/pantech/server/aot/drag/DragController;->mListener:Lcom/pantech/server/aot/drag/DragController$DragListener;
    invoke-static {v0}, Lcom/pantech/server/aot/drag/DragController;->access$200(Lcom/pantech/server/aot/drag/DragController;)Lcom/pantech/server/aot/drag/DragController$DragListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;->mSource:Lcom/pantech/server/aot/drag/DragSource;

    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;->mTarget:Lcom/pantech/server/aot/drag/DropTarget;

    invoke-interface {v0, v1, v2}, Lcom/pantech/server/aot/drag/DragController$DragListener;->onDragEnter(Lcom/pantech/server/aot/drag/DragSource;Lcom/pantech/server/aot/drag/DropTarget;)V

    .line 666
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;->this$0:Lcom/pantech/server/aot/drag/DragController;

    # getter for: Lcom/pantech/server/aot/drag/DragController;->mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;
    invoke-static {v0}, Lcom/pantech/server/aot/drag/DragController;->access$300(Lcom/pantech/server/aot/drag/DragController;)Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;->this$0:Lcom/pantech/server/aot/drag/DragController;

    # getter for: Lcom/pantech/server/aot/drag/DragController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/server/aot/drag/DragController;->access$400(Lcom/pantech/server/aot/drag/DragController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;->this$0:Lcom/pantech/server/aot/drag/DragController;

    # getter for: Lcom/pantech/server/aot/drag/DragController;->mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;
    invoke-static {v1}, Lcom/pantech/server/aot/drag/DragController;->access$300(Lcom/pantech/server/aot/drag/DragController;)Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 669
    :cond_0
    return-void
.end method
