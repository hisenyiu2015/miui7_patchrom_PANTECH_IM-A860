.class Lcom/mi/a/PixleActivity$MypagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PixleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/a/PixleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MypagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/a/PixleActivity;


# direct methods
.method private constructor <init>(Lcom/mi/a/PixleActivity;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lcom/mi/a/PixleActivity$MypagerAdapter;->this$0:Lcom/mi/a/PixleActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/a/PixleActivity;Lcom/mi/a/PixleActivity$MypagerAdapter;)V
    .locals 0

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lcom/mi/a/PixleActivity$MypagerAdapter;-><init>(Lcom/mi/a/PixleActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 760
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 762
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 746
    const v0, 0x7fffffff

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 767
    iget-object v1, p0, Lcom/mi/a/PixleActivity$MypagerAdapter;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->list:Ljava/util/List;
    invoke-static {v1}, Lcom/mi/a/PixleActivity;->access$2(Lcom/mi/a/PixleActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/a/PixleActivity$MypagerAdapter;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->list:Ljava/util/List;
    invoke-static {v2}, Lcom/mi/a/PixleActivity;->access$2(Lcom/mi/a/PixleActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v2, p2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 768
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 771
    :cond_0
    iget-object v1, p0, Lcom/mi/a/PixleActivity$MypagerAdapter;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->list:Ljava/util/List;
    invoke-static {v1}, Lcom/mi/a/PixleActivity;->access$2(Lcom/mi/a/PixleActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/a/PixleActivity$MypagerAdapter;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->list:Ljava/util/List;
    invoke-static {v2}, Lcom/mi/a/PixleActivity;->access$2(Lcom/mi/a/PixleActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v2, p2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 772
    iget-object v1, p0, Lcom/mi/a/PixleActivity$MypagerAdapter;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->list:Ljava/util/List;
    invoke-static {v1}, Lcom/mi/a/PixleActivity;->access$2(Lcom/mi/a/PixleActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/a/PixleActivity$MypagerAdapter;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->list:Ljava/util/List;
    invoke-static {v2}, Lcom/mi/a/PixleActivity;->access$2(Lcom/mi/a/PixleActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v2, p2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 752
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
