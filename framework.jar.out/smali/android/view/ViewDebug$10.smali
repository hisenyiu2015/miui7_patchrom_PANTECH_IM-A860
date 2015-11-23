.class final Landroid/view/ViewDebug$10;
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
.field final synthetic val$dx:I

.field final synthetic val$dy:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 1171
    iput-object p1, p0, Landroid/view/ViewDebug$10;->val$view:Landroid/view/View;

    iput p2, p0, Landroid/view/ViewDebug$10;->val$dx:I

    iput p3, p0, Landroid/view/ViewDebug$10;->val$dy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/view/ViewDebug$10;->val$view:Landroid/view/View;

    iget v1, p0, Landroid/view/ViewDebug$10;->val$dx:I

    iget v2, p0, Landroid/view/ViewDebug$10;->val$dy:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollBy(II)V

    .line 1174
    return-void
.end method
