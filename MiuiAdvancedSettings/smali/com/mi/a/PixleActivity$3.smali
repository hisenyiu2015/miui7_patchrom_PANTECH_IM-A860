.class Lcom/mi/a/PixleActivity$3;
.super Ljava/lang/Object;
.source "PixleActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/a/PixleActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/mi/a/PixleActivity$3;->this$0:Lcom/mi/a/PixleActivity;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mi/a/PixleActivity$3;->this$0:Lcom/mi/a/PixleActivity;

    const-class v2, Lcom/mi/a/ShakeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mi/a/PixleActivity$3;->this$0:Lcom/mi/a/PixleActivity;

    invoke-virtual {v1, v0}, Lcom/mi/a/PixleActivity;->startActivity(Landroid/content/Intent;)V

    .line 256
    const/4 v1, 0x0

    return v1
.end method
