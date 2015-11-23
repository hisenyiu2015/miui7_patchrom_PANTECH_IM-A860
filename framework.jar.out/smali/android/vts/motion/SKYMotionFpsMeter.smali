.class public Landroid/vts/motion/SKYMotionFpsMeter;
.super Ljava/lang/Object;
.source "SKYMotionFpsMeter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SKYMotion"


# instance fields
.field framesCouner:I

.field freq:D

.field paint:Landroid/graphics/Paint;

.field prevFrameTime:J

.field step:I

.field strfps:Ljava/lang/String;

.field twoPlaces:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/vts/motion/SKYMotionFpsMeter;->twoPlaces:Ljava/text/DecimalFormat;

    .line 12
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offsetx"    # F
    .param p3, "offsety"    # F

    .prologue
    .line 48
    iget-object v0, p0, Landroid/vts/motion/SKYMotionFpsMeter;->strfps:Ljava/lang/String;

    const/high16 v1, 0x41a00000    # 20.0f

    add-float/2addr v1, p2

    const/high16 v2, 0x42700000    # 60.0f

    add-float/2addr v2, p3

    iget-object v3, p0, Landroid/vts/motion/SKYMotionFpsMeter;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 49
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 24
    const/16 v0, 0x14

    iput v0, p0, Landroid/vts/motion/SKYMotionFpsMeter;->step:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Landroid/vts/motion/SKYMotionFpsMeter;->framesCouner:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Landroid/vts/motion/SKYMotionFpsMeter;->strfps:Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/vts/motion/SKYMotionFpsMeter;->paint:Landroid/graphics/Paint;

    .line 31
    iget-object v0, p0, Landroid/vts/motion/SKYMotionFpsMeter;->paint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Landroid/vts/motion/SKYMotionFpsMeter;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 33
    return-void
.end method

.method public measure()V
    .locals 2

    .prologue
    .line 36
    iget v0, p0, Landroid/vts/motion/SKYMotionFpsMeter;->framesCouner:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/vts/motion/SKYMotionFpsMeter;->framesCouner:I

    .line 37
    iget v0, p0, Landroid/vts/motion/SKYMotionFpsMeter;->framesCouner:I

    iget v1, p0, Landroid/vts/motion/SKYMotionFpsMeter;->step:I

    rem-int/2addr v0, v1

    .line 45
    return-void
.end method
