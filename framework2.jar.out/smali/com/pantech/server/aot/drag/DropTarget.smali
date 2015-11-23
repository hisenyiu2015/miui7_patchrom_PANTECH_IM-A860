.class public interface abstract Lcom/pantech/server/aot/drag/DropTarget;
.super Ljava/lang/Object;
.source "DropTarget.java"


# virtual methods
.method public abstract acceptDrop(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)Z
.end method

.method public abstract estimateDropLocation(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method public abstract getHitRect(Landroid/graphics/Rect;)V
.end method

.method public abstract getLeft()I
.end method

.method public abstract getLocationOnScreen([I)V
.end method

.method public abstract getTop()I
.end method

.method public abstract onDragEnter(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)V
.end method

.method public abstract onDragExit(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)V
.end method

.method public abstract onDragOver(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)V
.end method

.method public abstract onDrop(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)V
.end method
