.class Lcom/mi/a/PixleActivity$6;
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
    iput-object p1, p0, Lcom/mi/a/PixleActivity$6;->this$0:Lcom/mi/a/PixleActivity;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mi/a/PixleActivity$6;)Lcom/mi/a/PixleActivity;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/mi/a/PixleActivity$6;->this$0:Lcom/mi/a/PixleActivity;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "paramAnonymousPreference"    # Landroid/preference/Preference;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/mi/a/PixleActivity$6;->this$0:Lcom/mi/a/PixleActivity;

    iget-object v1, p0, Lcom/mi/a/PixleActivity$6;->this$0:Lcom/mi/a/PixleActivity;

    invoke-virtual {v1}, Lcom/mi/a/PixleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dpi"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/mi/a/PixleActivity;->item_DIP:I

    .line 407
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mi/a/PixleActivity$6;->this$0:Lcom/mi/a/PixleActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "dpi\u503c\u8d8a\u5c0f\u89c6\u91ce\u8d8a\u5927\uff0c\u786e\u5b9a\u7acb\u5373\u91cd\u542f\u751f\u6548"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/a/PixleActivity$6;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->Dpi_change_item:[Ljava/lang/String;
    invoke-static {v1}, Lcom/mi/a/PixleActivity;->access$5(Lcom/mi/a/PixleActivity;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/a/PixleActivity$6;->this$0:Lcom/mi/a/PixleActivity;

    iget v2, v2, Lcom/mi/a/PixleActivity;->item_DIP:I

    new-instance v3, Lcom/mi/a/PixleActivity$6$1;

    invoke-direct {v3, p0}, Lcom/mi/a/PixleActivity$6$1;-><init>(Lcom/mi/a/PixleActivity$6;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 413
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/mi/a/PixleActivity$6$2;

    invoke-direct {v2, p0}, Lcom/mi/a/PixleActivity$6$2;-><init>(Lcom/mi/a/PixleActivity$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 457
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/mi/a/PixleActivity$6$3;

    invoke-direct {v2, p0}, Lcom/mi/a/PixleActivity$6$3;-><init>(Lcom/mi/a/PixleActivity$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 461
    const/4 v0, 0x0

    return v0
.end method
