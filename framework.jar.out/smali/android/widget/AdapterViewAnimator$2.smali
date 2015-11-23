.class Landroid/widget/AdapterViewAnimator$2;
.super Ljava/lang/Object;
.source "AdapterViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AdapterViewAnimator;->checkForAndHandleDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AdapterViewAnimator;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewAnimator;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 750
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v2}, Landroid/widget/AdapterViewAnimator;->handleDataChanged()V

    .line 754
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v2}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v2

    if-nez v2, :cond_1

    .line 755
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iput v5, v2, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 756
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v3, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v3, v3, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v2, v3, v5}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 780
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v2}, Landroid/widget/AdapterViewAnimator;->refreshChildren()V

    .line 781
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v2}, Landroid/widget/AdapterViewAnimator;->requestLayout()V

    .line 782
    return-void

    .line 757
    :cond_1
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v2, v2, Landroid/widget/AdapterViewAnimator;->mOldItemCount:I

    iget-object v3, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v3}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 758
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v2, v2, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iget-object v3, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v3}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_2

    .line 759
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v2, v2, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iget-object v3, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v3, v3, Landroid/widget/AdapterViewAnimator;->mOldItemCount:I

    div-int v1, v2, v3

    .line 760
    .local v1, "removeView":I
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v3, v2, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iget-object v4, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v4, v4, Landroid/widget/AdapterViewAnimator;->mOldItemCount:I

    mul-int/2addr v4, v1

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 762
    .end local v1    # "removeView":I
    :cond_2
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v3, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v3, v3, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v2, v3, v5}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    goto :goto_0

    .line 763
    :cond_3
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v2, v2, Landroid/widget/AdapterViewAnimator;->mOldItemCount:I

    iget-object v3, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v3}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 764
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v2, v2, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iget-object v3, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v3}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_4

    .line 765
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v2, v2, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iget-object v3, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v3, v3, Landroid/widget/AdapterViewAnimator;->mOldItemCount:I

    div-int v0, v2, v3

    .line 766
    .local v0, "addView":I
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v3, v2, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iget-object v4, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v4, v4, Landroid/widget/AdapterViewAnimator;->mOldItemCount:I

    mul-int/2addr v4, v0

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 768
    .end local v0    # "addView":I
    :cond_4
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v3, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v3, v3, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v2, v3, v5}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    goto :goto_0
.end method
