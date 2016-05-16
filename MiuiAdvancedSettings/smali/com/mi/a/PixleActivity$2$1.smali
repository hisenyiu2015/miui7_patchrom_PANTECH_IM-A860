.class Lcom/mi/a/PixleActivity$2$1;
.super Ljava/lang/Object;
.source "PixleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/a/PixleActivity$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/a/PixleActivity$2;


# direct methods
.method constructor <init>(Lcom/mi/a/PixleActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mi/a/PixleActivity$2$1;->this$1:Lcom/mi/a/PixleActivity$2;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mi/a/PixleActivity$2$1;->this$1:Lcom/mi/a/PixleActivity$2;

    iput p2, v0, Lcom/mi/a/PixleActivity$2;->item:I

    .line 122
    return-void
.end method
