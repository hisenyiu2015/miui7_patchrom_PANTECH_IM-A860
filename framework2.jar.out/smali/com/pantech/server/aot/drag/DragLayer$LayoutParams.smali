.class public Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/aot/drag/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 261
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 292
    iput p1, p0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->height:I

    .line 293
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 288
    iput p1, p0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->width:I

    .line 289
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 280
    iput p1, p0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->x:I

    .line 281
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 284
    iput p1, p0, Lcom/pantech/server/aot/drag/DragLayer$LayoutParams;->y:I

    .line 285
    return-void
.end method
