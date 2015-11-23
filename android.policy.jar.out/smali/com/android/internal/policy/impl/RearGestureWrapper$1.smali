.class Lcom/android/internal/policy/impl/RearGestureWrapper$1;
.super Ljava/lang/Object;
.source "RearGestureWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/RearGestureWrapper;->sendMotionEvent(JJIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/RearGestureWrapper;

.field final synthetic val$action:I

.field final synthetic val$eventTime:J

.field final synthetic val$time:J

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RearGestureWrapper;JJIII)V
    .locals 0

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$1;->this$0:Lcom/android/internal/policy/impl/RearGestureWrapper;

    iput-wide p2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$1;->val$time:J

    iput-wide p4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$1;->val$eventTime:J

    iput p6, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$1;->val$action:I

    iput p7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$1;->val$x:I

    iput p8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1029
    iget-wide v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$1;->val$time:J

    iget-wide v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$1;->val$time:J

    iget-wide v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$1;->val$eventTime:J

    add-long/2addr v2, v4

    iget v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$1;->val$action:I

    iget v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$1;->val$x:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/policy/impl/RearGestureWrapper$1;->val$y:I

    int-to-float v6, v6

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1030
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v0, 0x1042

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1031
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, v8, v7}, Landroid/hardware/input/InputManager;->injectInputEventFromRearTouch(Landroid/view/InputEvent;I)Z

    .line 1032
    return-void
.end method
