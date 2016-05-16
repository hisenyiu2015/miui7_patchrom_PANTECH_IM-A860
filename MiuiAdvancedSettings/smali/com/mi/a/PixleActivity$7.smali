.class Lcom/mi/a/PixleActivity$7;
.super Ljava/lang/Object;
.source "PixleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mi/a/PixleActivity$7;->this$0:Lcom/mi/a/PixleActivity;

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 691
    const-string v2, "http://weibo.com/5693226005"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 692
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 693
    .local v0, "it":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mi/a/PixleActivity$7;->this$0:Lcom/mi/a/PixleActivity;

    invoke-virtual {v2, v0}, Lcom/mi/a/PixleActivity;->startActivity(Landroid/content/Intent;)V

    .line 695
    return-void
.end method
