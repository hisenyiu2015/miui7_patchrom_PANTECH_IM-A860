.class interface abstract Lcom/pantech/server/aot/drag/DragController$DragListener;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/aot/drag/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DragListener"
.end annotation


# virtual methods
.method public abstract onDragEnd()V
.end method

.method public abstract onDragEnter(Lcom/pantech/server/aot/drag/DragSource;Lcom/pantech/server/aot/drag/DropTarget;)V
.end method

.method public abstract onDragStart(Lcom/pantech/server/aot/drag/DragSource;Ljava/lang/Object;I)V
.end method
