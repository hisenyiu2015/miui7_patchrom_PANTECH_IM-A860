.class Landroid/alwaysontopservice/AlwaysOnTopService$12;
.super Ljava/lang/Object;
.source "AlwaysOnTopService.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/alwaysontopservice/AlwaysOnTopService;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/alwaysontopservice/AlwaysOnTopService;


# direct methods
.method constructor <init>(Landroid/alwaysontopservice/AlwaysOnTopService;)V
    .locals 0

    .prologue
    .line 1539
    iput-object p1, p0, Landroid/alwaysontopservice/AlwaysOnTopService$12;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1550
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$12;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    # invokes: Landroid/alwaysontopservice/AlwaysOnTopService;->checkFrameSize()Z
    invoke-static {v0}, Landroid/alwaysontopservice/AlwaysOnTopService;->access$000(Landroid/alwaysontopservice/AlwaysOnTopService;)Z

    .line 1551
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$12;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    iget-object v0, v0, Landroid/alwaysontopservice/AlwaysOnTopService;->mDevorView:Landroid/view/View;

    sget-object v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mSavePosition:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1552
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$12;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    sget-object v1, Landroid/alwaysontopservice/AlwaysOnTopService;->mRawPosition:[I

    # invokes: Landroid/alwaysontopservice/AlwaysOnTopService;->getLocationOnScreen([I)V
    invoke-static {v0, v1}, Landroid/alwaysontopservice/AlwaysOnTopService;->access$400(Landroid/alwaysontopservice/AlwaysOnTopService;[I)V

    .line 1553
    iget-object v0, p0, Landroid/alwaysontopservice/AlwaysOnTopService$12;->this$0:Landroid/alwaysontopservice/AlwaysOnTopService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/alwaysontopservice/AlwaysOnTopService;->setPositionFixing(Z)V

    .line 1554
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1545
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1542
    return-void
.end method
