.class public Lcom/pantech/server/aot/menu/AotContainer;
.super Landroid/view/ViewGroup;
.source "AotContainer.java"

# interfaces
.implements Lcom/pantech/server/aot/drag/DragScroller;
.implements Lcom/pantech/server/aot/menu/AotItemSwitcher$SwitcherListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/server/aot/menu/AotContainer$1;,
        Lcom/pantech/server/aot/menu/AotContainer$SavedState;,
        Lcom/pantech/server/aot/menu/AotContainer$ChangedChildViewListener;
    }
.end annotation


# static fields
.field private static final FLING_DIRECTION_LEFT:I = 0x1

.field private static final FLING_DIRECTION_NONE:I = 0x0

.field private static final FLING_DIRECTION_PAUSE:I = 0x3

.field private static final FLING_DIRECTION_RIGHT:I = 0x2

.field private static final INVALID_PAGE:I = -0x1

.field private static final SNAP_VELOCITY:I = 0x1f4

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private allowLongPress:Z

.field private currentPage:I

.field private lastMotionX:F

.field private lastMotionY:F

.field mAccel:F

.field private mAotMenu:Lcom/pantech/server/aot/AlwaysOnTopMenu;

.field private mContext:Landroid/content/Context;

.field mCurrentX:I

.field private mFling:I

.field private mListener:Lcom/pantech/server/aot/menu/AotContainer$ChangedChildViewListener;

.field private mMaxPage:I

.field mNow:J

.field private mScroller:Landroid/widget/Scroller;

.field mTargetX:I

.field mTotalOffSet:I

.field mVel:F

.field mVelocity:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWeight:F

.field private mWidth:F

.field private mX0:F

.field private mX1:F

.field private nextPage:I

.field private touchSlop:I

