.class Lcom/mi/a/PixleActivity$2;
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
.field item:I

.field final synthetic this$0:Lcom/mi/a/PixleActivity;


# direct methods
.method constructor <init>(Lcom/mi/a/PixleActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mi/a/PixleActivity$2;->this$0:Lcom/mi/a/PixleActivity;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/a/PixleActivity$2;->item:I

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 113
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mi/a/PixleActivity$2;->this$0:Lcom/mi/a/PixleActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    const-string v2, "\u9ad8\u7ea7\u7535\u6e90\u83dc\u5355"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/mi/a/PixleActivity$2;->this$0:Lcom/mi/a/PixleActivity;

    # getter for: Lcom/mi/a/PixleActivity;->Reboot_item:[Ljava/lang/String;
    invoke-static {v2}, Lcom/mi/a/PixleActivity;->access$3(Lcom/mi/a/PixleActivity;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mi/a/PixleActivity$2$1;

    invoke-direct {v3, p0}, Lcom/mi/a/PixleActivity$2$1;-><init>(Lcom/mi/a/PixleActivity$2;)V

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 124
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/mi/a/PixleActivity$2$2;

    invoke-direct {v3, p0}, Lcom/mi/a/PixleActivity$2$2;-><init>(Lcom/mi/a/PixleActivity$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 150
    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/mi/a/PixleActivity$2$3;

    invoke-direct {v3, p0}, Lcom/mi/a/PixleActivity$2$3;-><init>(Lcom/mi/a/PixleActivity$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 158
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 161
    return v4
.end method
