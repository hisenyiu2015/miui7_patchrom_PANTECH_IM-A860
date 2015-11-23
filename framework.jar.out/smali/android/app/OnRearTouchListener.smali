.class public Landroid/app/OnRearTouchListener;
.super Ljava/lang/Object;
.source "OnRearTouchListener.java"

# interfaces
.implements Landroid/view/Window$RearCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public onFlingDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "yVelocity"    # F

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public onFlingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "xVelocity"    # F

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public onFlingRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "xVelocity"    # F

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public onFlingUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "yVelocity"    # F

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 10
    return-void
.end method

.method public onLongPressWithGyroscope(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 13
    return-void
.end method

.method public final onRearTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public onScratchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method
