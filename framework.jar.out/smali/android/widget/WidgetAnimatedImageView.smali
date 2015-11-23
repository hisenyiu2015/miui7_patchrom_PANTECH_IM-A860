.class public Landroid/widget/WidgetAnimatedImageView;
.super Landroid/widget/ImageView;
.source "WidgetAnimatedImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field mAnim:Landroid/graphics/drawable/AnimationDrawable;

.field mAttached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method private updateAnim()V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/widget/WidgetAnimatedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 41
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Landroid/widget/WidgetAnimatedImageView;->mAttached:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/WidgetAnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Landroid/widget/WidgetAnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 44
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2

    .line 45
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Landroid/widget/WidgetAnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 46
    invoke-virtual {p0}, Landroid/widget/WidgetAnimatedImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Landroid/widget/WidgetAnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 52
    :cond_1
    :goto_0
    return-void

    .line 50
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/WidgetAnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/WidgetAnimatedImageView;->mAttached:Z

    .line 71
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 76
    iget-object v0, p0, Landroid/widget/WidgetAnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Landroid/widget/WidgetAnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 79
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/WidgetAnimatedImageView;->mAttached:Z

    .line 80
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "vis"    # I

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 85
    iget-object v0, p0, Landroid/widget/WidgetAnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/widget/WidgetAnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Landroid/widget/WidgetAnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Landroid/widget/WidgetAnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-direct {p0}, Landroid/widget/WidgetAnimatedImageView;->updateAnim()V

    .line 58
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    invoke-direct {p0}, Landroid/widget/WidgetAnimatedImageView;->updateAnim()V

    .line 65
    return-void
.end method
