.class final Landroid/view/ViewDebug$9;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->PATScrollView(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapterView:Landroid/widget/AdapterView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/widget/AdapterView;I)V
    .locals 0

    .prologue
    .line 1159
    iput-object p1, p0, Landroid/view/ViewDebug$9;->val$adapterView:Landroid/widget/AdapterView;

    iput p2, p0, Landroid/view/ViewDebug$9;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1161
    iget-object v0, p0, Landroid/view/ViewDebug$9;->val$adapterView:Landroid/widget/AdapterView;

    iget v1, p0, Landroid/view/ViewDebug$9;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 1162
    return-void
.end method
