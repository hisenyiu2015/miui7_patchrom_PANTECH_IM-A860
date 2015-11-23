.class public Lcom/pantech/server/aot/drag/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;,
        Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;,
        Lcom/pantech/server/aot/drag/DragController$DragListener;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I = 0x0

.field public static DRAG_ACTION_MOVE:I = 0x0

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field private static final SCROLL_DELAY:I = 0x1f4

.field private static final SCROLL_LEFT:I = 0x0

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field private static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final VIBRATE_DURATION:I = 0x15


# instance fields
.field private mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

.field private mContext:Landroid/content/Context;

.field private final mCoordinatesTemp:[I

.field private mDirty:Z

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDragInfo:Ljava/lang/Object;

.field private mDragLayer:Landroid/view/View;

.field private mDragScroller:Lcom/pantech/server/aot/drag/DragScroller;

.field private mDragSource:Lcom/pantech/server/aot/drag/DragSource;

.field private mDragView:Lcom/pantech/server/aot/drag/DragView;

.field private mDragging:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/server/aot/drag/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/pantech/server/aot/drag/DropTarget;

.field private mListener:Lcom/pantech/server/aot/drag/DragController$DragListener;

.field private mMotionDownX:F

.field private mMotionDownY:F

.field private mMoveTarget:Landroid/view/View;

.field private mOriginator:Landroid/view/View;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/pantech/server/aot/drag/DragController;->DRAG_ACTION_MOVE:I

    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/pantech/server/aot/drag/DragController;->DRAG_ACTION_COPY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mCoordinatesTemp:[I

    .line 68
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 614
    iput v2, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollState:I

    .line 615
    new-instance v0, Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;-><init>(Lcom/pantech/server/aot/drag/DragController;)V

    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollRunnable:Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;

    .line 651
    new-instance v0, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    invoke-direct {v0, p0}, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;-><init>(Lcom/pantech/server/aot/drag/DragController;)V

    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    .line 143
    iput-object p1, p0, Lcom/pantech/server/aot/drag/DragController;->mContext:Landroid/content/Context;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mHandler:Landroid/os/Handler;

    .line 145
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mVibrator:Landroid/os/Vibrator;

    .line 146
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollZone:I

    .line 147
    iput-boolean v2, p0, Lcom/pantech/server/aot/drag/DragController;->mDirty:Z

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/server/aot/drag/DragController;)Lcom/pantech/server/aot/drag/DragScroller;
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/aot/drag/DragController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mDragScroller:Lcom/pantech/server/aot/drag/DragScroller;

    return-object v0
.end method

.method static synthetic access$102(Lcom/pantech/server/aot/drag/DragController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/pantech/server/aot/drag/DragController;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollState:I

    return p1
.end method

.method static synthetic access$200(Lcom/pantech/server/aot/drag/DragController;)Lcom/pantech/server/aot/drag/DragController$DragListener;
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/aot/drag/DragController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mListener:Lcom/pantech/server/aot/drag/DragController$DragListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/pantech/server/aot/drag/DragController;)Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/aot/drag/DragController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pantech/server/aot/drag/DragController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/aot/drag/DragController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static clamp(III)I
    .locals 0
    .param p0, "val"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 541
    if-ge p0, p1, :cond_0

    .line 546
    .end local p1    # "min":I
    :goto_0
    return p1

    .line 543
    .restart local p1    # "min":I
    :cond_0
    if-lt p0, p2, :cond_1

    .line 544
    add-int/lit8 p1, p2, -0x1

    goto :goto_0

    :cond_1
    move p1, p0

    .line 546
    goto :goto_0
.end method

.method private drop(FF)Z
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 474
    iget-object v8, p0, Lcom/pantech/server/aot/drag/DragController;->mCoordinatesTemp:[I

    .line 475
    .local v8, "coordinates":[I
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2, v8}, Lcom/pantech/server/aot/drag/DragController;->findDropTarget(II[I)Lcom/pantech/server/aot/drag/DropTarget;

    move-result-object v0

    .line 477
    .local v0, "dropTarget":Lcom/pantech/server/aot/drag/DropTarget;
    if-eqz v0, :cond_2

    .line 478
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {p0, v9}, Lcom/pantech/server/aot/drag/DragController;->setDirty(Z)V

    .line 481
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragController;->mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 482
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragController;->mDragSource:Lcom/pantech/server/aot/drag/DragSource;

    iput-object v2, v1, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;->mSource:Lcom/pantech/server/aot/drag/DragSource;

    .line 483
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    iput-object v0, v1, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;->mTarget:Lcom/pantech/server/aot/drag/DropTarget;

    .line 484
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragController;->mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mDragSource:Lcom/pantech/server/aot/drag/DragSource;

    aget v2, v8, v10

    aget v3, v8, v9

    iget v4, p0, Lcom/pantech/server/aot/drag/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/pantech/server/aot/drag/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/pantech/server/aot/drag/DragController;->mDragView:Lcom/pantech/server/aot/drag/DragView;

    iget-object v7, p0, Lcom/pantech/server/aot/drag/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/pantech/server/aot/drag/DropTarget;->onDragExit(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)V

    .line 490
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mDragSource:Lcom/pantech/server/aot/drag/DragSource;

    aget v2, v8, v10

    aget v3, v8, v9

    iget v4, p0, Lcom/pantech/server/aot/drag/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/pantech/server/aot/drag/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/pantech/server/aot/drag/DragController;->mDragView:Lcom/pantech/server/aot/drag/DragView;

    iget-object v7, p0, Lcom/pantech/server/aot/drag/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/pantech/server/aot/drag/DropTarget;->acceptDrop(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mDragSource:Lcom/pantech/server/aot/drag/DragSource;

    aget v2, v8, v10

    aget v3, v8, v9

    iget v4, p0, Lcom/pantech/server/aot/drag/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/pantech/server/aot/drag/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/pantech/server/aot/drag/DragController;->mDragView:Lcom/pantech/server/aot/drag/DragView;

    iget-object v7, p0, Lcom/pantech/server/aot/drag/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/pantech/server/aot/drag/DropTarget;->onDrop(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)V

    .line 494
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mDragSource:Lcom/pantech/server/aot/drag/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0    # "dropTarget":Lcom/pantech/server/aot/drag/DropTarget;
    invoke-interface {v1, v0, v9}, Lcom/pantech/server/aot/drag/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v1, v9

    .line 502
    :goto_0
    return v1

    .line 497
    .restart local v0    # "dropTarget":Lcom/pantech/server/aot/drag/DropTarget;
    :cond_1
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mDragSource:Lcom/pantech/server/aot/drag/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0    # "dropTarget":Lcom/pantech/server/aot/drag/DropTarget;
    invoke-interface {v1, v0, v10}, Lcom/pantech/server/aot/drag/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v1, v9

    .line 498
    goto :goto_0

    .restart local v0    # "dropTarget":Lcom/pantech/server/aot/drag/DropTarget;
    :cond_2
    move v1, v10

    .line 502
    goto :goto_0
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-boolean v0, p0, Lcom/pantech/server/aot/drag/DragController;->mDragging:Z

    if-eqz v0, :cond_2

    .line 297
    iput-boolean v1, p0, Lcom/pantech/server/aot/drag/DragController;->mDragging:Z

    .line 298
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mListener:Lcom/pantech/server/aot/drag/DragController$DragListener;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mListener:Lcom/pantech/server/aot/drag/DragController$DragListener;

    invoke-interface {v0}, Lcom/pantech/server/aot/drag/DragController$DragListener;->onDragEnd()V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mDragView:Lcom/pantech/server/aot/drag/DragView;

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mDragView:Lcom/pantech/server/aot/drag/DragView;

    invoke-virtual {v0}, Lcom/pantech/server/aot/drag/DragView;->remove()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mDragView:Lcom/pantech/server/aot/drag/DragView;

    .line 309
    :cond_2
    return-void
.end method

.method private findDropTarget(II[I)Lcom/pantech/server/aot/drag/DropTarget;
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "dropCoordinates"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 506
    iget-object v3, p0, Lcom/pantech/server/aot/drag/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 508
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 509
    .local v1, "dropTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/server/aot/drag/DropTarget;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 511
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 512
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/server/aot/drag/DropTarget;

    .line 514
    .local v4, "target":Lcom/pantech/server/aot/drag/DropTarget;
    invoke-interface {v4, v3}, Lcom/pantech/server/aot/drag/DropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 515
    invoke-interface {v4, p3}, Lcom/pantech/server/aot/drag/DropTarget;->getLocationOnScreen([I)V

    .line 516
    aget v5, p3, v8

    invoke-interface {v4}, Lcom/pantech/server/aot/drag/DropTarget;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    aget v6, p3, v9

    invoke-interface {v4}, Lcom/pantech/server/aot/drag/DropTarget;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 518
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 519
    aget v5, p3, v8

    sub-int v5, p1, v5

    aput v5, p3, v8

    .line 520
    aget v5, p3, v9

    sub-int v5, p2, v5

    aput v5, p3, v9

    .line 525
    .end local v4    # "target":Lcom/pantech/server/aot/drag/DropTarget;
    :goto_1
    return-object v4

    .line 511
    .restart local v4    # "target":Lcom/pantech/server/aot/drag/DropTarget;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 525
    .end local v4    # "target":Lcom/pantech/server/aot/drag/DropTarget;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 244
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 247
    .local v3, "willNotCache":Z
    invoke-virtual {p1, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 252
    .local v2, "color":I
    invoke-virtual {p1, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 254
    if-eqz v2, :cond_0

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 257
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 260
    .local v1, "cacheBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 261
    const/4 v0, 0x0

    .line 271
    :goto_0
    return-object v0

    .line 264
    :cond_1
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 267
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 268
    invoke-virtual {p1, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 269
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method private recordScreenSize()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 535
    return-void
.end method


# virtual methods
.method public addDropTarget(Lcom/pantech/server/aot/drag/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/pantech/server/aot/drag/DropTarget;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    return-void
.end method

.method public cancelDrag()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/pantech/server/aot/drag/DragController;->endDrag()V

    .line 293
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/pantech/server/aot/drag/DragController;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropTargetSize()I
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/pantech/server/aot/drag/DragController;->mDirty:Z

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/pantech/server/aot/drag/DragController;->mDragging:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 317
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/pantech/server/aot/drag/DragController;->recordScreenSize()V

    .line 321
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v5, v4}, Lcom/pantech/server/aot/drag/DragController;->clamp(III)I

    move-result v1

    .line 322
    .local v1, "screenX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v5, v4}, Lcom/pantech/server/aot/drag/DragController;->clamp(III)I

    move-result v2

    .line 324
    .local v2, "screenY":I
    packed-switch v0, :pswitch_data_0

    .line 344
    :goto_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/drag/DragController;->mDragging:Z

    return v3

    .line 330
    :pswitch_1
    int-to-float v3, v1

    iput v3, p0, Lcom/pantech/server/aot/drag/DragController;->mMotionDownX:F

    .line 331
    int-to-float v3, v2

    iput v3, p0, Lcom/pantech/server/aot/drag/DragController;->mMotionDownY:F

    .line 332
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pantech/server/aot/drag/DragController;->mLastDropTarget:Lcom/pantech/server/aot/drag/DropTarget;

    goto :goto_0

    .line 337
    :pswitch_2
    iget-boolean v3, p0, Lcom/pantech/server/aot/drag/DragController;->mDragging:Z

    if-eqz v3, :cond_1

    .line 338
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/pantech/server/aot/drag/DragController;->drop(FF)Z

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/pantech/server/aot/drag/DragController;->endDrag()V

    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 362
    iget-boolean v1, p0, Lcom/pantech/server/aot/drag/DragController;->mDragging:Z

    if-nez v1, :cond_0

    .line 363
    const/4 v1, 0x0

    .line 470
    :goto_0
    return v1

    .line 366
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 367
    .local v9, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pantech/server/aot/drag/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2, v3}, Lcom/pantech/server/aot/drag/DragController;->clamp(III)I

    move-result v11

    .line 368
    .local v11, "screenX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pantech/server/aot/drag/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2, v3}, Lcom/pantech/server/aot/drag/DragController;->clamp(III)I

    move-result v12

    .line 370
    .local v12, "screenY":I
    packed-switch v9, :pswitch_data_0

    .line 470
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 373
    :pswitch_0
    int-to-float v1, v11

    iput v1, p0, Lcom/pantech/server/aot/drag/DragController;->mMotionDownX:F

    .line 374
    int-to-float v1, v12

    iput v1, p0, Lcom/pantech/server/aot/drag/DragController;->mMotionDownY:F

    .line 376
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 378
    iget v1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollZone:I

    if-lt v11, v1, :cond_2

    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollZone:I

    sub-int/2addr v1, v2

    if-le v11, v1, :cond_3

    .line 379
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollState:I

    .line 380
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollRunnable:Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 382
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollState:I

    goto :goto_1

    .line 389
    :pswitch_1
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mDragView:Lcom/pantech/server/aot/drag/DragView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/server/aot/drag/DragView;->move(II)V

    .line 392
    iget-object v10, p0, Lcom/pantech/server/aot/drag/DragController;->mCoordinatesTemp:[I

    .line 393
    .local v10, "coordinates":[I
    invoke-direct {p0, v11, v12, v10}, Lcom/pantech/server/aot/drag/DragController;->findDropTarget(II[I)Lcom/pantech/server/aot/drag/DropTarget;

    move-result-object v0

    .line 395
    .local v0, "dropTarget":Lcom/pantech/server/aot/drag/DropTarget;
    if-eqz v0, :cond_7

    .line 396
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mLastDropTarget:Lcom/pantech/server/aot/drag/DropTarget;

    if-ne v1, v0, :cond_5

    .line 397
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mDragSource:Lcom/pantech/server/aot/drag/DragSource;

    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    iget v4, p0, Lcom/pantech/server/aot/drag/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/pantech/server/aot/drag/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/pantech/server/aot/drag/DragController;->mDragView:Lcom/pantech/server/aot/drag/DragView;

    iget-object v7, p0, Lcom/pantech/server/aot/drag/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/pantech/server/aot/drag/DropTarget;->onDragOver(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)V

    .line 423
    :cond_4
    :goto_2
    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mLastDropTarget:Lcom/pantech/server/aot/drag/DropTarget;

    .line 435
    iget v1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollZone:I

    if-ge v11, v1, :cond_8

    .line 436
    iget v1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollState:I

    if-nez v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragController;->mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 438
    const/4 v1, 0x1

    iput v1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollState:I

    .line 439
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollRunnable:Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;->setDirection(I)V

    .line 440
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollRunnable:Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 400
    :cond_5
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mLastDropTarget:Lcom/pantech/server/aot/drag/DropTarget;

    if-eqz v1, :cond_6

    .line 401
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mLastDropTarget:Lcom/pantech/server/aot/drag/DropTarget;

    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragController;->mDragSource:Lcom/pantech/server/aot/drag/DragSource;

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x1

    aget v4, v10, v4

    iget v5, p0, Lcom/pantech/server/aot/drag/DragController;->mTouchOffsetX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/pantech/server/aot/drag/DragController;->mTouchOffsetY:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/pantech/server/aot/drag/DragController;->mDragView:Lcom/pantech/server/aot/drag/DragView;

    iget-object v8, p0, Lcom/pantech/server/aot/drag/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v1 .. v8}, Lcom/pantech/server/aot/drag/DropTarget;->onDragExit(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)V

    .line 405
    :cond_6
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mDragSource:Lcom/pantech/server/aot/drag/DragSource;

    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    iget v4, p0, Lcom/pantech/server/aot/drag/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/pantech/server/aot/drag/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/pantech/server/aot/drag/DragController;->mDragView:Lcom/pantech/server/aot/drag/DragView;

    iget-object v7, p0, Lcom/pantech/server/aot/drag/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/pantech/server/aot/drag/DropTarget;->onDragEnter(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)V

    .line 408
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    if-eqz v1, :cond_4

    .line 409
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/pantech/server/aot/drag/DragController;->setDirty(Z)V

    .line 411
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragController;->mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 412
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragController;->mDragSource:Lcom/pantech/server/aot/drag/DragSource;

    iput-object v2, v1, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;->mSource:Lcom/pantech/server/aot/drag/DragSource;

    .line 413
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    iput-object v0, v1, Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;->mTarget:Lcom/pantech/server/aot/drag/DropTarget;

    .line 414
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragController;->mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 418
    :cond_7
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mLastDropTarget:Lcom/pantech/server/aot/drag/DropTarget;

    if-eqz v1, :cond_4

    .line 419
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mLastDropTarget:Lcom/pantech/server/aot/drag/DropTarget;

    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragController;->mDragSource:Lcom/pantech/server/aot/drag/DragSource;

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x1

    aget v4, v10, v4

    iget v5, p0, Lcom/pantech/server/aot/drag/DragController;->mTouchOffsetX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/pantech/server/aot/drag/DragController;->mTouchOffsetY:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/pantech/server/aot/drag/DragController;->mDragView:Lcom/pantech/server/aot/drag/DragView;

    iget-object v8, p0, Lcom/pantech/server/aot/drag/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v1 .. v8}, Lcom/pantech/server/aot/drag/DropTarget;->onDragExit(Lcom/pantech/server/aot/drag/DragSource;IIIILcom/pantech/server/aot/drag/DragView;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 442
    :cond_8
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollZone:I

    sub-int/2addr v1, v2

    if-le v11, v1, :cond_9

    .line 443
    iget v1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollState:I

    if-nez v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragController;->mArrangeRunnable:Lcom/pantech/server/aot/drag/DragController$ArrangeRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    const/4 v1, 0x1

    iput v1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollState:I

    .line 446
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollRunnable:Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;->setDirection(I)V

    .line 447
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollRunnable:Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 450
    :cond_9
    iget v1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 451
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollState:I

    .line 452
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollRunnable:Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;->setDirection(I)V

    .line 453
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollRunnable:Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 459
    .end local v0    # "dropTarget":Lcom/pantech/server/aot/drag/DropTarget;
    .end local v10    # "coordinates":[I
    :pswitch_2
    iget-object v1, p0, Lcom/pantech/server/aot/drag/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollRunnable:Lcom/pantech/server/aot/drag/DragController$ScrollRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 460
    iget-boolean v1, p0, Lcom/pantech/server/aot/drag/DragController;->mDragging:Z

    if-eqz v1, :cond_a

    .line 461
    int-to-float v1, v11

    int-to-float v2, v12

    invoke-direct {p0, v1, v2}, Lcom/pantech/server/aot/drag/DragController;->drop(FF)Z

    .line 463
    :cond_a
    invoke-direct {p0}, Lcom/pantech/server/aot/drag/DragController;->endDrag()V

    goto/16 :goto_1

    .line 467
    :pswitch_3
    invoke-virtual {p0}, Lcom/pantech/server/aot/drag/DragController;->cancelDrag()V

    goto/16 :goto_1

    .line 370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllDropTargets()V
    .locals 1

    .prologue
    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 587
    return-void
.end method

.method public removeDragListener(Lcom/pantech/server/aot/drag/DragController$DragListener;)V
    .locals 1
    .param p1, "l"    # Lcom/pantech/server/aot/drag/DragController$DragListener;

    .prologue
    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mListener:Lcom/pantech/server/aot/drag/DragController$DragListener;

    .line 566
    return-void
.end method

.method public removeDropTarget(Lcom/pantech/server/aot/drag/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/pantech/server/aot/drag/DropTarget;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 580
    return-void
.end method

.method public setDirty(Z)V
    .locals 0
    .param p1, "d"    # Z

    .prologue
    .line 601
    iput-boolean p1, p0, Lcom/pantech/server/aot/drag/DragController;->mDirty:Z

    .line 602
    return-void
.end method

.method public setDragLayer(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/pantech/server/aot/drag/DragController;->mDragLayer:Landroid/view/View;

    .line 627
    return-void
.end method

.method public setDragListener(Lcom/pantech/server/aot/drag/DragController$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/pantech/server/aot/drag/DragController$DragListener;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/pantech/server/aot/drag/DragController;->mListener:Lcom/pantech/server/aot/drag/DragController$DragListener;

    .line 559
    return-void
.end method

.method public setDragScoller(Lcom/pantech/server/aot/drag/DragScroller;)V
    .locals 0
    .param p1, "scroller"    # Lcom/pantech/server/aot/drag/DragScroller;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/pantech/server/aot/drag/DragController;->mDragScroller:Lcom/pantech/server/aot/drag/DragScroller;

    .line 619
    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/pantech/server/aot/drag/DragController;->mMoveTarget:Landroid/view/View;

    .line 352
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/pantech/server/aot/drag/DragController;->mScrollView:Landroid/view/View;

    .line 623
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/pantech/server/aot/drag/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 552
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IIIIIILcom/pantech/server/aot/drag/DragSource;Ljava/lang/Object;I)V
    .locals 12
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "screenX"    # I
    .param p3, "screenY"    # I
    .param p4, "textureLeft"    # I
    .param p5, "textureTop"    # I
    .param p6, "textureWidth"    # I
    .param p7, "textureHeight"    # I
    .param p8, "source"    # Lcom/pantech/server/aot/drag/DragSource;
    .param p9, "dragInfo"    # Ljava/lang/Object;
    .param p10, "dragAction"    # I

    .prologue
    .line 208
    iget-object v3, p0, Lcom/pantech/server/aot/drag/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/pantech/server/aot/drag/DragController;->mContext:Landroid/content/Context;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/pantech/server/aot/drag/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/aot/drag/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragController;->mWindowToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 214
    iget-object v3, p0, Lcom/pantech/server/aot/drag/DragController;->mListener:Lcom/pantech/server/aot/drag/DragController$DragListener;

    if-eqz v3, :cond_1

    .line 215
    iget-object v3, p0, Lcom/pantech/server/aot/drag/DragController;->mListener:Lcom/pantech/server/aot/drag/DragController$DragListener;

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move/from16 v2, p10

    invoke-interface {v3, v0, v1, v2}, Lcom/pantech/server/aot/drag/DragController$DragListener;->onDragStart(Lcom/pantech/server/aot/drag/DragSource;Ljava/lang/Object;I)V

    .line 218
    :cond_1
    iget v3, p0, Lcom/pantech/server/aot/drag/DragController;->mMotionDownX:F

    float-to-int v3, v3

    sub-int v6, v3, p2

    .line 219
    .local v6, "registrationX":I
    iget v3, p0, Lcom/pantech/server/aot/drag/DragController;->mMotionDownY:F

    float-to-int v3, v3

    sub-int v7, v3, p3

    .line 221
    .local v7, "registrationY":I
    iget v3, p0, Lcom/pantech/server/aot/drag/DragController;->mMotionDownX:F

    int-to-float v4, p2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/pantech/server/aot/drag/DragController;->mTouchOffsetX:F

    .line 222
    iget v3, p0, Lcom/pantech/server/aot/drag/DragController;->mMotionDownY:F

    int-to-float v4, p3

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/pantech/server/aot/drag/DragController;->mTouchOffsetY:F

    .line 224
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pantech/server/aot/drag/DragController;->mDragging:Z

    .line 225
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mDragSource:Lcom/pantech/server/aot/drag/DragSource;

    .line 226
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/pantech/server/aot/drag/DragController;->mDragInfo:Ljava/lang/Object;

    .line 229
    new-instance v3, Lcom/pantech/server/aot/drag/DragView;

    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragController;->mContext:Landroid/content/Context;

    move-object v5, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/pantech/server/aot/drag/DragView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V

    iput-object v3, p0, Lcom/pantech/server/aot/drag/DragController;->mDragView:Lcom/pantech/server/aot/drag/DragView;

    .line 231
    iget-object v3, p0, Lcom/pantech/server/aot/drag/DragController;->mDragLayer:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 232
    iget-object v3, p0, Lcom/pantech/server/aot/drag/DragController;->mDragView:Lcom/pantech/server/aot/drag/DragView;

    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragController;->mDragLayer:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/pantech/server/aot/drag/DragView;->setParentView(Landroid/view/View;)V

    .line 233
    iget-object v3, p0, Lcom/pantech/server/aot/drag/DragController;->mDragView:Lcom/pantech/server/aot/drag/DragView;

    iget v4, p0, Lcom/pantech/server/aot/drag/DragController;->mMotionDownX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/pantech/server/aot/drag/DragController;->mMotionDownY:F

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/pantech/server/aot/drag/DragView;->show(II)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_2
    iget-object v3, p0, Lcom/pantech/server/aot/drag/DragController;->mDragView:Lcom/pantech/server/aot/drag/DragView;

    iget-object v4, p0, Lcom/pantech/server/aot/drag/DragController;->mWindowToken:Landroid/os/IBinder;

    iget v5, p0, Lcom/pantech/server/aot/drag/DragController;->mMotionDownX:F

    float-to-int v5, v5

    iget v8, p0, Lcom/pantech/server/aot/drag/DragController;->mMotionDownY:F

    float-to-int v8, v8

    invoke-virtual {v3, v4, v5, v8}, Lcom/pantech/server/aot/drag/DragView;->show(Landroid/os/IBinder;II)V

    goto :goto_0
.end method

.method public startDrag(Landroid/view/View;Lcom/pantech/server/aot/drag/DragSource;Ljava/lang/Object;I)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "source"    # Lcom/pantech/server/aot/drag/DragSource;
    .param p3, "dragInfo"    # Ljava/lang/Object;
    .param p4, "dragAction"    # I

    .prologue
    .line 162
    iput-object p1, p0, Lcom/pantech/server/aot/drag/DragController;->mOriginator:Landroid/view/View;

    .line 165
    invoke-direct {p0, p1}, Lcom/pantech/server/aot/drag/DragController;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 167
    .local v2, "b":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v12, p0, Lcom/pantech/server/aot/drag/DragController;->mCoordinatesTemp:[I

    .line 173
    .local v12, "loc":[I
    invoke-virtual {p1, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 174
    const/4 v1, 0x0

    aget v3, v12, v1

    .line 175
    .local v3, "screenX":I
    const/4 v1, 0x1

    aget v4, v12, v1

    .line 177
    .local v4, "screenY":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v1, p0

    move-object v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v1 .. v11}, Lcom/pantech/server/aot/drag/DragController;->startDrag(Landroid/graphics/Bitmap;IIIIIILcom/pantech/server/aot/drag/DragSource;Ljava/lang/Object;I)V

    .line 180
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    sget v1, Lcom/pantech/server/aot/drag/DragController;->DRAG_ACTION_MOVE:I

    move/from16 v0, p4

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
