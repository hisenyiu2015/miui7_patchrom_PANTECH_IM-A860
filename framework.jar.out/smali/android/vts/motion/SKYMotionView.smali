.class Landroid/vts/motion/SKYMotionView;
.super Ljava/lang/Object;
.source "SKYMotionView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SKYMotion"


# instance fields
.field private mHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Landroid/vts/motion/SKYMotionView;->mHolder:Landroid/view/SurfaceHolder;

    .line 14
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 17
    if-eqz p1, :cond_1

    .line 18
    iget-object v1, p0, Landroid/vts/motion/SKYMotionView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 19
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 20
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 21
    iget-object v1, p0, Landroid/vts/motion/SKYMotionView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 25
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    return-void
.end method
