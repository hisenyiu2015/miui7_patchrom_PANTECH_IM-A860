.class public Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;
.super Ljava/lang/Object;
.source "VegaPhoneWindowWrapper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_FLAG:Z = true

.field private static final TAG:Ljava/lang/String; = "VegaPhoneWindowWrapper"

.field private static final WINDOW_MODE_CHANGE_RETRY_MAX:I = 0x5

.field private static final WINDOW_MODE_CHANGE_WAIT:I = 0x64

.field private static mMultiWindowManager:Lcom/pantech/multiwindow/IMultiWindowManager;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAddWindowFlags:I

.field private mAttatchTarget:Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

.field private mContext:Landroid/content/Context;

.field private mCurrentZone:I

.field private mGravity:I

.field private mHeight:I

.field private mInitWindowFlags:I

.field private mOldFlags:I

.field private mOldGravity:I

.field private mOldHeight:I

.field private mOldWidth:I

.field private mOldX:I

.field private mOldY:I

.field private mStatusBarHeight:I

.field private mWidth:I

.field private mWindow:Landroid/view/Window;

.field private mWindowFlags:I

.field private mWindowManagerService:Landroid/view/IWindowManager;

.field private mWindowStateChangeCallback:Landroid/view/Window$MultiWindowStateChangeCallback;

.field private mX:I

.field private mY:I

.field private reTryCount:I

