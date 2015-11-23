.class Landroid/widget/Editor$HandleView$2;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->showSelectionPopupWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;)V
    .locals 0

    .prologue
    .line 3530
    iput-object p1, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3532
    iget-object v0, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mSelectionPopupWindow:Landroid/widget/Editor$SelectionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionPopupWindow;->show()V

    .line 3533
    return-void
.end method
