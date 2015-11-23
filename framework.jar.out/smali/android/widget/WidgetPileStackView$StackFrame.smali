.class Landroid/widget/WidgetPileStackView$StackFrame;
.super Landroid/widget/FrameLayout;
.source "WidgetPileStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/WidgetPileStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StackFrame"
.end annotation


# instance fields
.field sliderAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field transformAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 573
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 574
    return-void
.end method


# virtual methods
.method cancelSliderAnimator()Z
    .locals 2

    .prologue
    .line 596
    iget-object v1, p0, Landroid/widget/WidgetPileStackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, p0, Landroid/widget/WidgetPileStackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 598
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 600
    const/4 v1, 0x1

    .line 603
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method cancelTransformAnimator()Z
    .locals 2

    .prologue
    .line 585
    iget-object v1, p0, Landroid/widget/WidgetPileStackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 586
    iget-object v1, p0, Landroid/widget/WidgetPileStackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 587
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 589
    const/4 v1, 0x1

    .line 592
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setSliderAnimator(Landroid/animation/ObjectAnimator;)V
    .locals 1
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 581
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/WidgetPileStackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    .line 582
    return-void
.end method

.method setTransformAnimator(Landroid/animation/ObjectAnimator;)V
    .locals 1
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 577
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/WidgetPileStackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    .line 578
    return-void
.end method
