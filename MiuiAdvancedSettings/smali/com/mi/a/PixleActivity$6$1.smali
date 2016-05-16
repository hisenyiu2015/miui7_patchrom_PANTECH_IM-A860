.class Lcom/mi/a/PixleActivity$6$1;
.super Ljava/lang/Object;
.source "PixleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/a/PixleActivity$6;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/a/PixleActivity$6;


# direct methods
.method constructor <init>(Lcom/mi/a/PixleActivity$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mi/a/PixleActivity$6$1;->this$1:Lcom/mi/a/PixleActivity$6;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "paramAnonymous2DialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "paramAnonymous2Int"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lcom/mi/a/PixleActivity$6$1;->this$1:Lcom/mi/a/PixleActivity$6;

    # getter for: Lcom/mi/a/PixleActivity$6;->this$0:Lcom/mi/a/PixleActivity;
    invoke-static {v0}, Lcom/mi/a/PixleActivity$6;->access$0(Lcom/mi/a/PixleActivity$6;)Lcom/mi/a/PixleActivity;

    move-result-object v0

    iput p2, v0, Lcom/mi/a/PixleActivity;->item_DIP:I

    .line 412
    return-void
.end method
