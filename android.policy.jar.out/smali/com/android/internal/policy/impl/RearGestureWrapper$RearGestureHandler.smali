.class Lcom/android/internal/policy/impl/RearGestureWrapper$RearGestureHandler;
.super Landroid/os/Handler;
.source "RearGestureWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/RearGestureWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RearGestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/RearGestureWrapper;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RearGestureWrapper;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$RearGestureHandler;->this$0:Lcom/android/internal/policy/impl/RearGestureWrapper;

    .line 115
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 116
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 120
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 135
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :pswitch_0
    const-string v2, "RearGestureWrapper"

    const-string v3, "LONG_PRESS sendLongPressEvent()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$RearGestureHandler;->this$0:Lcom/android/internal/policy/impl/RearGestureWrapper;

    iget-object v2, v2, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$RearGestureHandler;->this$0:Lcom/android/internal/policy/impl/RearGestureWrapper;

    iget-object v2, v2, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getRearCallback()Landroid/view/Window$RearCallback;

    move-result-object v0

    .line 124
    .local v0, "cb":Landroid/view/Window$RearCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$RearGestureHandler;->this$0:Lcom/android/internal/policy/impl/RearGestureWrapper;

    # getter for: Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/android/internal/policy/impl/RearGestureWrapper;->access$000(Lcom/android/internal/policy/impl/RearGestureWrapper;)Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 126
    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$RearGestureHandler;->this$0:Lcom/android/internal/policy/impl/RearGestureWrapper;

    # getter for: Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->access$000(Lcom/android/internal/policy/impl/RearGestureWrapper;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/Window$RearCallback;->onLongPress(Landroid/view/MotionEvent;)V

    .line 131
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$RearGestureHandler;->this$0:Lcom/android/internal/policy/impl/RearGestureWrapper;

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/RearGestureWrapper;->access$100(Lcom/android/internal/policy/impl/RearGestureWrapper;Z)V

    .line 137
    return-void

    .end local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_1
    move-object v0, v1

    .line 123
    goto :goto_0

    .line 128
    .restart local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_2
    invoke-interface {v0, v1}, Landroid/view/Window$RearCallback;->onLongPress(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
