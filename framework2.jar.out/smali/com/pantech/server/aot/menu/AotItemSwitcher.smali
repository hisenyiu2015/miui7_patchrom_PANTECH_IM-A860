.class public Lcom/pantech/server/aot/menu/AotItemSwitcher;
.super Ljava/lang/Object;
.source "AotItemSwitcher.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;,
        Lcom/pantech/server/aot/menu/AotItemSwitcher$SwitcherListener;
    }
.end annotation


# instance fields
.field mAni:Landroid/view/animation/Animation;

.field mIndex:I

.field mSource:Landroid/view/View;

.field mSwap:Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;

.field mSwitcherListener:Lcom/pantech/server/aot/menu/AotItemSwitcher$SwitcherListener;

.field mTarget:Landroid/view/View;

.field mTargetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "src"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mSource:Landroid/view/View;

    .line 31
    iput-object p2, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mTarget:Landroid/view/View;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mTargetList:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;

    invoke-direct {v0, p0, p1, p2}, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;-><init>(Lcom/pantech/server/aot/menu/AotItemSwitcher;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mSwap:Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "src"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mIndex:I

    .line 38
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mSource:Landroid/view/View;

    .line 39
    iget v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mIndex:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mTarget:Landroid/view/View;

    .line 40
    iput-object p2, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mTargetList:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;

    iget-object v1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mTargetList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1, v1}, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;-><init>(Lcom/pantech/server/aot/menu/AotItemSwitcher;Landroid/view/View;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mSwap:Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;

    .line 42
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mSwap:Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 79
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 84
    return-void
.end method

.method removeSwitcherListener()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mSwitcherListener:Lcom/pantech/server/aot/menu/AotItemSwitcher$SwitcherListener;

    .line 69
    return-void
.end method

.method setAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "ani"    # Landroid/view/animation/Animation;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mAni:Landroid/view/animation/Animation;

    .line 51
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mSwap:Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;

    iget-object v1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->setAnimation(Landroid/view/animation/Animation;)V

    .line 52
    return-void
.end method

.method setSwitcherListener(Lcom/pantech/server/aot/menu/AotItemSwitcher$SwitcherListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/pantech/server/aot/menu/AotItemSwitcher$SwitcherListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mSwitcherListener:Lcom/pantech/server/aot/menu/AotItemSwitcher$SwitcherListener;

    .line 65
    return-void
.end method

.method setViews(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "src"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mSource:Landroid/view/View;

    .line 46
    iput-object p2, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mTarget:Landroid/view/View;

    .line 47
    return-void
.end method

.method startAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "ani"    # Landroid/view/animation/Animation;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mAni:Landroid/view/animation/Animation;

    .line 57
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mSwap:Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mSwap:Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;

    iget-object v1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->setAnimation(Landroid/view/animation/Animation;)V

    .line 59
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mSwap:Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;

    invoke-virtual {v0}, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->startAnimation()V

    .line 61
    :cond_0
    return-void
.end method
