.class public Landroid/alwaysontopservice/AlwaysOnTopService;
.super Landroid/app/Service;
.source "AlwaysOnTopService.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;
    }
.end annotation


# static fields
.field public static final ALWAYSONTOP_ID:Ljava/lang/String; = "aot_id"

.field static final DEBUG:Z = true

.field static final DEBUG_POS:Z = true

.field static final MINI_MODE_OFF:I = 0x0

.field static final MINI_MODE_ON:I = 0x1

.field static final MSG_CHANGE_MINI_MODE:I = 0x3e8

.field static final TAG:Ljava/lang/String; = "AlwaysOnTopService"

.field static final TAG_POSITION:Ljava/lang/String; = "AlwaysOnTopService_POS"

.field static final mCoverViewBottom:I = 0x2b5

.field static mFinishMiniMode:Z

.field static mFrameHeight:I

.field static mFrameWidth:I

.field static mRawPosition:[I

.field static mRestoreMode:Z

.field static mSavePosition:[I

.field static windowX:I

.field static windowY:I


# instance fields
.field aotMayMove:Z

.field check:Z

.field configOrientation:I

.field configTypeface:I

.field mActionBtn:Landroid/widget/ImageButton;

.field mActionBtnListener:Landroid/view/View$OnClickListener;

.field mAlwayOnMiniTitleBar:Landroid/widget/LinearLayout;

.field mAlwayOnMiniTitleView:Landroid/widget/LinearLayout;

.field mAlwayOnTitleBar:Landroid/widget/LinearLayout;

.field mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

.field mAlwayOnTitleView:Landroid/widget/LinearLayout;

.field mAlwayOnTopFrame:Landroid/widget/LinearLayout;

.field mAlwaysOnStarted:Z

.field mAlwaysOnView:Landroid/view/View;

.field mAlwaysOnViewStarted:Z

.field mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

.field mCloseBtn:Landroid/widget/ImageButton;

.field mCloseBtnListener:Landroid/view/View$OnClickListener;

.field mCurId:Ljava/lang/String;

.field mDevorView:Landroid/view/View;

.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field mFramePosition:[I

.field mGravityBottom:Z

.field mHandler:Landroid/os/Handler;

.field mInShowWindow:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mInitViewPos:Z

.field mInitialized:Z

.field mIsAlwaysOnViewShown:Z

.field mIsFullscreen:Z

.field mLeft:I

.field mMaxBtn:Landroid/widget/ImageButton;

.field mMinBtn:Landroid/widget/ImageButton;

.field mMiniMode:Z

.field mMiniModeEnable:Z

.field mMiniTitleView:Landroid/widget/TextView;

.field mMiniView:Landroid/view/View;

.field mMoveVisibleWindow:Z

.field mMoveX:I

.field mMoveY:I

.field mRootView:Landroid/view/View;

.field mServiceInterface:Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;

.field mShowAlwaysOnFlags:I

.field mShowAlwaysOnForced:Z

.field mShowAlwaysOnRequested:Z

.field mSkipBackKey:Z

.field mTheme:I

.field mThemeAttrs:Landroid/content/res/TypedArray;

.field mTitleBarViewEx:Landroid/view/View;

.field mTitleMove:Z

.field mTitleMoveListener:Landroid/view/View$OnTouchListener;

.field mTitleView:Landroid/widget/TextView;

.field mToken:Landroid/os/IBinder;

.field mTop:I

.field mUseIME:Z

.field mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

.field mWindowAdded:Z

.field mWindowCreated:Z

.field mWindowVisible:Z

.field mWindowWasVisible:Z

.field moveDown:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 152
    sput v1, Landroid/alwaysontopservice/AlwaysOnTopService;->windowX:I

    .line 153
    sput v1, Landroid/alwaysontopservice/AlwaysOnTopService;->windowY:I

    .line 154
    new-array v0, v2, [I

    sput-object v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    .line 155
    new-array v0, v2, [I

    sput-object v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    .line 160
    sput v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameWidth:I

    .line 161
    sput v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameHeight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 75
    iput-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->check:Z

    .line 76
    iput v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->moveDown:I

    .line 77
    iput-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->aotMayMove:Z

    .line 86
    iput v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTheme:I

    .line 94
    iput-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniModeEnable:Z

    .line 107
    iput-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSkipBackKey:Z

    .line 139
    iput-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMove:Z

    .line 148
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFramePosition:[I

    .line 174
    return-void
.end method

.method static synthetic access$000(Landroid/alwaysontopservice/AlwaysOnTopService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/alwaysontopservice/AlwaysOnTopService;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->checkFrameSize()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/alwaysontopservice/AlwaysOnTopService;)V
    .locals 0
    .param p0, "x0"    # Landroid/alwaysontopservice/AlwaysOnTopService;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->resetPosition()V

    return-void
.end method

.method static synthetic access$200(Landroid/alwaysontopservice/AlwaysOnTopService;)V
    .locals 0
    .param p0, "x0"    # Landroid/alwaysontopservice/AlwaysOnTopService;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->moveFrame()V

    return-void
.end method

.method static synthetic access$300(Landroid/alwaysontopservice/AlwaysOnTopService;)V
    .locals 0
    .param p0, "x0"    # Landroid/alwaysontopservice/AlwaysOnTopService;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initViewPosition()V

    return-void
.end method

.method static synthetic access$400(Landroid/alwaysontopservice/AlwaysOnTopService;[I)V
    .locals 0
    .param p0, "x0"    # Landroid/alwaysontopservice/AlwaysOnTopService;
    .param p1, "x1"    # [I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/alwaysontopservice/AlwaysOnTopService;->getLocationOnScreen([I)V

    return-void
.end method

.method private checkFrameSize()Z
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1648
    iget-object v6, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1649
    .local v3, "width":I
    iget-object v6, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1651
    .local v2, "height":I
    sget v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameWidth:I

    if-ne v6, v3, :cond_0

    sget v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameHeight:I

    if-eq v6, v2, :cond_1

    .line 1652
    :cond_0
    sget v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameWidth:I

    sub-int v6, v3, v6

    div-int/lit8 v1, v6, 0x2

    .line 1653
    .local v1, "changeWidth":I
    sget v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameHeight:I

    sub-int v6, v2, v6

    div-int/lit8 v0, v6, 0x2

    .line 1655
    .local v0, "changeHeight":I
    const-string v6, "AlwaysOnTopService_POS"

    const-string v7, "checkFrameSize: mFrameWidth:%d,mFrameHeight:%d,width:%d,height:%d,changeWidth:%d,changeHeight:%d"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    sget v9, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    sget v9, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const-string v6, "AlwaysOnTopService_POS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveX:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",saveY"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",rawX:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",rawY"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v7, v6, v4

    sub-int/2addr v7, v1

    aput v7, v6, v4

    .line 1660
    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v7, v6, v5

    sub-int/2addr v7, v0

    aput v7, v6, v5

    .line 1662
    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v7, v6, v4

    sub-int/2addr v7, v1

    aput v7, v6, v4

    .line 1663
    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v7, v6, v5

    sub-int/2addr v7, v0

    aput v7, v6, v5

    .line 1665
    const-string v6, "AlwaysOnTopService_POS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "change saveX:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",saveY"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",rawX:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v4, v8, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",rawY"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v7, v7, v5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    sput v3, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameWidth:I

    .line 1667
    sput v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameHeight:I

    move v4, v5

    .line 1672
    .end local v0    # "changeHeight":I
    .end local v1    # "changeWidth":I
    :goto_0
    return v4

    .line 1671
    :cond_1
    const-string v5, "AlwaysOnTopService_POS"

    const-string v6, "no change in size"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getDefaultDisplay()Landroid/view/Display;
    .locals 2

    .prologue
    .line 430
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method private getLocationOnScreen([I)V
    .locals 10
    .param p1, "location"    # [I

    .prologue
    .line 434
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 435
    .local v0, "diaplayRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 436
    .local v2, "frameRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/alwaysontopservice/AlwaysOnTopService;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 437
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 439
    iget-object v7, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 440
    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v8

    .line 441
    .local v4, "width":I
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, v7, v8

    .line 442
    .local v3, "height":I
    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    div-int/lit8 v5, v7, 0x2

    .line 443
    .local v5, "x":I
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v3

    div-int/lit8 v6, v7, 0x2

    .line 445
    .local v6, "y":I
    const-string v7, "AlwaysOnTopService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLocationOnScreen: x:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",y:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v7, 0x0

    aput v5, p1, v7

    .line 447
    const/4 v7, 0x1

    aput v6, p1, v7

    .line 448
    return-void
.end method

.method private handleBack(Z)Z
    .locals 2
    .param p1, "doIt"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1279
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    if-eqz v1, :cond_1

    .line 1282
    if-eqz p1, :cond_0

    .line 1283
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->requestHideSelf()V

    .line 1290
    :cond_0
    :goto_0
    return v0

    .line 1285
    :cond_1
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    if-eqz v1, :cond_2

    .line 1286
    if-eqz p1, :cond_0

    .line 1287
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->hideWindow()V

    goto :goto_0

    .line 1290
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initViewPosition()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 469
    iget-boolean v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInitViewPos:Z

    if-eqz v4, :cond_1

    .line 470
    const-string v4, "AlwaysOnTopService"

    const-string v5, "already init view position"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v4}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 476
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 477
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 480
    const-string v4, "AlwaysOnTopService_POS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate org save pos:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",saveY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",rawX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",rawY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    sget-boolean v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mFinishMiniMode:Z

    if-nez v4, :cond_2

    .line 484
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->checkFrameSize()Z

    .line 485
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->resetPosition()V

    .line 496
    :goto_1
    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    invoke-virtual {p0, v4, v7}, Landroid/alwaysontopservice/AlwaysOnTopService;->setSavePosition([IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 497
    const-string v4, "AlwaysOnTopService_POS"

    const-string v5, "OVERRIDE DONE, just called setRawPosition() in a extended AlwaysOnTopService instance "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :goto_2
    const-string v4, "AlwaysOnTopService_POS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate reset save pos:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",saveY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",rawX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",rawY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v4, v4, v7

    sget-object v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v5, v5, v7

    sub-int v1, v4, v5

    .line 507
    .local v1, "moveX":I
    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v4, v4, v8

    sget-object v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v5, v5, v8

    sub-int v2, v4, v5

    .line 508
    .local v2, "moveY":I
    invoke-virtual {p0, v1, v2, v7}, Landroid/alwaysontopservice/AlwaysOnTopService;->setMoveRect(IIZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 509
    iput-boolean v8, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInitViewPos:Z

    .line 511
    const-string v4, "AlwaysOnTopService_POS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate frame size width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",height"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 487
    .end local v1    # "moveX":I
    .end local v2    # "moveY":I
    :cond_2
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 488
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sput v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameWidth:I

    .line 489
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sput v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mFrameHeight:I

    .line 491
    :cond_3
    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    invoke-direct {p0, v4}, Landroid/alwaysontopservice/AlwaysOnTopService;->getLocationOnScreen([I)V

    .line 492
    sput-boolean v7, Landroid/alwaysontopservice/AlwaysOnTopService;->mFinishMiniMode:Z

    goto/16 :goto_1

    .line 499
    :cond_4
    const-string v4, "AlwaysOnTopService_POS"

    const-string v5, "PASS THROUGH setRawPosition() in this service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 513
    .restart local v1    # "moveX":I
    .restart local v2    # "moveY":I
    :cond_5
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 514
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    new-instance v5, Landroid/alwaysontopservice/AlwaysOnTopService$3;

    invoke-direct {v5, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$3;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private initialPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1677
    sget-object v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    sget-object v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aput v2, v1, v3

    aput v2, v0, v2

    .line 1678
    sget-object v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    sget-object v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aput v2, v1, v3

    aput v2, v0, v2

    .line 1679
    invoke-virtual {p0, v2, v2, v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->setMoveRect(IIZ)Z

    .line 1681
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->resetPosition()V

    .line 1682
    return-void
.end method

.method private moveFrame()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    sget-object v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v0, v0, v3

    const/16 v1, 0x2b5

    if-le v0, v1, :cond_1

    .line 264
    iput v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->moveDown:I

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFramePosition:[I

    invoke-direct {p0, v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->getLocationOnScreen([I)V

    .line 269
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFramePosition:[I

    aget v0, v0, v3

    rsub-int v0, v0, 0x2b5

    iput v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->moveDown:I

    .line 270
    iget v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->moveDown:I

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFramePosition:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->moveDown:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->setMoveRect(IIZ)Z

    goto :goto_0
.end method

.method private resetPosition()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 420
    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v2, v2, v4

    sget-object v3, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v3, v3, v4

    sub-int v0, v2, v3

    .line 421
    .local v0, "moveX":I
    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v2, v2, v5

    sget-object v3, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v3, v3, v5

    sub-int v1, v2, v3

    .line 423
    .local v1, "moveY":I
    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    invoke-direct {p0, v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->getLocationOnScreen([I)V

    .line 425
    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    sget-object v3, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v3, v3, v4

    add-int/2addr v3, v0

    aput v3, v2, v4

    .line 426
    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    sget-object v3, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v3, v3, v5

    add-int/2addr v3, v1

    aput v3, v2, v5

    .line 427
    return-void
.end method


# virtual methods
.method public OnMediaState(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "state"    # I

    .prologue
    .line 1601
    return-void
.end method

.method public OnRestoreState()V
    .locals 0

    .prologue
    .line 1633
    return-void
.end method

.method public OnSaveState()V
    .locals 0

    .prologue
    .line 1629
    return-void
.end method

.method public OnSkipWindow()V
    .locals 2

    .prologue
    .line 1636
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v1}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 1637
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1638
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setSkipWindow(Z)Z

    .line 1639
    :cond_0
    return-void
.end method

.method public OnTitleMoveStart()V
    .locals 0

    .prologue
    .line 1593
    return-void
.end method

.method public OnTitleMoveStop()V
    .locals 0

    .prologue
    .line 1597
    return-void
.end method

.method public closeRecentApps()V
    .locals 4

    .prologue
    .line 1727
    :try_start_0
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1728
    .local v1, "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-nez v1, :cond_0

    .line 1729
    const-string v2, "AlwaysOnTopService"

    const-string v3, "Unable to connect to StatusBarService. StatusBar is not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :goto_0
    return-void

    .line 1732
    :cond_0
    const-string v2, "AlwaysOnTopService"

    const-string v3, "aotCloseRecentApps is calling"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->aotCloseRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1734
    .end local v1    # "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 1735
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AlwaysOnTopService"

    const-string v3, "RemoteException aotCloseRecentApps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1737
    const/4 v1, 0x0

    .restart local v1    # "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    goto :goto_0
.end method

.method createListener()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMoveListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 652
    new-instance v0, Landroid/alwaysontopservice/AlwaysOnTopService$5;

    invoke-direct {v0, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$5;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMoveListener:Landroid/view/View$OnTouchListener;

    .line 708
    :cond_0
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtnListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_1

    .line 709
    new-instance v0, Landroid/alwaysontopservice/AlwaysOnTopService$6;

    invoke-direct {v0, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$6;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtnListener:Landroid/view/View$OnClickListener;

    .line 719
    :cond_1
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1577
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1335
    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSkipBackKey:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1336
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1337
    const-string v2, "AlwaysOnTopService"

    const-string v3, "dispatchKeyEvent: setSkipWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v2}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 1339
    .local v1, "root":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_0

    .line 1340
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->setSkipWindow(Z)Z

    .line 1349
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :cond_0
    :goto_0
    return v0

    .line 1346
    :cond_1
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {p1, p0, v2, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    .line 1349
    .local v0, "handled":Z
    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1582
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1367
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1355
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1361
    const/4 v0, 0x0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 315
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public getActionBtn()Landroid/view/View;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mActionBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getAlwaysOnTopBG()Landroid/view/View;
    .locals 1

    .prologue
    .line 1216
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    .line 1220
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    goto :goto_0
.end method

.method public getCloseBtn()Landroid/view/View;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getDialogWindowType()I
    .locals 1

    .prologue
    .line 1616
    const/16 v0, 0x7e1

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutInflater(I)Landroid/view/View;
    .locals 3
    .param p1, "resource"    # I

    .prologue
    .line 888
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTopFrame:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMiniTitleBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnMiniTitleBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMiniTitleView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMoveListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 1642
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->createListener()V

    .line 1643
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMoveListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getTitleBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWindow()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1472
    const-string v3, "AlwaysOnTopService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage msg.what: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 1498
    :goto_0
    return v2

    .line 1476
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    .line 1485
    invoke-virtual {p0, v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->setPositionFixing(Z)V

    .line 1486
    const v1, 0x10a0018

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1487
    .local v0, "exit":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1488
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    if-nez v1, :cond_1

    .line 1489
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1492
    :cond_1
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1474
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public hideWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 975
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwaysOnViewStarted:Z

    if-eqz v0, :cond_0

    .line 977
    const-string v0, "AlwaysOnTopService"

    const-string v1, "CALL: onFinishAlwaysOnView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onFinishAlwaysOnView()V

    .line 980
    :cond_0
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwaysOnViewStarted:Z

    .line 982
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    if-eqz v0, :cond_1

    .line 983
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->hide()V

    .line 984
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    .line 985
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onWindowHidden()V

    .line 986
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowWasVisible:Z

    .line 988
    :cond_1
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInitViewPos:Z

    if-eqz v0, :cond_3

    .line 989
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->checkFrameSize()Z

    .line 991
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->resetPosition()V

    .line 1000
    :goto_0
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    if-eqz v0, :cond_2

    sput-boolean v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mFinishMiniMode:Z

    .line 1003
    :cond_2
    const-string v0, "AlwaysOnTopService_POS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy save pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",saveY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rawX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rawY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return-void

    .line 996
    :cond_3
    const-string v0, "AlwaysOnTopService_POS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInitViewPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInitViewPos:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skip checkFrameSize()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method initViews()V
    .locals 7

    .prologue
    const v6, 0x1020289

    const v5, 0x1020286

    const v4, 0x1020285

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 723
    const-string v0, "AlwaysOnTopService"

    const-string v1, "initViews()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInitialized:Z

    .line 725
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowCreated:Z

    .line 726
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    .line 727
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnForced:Z

    .line 729
    iput-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTopFrame:Landroid/widget/LinearLayout;

    .line 730
    iput-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBar:Landroid/widget/LinearLayout;

    .line 731
    iput-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleView:Landroid/widget/LinearLayout;

    .line 732
    iput-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

    .line 733
    iput-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnMiniTitleBar:Landroid/widget/LinearLayout;

    .line 734
    iput-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnMiniTitleView:Landroid/widget/LinearLayout;

    .line 735
    iput-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleView:Landroid/widget/TextView;

    .line 736
    iput-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniTitleView:Landroid/widget/TextView;

    .line 737
    iput-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtn:Landroid/widget/ImageButton;

    .line 738
    iput-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mActionBtn:Landroid/widget/ImageButton;

    .line 739
    iput-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMinBtn:Landroid/widget/ImageButton;

    .line 740
    iput-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMaxBtn:Landroid/widget/ImageButton;

    .line 742
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->createListener()V

    .line 744
    sget-object v0, Landroid/R$styleable;->AlwaysOnTop:[I

    invoke-virtual {p0, v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mThemeAttrs:Landroid/content/res/TypedArray;

    .line 746
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109002b

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    .line 749
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->setContentView(Landroid/view/View;)V

    .line 751
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x10301e6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 754
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    const v1, 0x102028c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnMiniTitleBar:Landroid/widget/LinearLayout;

    .line 757
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnMiniTitleView:Landroid/widget/LinearLayout;

    .line 760
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniTitleView:Landroid/widget/TextView;

    .line 762
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMoveListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 764
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    const v1, 0x102028d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMaxBtn:Landroid/widget/ImageButton;

    .line 766
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMaxBtn:Landroid/widget/ImageButton;

    new-instance v1, Landroid/alwaysontopservice/AlwaysOnTopService$7;

    invoke-direct {v1, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$7;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtn:Landroid/widget/ImageButton;

    .line 778
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    :goto_0
    return-void

    .line 781
    :cond_0
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsFullscreen:Z

    if-eqz v0, :cond_1

    .line 782
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109002a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    .line 789
    :goto_1
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->setContentView(Landroid/view/View;)V

    .line 795
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x10301e7

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 798
    iput-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwaysOnView:Landroid/view/View;

    .line 799
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsAlwaysOnViewShown:Z

    .line 800
    const-string v0, "AlwaysOnTopService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView() view Width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "view Height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    const v1, 0x102028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTopFrame:Landroid/widget/LinearLayout;

    .line 804
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTopFrame:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 806
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    const v1, 0x1020283

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBar:Landroid/widget/LinearLayout;

    .line 809
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    const v1, 0x1020287

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

    .line 812
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleView:Landroid/widget/LinearLayout;

    .line 815
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleView:Landroid/widget/TextView;

    .line 817
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleMoveListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 819
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtn:Landroid/widget/ImageButton;

    .line 821
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCloseBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    const v1, 0x1020284

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mActionBtn:Landroid/widget/ImageButton;

    .line 825
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mActionBtn:Landroid/widget/ImageButton;

    new-instance v1, Landroid/alwaysontopservice/AlwaysOnTopService$8;

    invoke-direct {v1, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$8;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    const v1, 0x1020288

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMinBtn:Landroid/widget/ImageButton;

    .line 840
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMinBtn:Landroid/widget/ImageButton;

    new-instance v1, Landroid/alwaysontopservice/AlwaysOnTopService$9;

    invoke-direct {v1, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$9;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 785
    :cond_1
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090028

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    goto/16 :goto_1
.end method

.method initialize()V
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInitialized:Z

    if-nez v0, :cond_0

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInitialized:Z

    .line 626
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onInitializeInterface()V

    .line 628
    :cond_0
    return-void
.end method

.method public isAlwaysOnViewShown()Z
    .locals 1

    .prologue
    .line 880
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsAlwaysOnViewShown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraRunning()I
    .locals 2

    .prologue
    .line 1706
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    if-eqz v0, :cond_0

    .line 1707
    const-string v0, "AlwaysOnTopService"

    const-string v1, "isCameraRunning()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    invoke-virtual {v0}, Landroid/view/alwaysontop/AlwaysOnTopManager;->isCameraRunning()I

    move-result v0

    .line 1710
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreenMode()Z
    .locals 1

    .prologue
    .line 1692
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsFullscreen:Z

    return v0
.end method

.method public isMediaApp()Z
    .locals 1

    .prologue
    .line 1604
    const/4 v0, 0x0

    return v0
.end method

.method public isMediaRunning(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1608
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    if-eqz v0, :cond_0

    .line 1609
    const-string v0, "AlwaysOnTopService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMediaRunning() type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    invoke-virtual {v0, p1}, Landroid/view/alwaysontop/AlwaysOnTopManager;->isMediaRunning(I)Z

    move-result v0

    .line 1612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMiniMode()Z
    .locals 1

    .prologue
    .line 1240
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    return v0
.end method

.method public isSkipBackKeyEvent()Z
    .locals 1

    .prologue
    .line 1624
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSkipBackKey:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1573
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1569
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 10
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v9, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1509
    const-string v4, "AlwaysOnTopService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAnimationEnd mMiniMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    const v4, 0x10a0017

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1511
    .local v0, "enter":Landroid/view/animation/Animation;
    iget-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    .line 1512
    .local v3, "saveVisibleWindow":Z
    iput-boolean v7, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    .line 1515
    const-string v4, "AlwaysOnTopService_POS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnAnimation End saveX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",saveY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",rawX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",rawY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v4, v4, v8

    sget-object v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v5, v5, v8

    sub-int v1, v4, v5

    .line 1518
    .local v1, "moveX":I
    sget-object v4, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v4, v4, v7

    sget-object v5, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    aget v5, v5, v7

    sub-int v2, v4, v5

    .line 1519
    .local v2, "moveY":I
    invoke-virtual {p0, v1, v2, v8}, Landroid/alwaysontopservice/AlwaysOnTopService;->setMoveRect(IIZ)Z

    .line 1521
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    .line 1523
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initViews()V

    .line 1524
    iget-boolean v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    invoke-virtual {p0, v4}, Landroid/alwaysontopservice/AlwaysOnTopService;->onChangeModeAlwaysOnView(Z)V

    .line 1525
    iget-boolean v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    if-nez v4, :cond_0

    .line 1526
    invoke-virtual {p0, v7}, Landroid/alwaysontopservice/AlwaysOnTopService;->showWindow(Z)V

    .line 1527
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1539
    :goto_0
    new-instance v4, Landroid/alwaysontopservice/AlwaysOnTopService$12;

    invoke-direct {v4, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$12;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1556
    return-void

    .line 1529
    :cond_0
    iput-boolean v7, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    .line 1530
    iput-boolean v7, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowCreated:Z

    .line 1531
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initialize()V

    .line 1532
    iget-boolean v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsFullscreen:Z

    if-eqz v4, :cond_1

    .line 1533
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initialPosition()V

    .line 1534
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v4}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Landroid/view/Window;->setLayout(II)V

    .line 1537
    :cond_1
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1560
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1504
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1422
    const-string v0, "AlwaysOnTopService"

    const-string v1, "onAttachedToWindow setMoveRect(0, 0)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1425
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    new-instance v1, Landroid/alwaysontopservice/AlwaysOnTopService$10;

    invoke-direct {v1, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$10;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1436
    :goto_0
    sget-boolean v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRestoreMode:Z

    if-eqz v0, :cond_1

    .line 1437
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    new-instance v1, Landroid/alwaysontopservice/AlwaysOnTopService$11;

    invoke-direct {v1, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$11;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1446
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mRestoreMode:Z

    .line 1448
    :cond_1
    return-void

    .line 1433
    :cond_2
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initViewPosition()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 321
    const-string v0, "AlwaysOnTopService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v0, "aot_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCurId:Ljava/lang/String;

    .line 325
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mServiceInterface:Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;

    invoke-direct {v0, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    iput-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mServiceInterface:Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;

    .line 329
    :cond_0
    new-instance v0, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mServiceInterface:Landroid/alwaysontopservice/AlwaysOnTopService$AlwaysOnTopServiceInterface;

    invoke-direct {v0, p0, v1}, Landroid/alwaysontopservice/IAlwaysOnTopInterfaceWrapper;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;Landroid/view/alwaysontop/AlwaysOnTopInterface;)V

    return-object v0
.end method

.method public onChangeModeAlwaysOnView(Z)V
    .locals 3
    .param p1, "isMiniMode"    # Z

    .prologue
    .line 1139
    const-string v0, "AlwaysOnTopService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeModeAlwaysOnView() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 336
    const-string v3, "AlwaysOnTopService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    .line 338
    .local v2, "visible":Z
    iget v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnFlags:I

    .line 339
    .local v0, "showFlags":I
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    .line 345
    .local v1, "showingAlwaysOn":Z
    iget v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configTypeface:I

    iget v4, p1, Landroid/content/res/Configuration;->typeface:I

    if-eq v3, v4, :cond_0

    .line 347
    const-string v3, "AlwaysOnTopService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged typeface:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configTypeface:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",new typeface:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/content/res/Configuration;->typeface:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget v3, p1, Landroid/content/res/Configuration;->typeface:I

    iput v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configTypeface:I

    .line 350
    iget-object v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    new-instance v4, Landroid/alwaysontopservice/AlwaysOnTopService$1;

    invoke-direct {v4, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$1;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 359
    :cond_0
    if-eqz v2, :cond_1

    .line 360
    iget v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configOrientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_1

    .line 362
    const-string v3, "AlwaysOnTopService_POS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Change ConfigOrientaion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configOrientation:I

    .line 368
    if-eqz v1, :cond_1

    .line 369
    iget-object v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    new-instance v4, Landroid/alwaysontopservice/AlwaysOnTopService$2;

    invoke-direct {v4, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$2;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 417
    :cond_1
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 1410
    return-void
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    .line 531
    const-string v4, "AlwaysOnTopService"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 534
    .local v0, "appTheme":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->setTheme(I)V

    .line 536
    :cond_0
    iget v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTheme:I

    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const v6, 0x10301e5

    const v7, 0x10301e8

    const v8, 0x10301e9

    invoke-static {v4, v5, v6, v7, v8}, Landroid/content/res/Resources;->selectSystemTheme(IIIII)I

    move-result v4

    iput v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTheme:I

    .line 542
    iget v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTheme:I

    invoke-super {p0, v4}, Landroid/app/Service;->setTheme(I)V

    .line 543
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 545
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mHandler:Landroid/os/Handler;

    .line 547
    const-string v4, "alwaysontop"

    invoke-virtual {p0, v4}, Landroid/alwaysontopservice/AlwaysOnTopService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/alwaysontop/AlwaysOnTopManager;

    iput-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    .line 548
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->isMediaApp()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/alwaysontop/AlwaysOnTopManager;->setMediaApp(Z)V

    .line 550
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/alwaysontopservice/AlwaysOnTopService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInflater:Landroid/view/LayoutInflater;

    .line 551
    new-instance v4, Landroid/alwaysontopservice/AlwaysOnTopWindow;

    iget v5, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTheme:I

    iget-object v6, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v4, p0, v5, v6}, Landroid/alwaysontopservice/AlwaysOnTopWindow;-><init>(Landroid/content/Context;ILandroid/view/KeyEvent$DispatcherState;)V

    iput-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    .line 552
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v4, p0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 554
    invoke-static {}, Landroid/alwaysontopservice/AlwaysOnTopService;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 555
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->getWindow()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configOrientation:I

    .line 556
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 557
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 558
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_1

    .line 559
    const/4 v4, 0x2

    iput v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configOrientation:I

    .line 563
    :cond_1
    const-string v4, "AlwaysOnTopService_POS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init ConfigOrientaion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 565
    .local v2, "mConfiguration":Landroid/content/res/Configuration;
    iget v4, v2, Landroid/content/res/Configuration;->typeface:I

    iput v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configTypeface:I

    .line 567
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initViews()V

    .line 568
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v4}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Landroid/view/Window;->setLayout(II)V

    .line 570
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v4}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    .line 571
    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    new-instance v5, Landroid/alwaysontopservice/AlwaysOnTopService$4;

    invoke-direct {v5, p0}, Landroid/alwaysontopservice/AlwaysOnTopService$4;-><init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 610
    return-void
.end method

.method public onCreateAlwaysOnView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1113
    const-string v0, "AlwaysOnTopService"

    const-string v1, "onCreateAlwaysOnView()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1379
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 1373
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateTitleBarExView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1119
    const-string v0, "AlwaysOnTopService"

    const-string v1, "onCreateTitleBarExView()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 855
    const-string v0, "AlwaysOnTopService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 857
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowAdded:Z

    if-eqz v0, :cond_0

    .line 868
    :try_start_0
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 869
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1454
    return-void
.end method

.method public onFinishAlwaysOnView()V
    .locals 2

    .prologue
    .line 1151
    const-string v0, "AlwaysOnTopService"

    const-string v1, "onFinishAlwaysOnView() : "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return-void
.end method

.method public onInitializeInterface()V
    .locals 2

    .prologue
    .line 620
    const-string v0, "AlwaysOnTopService"

    const-string v1, "onInitializeInterface()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1296
    const-string v1, "AlwaysOnTopService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown() keyCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event keycode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1299
    invoke-direct {p0, v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->handleBack(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1300
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1301
    const/4 v0, 0x1

    .line 1305
    :cond_0
    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1311
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1330
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1317
    const-string v0, "AlwaysOnTopService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp() keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event keycode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->handleBack(Z)Z

    move-result v0

    .line 1324
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1397
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1391
    const/4 v0, 0x0

    return v0
.end method

.method public onMoveFrame(Z)V
    .locals 5
    .param p1, "check"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 276
    const-string v0, "AlwaysOnTopService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMoveFrame, check : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , moveDown : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->moveDown:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-eqz p1, :cond_3

    .line 279
    iget v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->moveDown:I

    if-eqz v0, :cond_0

    .line 280
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    .line 281
    invoke-virtual {p0, v2, v2, v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->setMoveRect(IIZ)Z

    .line 282
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    .line 284
    sget-object v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFramePosition:[I

    aget v3, v3, v2

    sub-int/2addr v0, v3

    sget-object v3, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v3, v3, v1

    iget-object v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mFramePosition:[I

    aget v1, v4, v1

    sub-int v1, v3, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/alwaysontopservice/AlwaysOnTopService;->setMoveRect(IIZ)Z

    .line 295
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 280
    goto :goto_0

    :cond_2
    move v0, v2

    .line 282
    goto :goto_1

    .line 288
    :cond_3
    iget v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->configOrientation:I

    if-ne v0, v1, :cond_4

    .line 289
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->moveFrame()V

    goto :goto_2

    .line 291
    :cond_4
    iput-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->aotMayMove:Z

    goto :goto_2
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1460
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1385
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1465
    const/4 v0, 0x0

    return v0
.end method

.method public onStartAlwaysOnView(Z)V
    .locals 3
    .param p1, "restarting"    # Z

    .prologue
    .line 1134
    const-string v0, "AlwaysOnTopService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartAlwaysOnView() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    return-void
.end method

.method public onVisibleFrame(Z)V
    .locals 3
    .param p1, "flipFlag"    # Z

    .prologue
    .line 300
    const-string v0, "AlwaysOnTopService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibleFrame, flipFlag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-eqz p1, :cond_0

    .line 302
    const-string v0, "AlwaysOnTopService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flipFlag is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->show()V

    .line 309
    :goto_0
    return-void

    .line 306
    :cond_0
    const-string v0, "AlwaysOnTopService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flipFlag is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v0}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->hide()V

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1404
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1416
    return-void
.end method

.method public onWindowHidden()V
    .locals 2

    .prologue
    .line 1097
    const-string v0, "AlwaysOnTopService"

    const-string v1, "onWindowHidden() "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    return-void
.end method

.method public onWindowShown()V
    .locals 2

    .prologue
    .line 1088
    const-string v0, "AlwaysOnTopService"

    const-string v1, "onWindowShown() "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 1564
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestHideSelf()V
    .locals 2

    .prologue
    .line 1244
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAotm:Landroid/view/alwaysontop/AlwaysOnTopManager;

    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mCurId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/alwaysontop/AlwaysOnTopManager;->stopAlwaysOnTop(Ljava/lang/String;)Z

    .line 1246
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->closeRecentApps()V

    .line 1248
    return-void
.end method

.method public setActionBtnOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1251
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mActionBtnListener:Landroid/view/View$OnClickListener;

    .line 1252
    return-void
.end method

.method public setActionBtnVisibility(I)Z
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1255
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mActionBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mActionBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1257
    const/4 v0, 0x1

    .line 1259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlwaysOnView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1060
    const-string v2, "AlwaysOnTopService"

    const-string v3, "setAlwaysOnView ()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTopFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1062
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1063
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_1

    .line 1064
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1077
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTopFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1078
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwaysOnView:Landroid/view/View;

    .line 1079
    return-void

    .line 1070
    :cond_1
    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsFullscreen:Z

    if-eqz v2, :cond_0

    .line 1071
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1072
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1073
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setFrameMoveAniDisable(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 1714
    const-string v1, "AlwaysOnTopService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFrameMoveAniDisable() flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v1}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 1717
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1718
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setFrameMoveAniDisable(Z)Z

    .line 1721
    :goto_0
    return-void

    .line 1720
    :cond_0
    const-string v1, "AlwaysOnTopService"

    const-string v2, "setFrameMoveAniDisable() error root view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFullScreenMode(Z)V
    .locals 1
    .param p1, "isFull"    # Z

    .prologue
    .line 1685
    iput-boolean p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsFullscreen:Z

    .line 1686
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 1687
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initialPosition()V

    .line 1689
    :cond_0
    return-void
.end method

.method public setMiniMode(Z)V
    .locals 1
    .param p1, "miniMode"    # Z

    .prologue
    .line 1233
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    if-eq v0, p1, :cond_0

    .line 1234
    iput-boolean p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    .line 1235
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initViews()V

    .line 1237
    :cond_0
    return-void
.end method

.method public setMiniModeBtnVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1273
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMinBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMinBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1276
    :cond_0
    return-void
.end method

.method public setMiniTitleText(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 1206
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1209
    :cond_0
    return-void
.end method

.method public setMiniTitleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1200
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    :cond_0
    return-void
.end method

.method public setMoveRect(IIZ)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isMove"    # Z

    .prologue
    const/4 v1, 0x0

    .line 631
    const-string v2, "AlwaysOnTopService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMoveRect() x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mMoveVisibleWindow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    if-nez v2, :cond_0

    .line 634
    const-string v2, "AlwaysOnTopService"

    const-string v3, "mWindow is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :goto_0
    return v1

    .line 638
    :cond_0
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v2}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 640
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1

    .line 641
    iget-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    iget-boolean v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mUseIME:Z

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewRootImpl;->moveAOTWindow(IIZZZ)Z

    .line 642
    const/4 v1, 0x1

    goto :goto_0

    .line 644
    :cond_1
    const-string v2, "AlwaysOnTopService"

    const-string v3, "setMoveRect() error root view"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMoveVisibleWindow(Z)V
    .locals 3
    .param p1, "visibleWindow"    # Z

    .prologue
    .line 1264
    const-string v0, "AlwaysOnTopService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMoveVisibleWindow ():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iput-boolean p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMoveVisibleWindow:Z

    .line 1266
    return-void
.end method

.method public setPositionFixing(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 1696
    const-string v1, "AlwaysOnTopService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPositionFixing() flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v1}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 1699
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1700
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setPositionFixing(Z)Z

    .line 1703
    :goto_0
    return-void

    .line 1702
    :cond_0
    const-string v1, "AlwaysOnTopService"

    const-string v2, "setPositionFixing() error root view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSavePosition([IZ)Z
    .locals 4
    .param p1, "location"    # [I
    .param p2, "flag"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 453
    sget-object v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v1, p1, v2

    aput v1, v0, v2

    .line 454
    sget-object v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    aget v1, p1, v3

    aput v1, v0, v3

    .line 456
    return p2
.end method

.method public setSkipBackKeyEvent(Z)V
    .locals 0
    .param p1, "isSkip"    # Z

    .prologue
    .line 1620
    iput-boolean p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mSkipBackKey:Z

    .line 1621
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "theme"    # I

    .prologue
    .line 462
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    if-eqz v0, :cond_0

    .line 463
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    iput p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTheme:I

    .line 466
    return-void
.end method

.method public setTitleBarExView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x2

    .line 1156
    const-string v0, "AlwaysOnTopService"

    const-string v1, "setTitleBarExView()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1159
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1163
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleBarViewEx:Landroid/view/View;

    .line 1165
    :cond_0
    return-void
.end method

.method public setTitleBarExViewVisibility(I)Z
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1168
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTitleBarEx:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1170
    const/4 v0, 0x1

    .line 1172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitleText(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 1186
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1189
    :cond_0
    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1180
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    :cond_0
    return-void
.end method

.method public setUseIME(Z)V
    .locals 3
    .param p1, "useIME"    # Z

    .prologue
    .line 1587
    const-string v0, "AlwaysOnTopService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUseIME ():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iput-boolean p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mUseIME:Z

    .line 1589
    return-void
.end method

.method public showWindow(Z)V
    .locals 5
    .param p1, "showAlwaysOn"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 897
    const-string v0, "AlwaysOnTopService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing window: showAlwaysOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowAlwaysOnRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWindowAdded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowAdded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWindowCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWindowVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAlwaysOnStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwaysOnStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInShowWindow:Z

    if-eqz v0, :cond_0

    .line 904
    const-string v0, "AlwaysOnTopService"

    const-string v1, "Re-entrance in to showWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :goto_0
    return-void

    .line 909
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    iput-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowWasVisible:Z

    .line 910
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInShowWindow:Z

    .line 911
    invoke-virtual {p0, p1}, Landroid/alwaysontopservice/AlwaysOnTopService;->showWindowInner(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowWasVisible:Z

    .line 914
    iput-boolean v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInShowWindow:Z

    goto :goto_0

    .line 913
    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowWasVisible:Z

    .line 914
    iput-boolean v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mInShowWindow:Z

    throw v0
.end method

.method showWindowInner(Z)V
    .locals 5
    .param p1, "showAlwaysOn"    # Z

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x1

    .line 920
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    .line 921
    .local v0, "wasVisible":Z
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    .line 922
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    if-nez v1, :cond_0

    .line 924
    if-eqz p1, :cond_0

    .line 926
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    .line 932
    :cond_0
    const-string v1, "AlwaysOnTopService"

    const-string v2, "showWindow: updating UI"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initialize()V

    .line 935
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsFullscreen:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    if-nez v1, :cond_1

    .line 936
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initialPosition()V

    .line 939
    :cond_1
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v1}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 941
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    if-nez v1, :cond_6

    .line 942
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->updateAlwaysOnViewShown()V

    .line 947
    :goto_0
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowAdded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowCreated:Z

    if-nez v1, :cond_3

    .line 948
    :cond_2
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowAdded:Z

    .line 949
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowCreated:Z

    .line 950
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initialize()V

    .line 953
    :cond_3
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    if-eqz v1, :cond_4

    .line 954
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwaysOnViewStarted:Z

    if-nez v1, :cond_4

    .line 956
    const-string v1, "AlwaysOnTopService"

    const-string v2, "CALL: onStartAlwaysOnView"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iput-boolean v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwaysOnViewStarted:Z

    .line 958
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/alwaysontopservice/AlwaysOnTopService;->onStartAlwaysOnView(Z)V

    .line 966
    :cond_4
    if-nez v0, :cond_5

    .line 968
    const-string v1, "AlwaysOnTopService"

    const-string v2, "showWindow: showing!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onWindowShown()V

    .line 970
    iget-object v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindow:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v1}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->show()V

    .line 972
    :cond_5
    return-void

    .line 944
    :cond_6
    iget-boolean v1, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mMiniMode:Z

    invoke-virtual {p0, v1}, Landroid/alwaysontopservice/AlwaysOnTopService;->onChangeModeAlwaysOnView(Z)V

    goto :goto_0
.end method

.method public updateAlwaysOnView()V
    .locals 3

    .prologue
    .line 1039
    const-string v1, "AlwaysOnTopService"

    const-string v2, "updateAlwaysOnView()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onCreateAlwaysOnView()Landroid/view/View;

    move-result-object v0

    .line 1042
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1043
    invoke-virtual {p0, v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->setAlwaysOnView(Landroid/view/View;)V

    .line 1046
    :cond_0
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onCreateTitleBarExView()Landroid/view/View;

    move-result-object v0

    .line 1047
    if-eqz v0, :cond_1

    .line 1048
    invoke-virtual {p0, v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->setTitleBarExView(Landroid/view/View;)V

    .line 1050
    :cond_1
    return-void
.end method

.method public updateAlwaysOnViewShown()V
    .locals 5

    .prologue
    .line 1014
    iget-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mShowAlwaysOnRequested:Z

    .line 1016
    .local v0, "isShown":Z
    const-string v2, "AlwaysOnTopService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAlwaysOnViewShown isShown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsAlwaysOnViewShown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsAlwaysOnViewShown:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWindowVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsAlwaysOnViewShown:Z

    if-eq v2, v0, :cond_1

    iget-boolean v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mWindowVisible:Z

    if-eqz v2, :cond_1

    .line 1020
    iput-boolean v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mIsAlwaysOnViewShown:Z

    .line 1021
    iget-object v3, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwayOnTopFrame:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1022
    iget-object v2, p0, Landroid/alwaysontopservice/AlwaysOnTopService;->mAlwaysOnView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1023
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->initialize()V

    .line 1024
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onCreateAlwaysOnView()Landroid/view/View;

    move-result-object v1

    .line 1025
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1026
    invoke-virtual {p0, v1}, Landroid/alwaysontopservice/AlwaysOnTopService;->setAlwaysOnView(Landroid/view/View;)V

    .line 1029
    :cond_0
    invoke-virtual {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onCreateTitleBarExView()Landroid/view/View;

    move-result-object v1

    .line 1030
    if-eqz v1, :cond_1

    .line 1031
    invoke-virtual {p0, v1}, Landroid/alwaysontopservice/AlwaysOnTopService;->setTitleBarExView(Landroid/view/View;)V

    .line 1035
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void

    .line 1021
    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method
