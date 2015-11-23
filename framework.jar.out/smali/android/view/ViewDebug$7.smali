.class final Landroid/view/ViewDebug$7;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->PATSetEditText(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$typeStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1098
    iput-object p1, p0, Landroid/view/ViewDebug$7;->val$editText:Landroid/widget/EditText;

    iput-object p2, p0, Landroid/view/ViewDebug$7;->val$typeStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1100
    iget-object v0, p0, Landroid/view/ViewDebug$7;->val$editText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/view/ViewDebug$7;->val$typeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    return-void
.end method
