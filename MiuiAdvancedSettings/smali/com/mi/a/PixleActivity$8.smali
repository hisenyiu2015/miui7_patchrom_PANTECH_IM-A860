.class Lcom/mi/a/PixleActivity$8;
.super Ljava/lang/Object;
.source "PixleActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/a/PixleActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/a/PixleActivity;


# direct methods
.method constructor <init>(Lcom/mi/a/PixleActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mi/a/PixleActivity$8;->this$0:Lcom/mi/a/PixleActivity;

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 733
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 729
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 714
    iget-object v0, p0, Lcom/mi/a/PixleActivity$8;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->imageDescriptions:[Ljava/lang/String;
    invoke-static {v0}, Lcom/mi/a/PixleActivity;->access$6(Lcom/mi/a/PixleActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    rem-int/2addr p1, v0

    .line 716
    iget-object v0, p0, Lcom/mi/a/PixleActivity$8;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->title_text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mi/a/PixleActivity;->access$7(Lcom/mi/a/PixleActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/a/PixleActivity$8;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->imageDescriptions:[Ljava/lang/String;
    invoke-static {v1}, Lcom/mi/a/PixleActivity;->access$6(Lcom/mi/a/PixleActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v0, p0, Lcom/mi/a/PixleActivity$8;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/mi/a/PixleActivity;->access$8(Lcom/mi/a/PixleActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 719
    iget-object v0, p0, Lcom/mi/a/PixleActivity$8;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/mi/a/PixleActivity;->access$8(Lcom/mi/a/PixleActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/a/PixleActivity$8;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->Lastpoint:I
    invoke-static {v1}, Lcom/mi/a/PixleActivity;->access$9(Lcom/mi/a/PixleActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 720
    iget-object v0, p0, Lcom/mi/a/PixleActivity$8;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/mi/a/PixleActivity;->access$8(Lcom/mi/a/PixleActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/a/PixleActivity$8;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->Lastpoint:I
    invoke-static {v1}, Lcom/mi/a/PixleActivity;->access$9(Lcom/mi/a/PixleActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/a/PixleActivity$8;->this$0:Lcom/mi/a/PixleActivity;

    invoke-virtual {v1}, Lcom/mi/a/PixleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 721
    iget-object v0, p0, Lcom/mi/a/PixleActivity$8;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/mi/a/PixleActivity;->access$8(Lcom/mi/a/PixleActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/a/PixleActivity$8;->this$0:Lcom/mi/a/PixleActivity;

    invoke-virtual {v1}, Lcom/mi/a/PixleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 723
    iget-object v0, p0, Lcom/mi/a/PixleActivity$8;->this$0:Lcom/mi/a/PixleActivity;

    invoke-static {v0, p1}, Lcom/mi/a/PixleActivity;->access$10(Lcom/mi/a/PixleActivity;I)V

    .line 724
    return-void
.end method