.field private touchState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->nextPage:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->touchState:I

    .line 111
    const/16 v0, 0xc8

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mVelocity:I

    .line 115
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mWeight:F

    .line 72
    invoke-direct {p0, p1}, Lcom/pantech/server/aot/menu/AotContainer;->initView(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->nextPage:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->touchState:I

    .line 111
    const/16 v0, 0xc8

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mVelocity:I

    .line 115
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mWeight:F

    .line 78
    invoke-direct {p0, p1}, Lcom/pantech/server/aot/menu/AotContainer;->initView(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->nextPage:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->touchState:I

    .line 111
    const/16 v0, 0xc8

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mVelocity:I

    .line 115
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mWeight:F

    .line 84
    invoke-direct {p0, p1}, Lcom/pantech/server/aot/menu/AotContainer;->initView(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method private flingPageToLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mTargetX:I

    iget v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->mCurrentX:I

    if-le v0, v1, :cond_0

    .line 144
    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mTargetX:I

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mCurrentX:I

    .line 145
    iput v2, p0, Lcom/pantech/server/aot/menu/AotContainer;->mFling:I

    .line 147
    :cond_0
    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mCurrentX:I

    invoke-virtual {p0, v0, v2}, Lcom/pantech/server/aot/menu/AotContainer;->scrollTo(II)V

    .line 150
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->EaseOutInterpolation()V

    .line 151
    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mCurrentX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->mX1:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mCurrentX:I

    .line 153
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->invalidate()V

    .line 154
    return-void
.end method

.method private flingPageToRight()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mTargetX:I

    iget v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->mCurrentX:I

    if-ge v0, v1, :cond_0

    .line 128
    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mTargetX:I

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mCurrentX:I

    .line 129
    iput v2, p0, Lcom/pantech/server/aot/menu/AotContainer;->mFling:I

    .line 131
    :cond_0
    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mCurrentX:I

    invoke-virtual {p0, v0, v2}, Lcom/pantech/server/aot/menu/AotContainer;->scrollTo(II)V

    .line 134
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->EaseOutInterpolation()V

    .line 135
    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mCurrentX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->mX1:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mCurrentX:I

    .line 137
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->invalidate()V

    .line 138
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 88
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotContainer;->mContext:Landroid/content/Context;

    .line 89
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/pantech/server/aot/menu/AotContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->mScroller:Landroid/widget/Scroller;

    .line 90
    iput v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->mListener:Lcom/pantech/server/aot/menu/AotContainer$ChangedChildViewListener;

    .line 92
    iput v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mMaxPage:I

    .line 94
    iget-object v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 95
    .local v0, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->touchSlop:I

    .line 96
    return-void
.end method

.method private moveToFirst(Landroid/view/View;IILandroid/view/ViewGroup;)V
    .locals 1
    .param p1, "src"    # Landroid/view/View;
    .param p2, "nStart"    # I
    .param p3, "nEnd"    # I
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 689
    if-ne p2, p3, :cond_0

    .line 694
    :goto_0
    return-void

    .line 692
    :cond_0
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 693
    const/4 v0, 0x0

    invoke-virtual {p4, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private moveToLast(Landroid/view/View;IILandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "src"    # Landroid/view/View;
    .param p2, "nStart"    # I
    .param p3, "nEnd"    # I
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 697
    if-ne p2, p3, :cond_0

    .line 702
    :goto_0
    return-void

    .line 700
    :cond_0
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 701
    invoke-virtual {p4, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private moveToLeftWithAnimation(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;)V
    .locals 10
    .param p1, "src"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nStart"    # I
    .param p4, "nEnd"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 736
    if-ne p3, p4, :cond_0

    .line 764
    :goto_0
    return-void

    .line 739
    :cond_0
    new-array v7, v8, [I

    .line 740
    .local v7, "targetLocation":[I
    new-array v4, v8, [I

    .line 741
    .local v4, "sourceLocation":[I
    move-object v3, p1

    .line 742
    .local v3, "nextView":Landroid/view/View;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v6, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x1

    invoke-virtual {p5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 745
    const/4 v8, 0x0

    invoke-virtual {p5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 747
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    rsub-int/lit8 v2, v8, 0x0

    .line 749
    .local v2, "nInterval":I
    move v1, p3

    .local v1, "i":I
    :goto_1
    if-ge v1, p4, :cond_1

    if-eq p2, v3, :cond_1

    .line 750
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 751
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 754
    :cond_1
    new-instance v5, Lcom/pantech/server/aot/menu/AotItemSwitcher;

    invoke-direct {v5, p1, v6}, Lcom/pantech/server/aot/menu/AotItemSwitcher;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 755
    .local v5, "switcher":Lcom/pantech/server/aot/menu/AotItemSwitcher;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v8, v2

    invoke-direct {v0, v9, v8, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 756
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 757
    const-wide/16 v8, 0x64

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 758
    const-wide/16 v8, 0x32

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 759
    iget-object v8, p0, Lcom/pantech/server/aot/menu/AotContainer;->mContext:Landroid/content/Context;

    const v9, 0x10a0005

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 761
    invoke-virtual {v5, v0}, Lcom/pantech/server/aot/menu/AotItemSwitcher;->setAnimation(Landroid/view/animation/Animation;)V

    .line 762
    invoke-virtual {v5, v0}, Lcom/pantech/server/aot/menu/AotItemSwitcher;->startAnimation(Landroid/view/animation/Animation;)V

    .line 763
    invoke-virtual {v5, p0}, Lcom/pantech/server/aot/menu/AotItemSwitcher;->setSwitcherListener(Lcom/pantech/server/aot/menu/AotItemSwitcher$SwitcherListener;)V

    goto :goto_0
.end method

.method private moveToRightWithAnimation(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;)V
    .locals 14
    .param p1, "src"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nStart"    # I
    .param p4, "nEnd"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 705
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_0

    .line 733
    :goto_0
    return-void

    .line 708
    :cond_0
    move-object v5, p1

    .line 709
    .local v5, "prevView":Landroid/view/View;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v8, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v10, 0x2

    new-array v9, v10, [I

    .line 711
    .local v9, "targetLocation":[I
    const/4 v10, 0x2

    new-array v6, v10, [I

    .line 713
    .local v6, "sourceLocation":[I
    const/4 v10, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 714
    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 716
    const/4 v10, 0x0

    aget v10, v9, v10

    const/4 v11, 0x0

    aget v11, v6, v11

    sub-int v4, v10, v11

    .line 718
    .local v4, "nInterval":I
    move/from16 v3, p3

    .local v3, "i":I
    :goto_1
    move/from16 v0, p4

    if-lt v3, v0, :cond_1

    move-object/from16 v0, p2

    if-eq v0, v5, :cond_1

    .line 719
    add-int/lit8 v10, v3, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 720
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 723
    :cond_1
    new-instance v7, Lcom/pantech/server/aot/menu/AotItemSwitcher;

    invoke-direct {v7, p1, v8}, Lcom/pantech/server/aot/menu/AotItemSwitcher;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 724
    .local v7, "switcher":Lcom/pantech/server/aot/menu/AotItemSwitcher;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v10, 0x0

    int-to-float v11, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v2, v10, v11, v12, v13}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 725
    .local v2, "a":Landroid/view/animation/Animation;
    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 726
    const-wide/16 v10, 0x64

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 727
    const-wide/16 v10, 0x32

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 728
    iget-object v10, p0, Lcom/pantech/server/aot/menu/AotContainer;->mContext:Landroid/content/Context;

    const v11, 0x10a0005

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 730
    invoke-virtual {v7, v2}, Lcom/pantech/server/aot/menu/AotItemSwitcher;->setAnimation(Landroid/view/animation/Animation;)V

    .line 731
    invoke-virtual {v7, v2}, Lcom/pantech/server/aot/menu/AotItemSwitcher;->startAnimation(Landroid/view/animation/Animation;)V

    .line 732
    invoke-virtual {v7, p0}, Lcom/pantech/server/aot/menu/AotItemSwitcher;->setSwitcherListener(Lcom/pantech/server/aot/menu/AotItemSwitcher$SwitcherListener;)V

    goto :goto_0
.end method

.method private prepareFling(I)V
    .locals 6
    .param p1, "whichPage"    # I

    .prologue
    const/4 v2, 0x1

    const/high16 v5, 0x44fa0000    # 2000.0f

    .line 180
    iget v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    if-eq p1, v3, :cond_1

    move v0, v2

    .line 181
    .local v0, "changingPages":Z
    :goto_0
    iput p1, p0, Lcom/pantech/server/aot/menu/AotContainer;->nextPage:I

    .line 182
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 184
    .local v1, "focusedChild":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    invoke-virtual {p0, v3}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 185
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getWidth()I

    move-result v3

    mul-int/2addr v3, p1

    iput v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mTargetX:I

    .line 189
    iget v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mTargetX:I

    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mTotalOffSet:I

    .line 190
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getScrollX()I

    move-result v3

    iput v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mCurrentX:I

    .line 191
    iget v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mVel:F

    .line 192
    iget v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mTotalOffSet:I

    if-lez v3, :cond_2

    .line 193
    iput v2, p0, Lcom/pantech/server/aot/menu/AotContainer;->mFling:I

    .line 195
    iput v5, p0, Lcom/pantech/server/aot/menu/AotContainer;->mAccel:F

    .line 202
    :goto_1
    iget v2, p0, Lcom/pantech/server/aot/menu/AotContainer;->mTotalOffSet:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mWeight:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/pantech/server/aot/menu/AotContainer;->mX0:F

    .line 203
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->prepareEaseInOut()V

    .line 205
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->invalidate()V

    .line 206
    return-void

    .line 180
    .end local v0    # "changingPages":Z
    .end local v1    # "focusedChild":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    .restart local v0    # "changingPages":Z
    .restart local v1    # "focusedChild":Landroid/view/View;
    :cond_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/pantech/server/aot/menu/AotContainer;->mFling:I

    .line 198
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mTargetX:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/pantech/server/aot/menu/AotContainer;->mTotalOffSet:I

    .line 199
    iput v5, p0, Lcom/pantech/server/aot/menu/AotContainer;->mAccel:F

    goto :goto_1
.end method

.method private rearrangeViews(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "src"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nStart"    # I
    .param p4, "nEnd"    # I
    .param p5, "sourceParent"    # Landroid/view/ViewGroup;
    .param p6, "targetParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 676
    invoke-virtual {p6, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 677
    invoke-virtual {p5, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 679
    if-le p3, p4, :cond_0

    .line 680
    invoke-virtual {p6, p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 681
    invoke-virtual {p5, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 686
    :goto_0
    return-void

    .line 683
    :cond_0
    invoke-virtual {p5, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 684
    invoke-virtual {p6, p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private snapToDestination()V
    .locals 4

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getScrollX()I

    move-result v0

    .line 230
    .local v0, "nScrollX":I
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getWidth()I

    move-result v1

    .line 232
    .local v1, "screenWidth":I
    iget v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v1

    if-le v0, v3, :cond_0

    .line 233
    move v0, v1

    .line 236
    :cond_0
    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v0

    div-int v2, v3, v1

    .line 238
    .local v2, "whichScreen":I
    invoke-direct {p0, v2}, Lcom/pantech/server/aot/menu/AotContainer;->prepareFling(I)V

    .line 239
    return-void
.end method


# virtual methods
.method EaseOutInterpolation()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 157
    iget v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mTotalOffSet:I

    int-to-float v3, v3

    iget v4, p0, Lcom/pantech/server/aot/menu/AotContainer;->mWidth:F

    const/high16 v5, 0x43480000    # 200.0f

    sub-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mWidth:F

    .line 158
    .local v0, "width":F
    :goto_0
    iget v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->mX0:F

    .line 159
    .local v1, "x0":F
    iget v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mWeight:F

    sub-float/2addr v3, v6

    mul-float/2addr v3, v1

    add-float/2addr v3, v0

    iget v4, p0, Lcom/pantech/server/aot/menu/AotContainer;->mWeight:F

    div-float v2, v3, v4

    .line 160
    .local v2, "x1":F
    sub-float v3, v2, v1

    iput v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mX1:F

    .line 161
    iput v2, p0, Lcom/pantech/server/aot/menu/AotContainer;->mX0:F

    .line 163
    iget v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mX1:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_0

    .line 164
    const/high16 v3, 0x41200000    # 10.0f

    iput v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mX1:F

    .line 166
    :cond_0
    return-void

    .line 157
    .end local v0    # "width":F
    .end local v1    # "x0":F
    .end local v2    # "x1":F
    :cond_1
    iget v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v0, v3, v4

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 243
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/server/aot/menu/AotContainer;->scrollTo(II)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->nextPage:I

    if-eq v0, v1, :cond_0

    .line 246
    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->nextPage:I

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    .line 247
    iput v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->nextPage:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 262
    iget v8, p0, Lcom/pantech/server/aot/menu/AotContainer;->touchState:I

    if-eq v8, v6, :cond_0

    iget v8, p0, Lcom/pantech/server/aot/menu/AotContainer;->nextPage:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    move v3, v6

    .line 264
    .local v3, "fastDraw":Z
    :goto_0
    iget v8, p0, Lcom/pantech/server/aot/menu/AotContainer;->mFling:I

    if-ne v8, v6, :cond_1

    .line 265
    invoke-direct {p0}, Lcom/pantech/server/aot/menu/AotContainer;->flingPageToRight()V

    .line 266
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getChildCount()I

    move-result v0

    .line 268
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_5

    .line 269
    invoke-virtual {p0, v4}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getDrawingTime()J

    move-result-wide v7

    invoke-virtual {p0, p1, v6, v7, v8}, Lcom/pantech/server/aot/menu/AotContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 268
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "count":I
    .end local v3    # "fastDraw":Z
    .end local v4    # "i":I
    :cond_0
    move v3, v7

    .line 262
    goto :goto_0

    .line 271
    .restart local v3    # "fastDraw":Z
    :cond_1
    iget v8, p0, Lcom/pantech/server/aot/menu/AotContainer;->mFling:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 272
    invoke-direct {p0}, Lcom/pantech/server/aot/menu/AotContainer;->flingPageToLeft()V

    .line 273
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getChildCount()I

    move-result v0

    .line 275
    .restart local v0    # "count":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v0, :cond_5

    .line 276
    invoke-virtual {p0, v4}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getDrawingTime()J

    move-result-wide v7

    invoke-virtual {p0, p1, v6, v7, v8}, Lcom/pantech/server/aot/menu/AotContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 275
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 280
    .end local v0    # "count":I
    .end local v4    # "i":I
    :cond_2
    if-eqz v3, :cond_6

    iget v8, p0, Lcom/pantech/server/aot/menu/AotContainer;->mFling:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_6

    .line 281
    iget v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    iget v8, p0, Lcom/pantech/server/aot/menu/AotContainer;->mMaxPage:I

    if-lt v6, v8, :cond_4

    .line 282
    :cond_3
    iput v7, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    .line 285
    :cond_4
    iget v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    invoke-virtual {p0, v6}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 286
    .local v5, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/pantech/server/aot/menu/AotContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 287
    iget v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    invoke-virtual {p0, v6}, Lcom/pantech/server/aot/menu/AotContainer;->scrollToPage(I)V

    .line 305
    .end local v5    # "v":Landroid/view/View;
    :cond_5
    :goto_3
    return-void

    .line 289
    :cond_6
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getDrawingTime()J

    move-result-wide v1

    .line 292
    .local v1, "drawingTime":J
    iget v7, p0, Lcom/pantech/server/aot/menu/AotContainer;->nextPage:I

    if-ltz v7, :cond_7

    iget v7, p0, Lcom/pantech/server/aot/menu/AotContainer;->nextPage:I

    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_7

    iget v7, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    iget v8, p0, Lcom/pantech/server/aot/menu/AotContainer;->nextPage:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ne v7, v6, :cond_7

    .line 293
    iget v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    invoke-virtual {p0, v6}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v1, v2}, Lcom/pantech/server/aot/menu/AotContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 294
    iget v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->nextPage:I

    invoke-virtual {p0, v6}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v1, v2}, Lcom/pantech/server/aot/menu/AotContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_3

    .line 297
    :cond_7
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getChildCount()I

    move-result v0

    .line 299
    .restart local v0    # "count":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v0, :cond_5

    .line 300
    invoke-virtual {p0, v4}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v1, v2}, Lcom/pantech/server/aot/menu/AotContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 299
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 343
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 344
    iget v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    if-lez v1, :cond_1

    .line 345
    iget v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/pantech/server/aot/menu/AotContainer;->scrollToPage(I)V

    .line 356
    :goto_0
    return v0

    .line 349
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 350
    iget v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 351
    iget v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/pantech/server/aot/menu/AotContainer;->scrollToPage(I)V

    goto :goto_0

    .line 356
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public getChangedChildViewListener()Lcom/pantech/server/aot/menu/AotContainer$ChangedChildViewListener;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mListener:Lcom/pantech/server/aot/menu/AotContainer$ChangedChildViewListener;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 363
    .local v0, "action":I
    const/4 v12, 0x2

    if-ne v0, v12, :cond_0

    iget v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->touchState:I

    if-eqz v12, :cond_0

    .line 364
    const/4 v5, 0x1

    .line 461
    :goto_0
    return v5

    .line 367
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 368
    .local v6, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 370
    .local v9, "y":F
    packed-switch v0, :pswitch_data_0

    .line 458
    :cond_1
    :goto_1
    iget v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->touchState:I

    if-eqz v12, :cond_f

    const/4 v5, 0x1

    .line 461
    .local v5, "ret":Z
    :goto_2
    goto :goto_0

    .line 375
    .end local v5    # "ret":Z
    :pswitch_0
    iget v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->lastMotionX:F

    sub-float v12, v6, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-int v7, v12

    .line 376
    .local v7, "xDiff":I
    iget v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->lastMotionY:F

    sub-float v12, v9, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-int v10, v12

    .line 377
    .local v10, "yDiff":I
    iget v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->touchSlop:I

    if-le v7, v12, :cond_4

    const/4 v8, 0x1

    .line 378
    .local v8, "xMoved":Z
    :goto_3
    iget v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->touchSlop:I

    if-le v10, v12, :cond_5

    const/4 v11, 0x1

    .line 380
    .local v11, "yMoved":Z
    :goto_4
    if-nez v8, :cond_2

    if-eqz v11, :cond_1

    .line 381
    :cond_2
    if-eqz v8, :cond_3

    if-nez v11, :cond_3

    .line 383
    const/4 v12, 0x1

    iput v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->touchState:I

    .line 387
    :cond_3
    iget-boolean v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->allowLongPress:Z

    if-eqz v12, :cond_1

    .line 388
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->allowLongPress:Z

    .line 392
    iget v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    invoke-virtual {p0, v12}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 393
    .local v3, "currentView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1

    .line 377
    .end local v3    # "currentView":Landroid/view/View;
    .end local v8    # "xMoved":Z
    .end local v11    # "yMoved":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 378
    .restart local v8    # "xMoved":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 400
    .end local v7    # "xDiff":I
    .end local v8    # "xMoved":Z
    .end local v10    # "yDiff":I
    :pswitch_1
    iput v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->lastMotionX:F

    .line 401
    iput v9, p0, Lcom/pantech/server/aot/menu/AotContainer;->lastMotionY:F

    .line 402
    iget v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->mFling:I

    if-eqz v12, :cond_7

    .line 403
    const-string v12, "AotContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_DOWN: mFling"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/pantech/server/aot/menu/AotContainer;->mFling:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",currentPage:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",nextPage:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/pantech/server/aot/menu/AotContainer;->nextPage:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v12, 0x3

    iput v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->mFling:I

    .line 412
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->allowLongPress:Z

    .line 414
    iget v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    invoke-virtual {p0, v12}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 415
    .local v3, "currentView":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 416
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v2, :cond_a

    .line 417
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 418
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_6

    .line 419
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/view/View;->setLongClickable(Z)V

    .line 416
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 422
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "count":I
    .end local v3    # "currentView":Landroid/view/ViewGroup;
    .end local v4    # "i":I
    :cond_7
    iget v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    invoke-virtual {p0, v12}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 423
    .restart local v3    # "currentView":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 424
    .restart local v2    # "count":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    if-ge v4, v2, :cond_9

    .line 425
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 426
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_8

    .line 427
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/view/View;->setLongClickable(Z)V

    .line 424
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 430
    .end local v1    # "child":Landroid/view/View;
    :cond_9
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->allowLongPress:Z

    .line 436
    :cond_a
    iget-object v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->isFinished()Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x0

    :goto_7
    iput v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->touchState:I

    goto/16 :goto_1

    :cond_b
    const/4 v12, 0x1

    goto :goto_7

    .line 442
    .end local v2    # "count":I
    .end local v3    # "currentView":Landroid/view/ViewGroup;
    .end local v4    # "i":I
    :pswitch_2
    iget v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->mFling:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_e

    .line 443
    const/4 v12, 0x0

    iput v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->mFling:I

    .line 444
    iget v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    invoke-virtual {p0, v12}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 445
    .restart local v3    # "currentView":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 446
    .restart local v2    # "count":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_8
    if-ge v4, v2, :cond_d

    .line 447
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 448
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_c

    .line 449
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/view/View;->setPressed(Z)V

    .line 446
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 452
    .end local v1    # "child":Landroid/view/View;
    :cond_d
    invoke-direct {p0}, Lcom/pantech/server/aot/menu/AotContainer;->snapToDestination()V

    .line 454
    .end local v2    # "count":I
    .end local v3    # "currentView":Landroid/view/ViewGroup;
    .end local v4    # "i":I
    :cond_e
    const/4 v12, 0x0

    iput v12, p0, Lcom/pantech/server/aot/menu/AotContainer;->touchState:I

    goto/16 :goto_1

    .line 458
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 327
    const/4 v1, 0x0

    .line 328
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getChildCount()I

    move-result v3

    .line 330
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 331
    invoke-virtual {p0, v4}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 334
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 335
    .local v2, "childWidth":I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 336
    add-int/2addr v1, v2

    .line 330
    .end local v2    # "childWidth":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 339
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 309
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 311
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 312
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getChildCount()I

    move-result v0

    .line 313
    .local v0, "count":I
    const/4 v2, 0x0

    .line 315
    .local v2, "maxHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 316
    invoke-virtual {p0, v1}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 317
    invoke-virtual {p0, v1}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 318
    invoke-virtual {p0, v1}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 315
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/pantech/server/aot/menu/AotContainer;->setMeasuredDimension(II)V

    .line 323
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 555
    move-object v0, p1

    check-cast v0, Lcom/pantech/server/aot/menu/AotContainer$SavedState;

    .line 556
    .local v0, "savedState":Lcom/pantech/server/aot/menu/AotContainer$SavedState;
    invoke-virtual {v0}, Lcom/pantech/server/aot/menu/AotContainer$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 557
    iget v1, v0, Lcom/pantech/server/aot/menu/AotContainer$SavedState;->savedPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 558
    iget v1, v0, Lcom/pantech/server/aot/menu/AotContainer$SavedState;->savedPage:I

    iput v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    .line 560
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 548
    new-instance v0, Lcom/pantech/server/aot/menu/AotContainer$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/server/aot/menu/AotContainer$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 549
    .local v0, "state":Lcom/pantech/server/aot/menu/AotContainer$SavedState;
    iget v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    iput v1, v0, Lcom/pantech/server/aot/menu/AotContainer$SavedState;->savedPage:I

    .line 550
    return-object v0
.end method

.method public onSwitcheAnimationEnd()V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mAotMenu:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mAotMenu:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->endAnimation()V

    .line 771
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 466
    iget-object v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_0

    .line 467
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 469
    :cond_0
    iget-object v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 472
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 474
    .local v5, "x":F
    packed-switch v0, :pswitch_data_0

    .line 543
    :cond_1
    :goto_0
    return v9

    .line 479
    :pswitch_0
    iget-object v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 480
    iget-object v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 484
    :cond_2
    iput v5, p0, Lcom/pantech/server/aot/menu/AotContainer;->lastMotionX:F

    goto :goto_0

    .line 488
    :pswitch_1
    iget v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->touchState:I

    if-ne v6, v9, :cond_1

    .line 490
    iget v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->lastMotionX:F

    sub-float/2addr v6, v5

    float-to-int v2, v6

    .line 491
    .local v2, "deltaX":I
    iput v5, p0, Lcom/pantech/server/aot/menu/AotContainer;->lastMotionX:F

    .line 493
    if-gez v2, :cond_3

    .line 494
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getScrollX()I

    move-result v6

    if-lez v6, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getScrollX()I

    move-result v6

    neg-int v6, v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v8}, Lcom/pantech/server/aot/menu/AotContainer;->scrollBy(II)V

    goto :goto_0

    .line 497
    :cond_3
    if-lez v2, :cond_1

    .line 498
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getWidth()I

    move-result v7

    sub-int v1, v6, v7

    .line 500
    .local v1, "availableToScroll":I
    if-lez v1, :cond_1

    .line 501
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6, v8}, Lcom/pantech/server/aot/menu/AotContainer;->scrollBy(II)V

    goto :goto_0

    .line 510
    .end local v1    # "availableToScroll":I
    .end local v2    # "deltaX":I
    :pswitch_2
    iget v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->touchState:I

    if-ne v6, v9, :cond_7

    .line 511
    iget-object v3, p0, Lcom/pantech/server/aot/menu/AotContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 512
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v6, 0x3e8

    invoke-virtual {v3, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 513
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    float-to-int v4, v6

    .line 515
    .local v4, "velocityX":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->mNow:J

    .line 516
    const/16 v6, 0x1f4

    if-le v4, v6, :cond_5

    iget v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    if-lez v6, :cond_5

    .line 519
    iput v4, p0, Lcom/pantech/server/aot/menu/AotContainer;->mVelocity:I

    .line 520
    iget v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    add-int/lit8 v6, v6, -0x1

    invoke-direct {p0, v6}, Lcom/pantech/server/aot/menu/AotContainer;->prepareFling(I)V

    .line 530
    :goto_1
    iget-object v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_4

    .line 531
    iget-object v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 532
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 539
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "velocityX":I
    :cond_4
    :goto_2
    iput v8, p0, Lcom/pantech/server/aot/menu/AotContainer;->touchState:I

    goto/16 :goto_0

    .line 521
    .restart local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v4    # "velocityX":I
    :cond_5
    const/16 v6, -0x1f4

    if-ge v4, v6, :cond_6

    iget v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_6

    .line 524
    neg-int v6, v4

    iput v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->mVelocity:I

    .line 525
    iget v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v6}, Lcom/pantech/server/aot/menu/AotContainer;->prepareFling(I)V

    goto :goto_1

    .line 527
    :cond_6
    invoke-direct {p0}, Lcom/pantech/server/aot/menu/AotContainer;->snapToDestination()V

    goto :goto_1

    .line 534
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "velocityX":I
    :cond_7
    iget v6, p0, Lcom/pantech/server/aot/menu/AotContainer;->mFling:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 535
    const-string v6, "AotContainer"

    const-string v7, "FLING_DIRECTION_PAUSE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iput v8, p0, Lcom/pantech/server/aot/menu/AotContainer;->mFling:I

    .line 537
    invoke-direct {p0}, Lcom/pantech/server/aot/menu/AotContainer;->snapToDestination()V

    goto :goto_2

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method prepareEaseInOut()V
    .locals 3

    .prologue
    const/high16 v2, 0x43480000    # 200.0f

    .line 170
    iput v2, p0, Lcom/pantech/server/aot/menu/AotContainer;->mAccel:F

    .line 171
    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mVelocity:I

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mVel:F

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mX1:F

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mNow:J

    .line 175
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mWidth:F

    .line 176
    return-void
.end method

.method public rearrangeAotItem(Landroid/view/View;Landroid/view/View;)V
    .locals 31
    .param p1, "src"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/server/aot/menu/AotContainer;->getChildCount()I

    move-result v26

    .line 597
    .local v26, "pageCount":I
    const/16 v29, 0x0

    .local v29, "targetParent":Landroid/view/ViewGroup;
    const/4 v7, 0x0

    .line 598
    .local v7, "sourceParent":Landroid/view/ViewGroup;
    const/4 v5, -0x1

    .local v5, "nStart":I
    const/4 v6, -0x1

    .line 599
    .local v6, "nEnd":I
    const/16 v27, -0x1

    .local v27, "srcPage":I
    const/16 v28, -0x1

    .line 601
    .local v28, "tarPage":I
    const/16 v25, 0x0

    .local v25, "page":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    .line 602
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    .line 604
    .local v24, "childGroup":Landroid/view/ViewGroup;
    const/4 v2, -0x1

    if-ne v5, v2, :cond_0

    .line 605
    move-object/from16 v7, v24

    .line 606
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 607
    move/from16 v27, v25

    .line 610
    :cond_0
    const/4 v2, -0x1

    if-ne v6, v2, :cond_1

    .line 611
    move-object/from16 v29, v24

    .line 612
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 613
    move/from16 v28, v25

    .line 601
    :cond_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 617
    .end local v24    # "childGroup":Landroid/view/ViewGroup;
    :cond_2
    if-eqz v29, :cond_3

    if-eqz v7, :cond_3

    const/4 v2, -0x1

    if-eq v5, v2, :cond_3

    const/4 v2, -0x1

    if-ne v6, v2, :cond_4

    .line 673
    :cond_3
    :goto_1
    return-void

    .line 621
    :cond_4
    move-object/from16 v0, v29

    if-ne v0, v7, :cond_6

    .line 622
    if-le v5, v6, :cond_5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 623
    invoke-direct/range {v2 .. v7}, Lcom/pantech/server/aot/menu/AotContainer;->moveToRightWithAnimation(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;)V

    goto :goto_1

    :cond_5
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 625
    invoke-direct/range {v2 .. v7}, Lcom/pantech/server/aot/menu/AotContainer;->moveToLeftWithAnimation(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;)V

    goto :goto_1

    .line 627
    :cond_6
    move/from16 v30, v27

    .line 628
    .local v30, "tmpSrcPage":I
    move-object v13, v7

    .line 631
    .local v13, "tmpSrcParent":Landroid/view/ViewGroup;
    move/from16 v0, v28

    move/from16 v1, v27

    if-le v0, v1, :cond_8

    .line 632
    :goto_2
    move/from16 v0, v28

    move/from16 v1, v30

    if-le v0, v1, :cond_3

    .line 633
    add-int/lit8 v2, v30, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 635
    .local v14, "tmpTarParent":Landroid/view/ViewGroup;
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .line 637
    .local v11, "lastIndex":I
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 639
    .local v10, "f":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v11, v13}, Lcom/pantech/server/aot/menu/AotContainer;->moveToLast(Landroid/view/View;IILandroid/view/ViewGroup;)V

    .line 640
    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v14}, Lcom/pantech/server/aot/menu/AotContainer;->rearrangeViews(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 642
    add-int/lit8 v30, v30, 0x1

    .line 643
    const/4 v5, 0x0

    .line 645
    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v14

    .line 646
    invoke-direct/range {v15 .. v20}, Lcom/pantech/server/aot/menu/AotContainer;->moveToLeftWithAnimation(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;)V

    goto :goto_2

    .line 648
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "tmpSrcParent":Landroid/view/ViewGroup;
    check-cast v13, Landroid/view/ViewGroup;

    .restart local v13    # "tmpSrcParent":Landroid/view/ViewGroup;
    goto :goto_2

    .line 651
    .end local v10    # "f":Landroid/view/View;
    .end local v11    # "lastIndex":I
    .end local v14    # "tmpTarParent":Landroid/view/ViewGroup;
    :cond_8
    move/from16 v0, v28

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    .line 652
    :goto_3
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    .line 653
    add-int/lit8 v2, v30, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 655
    .restart local v14    # "tmpTarParent":Landroid/view/ViewGroup;
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .line 656
    .restart local v11    # "lastIndex":I
    invoke-virtual {v14, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 659
    .local v17, "e":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v2, v13}, Lcom/pantech/server/aot/menu/AotContainer;->moveToFirst(Landroid/view/View;IILandroid/view/ViewGroup;)V

    .line 660
    const/16 v18, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v19, v11

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    invoke-direct/range {v15 .. v21}, Lcom/pantech/server/aot/menu/AotContainer;->rearrangeViews(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 662
    add-int/lit8 v30, v30, -0x1

    .line 663
    move v5, v11

    .line 665
    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v23, v14

    .line 666
    invoke-direct/range {v18 .. v23}, Lcom/pantech/server/aot/menu/AotContainer;->moveToRightWithAnimation(Landroid/view/View;Landroid/view/View;IILandroid/view/ViewGroup;)V

    goto :goto_3

    .line 668
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "tmpSrcParent":Landroid/view/ViewGroup;
    check-cast v13, Landroid/view/ViewGroup;

    .restart local v13    # "tmpSrcParent":Landroid/view/ViewGroup;
    goto :goto_3
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    .line 566
    .local v0, "prevPage":I
    if-lez v0, :cond_0

    .line 567
    add-int/lit8 v0, v0, -0x1

    .line 569
    :cond_0
    invoke-direct {p0, v0}, Lcom/pantech/server/aot/menu/AotContainer;->prepareFling(I)V

    .line 570
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 574
    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    .line 576
    .local v0, "prevPage":I
    iget v1, p0, Lcom/pantech/server/aot/menu/AotContainer;->mMaxPage:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 577
    add-int/lit8 v0, v0, 0x1

    .line 579
    :cond_0
    invoke-direct {p0, v0}, Lcom/pantech/server/aot/menu/AotContainer;->prepareFling(I)V

    .line 580
    return-void
.end method

.method public scrollToPage(I)V
    .locals 9
    .param p1, "whichPage"    # I

    .prologue
    const/4 v2, 0x0

    .line 209
    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    if-eq p1, v0, :cond_2

    const/4 v6, 0x1

    .line 210
    .local v6, "changingScreens":Z
    :goto_0
    iput p1, p0, Lcom/pantech/server/aot/menu/AotContainer;->nextPage:I

    .line 212
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 213
    .local v7, "focusedChild":Landroid/view/View;
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    invoke-virtual {p0, v0}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v7, v0, :cond_0

    .line 214
    invoke-virtual {v7}, Landroid/view/View;->clearFocus()V

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getWidth()I

    move-result v0

    mul-int v8, p1, v0

    .line 218
    .local v8, "newX":I
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getScrollX()I

    move-result v0

    sub-int v3, v8, v0

    .line 219
    .local v3, "delta":I
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    mul-int/lit8 v5, v4, 0x64

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 221
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mListener:Lcom/pantech/server/aot/menu/AotContainer$ChangedChildViewListener;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->mListener:Lcom/pantech/server/aot/menu/AotContainer$ChangedChildViewListener;

    invoke-interface {v0, p1}, Lcom/pantech/server/aot/menu/AotContainer$ChangedChildViewListener;->onChangedChildView(I)V

    .line 224
    :cond_1
    iput p1, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    .line 225
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->invalidate()V

    .line 226
    return-void

    .end local v3    # "delta":I
    .end local v6    # "changingScreens":Z
    .end local v7    # "focusedChild":Landroid/view/View;
    .end local v8    # "newX":I
    :cond_2
    move v6, v2

    .line 209
    goto :goto_0
.end method

.method public setAnimationEndListener(Lcom/pantech/server/aot/AlwaysOnTopMenu;)V
    .locals 0
    .param p1, "window"    # Lcom/pantech/server/aot/AlwaysOnTopMenu;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotContainer;->mAotMenu:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    .line 775
    return-void
.end method

.method public setChangedChildViewListener(Lcom/pantech/server/aot/menu/AotContainer$ChangedChildViewListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/pantech/server/aot/menu/AotContainer$ChangedChildViewListener;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotContainer;->mListener:Lcom/pantech/server/aot/menu/AotContainer$ChangedChildViewListener;

    .line 588
    return-void
.end method

.method setCurrentPage(I)V
    .locals 3
    .param p1, "page"    # I

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getChildCount()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    .line 104
    iget v0, p0, Lcom/pantech/server/aot/menu/AotContainer;->currentPage:I

    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/pantech/server/aot/menu/AotContainer;->scrollTo(II)V

    .line 105
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->invalidate()V

    .line 106
    return-void
.end method

.method public setMaxPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/pantech/server/aot/menu/AotContainer;->mMaxPage:I

    .line 100
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/pantech/server/aot/menu/AotContainer;->getChildCount()I

    move-result v0

    .line 254
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 255
    invoke-virtual {p0, v1}, Lcom/pantech/server/aot/menu/AotContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method
