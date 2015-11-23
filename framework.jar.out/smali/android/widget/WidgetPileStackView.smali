.class public Landroid/widget/WidgetPileStackView;
.super Landroid/widget/AdapterViewAnimator;
.source "WidgetPileStackView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/WidgetPileStackView$HolographicHelper;,
        Landroid/widget/WidgetPileStackView$LayoutParams;,
        Landroid/widget/WidgetPileStackView$StackSlider;,
        Landroid/widget/WidgetPileStackView$StackFrame;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0x190

.field private static final FRAME_PADDING:I = 0x0

.field private static final GESTURE_NONE:I = 0x0

.field private static final GESTURE_SLIDE_DOWN:I = 0x2

.field private static final GESTURE_SLIDE_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final ITEMS_SLIDE_DOWN:I = 0x1

.field private static final ITEMS_SLIDE_UP:I = 0x0

.field private static final MINIMUM_ANIMATION_DURATION:I = 0x32

.field private static final MIN_TIME_BETWEEN_INTERACTION_AND_AUTOADVANCE:I = 0x1388

.field private static final MIN_TIME_BETWEEN_SCROLLS:J = 0x64L

.field private static NUM_ACTIVE_VIEWS:I = 0x0

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 1.0f

.field private static final PERSPECTIVE_SHIFT_FACTOR_X:F = 0.1f

.field private static PERSPECTIVE_SHIFT_FACTOR_Y:F = 0.0f

.field private static final SLIDE_UP_RATIO:F = 0.7f

.field private static final STACK_RELAYOUT_DURATION:I = 0xc8

.field private static final SWIPE_THRESHOLD_RATIO:F = 0.2f

.field private static sHolographicHelper:Landroid/widget/WidgetPileStackView$HolographicHelper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivePointerId:I

.field private mClickColor:I

.field private mClickFeedback:Landroid/widget/ImageView;

.field private mClickFeedbackIsValid:Z

.field private mFirstLayoutHappened:Z

.field private mFramePadding:I

.field private mHighlight:Landroid/widget/ImageView;

.field private mInitialX:F

.field private mInitialY:F

.field private mLastInteractionTime:J

.field private mLastScrollTime:J

.field private mMaximumVelocity:I

.field private mNewPerspectiveShiftX:F

.field private mNewPerspectiveShiftY:F

.field private mPerspectiveShiftX:F

.field private mPerspectiveShiftY:F

.field private mResOutColor:I

.field private mSlideAmount:I

.field private mStackMode:I

.field private mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

.field private mSwipeGestureType:I

.field private mSwipeThreshold:I

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTransitionIsSetup:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mYVelocity:I

.field private orientation:I

.field private final stackInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const v0, 0x3e1ba5e3    # 0.152f

    sput v0, Landroid/widget/WidgetPileStackView;->PERSPECTIVE_SHIFT_FACTOR_Y:F

    .line 114
    const/4 v0, 0x6

    sput v0, Landroid/widget/WidgetPileStackView;->NUM_ACTIVE_VIEWS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/WidgetPileStackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 167
    const v0, 0x1010403

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/WidgetPileStackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 174
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const-string v1, "WidgetPileStackView"

    iput-object v1, p0, Landroid/widget/WidgetPileStackView;->TAG:Ljava/lang/String;

    .line 118
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/WidgetPileStackView;->mTouchRect:Landroid/graphics/Rect;

    .line 131
    iput v3, p0, Landroid/widget/WidgetPileStackView;->mYVelocity:I

    .line 132
    iput v3, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    .line 138
    iput-boolean v3, p0, Landroid/widget/WidgetPileStackView;->mTransitionIsSetup:Z

    .line 145
    iput-boolean v3, p0, Landroid/widget/WidgetPileStackView;->mClickFeedbackIsValid:Z

    .line 147
    iput-boolean v3, p0, Landroid/widget/WidgetPileStackView;->mFirstLayoutHappened:Z

    .line 148
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/WidgetPileStackView;->mLastInteractionTime:J

    .line 152
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/WidgetPileStackView;->stackInvalidateRect:Landroid/graphics/Rect;

    .line 154
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/WidgetPileStackView;->orientation:I

    .line 175
    sget-object v1, Lcom/android/internal/R$styleable;->StackView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 178
    .local v0, "a":Landroid/content/res/TypedArray;
    iput v3, p0, Landroid/widget/WidgetPileStackView;->mResOutColor:I

    .line 180
    iput v3, p0, Landroid/widget/WidgetPileStackView;->mClickColor:I

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/widget/WidgetPileStackView;->orientation:I

    .line 184
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    invoke-direct {p0}, Landroid/widget/WidgetPileStackView;->initStackView()V

    .line 186
    return-void
.end method

