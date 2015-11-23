.class final Lcom/android/server/wm/WindowManagerService$MultiWindowInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MultiWindowInputEventReceiver"
.end annotation


# instance fields
.field private final mTmpRegion:Landroid/graphics/Region;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 1
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 12499
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$MultiWindowInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 12500
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 12497
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$MultiWindowInputEventReceiver;->mTmpRegion:Landroid/graphics/Region;

    .line 12501
    return-void
.end method

.method private getTouchedWinAtPointLw(FF)Lcom/android/server/wm/WindowState;
    .locals 13
    .param p1, "xf"    # F
    .param p2, "yf"    # F

    .prologue
    const/4 v12, -0x1

    const/4 v9, 0x0

    .line 12504
    const/4 v5, 0x0

    .line 12505
    .local v5, "touchedWin":Lcom/android/server/wm/WindowState;
    float-to-int v7, p1

    .line 12506
    .local v7, "x":I
    float-to-int v8, p2

    .line 12508
    .local v8, "y":I
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$MultiWindowInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v6

    .line 12509
    .local v6, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    if-nez v6, :cond_1

    .line 12542
    :cond_0
    :goto_0
    return-object v9

    .line 12512
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 12513
    .local v0, "N":I
    const/4 v2, 0x0

    .line 12514
    .local v2, "dualwindowCount":I
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_5

    .line 12515
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 12516
    .local v1, "child":Lcom/android/server/wm/WindowState;
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 12517
    .local v3, "flags":I
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v10

    if-nez v10, :cond_3

    .line 12514
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 12520
    :cond_3
    and-int/lit8 v10, v3, 0x10

    if-nez v10, :cond_2

    .line 12524
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$MultiWindowInputEventReceiver;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 12525
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    if-eqz v10, :cond_4

    .line 12526
    add-int/lit8 v2, v2, 0x1

    .line 12528
    :cond_4
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$MultiWindowInputEventReceiver;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v10, v7, v8}, Landroid/graphics/Region;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 12529
    move-object v5, v1

    .line 12542
    .end local v1    # "child":Lcom/android/server/wm/WindowState;
    .end local v3    # "flags":I
    :cond_5
    if-lez v2, :cond_0

    move-object v9, v5

    goto :goto_0

    .line 12533
    .restart local v1    # "child":Lcom/android/server/wm/WindowState;
    .restart local v3    # "flags":I
    :cond_6
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    if-nez v10, :cond_2

    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_7

    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    :cond_7
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v10, v12, :cond_2

    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v10, v12, :cond_2

    .line 12537
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "find dialog!!! win:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v9, -0x1

    .line 12547
    const/4 v3, 0x0

    .line 12549
    .local v3, "handled":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v7

    .line 12550
    .local v7, "source":I
    instance-of v10, p1, Landroid/view/MotionEvent;

    if-eqz v10, :cond_0

    and-int/lit8 v10, v7, 0x2

    if-eqz v10, :cond_0

    and-int/lit8 v10, v7, 0x20

    if-nez v10, :cond_0

    .line 12553
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v4, v0

    .line 12554
    .local v4, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 12555
    .local v5, "newX":F
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 12557
    .local v6, "newY":F
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 12577
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    .end local v5    # "newX":F
    .end local v6    # "newY":F
    .end local v7    # "source":I
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$MultiWindowInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 12579
    return-void

    .line 12560
    .restart local v4    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v5    # "newX":F
    .restart local v6    # "newY":F
    .restart local v7    # "source":I
    :pswitch_0
    :try_start_1
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$MultiWindowInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12561
    :try_start_2
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService$MultiWindowInputEventReceiver;->getTouchedWinAtPointLw(FF)Lcom/android/server/wm/WindowState;

    move-result-object v8

    .line 12562
    .local v8, "touchedWin":Lcom/android/server/wm/WindowState;
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12563
    if-eqz v8, :cond_2

    :try_start_3
    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_2

    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v2, v10, Lcom/android/server/wm/AppWindowToken;->groupId:I

    .line 12565
    .local v2, "groupId":I
    :goto_1
    if-eq v2, v9, :cond_0

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$MultiWindowInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$MultiWindowInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget v9, v9, Lcom/android/server/wm/AppWindowToken;->groupId:I

    if-eq v9, v2, :cond_0

    .line 12567
    :cond_1
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$MultiWindowInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/server/wm/WindowManagerService;->mWaitingFocusChange:Z

    .line 12568
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$MultiWindowInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-interface {v9, v2, v10, v11}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 12574
    .end local v2    # "groupId":I
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    .end local v5    # "newX":F
    .end local v6    # "newY":F
    .end local v7    # "source":I
    .end local v8    # "touchedWin":Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v1

    .line 12575
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v9, "WindowManager"

    const-string v10, "Exception caught by multi-window handleMotion"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 12577
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$MultiWindowInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v9

    .line 12562
    .restart local v4    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v5    # "newX":F
    .restart local v6    # "newY":F
    .restart local v7    # "source":I
    :catchall_1
    move-exception v9

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .restart local v8    # "touchedWin":Lcom/android/server/wm/WindowState;
    :cond_2
    move v2, v9

    .line 12563
    goto :goto_1

    .line 12557
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