.field private reTryRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/view/Window;)V
    .locals 4
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v3, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mStatusBarHeight:I

    .line 49
    iput v3, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mCurrentZone:I

    .line 51
    iput v3, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->reTryCount:I

    .line 52
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->reTryRunnable:Ljava/lang/Runnable;

    .line 54
    iput v3, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldX:I

    .line 55
    iput v3, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldY:I

    .line 56
    iput v3, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldWidth:I

    .line 57
    iput v3, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldHeight:I

    .line 58
    iput v3, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldGravity:I

    .line 59
    iput v3, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldFlags:I

    .line 65
    iput-object p1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindow:Landroid/view/Window;

    .line 66
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mContext:Landroid/content/Context;

    .line 67
    iget-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 68
    iget-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mActivity:Landroid/app/Activity;

    .line 82
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 83
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mInitWindowFlags:I

    iput v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowFlags:I

    .line 84
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mGravity:I

    .line 85
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWidth:I

    .line 86
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mHeight:I

    .line 87
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mX:I

    .line 88
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mY:I

    .line 89
    iget-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mStatusBarHeight:I

    .line 92
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 94
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void

    .line 69
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mContext:Landroid/content/Context;

    .line 71
    iget-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mActivity:Landroid/app/Activity;

    .line 73
    iget-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getVegaPhoneWindowWrapper()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

    .line 75
    .local v1, "vegaPhoneWindowWrapper":Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->setAttatchTarget(Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldWidth:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->onWinodwStatusChanged(IZ)V

    return-void
.end method

.method public static makeVegaPhoneWinodw(Landroid/view/Window;)Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;
    .locals 7
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 97
    if-nez p0, :cond_0

    .line 98
    const-string v3, "VegaPhoneWindowWrapper"

    const-string v5, "Window is null !!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 129
    :goto_0
    return-object v3

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 103
    .local v2, "context":Landroid/content/Context;
    sget-object v3, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mMultiWindowManager:Lcom/pantech/multiwindow/IMultiWindowManager;

    if-nez v3, :cond_1

    .line 104
    const-string v3, "multi_window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/multiwindow/IMultiWindowManager;

    move-result-object v3

    sput-object v3, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mMultiWindowManager:Lcom/pantech/multiwindow/IMultiWindowManager;

    .line 108
    :cond_1
    sget-object v3, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mMultiWindowManager:Lcom/pantech/multiwindow/IMultiWindowManager;

    if-nez v3, :cond_2

    move-object v3, v4

    .line 109
    goto :goto_0

    .line 111
    :cond_2
    :try_start_0
    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_5

    .line 112
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 114
    .local v1, "activity":Landroid/app/Activity;
    sget-object v3, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mMultiWindowManager:Lcom/pantech/multiwindow/IMultiWindowManager;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/pantech/multiwindow/IMultiWindowManager;->isAvailable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mMultiWindowManager:Lcom/pantech/multiwindow/IMultiWindowManager;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/pantech/multiwindow/IMultiWindowManager;->getZone(Landroid/os/IBinder;)I

    move-result v3

    if-eq v3, v6, :cond_4

    .line 116
    :cond_3
    new-instance v3, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;-><init>(Landroid/view/Window;)V

    goto :goto_0

    .line 126
    .end local v1    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v3

    :cond_4
    move-object v3, v4

    .line 129
    goto :goto_0

    .line 117
    :cond_5
    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_4

    .line 118
    move-object v0, v2

    check-cast v0, Landroid/content/ContextWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 119
    if-eqz v2, :cond_4

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_4

    .line 120
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 121
    .restart local v1    # "activity":Landroid/app/Activity;
    sget-object v3, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mMultiWindowManager:Lcom/pantech/multiwindow/IMultiWindowManager;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/pantech/multiwindow/IMultiWindowManager;->isAvailable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mMultiWindowManager:Lcom/pantech/multiwindow/IMultiWindowManager;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/pantech/multiwindow/IMultiWindowManager;->getZone(Landroid/os/IBinder;)I

    move-result v3

    if-eq v3, v6, :cond_4

    .line 123
    :cond_6
    new-instance v3, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;-><init>(Landroid/view/Window;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private onWinodwStatusChanged(IZ)V
    .locals 6
    .param p1, "zone"    # I
    .param p2, "isRunnable"    # Z

    .prologue
    const/4 v5, 0x5

    .line 459
    iget-object v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 460
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_3

    .line 463
    if-nez p2, :cond_4

    .line 464
    iget-object v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->reTryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 465
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->reTryRunnable:Ljava/lang/Runnable;

    .line 470
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isSurfaceValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->reTryCount:I

    .line 472
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->updateWindowAttriutes(I)V

    .line 473
    iget-object v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mAttatchTarget:Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

    if-eqz v1, :cond_2

    .line 474
    iget-object v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mAttatchTarget:Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->onWinodwStatusChanged(I)V

    .line 477
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isSurfaceValid()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->reTryCount:I

    if-ge v1, v5, :cond_3

    .line 478
    new-instance v1, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$2;-><init>(Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->reTryRunnable:Ljava/lang/Runnable;

    .line 484
    iget-object v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->reTryRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 485
    iget v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->reTryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->reTryCount:I

    .line 486
    iget-object v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 487
    iput v5, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->reTryCount:I

    .line 493
    :cond_3
    :goto_0
    return-void

    .line 466
    :cond_4
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->reTryRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public onWindowVegaAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 13
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const v12, 0x800002

    const/4 v8, 0x0

    .line 372
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 374
    .local v4, "frameRect":Landroid/graphics/Rect;
    :try_start_0
    sget-object v9, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mMultiWindowManager:Lcom/pantech/multiwindow/IMultiWindowManager;

    iget-object v10, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/pantech/multiwindow/IMultiWindowManager;->getZone(Landroid/os/IBinder;)I

    move-result v7

    .line 375
    .local v7, "zone":I
    sget-object v9, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mMultiWindowManager:Lcom/pantech/multiwindow/IMultiWindowManager;

    invoke-interface {v9, v7, v4}, Lcom/pantech/multiwindow/IMultiWindowManager;->getZoneFrame(ILandroid/graphics/Rect;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_1

    .line 452
    .end local v7    # "zone":I
    :cond_0
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v9

    .line 381
    :cond_1
    const-string v9, "VegaPhoneWindowWrapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onWindowVegaAttributesChanged() :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", frameRect:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", lp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_c

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_c

    .line 384
    iget v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowFlags:I

    iget v10, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int v3, v9, v10

    .line 385
    .local v3, "diff":I
    and-int/lit16 v9, v3, 0x402

    if-eqz v9, :cond_9

    const/4 v2, 0x1

    .line 386
    .local v2, "checkFlag":Z
    :goto_1
    const-string v9, "VegaPhoneWindowWrapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onWindowVegaAttributesChanged() : checkFlag:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", diff:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mOldFlags:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldFlags:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldGravity:I

    iget v10, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v9, v10, :cond_2

    .line 389
    iget v9, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mGravity:I

    .line 390
    :cond_2
    iget v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldWidth:I

    iget v10, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v9, v10, :cond_3

    .line 391
    iget v9, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWidth:I

    .line 392
    :cond_3
    iget v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldHeight:I

    iget v10, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v9, v10, :cond_4

    .line 393
    iget v9, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mHeight:I

    .line 394
    :cond_4
    iget v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldX:I

    iget v10, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v9, v10, :cond_5

    .line 395
    iget v9, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mX:I

    .line 396
    :cond_5
    iget v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldY:I

    iget v10, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v9, v10, :cond_6

    .line 397
    iget v9, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mY:I

    .line 399
    :cond_6
    const/4 v5, 0x0

    .line 400
    .local v5, "isModal":Z
    const/4 v0, 0x0

    .line 401
    .local v0, "addFlags":I
    const/4 v6, 0x0

    .line 402
    .local v6, "removeFlags":I
    iget v9, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v10, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldFlags:I

    if-eq v9, v10, :cond_0

    .line 403
    iget v9, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v10, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldFlags:I

    xor-int/lit8 v10, v10, -0x1

    and-int v1, v9, v10

    .line 404
    .local v1, "changeFlag":I
    const-string v9, "VegaPhoneWindowWrapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "change_flag:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mWindowFlags:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowFlags:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", attrs.flags:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    if-eqz v2, :cond_b

    .line 407
    iget v9, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v10, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldFlags:I

    xor-int/lit8 v10, v10, -0x1

    and-int v0, v9, v10

    .line 408
    iget v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldFlags:I

    iget v10, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v10, v10, -0x1

    and-int v6, v9, v10

    .line 409
    const-string v9, "VegaPhoneWindowWrapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addFlags:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", removeFlags:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mWindowFlags:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowFlags:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowFlags:I

    or-int/2addr v9, v0

    iput v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowFlags:I

    .line 414
    iget v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowFlags:I

    xor-int/lit8 v10, v6, -0x1

    and-int/2addr v9, v10

    iput v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowFlags:I

    .line 415
    const-string v9, "VegaPhoneWindowWrapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new mWindowFlags : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowFlags:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget v9, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v9, v12

    if-ne v9, v12, :cond_7

    .line 418
    const/4 v5, 0x1

    .line 420
    :cond_7
    iget v9, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v9, v9, -0x423

    iput v9, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 422
    if-nez v5, :cond_8

    iget v9, p1, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_a

    .line 423
    :cond_8
    iput v8, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mAddWindowFlags:I

    .line 428
    :goto_2
    iget v9, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldFlags:I

    .line 429
    iget-object v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v9, p1, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;Z)V

    goto/16 :goto_0

    .end local v0    # "addFlags":I
    .end local v1    # "changeFlag":I
    .end local v2    # "checkFlag":Z
    .end local v5    # "isModal":Z
    .end local v6    # "removeFlags":I
    :cond_9
    move v2, v8

    .line 385
    goto/16 :goto_1

    .line 425
    .restart local v0    # "addFlags":I
    .restart local v1    # "changeFlag":I
    .restart local v2    # "checkFlag":Z
    .restart local v5    # "isModal":Z
    .restart local v6    # "removeFlags":I
    :cond_a
    iget v9, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v9, v9, 0x20

    iput v9, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 426
    iget v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mAddWindowFlags:I

    or-int/lit8 v9, v9, 0x20

    iput v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mAddWindowFlags:I

    goto :goto_2

    .line 432
    :cond_b
    const-string v8, "VegaPhoneWindowWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "change_flag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mWindowFlags:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowFlags:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", attrs.flags:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v11, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mAddWindowFlags:I

    xor-int/lit8 v11, v11, -0x1

    and-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v9, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mAddWindowFlags:I

    xor-int/lit8 v9, v9, -0x1

    and-int/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowFlags:I

    goto/16 :goto_0

    .line 440
    .end local v0    # "addFlags":I
    .end local v1    # "changeFlag":I
    .end local v2    # "checkFlag":Z
    .end local v3    # "diff":I
    .end local v5    # "isModal":Z
    .end local v6    # "removeFlags":I
    :cond_c
    const-string v8, "VegaPhoneWindowWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "backup flag: mWindowFlags:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowFlags:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", attrs.flags:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v8, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldFlags:I

    iput v8, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowFlags:I

    .line 443
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    if-nez v8, :cond_0

    .line 444
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v8, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mGravity:I

    .line 445
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v8, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWidth:I

    .line 446
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v8, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mHeight:I

    .line 447
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v8, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mX:I

    .line 448
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v8, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mY:I

    goto/16 :goto_0
.end method

.method public onWinodwStatusChanged(I)V
    .locals 1
    .param p1, "zone"    # I

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->onWinodwStatusChanged(IZ)V

    .line 456
    return-void
.end method

.method public setAttatchTarget(Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;)V
    .locals 0
    .param p1, "target"    # Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mAttatchTarget:Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;

    .line 497
    return-void
.end method

.method public setMultiWindowStateChangeCallback(Landroid/view/Window$MultiWindowStateChangeCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$MultiWindowStateChangeCallback;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowStateChangeCallback:Landroid/view/Window$MultiWindowStateChangeCallback;

    .line 503
    return-void
.end method

.method public updateWindowAttriutes()V
    .locals 4

    .prologue
    .line 134
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mMultiWindowManager:Lcom/pantech/multiwindow/IMultiWindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/pantech/multiwindow/IMultiWindowManager;->getZone(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->updateWindowAttriutes(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "VegaPhoneWindowWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWindowAttriutes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateWindowAttriutes(I)V
    .locals 17
    .param p1, "zone"    # I

    .prologue
    .line 141
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 143
    .local v3, "frameRect":Landroid/graphics/Rect;
    :try_start_0
    sget-object v12, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mMultiWindowManager:Lcom/pantech/multiwindow/IMultiWindowManager;

    move/from16 v0, p1

    invoke-interface {v12, v0, v3}, Lcom/pantech/multiwindow/IMultiWindowManager;->getZoneFrame(ILandroid/graphics/Rect;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-nez v12, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v12

    .line 149
    :cond_1
    const/4 v5, 0x0

    .line 150
    .local v5, "isChange":Z
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mCurrentZone:I

    move/from16 v0, p1

    if-eq v12, v0, :cond_2

    .line 151
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowStateChangeCallback:Landroid/view/Window$MultiWindowStateChangeCallback;

    if-eqz v12, :cond_2

    .line 152
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowStateChangeCallback:Landroid/view/Window$MultiWindowStateChangeCallback;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/view/Window$MultiWindowStateChangeCallback;->onWindowModeChanged(I)V

    .line 156
    :cond_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mCurrentZone:I

    .line 158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 159
    .local v8, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 160
    .local v11, "width":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 161
    .local v4, "height":I
    const/4 v7, 0x0

    .line 162
    .local v7, "isModal":Z
    const/4 v6, 0x0

    .line 163
    .local v6, "isChangeSize":Z
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 164
    .local v2, "changeRect":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 167
    .local v10, "userFix":Z
    if-lez v11, :cond_13

    if-lez v4, :cond_13

    .line 168
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldWidth:I

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldHeight:I

    if-nez v12, :cond_f

    .line 169
    :cond_3
    const/4 v10, 0x1

    .line 170
    const/16 v12, 0x2000

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    .line 171
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWidth:I

    .line 172
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mHeight:I

    .line 173
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v13, 0x33

    if-eq v12, v13, :cond_4

    .line 174
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mGravity:I

    .line 179
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mGravity:I

    if-nez v12, :cond_10

    .line 180
    const/16 v12, 0x33

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 181
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldGravity:I

    .line 185
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowFlags:I

    const v13, 0x800002

    and-int/2addr v12, v13

    const v13, 0x800002

    if-ne v12, v13, :cond_5

    .line 186
    const/4 v7, 0x1

    .line 187
    :cond_5
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v12, v12, -0x423

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 189
    if-nez v10, :cond_6

    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowFlags:I

    and-int/lit16 v12, v12, 0x300

    const/16 v13, 0x300

    if-ne v12, v13, :cond_11

    .line 192
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mGravity:I

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 193
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mAddWindowFlags:I

    .line 199
    :goto_3
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldFlags:I

    .line 200
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v13, -0x2

    if-eq v12, v13, :cond_8

    if-nez v10, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWidth:I

    if-gtz v12, :cond_8

    .line 201
    iget v12, v3, Landroid/graphics/Rect;->left:I

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 202
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v12, v11, :cond_7

    .line 203
    const/4 v6, 0x1

    .line 205
    :cond_7
    add-int/lit8 v12, v11, -0x2

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 207
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldWidth:I

    .line 208
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldX:I

    .line 209
    const/4 v5, 0x1

    .line 212
    :cond_8
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v13, -0x2

    if-eq v12, v13, :cond_a

    if-nez v10, :cond_a

    .line 213
    iget v12, v3, Landroid/graphics/Rect;->top:I

    const/16 v13, 0x4b

    if-ne v12, v13, :cond_12

    .line 214
    const/4 v12, 0x0

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 218
    :goto_4
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v12, v4, :cond_9

    .line 219
    const/4 v6, 0x1

    .line 221
    :cond_9
    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 222
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldHeight:I

    .line 223
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldY:I

    .line 226
    :cond_a
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v13, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v14, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v14, v11

    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v15, v4

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 229
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    move/from16 v0, p1

    or-int/lit16 v13, v0, 0x1000

    or-int/2addr v12, v13

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    .line 256
    :goto_5
    const-string v12, "VegaPhoneWindowWrapper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateWindowAttriutes change  lp:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v12, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v12, :cond_d

    .line 260
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x1

    if-lt v12, v13, :cond_b

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x63

    if-le v12, v13, :cond_c

    :cond_b
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7db

    if-eq v12, v13, :cond_c

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7dd

    if-eq v12, v13, :cond_c

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7eb

    if-eq v12, v13, :cond_c

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7df

    if-eq v12, v13, :cond_c

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7e0

    if-ne v12, v13, :cond_d

    .line 265
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v12, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 269
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindow:Landroid/view/Window;

    const/4 v13, 0x0

    invoke-virtual {v12, v8, v13}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 270
    if-eqz v6, :cond_e

    .line 271
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowStateChangeCallback:Landroid/view/Window$MultiWindowStateChangeCallback;

    if-eqz v12, :cond_e

    .line 272
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowStateChangeCallback:Landroid/view/Window$MultiWindowStateChangeCallback;

    invoke-interface {v12, v2}, Landroid/view/Window$MultiWindowStateChangeCallback;->onFrameSizeChanged(Landroid/graphics/Rect;)V

    .line 275
    :cond_e
    new-instance v9, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v11}, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper$1;-><init>(Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;I)V

    .line 287
    .local v9, "mRotationChanged":Ljava/lang/Runnable;
    if-eqz v5, :cond_0

    .line 288
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v12}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 176
    .end local v9    # "mRotationChanged":Ljava/lang/Runnable;
    :cond_f
    const/4 v12, 0x0

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    goto/16 :goto_1

    .line 183
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mGravity:I

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_2

    .line 195
    :cond_11
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 196
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mAddWindowFlags:I

    or-int/lit8 v12, v12, 0x20

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mAddWindowFlags:I

    goto/16 :goto_3

    .line 216
    :cond_12
    iget v12, v3, Landroid/graphics/Rect;->top:I

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_4

    .line 231
    :cond_13
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    if-eqz v12, :cond_0

    .line 232
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mX:I

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 233
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mY:I

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 234
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWidth:I

    if-ne v12, v13, :cond_14

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mHeight:I

    if-eq v12, v13, :cond_15

    .line 235
    :cond_14
    const/4 v6, 0x1

    .line 238
    :cond_15
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWidth:I

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 239
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mHeight:I

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 240
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v13, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v14, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v14, v15

    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 241
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mWindowFlags:I

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 242
    const/4 v12, 0x0

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    .line 244
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldX:I

    .line 245
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldY:I

    .line 246
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldWidth:I

    .line 247
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldHeight:I

    .line 248
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/VegaPhoneWindowWrapper;->mOldGravity:I

    goto/16 :goto_5
.end method
