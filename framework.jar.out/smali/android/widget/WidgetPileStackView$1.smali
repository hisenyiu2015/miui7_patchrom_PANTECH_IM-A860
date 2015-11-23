.class Landroid/widget/WidgetPileStackView$1;
.super Ljava/lang/Object;
.source "WidgetPileStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/WidgetPileStackView;->transformViewForTransition(IILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/WidgetPileStackView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/WidgetPileStackView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Landroid/widget/WidgetPileStackView$1;->this$0:Landroid/widget/WidgetPileStackView;

    iput-object p2, p0, Landroid/widget/WidgetPileStackView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Landroid/widget/WidgetPileStackView$1;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 316
    return-void
.end method
