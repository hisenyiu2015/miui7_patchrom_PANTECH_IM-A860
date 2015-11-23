.class Lcom/android/internal/policy/impl/RearGestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "RearGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/RearGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/RearGestureDetector;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RearGestureDetector;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/internal/policy/impl/RearGestureDetector$GestureHandler;->this$0:Lcom/android/internal/policy/impl/RearGestureDetector;

    .line 255
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 256
    return-void
.end method

.method constructor <init>(Lcom/android/internal/policy/impl/RearGestureDetector;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/internal/policy/impl/RearGestureDetector$GestureHandler;->this$0:Lcom/android/internal/policy/impl/RearGestureDetector;

    .line 259
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 260
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 264
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 281
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureDetector$GestureHandler;->this$0:Lcom/android/internal/policy/impl/RearGestureDetector;

    # getter for: Lcom/android/internal/policy/impl/RearGestureDetector;->mListener:Lcom/android/internal/policy/impl/RearGestureDetector$OnGestureListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RearGestureDetector;->access$100(Lcom/android/internal/policy/impl/RearGestureDetector;)Lcom/android/internal/policy/impl/RearGestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureDetector$GestureHandler;->this$0:Lcom/android/internal/policy/impl/RearGestureDetector;

    # getter for: Lcom/android/internal/policy/impl/RearGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/internal/policy/impl/RearGestureDetector;->access$000(Lcom/android/internal/policy/impl/RearGestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/RearGestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 270
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureDetector$GestureHandler;->this$0:Lcom/android/internal/policy/impl/RearGestureDetector;

    # invokes: Lcom/android/internal/policy/impl/RearGestureDetector;->dispatchLongPress()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/RearGestureDetector;->access$200(Lcom/android/internal/policy/impl/RearGestureDetector;)V

    goto :goto_0

    .line 275
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureDetector$GestureHandler;->this$0:Lcom/android/internal/policy/impl/RearGestureDetector;

    # getter for: Lcom/android/internal/policy/impl/RearGestureDetector;->mDoubleTapListener:Lcom/android/internal/policy/impl/RearGestureDetector$OnDoubleTapListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RearGestureDetector;->access$300(Lcom/android/internal/policy/impl/RearGestureDetector;)Lcom/android/internal/policy/impl/RearGestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureDetector$GestureHandler;->this$0:Lcom/android/internal/policy/impl/RearGestureDetector;

    # getter for: Lcom/android/internal/policy/impl/RearGestureDetector;->mStillDown:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/RearGestureDetector;->access$400(Lcom/android/internal/policy/impl/RearGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureDetector$GestureHandler;->this$0:Lcom/android/internal/policy/impl/RearGestureDetector;

    # getter for: Lcom/android/internal/policy/impl/RearGestureDetector;->mDoubleTapListener:Lcom/android/internal/policy/impl/RearGestureDetector$OnDoubleTapListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RearGestureDetector;->access$300(Lcom/android/internal/policy/impl/RearGestureDetector;)Lcom/android/internal/policy/impl/RearGestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureDetector$GestureHandler;->this$0:Lcom/android/internal/policy/impl/RearGestureDetector;

    # getter for: Lcom/android/internal/policy/impl/RearGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/internal/policy/impl/RearGestureDetector;->access$000(Lcom/android/internal/policy/impl/RearGestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/RearGestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
