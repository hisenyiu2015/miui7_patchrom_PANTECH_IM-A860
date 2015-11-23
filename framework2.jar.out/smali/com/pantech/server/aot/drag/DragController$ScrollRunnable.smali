.class Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;
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
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/pantech/server/aot/drag/DragController;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/drag/DragController;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;->this$0:Lcom/pantech/server/aot/drag/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;->this$0:Lcom/pantech/server/aot/drag/DragController;

    # getter for: Lcom/pantech/server/aot/drag/DragController;->mDragScroller:Lcom/pantech/server/aot/drag/DragScroller;
    invoke-static {v0}, Lcom/pantech/server/aot/drag/DragController;->access$000(Lcom/pantech/server/aot/drag/DragController;)Lcom/pantech/server/aot/drag/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 637
    iget v0, p0, Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;->this$0:Lcom/pantech/server/aot/drag/DragController;

    # getter for: Lcom/pantech/server/aot/drag/DragController;->mDragScroller:Lcom/pantech/server/aot/drag/DragScroller;
    invoke-static {v0}, Lcom/pantech/server/aot/drag/DragController;->access$000(Lcom/pantech/server/aot/drag/DragController;)Lcom/pantech/server/aot/drag/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/server/aot/drag/DragScroller;->scrollLeft()V

    .line 642
    :goto_0
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;->this$0:Lcom/pantech/server/aot/drag/DragController;

    const/4 v1, 0x0

    # setter for: Lcom/pantech/server/aot/drag/DragController;->mScrollState:I
    invoke-static {v0, v1}, Lcom/pantech/server/aot/drag/DragController;->access$102(Lcom/pantech/server/aot/drag/DragController;I)I

    .line 644
    :cond_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;->this$0:Lcom/pantech/server/aot/drag/DragController;

    # getter for: Lcom/pantech/server/aot/drag/DragController;->mDragScroller:Lcom/pantech/server/aot/drag/DragScroller;
    invoke-static {v0}, Lcom/pantech/server/aot/drag/DragController;->access$000(Lcom/pantech/server/aot/drag/DragController;)Lcom/pantech/server/aot/drag/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/server/aot/drag/DragScroller;->scrollRight()V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 647
    iput p1, p0, Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;->mDirection:I

    .line 648
    return-void
.end method
