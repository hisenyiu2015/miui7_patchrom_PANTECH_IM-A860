.class final Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;
.super Ljava/lang/Object;
.source "AotItemSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/server/aot/menu/AotItemSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwapViews"
.end annotation


# instance fields
.field mAni:Landroid/view/animation/Animation;

.field mIndex:I

.field mSource:Landroid/view/View;

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

.field final synthetic this$0:Lcom/pantech/server/aot/menu/AotItemSwitcher;


# direct methods
.method public constructor <init>(Lcom/pantech/server/aot/menu/AotItemSwitcher;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p2, "src"    # Landroid/view/View;
    .param p3, "target"    # Landroid/view/View;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->this$0:Lcom/pantech/server/aot/menu/AotItemSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mSource:Landroid/view/View;

    .line 95
    iput-object p3, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTarget:Landroid/view/View;

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/pantech/server/aot/menu/AotItemSwitcher;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .param p2, "src"    # Landroid/view/View;
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
    .line 106
    .local p3, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->this$0:Lcom/pantech/server/aot/menu/AotItemSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mIndex:I

    .line 108
    iput-object p2, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mSource:Landroid/view/View;

    .line 109
    iput-object p3, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTargetList:Ljava/util/ArrayList;

    .line 110
    iget v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTarget:Landroid/view/View;

    .line 111
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 124
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mSource:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTarget:Landroid/view/View;

    if-nez v4, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mSource:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 129
    .local v2, "vg":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 130
    .local v3, "vgTarget":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mSource:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 131
    .local v0, "sourceIndex":I
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTarget:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 133
    .local v1, "targetIndex":I
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTarget:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mSource:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 136
    if-le v0, v1, :cond_2

    .line 137
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mSource:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 138
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTarget:Landroid/view/View;

    invoke-virtual {v2, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 147
    :goto_1
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTargetList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mIndex:I

    iget-object v5, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTargetList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 148
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTargetList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iput-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTarget:Landroid/view/View;

    .line 149
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTarget:Landroid/view/View;

    iget-object v5, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mAni:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTarget:Landroid/view/View;

    invoke-virtual {v2, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 141
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mSource:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 150
    :cond_3
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTargetList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mIndex:I

    iget-object v5, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTargetList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 151
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->this$0:Lcom/pantech/server/aot/menu/AotItemSwitcher;

    iget-object v4, v4, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mSwitcherListener:Lcom/pantech/server/aot/menu/AotItemSwitcher$SwitcherListener;

    if-eqz v4, :cond_0

    .line 152
    iget-object v4, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->this$0:Lcom/pantech/server/aot/menu/AotItemSwitcher;

    iget-object v4, v4, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mSwitcherListener:Lcom/pantech/server/aot/menu/AotItemSwitcher$SwitcherListener;

    invoke-interface {v4}, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwitcherListener;->onSwitcheAnimationEnd()V

    goto :goto_0
.end method

.method setAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "ani"    # Landroid/view/animation/Animation;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mAni:Landroid/view/animation/Animation;

    .line 120
    return-void
.end method

.method setViews(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "src"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mSource:Landroid/view/View;

    .line 115
    iput-object p2, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTarget:Landroid/view/View;

    .line 116
    return-void
.end method

.method public startAnimation()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTargetList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mIndex:I

    iget-object v1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTargetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTargetList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTarget:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 102
    iget-object v0, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->this$0:Lcom/pantech/server/aot/menu/AotItemSwitcher;

    iget-object v0, v0, Lcom/pantech/server/aot/menu/AotItemSwitcher;->mSwap:Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;

    iget-object v1, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mSource:Landroid/view/View;

    iget-object v2, p0, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/server/aot/menu/AotItemSwitcher$SwapViews;->setViews(Landroid/view/View;Landroid/view/View;)V

    .line 104
    :cond_0
    return-void
.end method