.method static synthetic access$000(Landroid/widget/WidgetPileStackView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/WidgetPileStackView;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/widget/WidgetPileStackView;->mHighlight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/WidgetPileStackView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/WidgetPileStackView;

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/WidgetPileStackView;->mStackMode:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/WidgetPileStackView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/WidgetPileStackView;

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/WidgetPileStackView;->mSlideAmount:I

    return v0
.end method

.method private beginGestureIfNeeded(F)V
    .locals 12
    .param p1, "deltaY"    # F

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 747
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v10, v10

    iget v11, p0, Landroid/widget/WidgetPileStackView;->mTouchSlop:I

    if-le v10, v11, :cond_0

    iget v10, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    if-nez v10, :cond_0

    .line 748
    const/4 v10, 0x0

    cmpg-float v10, p1, v10

    if-gez v10, :cond_1

    move v5, v7

    .line 749
    .local v5, "swipeGestureType":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->cancelLongPress()V

    .line 750
    invoke-virtual {p0, v7}, Landroid/widget/WidgetPileStackView;->requestDisallowInterceptTouchEvent(Z)V

    .line 752
    iget-object v10, p0, Landroid/widget/WidgetPileStackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v10, :cond_2

    .line 792
    .end local v5    # "swipeGestureType":I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v5, v8

    .line 748
    goto :goto_0

    .line 753
    .restart local v5    # "swipeGestureType":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getCount()I

    move-result v1

    .line 756
    .local v1, "adapterCount":I
    iget v10, p0, Landroid/widget/WidgetPileStackView;->mStackMode:I

    if-nez v10, :cond_8

    .line 757
    if-ne v5, v8, :cond_7

    move v0, v9

    .line 762
    .local v0, "activeIndex":I
    :goto_2
    iget-boolean v10, p0, Landroid/widget/WidgetPileStackView;->mLoopViews:Z

    if-eqz v10, :cond_a

    if-ne v1, v7, :cond_a

    iget v10, p0, Landroid/widget/WidgetPileStackView;->mStackMode:I

    if-nez v10, :cond_3

    if-eq v5, v7, :cond_4

    :cond_3
    iget v10, p0, Landroid/widget/WidgetPileStackView;->mStackMode:I

    if-ne v10, v7, :cond_a

    if-ne v5, v8, :cond_a

    :cond_4
    move v3, v7

    .line 765
    .local v3, "endOfStack":Z
    :goto_3
    iget-boolean v10, p0, Landroid/widget/WidgetPileStackView;->mLoopViews:Z

    if-eqz v10, :cond_b

    if-ne v1, v7, :cond_b

    iget v10, p0, Landroid/widget/WidgetPileStackView;->mStackMode:I

    if-ne v10, v7, :cond_5

    if-eq v5, v7, :cond_6

    :cond_5
    iget v10, p0, Landroid/widget/WidgetPileStackView;->mStackMode:I

    if-nez v10, :cond_b

    if-ne v5, v8, :cond_b

    :cond_6
    move v2, v7

    .line 770
    .local v2, "beginningOfStack":Z
    :goto_4
    iget-boolean v8, p0, Landroid/widget/WidgetPileStackView;->mLoopViews:Z

    if-eqz v8, :cond_c

    if-nez v2, :cond_c

    if-nez v3, :cond_c

    .line 771
    const/4 v4, 0x0

    .line 781
    .local v4, "stackMode":I
    :goto_5
    if-nez v4, :cond_11

    :goto_6
    iput-boolean v7, p0, Landroid/widget/WidgetPileStackView;->mTransitionIsSetup:Z

    .line 783
    invoke-virtual {p0, v0}, Landroid/widget/WidgetPileStackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v6

    .line 784
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 786
    invoke-direct {p0, v6, v4}, Landroid/widget/WidgetPileStackView;->setupStackSlider(Landroid/view/View;I)V

    .line 789
    iput v5, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    .line 790
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->cancelHandleClick()V

    goto :goto_1

    .end local v0    # "activeIndex":I
    .end local v2    # "beginningOfStack":Z
    .end local v3    # "endOfStack":Z
    .end local v4    # "stackMode":I
    .end local v6    # "v":Landroid/view/View;
    :cond_7
    move v0, v7

    .line 757
    goto :goto_2

    .line 759
    :cond_8
    if-ne v5, v8, :cond_9

    move v0, v7

    .restart local v0    # "activeIndex":I
    :goto_7
    goto :goto_2

    .end local v0    # "activeIndex":I
    :cond_9
    move v0, v9

    goto :goto_7

    .restart local v0    # "activeIndex":I
    :cond_a
    move v3, v9

    .line 762
    goto :goto_3

    .restart local v3    # "endOfStack":Z
    :cond_b
    move v2, v9

    .line 765
    goto :goto_4

    .line 772
    .restart local v2    # "beginningOfStack":Z
    :cond_c
    iget v8, p0, Landroid/widget/WidgetPileStackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v8, v0

    const/4 v10, -0x1

    if-eq v8, v10, :cond_d

    if-eqz v2, :cond_e

    .line 773
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 774
    const/4 v4, 0x1

    .restart local v4    # "stackMode":I
    goto :goto_5

    .line 775
    .end local v4    # "stackMode":I
    :cond_e
    iget v8, p0, Landroid/widget/WidgetPileStackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v8, v0

    add-int/lit8 v10, v1, -0x1

    if-eq v8, v10, :cond_f

    if-eqz v3, :cond_10

    .line 776
    :cond_f
    const/4 v4, 0x2

    .restart local v4    # "stackMode":I
    goto :goto_5

    .line 778
    .end local v4    # "stackMode":I
    :cond_10
    const/4 v4, 0x0

    .restart local v4    # "stackMode":I
    goto :goto_5

    :cond_11
    move v7, v9

    .line 781
    goto :goto_6
.end method

.method private getAlphaRatio(I)F
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x2

    .line 396
    iget v1, p0, Landroid/widget/WidgetPileStackView;->orientation:I

    if-ne v1, v2, :cond_1

    .line 397
    const/4 v1, 0x3

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 399
    .local v0, "alphaRatio":[F
    sget v1, Landroid/widget/WidgetPileStackView;->NUM_ACTIVE_VIEWS:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    .line 400
    aget v1, v0, v2

    .line 410
    :goto_0
    return v1

    .line 402
    :cond_0
    aget v1, v0, p1

    goto :goto_0

    .line 405
    .end local v0    # "alphaRatio":[F
    :cond_1
    const/4 v1, 0x5

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    .line 407
    .restart local v0    # "alphaRatio":[F
    sget v1, Landroid/widget/WidgetPileStackView;->NUM_ACTIVE_VIEWS:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_2

    .line 408
    const/4 v1, 0x4

    aget v1, v0, v1

    goto :goto_0

    .line 410
    :cond_2
    aget v1, v0, p1

    goto :goto_0

    .line 397
    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 405
    :array_1
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getScaleRatio(I)F
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x2

    .line 415
    iget v1, p0, Landroid/widget/WidgetPileStackView;->orientation:I

    if-ne v1, v2, :cond_1

    .line 416
    const/4 v1, 0x3

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 418
    .local v0, "scaleRatio":[F
    sget v1, Landroid/widget/WidgetPileStackView;->NUM_ACTIVE_VIEWS:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    .line 419
    aget v1, v0, v2

    .line 429
    :goto_0
    return v1

    .line 421
    :cond_0
    aget v1, v0, p1

    goto :goto_0

    .line 424
    .end local v0    # "scaleRatio":[F
    :cond_1
    const/4 v1, 0x5

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    .line 426
    .restart local v0    # "scaleRatio":[F
    sget v1, Landroid/widget/WidgetPileStackView;->NUM_ACTIVE_VIEWS:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_2

    .line 427
    const/4 v1, 0x4

    aget v1, v0, v1

    goto :goto_0

    .line 429
    :cond_2
    aget v1, v0, p1

    goto :goto_0

    .line 416
    :array_0
    .array-data 4
        0x3f570a3d    # 0.84f
        0x3f6b851f    # 0.92f
        0x3f800000    # 1.0f
    .end array-data

    .line 424
    :array_1
    .array-data 4
        0x3f3851ec    # 0.72f
        0x3f47ae14    # 0.78f
        0x3f570a3d    # 0.84f
        0x3f6b851f    # 0.92f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getTransYOffset(I)F
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 453
    invoke-direct {p0, p1}, Landroid/widget/WidgetPileStackView;->getScaleRatio(I)F

    move-result v0

    .line 456
    .local v0, "scaleYRatio":F
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v1, v2, v3

    .line 458
    .local v1, "transYOffset":F
    return v1
.end method

.method private getTransYRatio(I)F
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x2

    .line 434
    iget v1, p0, Landroid/widget/WidgetPileStackView;->orientation:I

    if-ne v1, v2, :cond_1

    .line 435
    const/4 v1, 0x3

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 437
    .local v0, "transYRatio":[F
    sget v1, Landroid/widget/WidgetPileStackView;->NUM_ACTIVE_VIEWS:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    .line 438
    aget v1, v0, v2

    .line 448
    :goto_0
    return v1

    .line 440
    :cond_0
    aget v1, v0, p1

    goto :goto_0

    .line 443
    .end local v0    # "transYRatio":[F
    :cond_1
    const/4 v1, 0x5

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    .line 445
    .restart local v0    # "transYRatio":[F
    sget v1, Landroid/widget/WidgetPileStackView;->NUM_ACTIVE_VIEWS:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_2

    .line 446
    const/4 v1, 0x4

    aget v1, v0, v1

    goto :goto_0

    .line 448
    :cond_2
    aget v1, v0, p1

    goto :goto_0

    .line 435
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 443
    :array_1
    .array-data 4
        0x0
        0x3e252bd4    # 0.1613f
        0x3ec631f9    # 0.3871f
        0x3f2d6a16    # 0.6774f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handlePointerUp(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 900
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 901
    .local v6, "pointerIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 902
    .local v4, "newY":F
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mInitialY:F

    sub-float v9, v4, v9

    float-to-int v1, v9

    .line 903
    .local v1, "deltaY":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/widget/WidgetPileStackView;->mLastInteractionTime:J

    .line 905
    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_0

    .line 906
    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    iget v11, p0, Landroid/widget/WidgetPileStackView;->mMaximumVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 907
    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v10, p0, Landroid/widget/WidgetPileStackView;->mActivePointerId:I

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/WidgetPileStackView;->mYVelocity:I

    .line 910
    :cond_0
    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    .line 911
    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 912
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/WidgetPileStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 915
    :cond_1
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mSwipeThreshold:I

    if-le v1, v9, :cond_4

    iget v9, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    iget v9, v9, Landroid/widget/WidgetPileStackView$StackSlider;->mMode:I

    if-nez v9, :cond_4

    .line 919
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    .line 922
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mStackMode:I

    if-nez v9, :cond_3

    .line 923
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->showPrevious()V

    .line 927
    :goto_0
    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->bringToFront()V

    .line 980
    :cond_2
    :goto_1
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/WidgetPileStackView;->mActivePointerId:I

    .line 981
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    .line 982
    return-void

    .line 925
    :cond_3
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->showNext()V

    goto :goto_0

    .line 928
    :cond_4
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mSwipeThreshold:I

    neg-int v9, v9

    if-ge v1, v9, :cond_6

    iget v9, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    iget v9, v9, Landroid/widget/WidgetPileStackView$StackSlider;->mMode:I

    if-nez v9, :cond_6

    .line 932
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    .line 935
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mStackMode:I

    if-nez v9, :cond_5

    .line 936
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->showNext()V

    .line 941
    :goto_2
    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->bringToFront()V

    goto :goto_1

    .line 938
    :cond_5
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->showPrevious()V

    goto :goto_2

    .line 942
    :cond_6
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 945
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mStackMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    const/high16 v3, 0x3f800000    # 1.0f

    .line 946
    .local v3, "finalYProgress":F
    :goto_3
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mStackMode:I

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    iget v9, v9, Landroid/widget/WidgetPileStackView$StackSlider;->mMode:I

    if-eqz v9, :cond_9

    .line 947
    :cond_7
    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/WidgetPileStackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 952
    .local v2, "duration":I
    :goto_4
    new-instance v0, Landroid/widget/WidgetPileStackView$StackSlider;

    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    invoke-direct {v0, p0, v9}, Landroid/widget/WidgetPileStackView$StackSlider;-><init>(Landroid/widget/WidgetPileStackView;Landroid/widget/WidgetPileStackView$StackSlider;)V

    .line 953
    .local v0, "animationSlider":Landroid/widget/WidgetPileStackView$StackSlider;
    const-string v9, "YProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 954
    .local v8, "snapBackY":Landroid/animation/PropertyValuesHolder;
    const-string v9, "XProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 955
    .local v7, "snapBackX":Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 957
    .local v5, "pa":Landroid/animation/ObjectAnimator;
    int-to-long v9, v2

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 958
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 959
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    .line 945
    .end local v0    # "animationSlider":Landroid/widget/WidgetPileStackView$StackSlider;
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    .end local v5    # "pa":Landroid/animation/ObjectAnimator;
    .end local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 949
    .restart local v3    # "finalYProgress":F
    :cond_9
    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/WidgetPileStackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2    # "duration":I
    goto :goto_4

    .line 960
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    :cond_a
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 962
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mStackMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c

    const/4 v3, 0x0

    .line 964
    .restart local v3    # "finalYProgress":F
    :goto_5
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mStackMode:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    iget v9, v9, Landroid/widget/WidgetPileStackView$StackSlider;->mMode:I

    if-eqz v9, :cond_d

    .line 965
    :cond_b
    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/WidgetPileStackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 970
    .restart local v2    # "duration":I
    :goto_6
    new-instance v0, Landroid/widget/WidgetPileStackView$StackSlider;

    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    invoke-direct {v0, p0, v9}, Landroid/widget/WidgetPileStackView$StackSlider;-><init>(Landroid/widget/WidgetPileStackView;Landroid/widget/WidgetPileStackView$StackSlider;)V

    .line 971
    .restart local v0    # "animationSlider":Landroid/widget/WidgetPileStackView$StackSlider;
    const-string v9, "YProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 973
    .restart local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    const-string v9, "XProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 974
    .restart local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 976
    .restart local v5    # "pa":Landroid/animation/ObjectAnimator;
    int-to-long v9, v2

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 977
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    .line 962
    .end local v0    # "animationSlider":Landroid/widget/WidgetPileStackView$StackSlider;
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    .end local v5    # "pa":Landroid/animation/ObjectAnimator;
    .end local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    :cond_c
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_5

    .line 967
    .restart local v3    # "finalYProgress":F
    :cond_d
    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/WidgetPileStackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2    # "duration":I
    goto :goto_6
.end method

.method private initStackView()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 189
    iget v2, p0, Landroid/widget/WidgetPileStackView;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 190
    sput v8, Landroid/widget/WidgetPileStackView;->NUM_ACTIVE_VIEWS:I

    .line 191
    const v2, 0x3d889a02    # 0.0667f

    sput v2, Landroid/widget/WidgetPileStackView;->PERSPECTIVE_SHIFT_FACTOR_Y:F

    .line 198
    :goto_0
    sget v2, Landroid/widget/WidgetPileStackView;->NUM_ACTIVE_VIEWS:I

    invoke-virtual {p0, v2, v6}, Landroid/widget/WidgetPileStackView;->configureViewAnimator(II)V

    .line 199
    invoke-virtual {p0, v6}, Landroid/widget/WidgetPileStackView;->setStaticTransformationsEnabled(Z)V

    .line 200
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 201
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/WidgetPileStackView;->mTouchSlop:I

    .line 202
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/WidgetPileStackView;->mMaximumVelocity:I

    .line 203
    iput v5, p0, Landroid/widget/WidgetPileStackView;->mActivePointerId:I

    .line 205
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/WidgetPileStackView;->mHighlight:Landroid/widget/ImageView;

    .line 206
    iget-object v2, p0, Landroid/widget/WidgetPileStackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/WidgetPileStackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/WidgetPileStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/WidgetPileStackView$LayoutParams;-><init>(Landroid/widget/WidgetPileStackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v2, p0, Landroid/widget/WidgetPileStackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/WidgetPileStackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/WidgetPileStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/WidgetPileStackView$LayoutParams;-><init>(Landroid/widget/WidgetPileStackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/WidgetPileStackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 209
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/WidgetPileStackView;->mClickFeedback:Landroid/widget/ImageView;

    .line 210
    iget-object v2, p0, Landroid/widget/WidgetPileStackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/WidgetPileStackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/WidgetPileStackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/WidgetPileStackView$LayoutParams;-><init>(Landroid/widget/WidgetPileStackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v2, p0, Landroid/widget/WidgetPileStackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/WidgetPileStackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/WidgetPileStackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/WidgetPileStackView$LayoutParams;-><init>(Landroid/widget/WidgetPileStackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/WidgetPileStackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 212
    iget-object v2, p0, Landroid/widget/WidgetPileStackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    new-instance v2, Landroid/widget/WidgetPileStackView$StackSlider;

    invoke-direct {v2, p0}, Landroid/widget/WidgetPileStackView$StackSlider;-><init>(Landroid/widget/WidgetPileStackView;)V

    iput-object v2, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    .line 216
    sget-object v2, Landroid/widget/WidgetPileStackView;->sHolographicHelper:Landroid/widget/WidgetPileStackView$HolographicHelper;

    if-nez v2, :cond_0

    .line 217
    new-instance v2, Landroid/widget/WidgetPileStackView$HolographicHelper;

    iget-object v3, p0, Landroid/widget/WidgetPileStackView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/WidgetPileStackView$HolographicHelper;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/widget/WidgetPileStackView;->sHolographicHelper:Landroid/widget/WidgetPileStackView$HolographicHelper;

    .line 219
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/WidgetPileStackView;->setClipChildren(Z)V

    .line 220
    invoke-virtual {p0, v7}, Landroid/widget/WidgetPileStackView;->setClipToPadding(Z)V

    .line 225
    iput v6, p0, Landroid/widget/WidgetPileStackView;->mStackMode:I

    .line 228
    iput v5, p0, Landroid/widget/WidgetPileStackView;->mWhichChild:I

    .line 232
    iget-object v2, p0, Landroid/widget/WidgetPileStackView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 233
    .local v1, "density":F
    const/4 v2, 0x0

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/WidgetPileStackView;->mFramePadding:I

    .line 234
    return-void

    .line 194
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    .end local v1    # "density":F
    :cond_1
    const/4 v2, 0x6

    sput v2, Landroid/widget/WidgetPileStackView;->NUM_ACTIVE_VIEWS:I

    .line 195
    const v2, 0x3e1ba5e3    # 0.152f

    sput v2, Landroid/widget/WidgetPileStackView;->PERSPECTIVE_SHIFT_FACTOR_Y:F

    goto/16 :goto_0
.end method

.method private measureChildren()V
    .locals 15

    .prologue
    const/high16 v14, -0x80000000

    .line 1222
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getChildCount()I

    move-result v5

    .line 1224
    .local v5, "count":I
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getMeasuredWidth()I

    move-result v10

    .line 1225
    .local v10, "measuredWidth":I
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getMeasuredHeight()I

    move-result v9

    .line 1227
    .local v9, "measuredHeight":I
    int-to-float v11, v10

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, p0, Landroid/widget/WidgetPileStackView;->mPaddingLeft:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/WidgetPileStackView;->mPaddingRight:I

    sub-int v4, v11, v12

    .line 1229
    .local v4, "childWidth":I
    int-to-float v11, v9

    const/high16 v12, 0x3f800000    # 1.0f

    sget v13, Landroid/widget/WidgetPileStackView;->PERSPECTIVE_SHIFT_FACTOR_Y:F

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, p0, Landroid/widget/WidgetPileStackView;->mPaddingTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/WidgetPileStackView;->mPaddingBottom:I

    sub-int v1, v11, v12

    .line 1232
    .local v1, "childHeight":I
    const/4 v8, 0x0

    .line 1233
    .local v8, "maxWidth":I
    const/4 v7, 0x0

    .line 1235
    .local v7, "maxHeight":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 1236
    invoke-virtual {p0, v6}, Landroid/widget/WidgetPileStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1237
    .local v0, "child":Landroid/view/View;
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/view/View;->measure(II)V

    .line 1240
    iget-object v11, p0, Landroid/widget/WidgetPileStackView;->mHighlight:Landroid/widget/ImageView;

    if-eq v0, v11, :cond_1

    iget-object v11, p0, Landroid/widget/WidgetPileStackView;->mClickFeedback:Landroid/widget/ImageView;

    if-eq v0, v11, :cond_1

    .line 1241
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1242
    .local v3, "childMeasuredWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1243
    .local v2, "childMeasuredHeight":I
    if-le v3, v8, :cond_0

    .line 1244
    move v8, v3

    .line 1246
    :cond_0
    if-le v2, v7, :cond_1

    .line 1247
    move v7, v2

    .line 1235
    .end local v2    # "childMeasuredHeight":I
    .end local v3    # "childMeasuredWidth":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1252
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const v11, 0x3dcccccd    # 0.1f

    int-to-float v12, v10

    mul-float/2addr v11, v12

    iput v11, p0, Landroid/widget/WidgetPileStackView;->mNewPerspectiveShiftX:F

    .line 1253
    sget v11, Landroid/widget/WidgetPileStackView;->PERSPECTIVE_SHIFT_FACTOR_Y:F

    int-to-float v12, v9

    mul-float/2addr v11, v12

    iput v11, p0, Landroid/widget/WidgetPileStackView;->mNewPerspectiveShiftY:F

    .line 1256
    if-lez v8, :cond_3

    if-lez v5, :cond_3

    if-ge v8, v4, :cond_3

    .line 1257
    sub-int v11, v10, v8

    int-to-float v11, v11

    iput v11, p0, Landroid/widget/WidgetPileStackView;->mNewPerspectiveShiftX:F

    .line 1260
    :cond_3
    if-lez v7, :cond_4

    if-lez v5, :cond_4

    if-ge v7, v1, :cond_4

    .line 1261
    sub-int v11, v9, v7

    int-to-float v11, v11

    iput v11, p0, Landroid/widget/WidgetPileStackView;->mNewPerspectiveShiftY:F

    .line 1263
    :cond_4
    return-void
.end method

.method private onLayout()V
    .locals 3

    .prologue
    .line 652
    iget-boolean v1, p0, Landroid/widget/WidgetPileStackView;->mFirstLayoutHappened:Z

    if-nez v1, :cond_0

    .line 653
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/WidgetPileStackView;->mFirstLayoutHappened:Z

    .line 654
    invoke-direct {p0}, Landroid/widget/WidgetPileStackView;->updateChildTransforms()V

    .line 657
    :cond_0
    const v1, 0x3f333333    # 0.7f

    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 658
    .local v0, "newSlideAmount":I
    iget v1, p0, Landroid/widget/WidgetPileStackView;->mSlideAmount:I

    if-eq v1, v0, :cond_1

    .line 659
    iput v0, p0, Landroid/widget/WidgetPileStackView;->mSlideAmount:I

    .line 660
    const v1, 0x3e4ccccd    # 0.2f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/WidgetPileStackView;->mSwipeThreshold:I

    .line 663
    :cond_1
    iget v1, p0, Landroid/widget/WidgetPileStackView;->mPerspectiveShiftY:F

    iget v2, p0, Landroid/widget/WidgetPileStackView;->mNewPerspectiveShiftY:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroid/widget/WidgetPileStackView;->mPerspectiveShiftX:F

    iget v2, p0, Landroid/widget/WidgetPileStackView;->mNewPerspectiveShiftX:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    .line 666
    :cond_2
    iget v1, p0, Landroid/widget/WidgetPileStackView;->mNewPerspectiveShiftY:F

    iput v1, p0, Landroid/widget/WidgetPileStackView;->mPerspectiveShiftY:F

    .line 667
    iget v1, p0, Landroid/widget/WidgetPileStackView;->mNewPerspectiveShiftX:F

    iput v1, p0, Landroid/widget/WidgetPileStackView;->mPerspectiveShiftX:F

    .line 668
    invoke-direct {p0}, Landroid/widget/WidgetPileStackView;->updateChildTransforms()V

    .line 670
    :cond_3
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 857
    .local v0, "activePointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 858
    .local v5, "pointerId":I
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mActivePointerId:I

    if-ne v5, v9, :cond_0

    .line 860
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const/4 v1, 0x0

    .line 862
    .local v1, "activeViewIndex":I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/WidgetPileStackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v6

    .line 863
    .local v6, "v":Landroid/view/View;
    if-nez v6, :cond_2

    .line 897
    .end local v1    # "activeViewIndex":I
    .end local v6    # "v":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 860
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 869
    .restart local v1    # "activeViewIndex":I
    .restart local v6    # "v":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 870
    if-eq v2, v0, :cond_3

    .line 872
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 873
    .local v7, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 875
    .local v8, "y":F
    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 876
    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 877
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 878
    .local v3, "oldX":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 881
    .local v4, "oldY":F
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mInitialY:F

    sub-float v10, v8, v4

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/WidgetPileStackView;->mInitialY:F

    .line 882
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mInitialX:F

    sub-float v10, v7, v3

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/WidgetPileStackView;->mInitialX:F

    .line 884
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/WidgetPileStackView;->mActivePointerId:I

    .line 885
    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_0

    .line 886
    iget-object v9, p0, Landroid/widget/WidgetPileStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 869
    .end local v3    # "oldX":F
    .end local v4    # "oldY":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 895
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/WidgetPileStackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method private pacedScroll(Z)V
    .locals 6
    .param p1, "up"    # Z

    .prologue
    .line 693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/WidgetPileStackView;->mLastScrollTime:J

    sub-long v0, v2, v4

    .line 694
    .local v0, "timeSinceLastScroll":J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 695
    if-eqz p1, :cond_1

    .line 696
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->showPrevious()V

    .line 700
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/WidgetPileStackView;->mLastScrollTime:J

    .line 702
    :cond_0
    return-void

    .line 698
    :cond_1
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->showNext()V

    goto :goto_0
.end method

.method private setupStackSlider(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mode"    # I

    .prologue
    .line 462
    iget-object v0, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    invoke-virtual {v0, p2}, Landroid/widget/WidgetPileStackView$StackSlider;->setMode(I)V

    .line 463
    if-eqz p1, :cond_0

    .line 464
    iget-object v0, p0, Landroid/widget/WidgetPileStackView;->mHighlight:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/WidgetPileStackView;->sHolographicHelper:Landroid/widget/WidgetPileStackView$HolographicHelper;

    iget v2, p0, Landroid/widget/WidgetPileStackView;->mResOutColor:I

    invoke-virtual {v1, p1, v2}, Landroid/widget/WidgetPileStackView$HolographicHelper;->createResOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 465
    iget-object v0, p0, Landroid/widget/WidgetPileStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 466
    iget-object v0, p0, Landroid/widget/WidgetPileStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 467
    iget-object v0, p0, Landroid/widget/WidgetPileStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 468
    iget-object v0, p0, Landroid/widget/WidgetPileStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 469
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 470
    iget-object v0, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    invoke-virtual {v0, p1}, Landroid/widget/WidgetPileStackView$StackSlider;->setView(Landroid/view/View;)V

    .line 472
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 474
    :cond_0
    return-void
.end method

.method private transformViewAtIndex(ILandroid/view/View;Z)V
    .locals 26
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "animate"    # Z

    .prologue
    .line 330
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/WidgetPileStackView;->mPerspectiveShiftY:F

    .line 331
    .local v4, "maxPerspectiveShiftY":F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/WidgetPileStackView;->mPerspectiveShiftX:F

    .line 332
    .local v3, "maxPerspectiveShiftX":F
    move/from16 v16, p1

    .line 334
    .local v16, "toIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/WidgetPileStackView;->mStackMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/WidgetPileStackView;->mMaxNumActiveViews:I

    move/from16 v22, v0

    sub-int v22, v22, p1

    add-int/lit8 p1, v22, -0x1

    .line 336
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/WidgetPileStackView;->mMaxNumActiveViews:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 342
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p1}, Landroid/widget/WidgetPileStackView;->getScaleRatio(I)F

    move-result v10

    .line 344
    .local v10, "r":F
    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v24, v24, v10

    mul-float v23, v23, v24

    sub-float v11, v22, v23

    .line 346
    .local v11, "scale":F
    invoke-direct/range {p0 .. p1}, Landroid/widget/WidgetPileStackView;->getTransYRatio(I)F

    move-result v22

    mul-float v9, v22, v4

    .line 347
    .local v9, "perspectiveTranslationY":F
    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v11, v22

    invoke-virtual/range {p0 .. p0}, Landroid/widget/WidgetPileStackView;->getMeasuredHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    sget v25, Landroid/widget/WidgetPileStackView;->PERSPECTIVE_SHIFT_FACTOR_Y:F

    sub-float v24, v24, v25

    mul-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    mul-float v15, v22, v23

    .line 349
    .local v15, "scaleShiftCorrectionY":F
    add-float v18, v9, v15

    .line 350
    .local v18, "transY":F
    invoke-direct/range {p0 .. p1}, Landroid/widget/WidgetPileStackView;->getTransYOffset(I)F

    move-result v19

    .line 352
    .local v19, "transYOffset":F
    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, v10

    mul-float v8, v22, v3

    .line 353
    .local v8, "perspectiveTranslationX":F
    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/WidgetPileStackView;->getMeasuredWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const v24, 0x3f666666    # 0.9f

    mul-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    mul-float v14, v22, v23

    .line 355
    .local v14, "scaleShiftCorrectionX":F
    const/16 v17, 0x0

    .line 359
    .local v17, "transX":F
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/WidgetPileStackView$StackFrame;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v22, p2

    .line 360
    check-cast v22, Landroid/widget/WidgetPileStackView$StackFrame;

    invoke-virtual/range {v22 .. v22}, Landroid/widget/WidgetPileStackView$StackFrame;->cancelTransformAnimator()Z

    .line 363
    :cond_1
    if-eqz p3, :cond_5

    .line 364
    const-string/jumbo v22, "translationX"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aput v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    .line 365
    .local v20, "translationX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v22, "translationY"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v18, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v21

    .line 366
    .local v21, "translationY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v22, "scaleX"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v11, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 367
    .local v12, "scalePropX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v22, "scaleY"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v11, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 370
    .local v13, "scalePropY":Landroid/animation/PropertyValuesHolder;
    if-nez v16, :cond_4

    .line 371
    const/high16 v22, 0x3f800000    # 1.0f

    const v23, 0x3dcccccd    # 0.1f

    sub-float v23, v10, v23

    const v24, 0x3f666666    # 0.9f

    div-float v23, v23, v24

    sub-float v7, v22, v23

    .line 376
    .local v7, "opacity":F
    :goto_1
    const-string v22, "alpha"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v7, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 378
    .local v2, "alpha":Landroid/animation/PropertyValuesHolder;
    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v12, v22, v23

    const/16 v23, 0x1

    aput-object v13, v22, v23

    const/16 v23, 0x2

    aput-object v21, v22, v23

    const/16 v23, 0x3

    aput-object v20, v22, v23

    const/16 v23, 0x4

    aput-object v2, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 380
    .local v5, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v22, 0xc8

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 381
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/WidgetPileStackView$StackFrame;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 382
    check-cast p2, Landroid/widget/WidgetPileStackView$StackFrame;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/widget/WidgetPileStackView$StackFrame;->setTransformAnimator(Landroid/animation/ObjectAnimator;)V

    .line 384
    :cond_2
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 393
    .end local v2    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v5    # "oa":Landroid/animation/ObjectAnimator;
    .end local v7    # "opacity":F
    .end local v12    # "scalePropX":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "scalePropY":Landroid/animation/PropertyValuesHolder;
    .end local v20    # "translationX":Landroid/animation/PropertyValuesHolder;
    .end local v21    # "translationY":Landroid/animation/PropertyValuesHolder;
    :goto_2
    return-void

    .line 338
    .end local v8    # "perspectiveTranslationX":F
    .end local v9    # "perspectiveTranslationY":F
    .end local v10    # "r":F
    .end local v11    # "scale":F
    .end local v14    # "scaleShiftCorrectionX":F
    .end local v15    # "scaleShiftCorrectionY":F
    .end local v17    # "transX":F
    .end local v18    # "transY":F
    .end local v19    # "transYOffset":F
    .restart local p2    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 339
    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 374
    .restart local v8    # "perspectiveTranslationX":F
    .restart local v9    # "perspectiveTranslationY":F
    .restart local v10    # "r":F
    .restart local v11    # "scale":F
    .restart local v12    # "scalePropX":Landroid/animation/PropertyValuesHolder;
    .restart local v13    # "scalePropY":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "scaleShiftCorrectionX":F
    .restart local v15    # "scaleShiftCorrectionY":F
    .restart local v17    # "transX":F
    .restart local v18    # "transY":F
    .restart local v19    # "transYOffset":F
    .restart local v20    # "translationX":Landroid/animation/PropertyValuesHolder;
    .restart local v21    # "translationY":Landroid/animation/PropertyValuesHolder;
    :cond_4
    invoke-direct/range {p0 .. p1}, Landroid/widget/WidgetPileStackView;->getAlphaRatio(I)F

    move-result v7

    .restart local v7    # "opacity":F
    goto :goto_1

    .line 386
    .end local v7    # "opacity":F
    .end local v12    # "scalePropX":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "scalePropY":Landroid/animation/PropertyValuesHolder;
    .end local v20    # "translationX":Landroid/animation/PropertyValuesHolder;
    .end local v21    # "translationY":Landroid/animation/PropertyValuesHolder;
    :cond_5
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 387
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 388
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setScaleX(F)V

    .line 389
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setScaleY(F)V

    .line 390
    invoke-direct/range {p0 .. p1}, Landroid/widget/WidgetPileStackView;->getAlphaRatio(I)F

    move-result v6

    .line 391
    .local v6, "offset":F
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method

.method private updateChildTransforms()V
    .locals 3

    .prologue
    .line 560
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getNumActiveViews()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 561
    invoke-virtual {p0, v0}, Landroid/widget/WidgetPileStackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 562
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 563
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/WidgetPileStackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 560
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public advance()V
    .locals 7

    .prologue
    .line 1209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/WidgetPileStackView;->mLastInteractionTime:J

    sub-long v1, v3, v5

    .line 1211
    .local v1, "timeSinceLastInteraction":J
    iget-object v3, p0, Landroid/widget/WidgetPileStackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v3, :cond_1

    .line 1219
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getCount()I

    move-result v0

    .line 1213
    .local v0, "adapterCount":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-boolean v3, p0, Landroid/widget/WidgetPileStackView;->mLoopViews:Z

    if-nez v3, :cond_0

    .line 1215
    :cond_2
    iget v3, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    if-nez v3, :cond_0

    const-wide/16 v3, 0x1388

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 1217
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->showNext()V

    goto :goto_0
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativeIndex"    # I

    .prologue
    .line 618
    return-void
.end method

.method bridge synthetic createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/WidgetPileStackView;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/WidgetPileStackView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/WidgetPileStackView$LayoutParams;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1176
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1177
    .local v0, "currentLp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/WidgetPileStackView$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1178
    check-cast v1, Landroid/widget/WidgetPileStackView$LayoutParams;

    .line 1179
    .local v1, "lp":Landroid/widget/WidgetPileStackView$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/WidgetPileStackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1180
    invoke-virtual {v1, v3}, Landroid/widget/WidgetPileStackView$LayoutParams;->setVerticalOffset(I)V

    .line 1181
    iput v3, v1, Landroid/widget/WidgetPileStackView$LayoutParams;->width:I

    .line 1182
    iput v3, v1, Landroid/widget/WidgetPileStackView$LayoutParams;->width:I

    .line 1185
    .end local v1    # "lp":Landroid/widget/WidgetPileStackView$LayoutParams;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/widget/WidgetPileStackView$LayoutParams;

    invoke-direct {v1, p0, p1}, Landroid/widget/WidgetPileStackView$LayoutParams;-><init>(Landroid/widget/WidgetPileStackView;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 622
    const/4 v3, 0x0

    .line 624
    .local v3, "expandClipRegion":Z
    iget-object v6, p0, Landroid/widget/WidgetPileStackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 625
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getChildCount()I

    move-result v1

    .line 626
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 627
    invoke-virtual {p0, v4}, Landroid/widget/WidgetPileStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 628
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/WidgetPileStackView$LayoutParams;

    .line 629
    .local v5, "lp":Landroid/widget/WidgetPileStackView$LayoutParams;
    iget v6, v5, Landroid/widget/WidgetPileStackView$LayoutParams;->horizontalOffset:I

    if-nez v6, :cond_0

    iget v6, v5, Landroid/widget/WidgetPileStackView$LayoutParams;->verticalOffset:I

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 631
    :cond_1
    invoke-virtual {v5}, Landroid/widget/WidgetPileStackView$LayoutParams;->resetInvalidateRect()V

    .line 633
    :cond_2
    invoke-virtual {v5}, Landroid/widget/WidgetPileStackView$LayoutParams;->getInvalidateRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 634
    .local v2, "childInvalidateRect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 635
    const/4 v3, 0x1

    .line 636
    iget-object v6, p0, Landroid/widget/WidgetPileStackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 626
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 641
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childInvalidateRect":Landroid/graphics/Rect;
    .end local v5    # "lp":Landroid/widget/WidgetPileStackView$LayoutParams;
    :cond_4
    if-eqz v3, :cond_5

    .line 642
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->save(I)I

    .line 643
    iget-object v6, p0, Landroid/widget/WidgetPileStackView;->stackInvalidateRect:Landroid/graphics/Rect;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 644
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 645
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 649
    :goto_1
    return-void

    .line 647
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .locals 5

    .prologue
    .line 609
    new-instance v0, Landroid/widget/WidgetPileStackView$StackFrame;

    iget-object v1, p0, Landroid/widget/WidgetPileStackView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/WidgetPileStackView$StackFrame;-><init>(Landroid/content/Context;)V

    .line 610
    .local v0, "fl":Landroid/widget/WidgetPileStackView$StackFrame;
    iget v1, p0, Landroid/widget/WidgetPileStackView;->mFramePadding:I

    iget v2, p0, Landroid/widget/WidgetPileStackView;->mFramePadding:I

    iget v3, p0, Landroid/widget/WidgetPileStackView;->mFramePadding:I

    iget v4, p0, Landroid/widget/WidgetPileStackView;->mFramePadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/WidgetPileStackView$StackFrame;->setPadding(IIII)V

    .line 611
    return-object v0
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 555
    iget-object v0, p0, Landroid/widget/WidgetPileStackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->invalidate()V

    .line 557
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 675
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 688
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 677
    :pswitch_0
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 678
    .local v0, "vscroll":F
    cmpg-float v2, v0, v3

    if-gez v2, :cond_1

    .line 679
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/widget/WidgetPileStackView;->pacedScroll(Z)V

    goto :goto_0

    .line 681
    :cond_1
    cmpl-float v2, v0, v3

    if-lez v2, :cond_0

    .line 682
    invoke-direct {p0, v1}, Landroid/widget/WidgetPileStackView;->pacedScroll(Z)V

    goto :goto_0

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1319
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1320
    const-class v0, Landroid/widget/StackView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1321
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 1325
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1326
    const-class v1, Landroid/widget/StackView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1327
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1328
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1329
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1330
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1332
    :cond_0
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getDisplayedChild()I

    move-result v0

    if-lez v0, :cond_1

    .line 1333
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1336
    :cond_1
    return-void

    .line 1327
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 709
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 710
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 743
    :cond_0
    :goto_0
    :pswitch_0
    iget v5, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_1
    return v4

    .line 712
    :pswitch_1
    iget v5, p0, Landroid/widget/WidgetPileStackView;->mActivePointerId:I

    if-ne v5, v6, :cond_0

    .line 713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Landroid/widget/WidgetPileStackView;->mInitialX:F

    .line 714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Landroid/widget/WidgetPileStackView;->mInitialY:F

    .line 715
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/WidgetPileStackView;->mActivePointerId:I

    goto :goto_0

    .line 720
    :pswitch_2
    iget v5, p0, Landroid/widget/WidgetPileStackView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 721
    .local v3, "pointerIndex":I
    if-ne v3, v6, :cond_2

    .line 723
    const-string v5, "WidgetPileStackView"

    const-string v6, "Error: No data for our primary pointer."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 726
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 727
    .local v2, "newY":F
    iget v5, p0, Landroid/widget/WidgetPileStackView;->mInitialY:F

    sub-float v1, v2, v5

    .line 729
    .local v1, "deltaY":F
    invoke-direct {p0, v1}, Landroid/widget/WidgetPileStackView;->beginGestureIfNeeded(F)V

    goto :goto_0

    .line 733
    .end local v1    # "deltaY":F
    .end local v2    # "newY":F
    .end local v3    # "pointerIndex":I
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/WidgetPileStackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 738
    :pswitch_4
    iput v6, p0, Landroid/widget/WidgetPileStackView;->mActivePointerId:I

    .line 739
    iput v4, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    goto :goto_0

    .line 710
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1190
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->checkForAndHandleDataChanged()V

    .line 1192
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getChildCount()I

    move-result v2

    .line 1193
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 1194
    invoke-virtual {p0, v4}, Landroid/widget/WidgetPileStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1196
    .local v0, "child":Landroid/view/View;
    iget v6, p0, Landroid/widget/WidgetPileStackView;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v6, v7

    .line 1197
    .local v3, "childRight":I
    iget v6, p0, Landroid/widget/WidgetPileStackView;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v1, v6, v7

    .line 1198
    .local v1, "childBottom":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/WidgetPileStackView$LayoutParams;

    .line 1200
    .local v5, "lp":Landroid/widget/WidgetPileStackView$LayoutParams;
    iget v6, p0, Landroid/widget/WidgetPileStackView;->mPaddingLeft:I

    iget v7, v5, Landroid/widget/WidgetPileStackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/WidgetPileStackView;->mPaddingTop:I

    iget v8, v5, Landroid/widget/WidgetPileStackView$LayoutParams;->verticalOffset:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/widget/WidgetPileStackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v8, v3

    iget v9, v5, Landroid/widget/WidgetPileStackView$LayoutParams;->verticalOffset:I

    add-int/2addr v9, v1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1193
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1204
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v3    # "childRight":I
    .end local v5    # "lp":Landroid/widget/WidgetPileStackView$LayoutParams;
    :cond_0
    invoke-direct {p0}, Landroid/widget/WidgetPileStackView;->onLayout()V

    .line 1205
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1267
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1268
    .local v8, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1269
    .local v5, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1270
    .local v7, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 1272
    .local v4, "heightSpecMode":I
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mReferenceChildWidth:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget v9, p0, Landroid/widget/WidgetPileStackView;->mReferenceChildHeight:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    const/4 v2, 0x1

    .line 1276
    .local v2, "haveChildRefSize":Z
    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    sget v11, Landroid/widget/WidgetPileStackView;->PERSPECTIVE_SHIFT_FACTOR_Y:F

    sub-float/2addr v10, v11

    div-float v1, v9, v10

    .line 1277
    .local v1, "factorY":F
    if-nez v4, :cond_4

    .line 1278
    if-eqz v2, :cond_3

    iget v9, p0, Landroid/widget/WidgetPileStackView;->mReferenceChildHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v10, v1

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/widget/WidgetPileStackView;->mPaddingTop:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/WidgetPileStackView;->mPaddingBottom:I

    add-int v5, v9, v10

    .line 1296
    :cond_0
    :goto_1
    const v0, 0x3f8e38e4

    .line 1297
    .local v0, "factorX":F
    if-nez v7, :cond_8

    .line 1298
    if-eqz v2, :cond_7

    iget v9, p0, Landroid/widget/WidgetPileStackView;->mReferenceChildWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v10, v0

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/widget/WidgetPileStackView;->mPaddingLeft:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/WidgetPileStackView;->mPaddingRight:I

    add-int v8, v9, v10

    .line 1313
    :cond_1
    :goto_2
    invoke-virtual {p0, v8, v5}, Landroid/widget/WidgetPileStackView;->setMeasuredDimension(II)V

    .line 1314
    invoke-direct {p0}, Landroid/widget/WidgetPileStackView;->measureChildren()V

    .line 1315
    return-void

    .line 1272
    .end local v0    # "factorX":F
    .end local v1    # "factorY":F
    .end local v2    # "haveChildRefSize":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1278
    .restart local v1    # "factorY":F
    .restart local v2    # "haveChildRefSize":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1281
    :cond_4
    const/high16 v9, -0x80000000

    if-ne v4, v9, :cond_0

    .line 1282
    if-eqz v2, :cond_6

    .line 1283
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mReferenceChildHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v10, v1

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/widget/WidgetPileStackView;->mPaddingTop:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/WidgetPileStackView;->mPaddingBottom:I

    add-int v3, v9, v10

    .line 1285
    .local v3, "height":I
    if-gt v3, v5, :cond_5

    .line 1286
    move v5, v3

    goto :goto_1

    .line 1288
    :cond_5
    const/high16 v9, 0x1000000

    or-int/2addr v5, v9

    goto :goto_1

    .line 1292
    .end local v3    # "height":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 1298
    .restart local v0    # "factorX":F
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 1301
    :cond_8
    const/high16 v9, -0x80000000

    if-ne v4, v9, :cond_1

    .line 1302
    if-eqz v2, :cond_a

    .line 1303
    iget v9, p0, Landroid/widget/WidgetPileStackView;->mReferenceChildWidth:I

    iget v10, p0, Landroid/widget/WidgetPileStackView;->mPaddingLeft:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/WidgetPileStackView;->mPaddingRight:I

    add-int v6, v9, v10

    .line 1304
    .local v6, "width":I
    if-gt v6, v8, :cond_9

    .line 1305
    move v8, v6

    goto :goto_2

    .line 1307
    :cond_9
    const/high16 v9, 0x1000000

    or-int/2addr v8, v9

    goto :goto_2

    .line 1310
    .end local v6    # "width":I
    :cond_a
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v12, -0x1

    const/4 v9, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    .line 799
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 801
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 802
    .local v0, "action":I
    iget v10, p0, Landroid/widget/WidgetPileStackView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 803
    .local v5, "pointerIndex":I
    if-ne v5, v12, :cond_0

    .line 805
    const-string v9, "WidgetPileStackView"

    const-string v10, "Error: No data for our primary pointer."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :goto_0
    return v8

    .line 809
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 810
    .local v4, "newY":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 811
    .local v3, "newX":F
    iget v10, p0, Landroid/widget/WidgetPileStackView;->mInitialY:F

    sub-float v2, v4, v10

    .line 812
    .local v2, "deltaY":F
    iget v10, p0, Landroid/widget/WidgetPileStackView;->mInitialX:F

    sub-float v1, v3, v10

    .line 813
    .local v1, "deltaX":F
    iget-object v10, p0, Landroid/widget/WidgetPileStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    .line 814
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/WidgetPileStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 816
    :cond_1
    iget-object v10, p0, Landroid/widget/WidgetPileStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 818
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v8, v9

    .line 852
    goto :goto_0

    .line 820
    :pswitch_1
    invoke-direct {p0, v2}, Landroid/widget/WidgetPileStackView;->beginGestureIfNeeded(F)V

    .line 822
    iget v8, p0, Landroid/widget/WidgetPileStackView;->mSlideAmount:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    div-float v7, v1, v8

    .line 823
    .local v7, "rx":F
    iget v8, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_4

    .line 824
    iget v8, p0, Landroid/widget/WidgetPileStackView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    sub-float v8, v2, v8

    iget v10, p0, Landroid/widget/WidgetPileStackView;->mSlideAmount:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    mul-float v6, v8, v11

    .line 825
    .local v6, "r":F
    iget v8, p0, Landroid/widget/WidgetPileStackView;->mStackMode:I

    if-ne v8, v9, :cond_3

    sub-float v6, v11, v6

    .line 826
    :cond_3
    iget-object v8, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    sub-float v10, v11, v6

    invoke-virtual {v8, v10}, Landroid/widget/WidgetPileStackView$StackSlider;->setYProgress(F)V

    .line 827
    iget-object v8, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    invoke-virtual {v8, v7}, Landroid/widget/WidgetPileStackView$StackSlider;->setXProgress(F)V

    move v8, v9

    .line 828
    goto :goto_0

    .line 829
    .end local v6    # "r":F
    :cond_4
    iget v8, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    if-ne v8, v9, :cond_2

    .line 830
    iget v8, p0, Landroid/widget/WidgetPileStackView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    add-float/2addr v8, v2

    neg-float v8, v8

    iget v10, p0, Landroid/widget/WidgetPileStackView;->mSlideAmount:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    mul-float v6, v8, v11

    .line 831
    .restart local v6    # "r":F
    iget v8, p0, Landroid/widget/WidgetPileStackView;->mStackMode:I

    if-ne v8, v9, :cond_5

    sub-float v6, v11, v6

    .line 832
    :cond_5
    iget-object v8, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    invoke-virtual {v8, v6}, Landroid/widget/WidgetPileStackView$StackSlider;->setYProgress(F)V

    .line 833
    iget-object v8, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    invoke-virtual {v8, v7}, Landroid/widget/WidgetPileStackView$StackSlider;->setXProgress(F)V

    move v8, v9

    .line 834
    goto :goto_0

    .line 839
    .end local v6    # "r":F
    .end local v7    # "rx":F
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/WidgetPileStackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 843
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/WidgetPileStackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 847
    :pswitch_4
    iput v12, p0, Landroid/widget/WidgetPileStackView;->mActivePointerId:I

    .line 848
    iput v8, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    goto :goto_1

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1340
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1360
    :goto_0
    return v0

    .line 1343
    :cond_0
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 1344
    goto :goto_0

    .line 1346
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1360
    goto :goto_0

    .line 1348
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getDisplayedChild()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 1349
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->showNext()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1352
    goto :goto_0

    .line 1354
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getDisplayedChild()I

    move-result v2

    if-lez v2, :cond_3

    .line 1355
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->showPrevious()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1358
    goto :goto_0

    .line 1346
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public showNext()V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 482
    iget v1, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    if-eqz v1, :cond_0

    .line 492
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-boolean v1, p0, Landroid/widget/WidgetPileStackView;->mTransitionIsSetup:Z

    if-nez v1, :cond_1

    .line 484
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/WidgetPileStackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 485
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 486
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/WidgetPileStackView;->setupStackSlider(Landroid/view/View;I)V

    .line 487
    iget-object v1, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    invoke-virtual {v1, v2}, Landroid/widget/WidgetPileStackView$StackSlider;->setYProgress(F)V

    .line 488
    iget-object v1, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    invoke-virtual {v1, v2}, Landroid/widget/WidgetPileStackView$StackSlider;->setXProgress(F)V

    .line 491
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    goto :goto_0
.end method

.method showOnly(IZ)V
    .locals 7
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x0

    .line 514
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 517
    iget v0, p0, Landroid/widget/WidgetPileStackView;->mCurrentWindowEnd:I

    .local v0, "i":I
    :goto_0
    iget v4, p0, Landroid/widget/WidgetPileStackView;->mCurrentWindowStart:I

    if-lt v0, v4, :cond_1

    .line 518
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->getWindowSize()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/WidgetPileStackView;->modulo(II)I

    move-result v1

    .line 519
    .local v1, "index":I
    iget-object v4, p0, Landroid/widget/WidgetPileStackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 520
    .local v3, "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v3, :cond_0

    .line 521
    iget-object v4, p0, Landroid/widget/WidgetPileStackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 522
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 517
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 525
    .end local v1    # "index":I
    .end local v3    # "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_1
    iget-object v4, p0, Landroid/widget/WidgetPileStackView;->mHighlight:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 526
    iget-object v4, p0, Landroid/widget/WidgetPileStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->bringToFront()V

    .line 528
    :cond_2
    iput-boolean v6, p0, Landroid/widget/WidgetPileStackView;->mTransitionIsSetup:Z

    .line 529
    iput-boolean v6, p0, Landroid/widget/WidgetPileStackView;->mClickFeedbackIsValid:Z

    .line 530
    return-void
.end method

.method public showPrevious()V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 500
    iget v1, p0, Landroid/widget/WidgetPileStackView;->mSwipeGestureType:I

    if-eqz v1, :cond_0

    .line 510
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-boolean v1, p0, Landroid/widget/WidgetPileStackView;->mTransitionIsSetup:Z

    if-nez v1, :cond_1

    .line 502
    invoke-virtual {p0, v2}, Landroid/widget/WidgetPileStackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 503
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 504
    invoke-direct {p0, v0, v2}, Landroid/widget/WidgetPileStackView;->setupStackSlider(Landroid/view/View;I)V

    .line 505
    iget-object v1, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/WidgetPileStackView$StackSlider;->setYProgress(F)V

    .line 506
    iget-object v1, p0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/WidgetPileStackView$StackSlider;->setXProgress(F)V

    .line 509
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    goto :goto_0
.end method

.method showTapFeedback(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 547
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->updateClickFeedback()V

    .line 548
    iget-object v0, p0, Landroid/widget/WidgetPileStackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Landroid/widget/WidgetPileStackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 550
    invoke-virtual {p0}, Landroid/widget/WidgetPileStackView;->invalidate()V

    .line 551
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .locals 18
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "animate"    # Z

    .prologue
    .line 240
    if-nez p4, :cond_0

    move-object/from16 v14, p3

    .line 241
    check-cast v14, Landroid/widget/WidgetPileStackView$StackFrame;

    invoke-virtual {v14}, Landroid/widget/WidgetPileStackView$StackFrame;->cancelSliderAnimator()Z

    .line 242
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/View;->setRotationX(F)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/WidgetPileStackView$LayoutParams;

    .line 244
    .local v6, "lp":Landroid/widget/WidgetPileStackView$LayoutParams;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/WidgetPileStackView$LayoutParams;->setVerticalOffset(I)V

    .line 245
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/WidgetPileStackView$LayoutParams;->setHorizontalOffset(I)V

    .line 248
    .end local v6    # "lp":Landroid/widget/WidgetPileStackView$LayoutParams;
    :cond_0
    const/4 v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/WidgetPileStackView;->getNumActiveViews()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_3

    .line 249
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v14}, Landroid/widget/WidgetPileStackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 250
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 251
    const/high16 v14, 0x3f800000    # 1.0f

    sget v15, Landroid/widget/WidgetPileStackView;->NUM_ACTIVE_VIEWS:I

    int-to-float v15, v15

    div-float v7, v14, v15

    .line 252
    .local v7, "offsetAlpha":F
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 324
    .end local v7    # "offsetAlpha":F
    :cond_1
    :goto_0
    const/4 v14, -0x1

    move/from16 v0, p2

    if-eq v0, v14, :cond_2

    .line 325
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/WidgetPileStackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 327
    :cond_2
    return-void

    .line 253
    :cond_3
    if-nez p1, :cond_5

    const/4 v14, 0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_5

    move-object/from16 v14, p3

    .line 255
    check-cast v14, Landroid/widget/WidgetPileStackView$StackFrame;

    invoke-virtual {v14}, Landroid/widget/WidgetPileStackView$StackFrame;->cancelSliderAnimator()Z

    .line 256
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/WidgetPileStackView;->mYVelocity:I

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Landroid/widget/WidgetPileStackView$StackSlider;->getDurationForNeutralPosition(F)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 259
    .local v5, "duration":I
    new-instance v4, Landroid/widget/WidgetPileStackView$StackSlider;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Landroid/widget/WidgetPileStackView$StackSlider;-><init>(Landroid/widget/WidgetPileStackView;Landroid/widget/WidgetPileStackView$StackSlider;)V

    .line 260
    .local v4, "animationSlider":Landroid/widget/WidgetPileStackView$StackSlider;
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/WidgetPileStackView$StackSlider;->setView(Landroid/view/View;)V

    .line 262
    if-eqz p4, :cond_4

    .line 263
    const-string v14, "YProgress"

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 264
    .local v10, "slideInY":Landroid/animation/PropertyValuesHolder;
    const-string v14, "XProgress"

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 265
    .local v9, "slideInX":Landroid/animation/PropertyValuesHolder;
    const/4 v14, 0x2

    new-array v14, v14, [Landroid/animation/PropertyValuesHolder;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    const/4 v15, 0x1

    aput-object v10, v14, v15

    invoke-static {v4, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 267
    .local v8, "slideIn":Landroid/animation/ObjectAnimator;
    int-to-long v14, v5

    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 268
    new-instance v14, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v14}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v8, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v14, p3

    .line 269
    check-cast v14, Landroid/widget/WidgetPileStackView$StackFrame;

    invoke-virtual {v14, v8}, Landroid/widget/WidgetPileStackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 270
    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 272
    .end local v8    # "slideIn":Landroid/animation/ObjectAnimator;
    .end local v9    # "slideInX":Landroid/animation/PropertyValuesHolder;
    .end local v10    # "slideInY":Landroid/animation/PropertyValuesHolder;
    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/widget/WidgetPileStackView$StackSlider;->setYProgress(F)V

    .line 273
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/widget/WidgetPileStackView$StackSlider;->setXProgress(F)V

    goto/16 :goto_0

    .line 275
    .end local v4    # "animationSlider":Landroid/widget/WidgetPileStackView$StackSlider;
    .end local v5    # "duration":I
    :cond_5
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_7

    if-nez p2, :cond_7

    move-object/from16 v14, p3

    .line 277
    check-cast v14, Landroid/widget/WidgetPileStackView$StackFrame;

    invoke-virtual {v14}, Landroid/widget/WidgetPileStackView$StackFrame;->cancelSliderAnimator()Z

    .line 278
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/WidgetPileStackView;->mYVelocity:I

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Landroid/widget/WidgetPileStackView$StackSlider;->getDurationForOffscreenPosition(F)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 280
    .restart local v5    # "duration":I
    new-instance v4, Landroid/widget/WidgetPileStackView$StackSlider;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/WidgetPileStackView;->mStackSlider:Landroid/widget/WidgetPileStackView$StackSlider;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Landroid/widget/WidgetPileStackView$StackSlider;-><init>(Landroid/widget/WidgetPileStackView;Landroid/widget/WidgetPileStackView$StackSlider;)V

    .line 281
    .restart local v4    # "animationSlider":Landroid/widget/WidgetPileStackView$StackSlider;
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/WidgetPileStackView$StackSlider;->setView(Landroid/view/View;)V

    .line 282
    if-eqz p4, :cond_6

    .line 283
    const-string v14, "YProgress"

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v15, v16

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 284
    .local v13, "slideOutY":Landroid/animation/PropertyValuesHolder;
    const-string v14, "XProgress"

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 285
    .local v12, "slideOutX":Landroid/animation/PropertyValuesHolder;
    const/4 v14, 0x2

    new-array v14, v14, [Landroid/animation/PropertyValuesHolder;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    const/4 v15, 0x1

    aput-object v13, v14, v15

    invoke-static {v4, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 287
    .local v11, "slideOut":Landroid/animation/ObjectAnimator;
    int-to-long v14, v5

    invoke-virtual {v11, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 288
    new-instance v14, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v14}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v11, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v14, p3

    .line 289
    check-cast v14, Landroid/widget/WidgetPileStackView$StackFrame;

    invoke-virtual {v14, v11}, Landroid/widget/WidgetPileStackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 290
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 292
    .end local v11    # "slideOut":Landroid/animation/ObjectAnimator;
    .end local v12    # "slideOutX":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "slideOutY":Landroid/animation/PropertyValuesHolder;
    :cond_6
    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v4, v14}, Landroid/widget/WidgetPileStackView$StackSlider;->setYProgress(F)V

    .line 293
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/widget/WidgetPileStackView$StackSlider;->setXProgress(F)V

    goto/16 :goto_0

    .line 295
    .end local v4    # "animationSlider":Landroid/widget/WidgetPileStackView$StackSlider;
    .end local v5    # "duration":I
    :cond_7
    if-nez p2, :cond_8

    .line 297
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/View;->setAlpha(F)V

    .line 298
    const/4 v14, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 299
    :cond_8
    if-eqz p1, :cond_9

    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    :cond_9
    const/4 v14, 0x1

    move/from16 v0, p2

    if-le v0, v14, :cond_a

    .line 300
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 302
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/WidgetPileStackView;->getAlphaRatio(I)F

    move-result v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/View;->setAlpha(F)V

    .line 303
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/View;->setRotationX(F)V

    .line 304
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/WidgetPileStackView$LayoutParams;

    .line 305
    .restart local v6    # "lp":Landroid/widget/WidgetPileStackView$LayoutParams;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/WidgetPileStackView$LayoutParams;->setVerticalOffset(I)V

    .line 306
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/WidgetPileStackView$LayoutParams;->setHorizontalOffset(I)V

    goto/16 :goto_0

    .line 307
    .end local v6    # "lp":Landroid/widget/WidgetPileStackView$LayoutParams;
    :cond_a
    const/4 v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_b

    .line 309
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/WidgetPileStackView;->getAlphaRatio(I)F

    move-result v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/View;->setAlpha(F)V

    .line 310
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 311
    :cond_b
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_1

    .line 312
    if-eqz p4, :cond_c

    .line 313
    new-instance v14, Landroid/widget/WidgetPileStackView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v14, v0, v1}, Landroid/widget/WidgetPileStackView$1;-><init>(Landroid/widget/WidgetPileStackView;Landroid/view/View;)V

    const-wide/16 v15, 0xc8

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-virtual {v0, v14, v1, v2}, Landroid/widget/WidgetPileStackView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 319
    :cond_c
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method updateClickFeedback()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 533
    iget-boolean v1, p0, Landroid/widget/WidgetPileStackView;->mClickFeedbackIsValid:Z

    if-nez v1, :cond_1

    .line 534
    invoke-virtual {p0, v4}, Landroid/widget/WidgetPileStackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 535
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 536
    iget-object v1, p0, Landroid/widget/WidgetPileStackView;->mClickFeedback:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/WidgetPileStackView;->sHolographicHelper:Landroid/widget/WidgetPileStackView$HolographicHelper;

    iget v3, p0, Landroid/widget/WidgetPileStackView;->mClickColor:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/WidgetPileStackView$HolographicHelper;->createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 538
    iget-object v1, p0, Landroid/widget/WidgetPileStackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 539
    iget-object v1, p0, Landroid/widget/WidgetPileStackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 541
    :cond_0
    iput-boolean v4, p0, Landroid/widget/WidgetPileStackView;->mClickFeedbackIsValid:Z

    .line 543
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method
