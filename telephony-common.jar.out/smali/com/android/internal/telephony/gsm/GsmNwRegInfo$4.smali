.class Lcom/android/internal/telephony/gsm/GsmNwRegInfo$4;
.super Ljava/lang/Object;
.source "GsmNwRegInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->displayGwPsReject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmNwRegInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$4;->this$0:Lcom/android/internal/telephony/gsm/GsmNwRegInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$4;->this$0:Lcom/android/internal/telephony/gsm/GsmNwRegInfo;

    # getter for: Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->PsRejDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->access$200(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$4;->this$0:Lcom/android/internal/telephony/gsm/GsmNwRegInfo;

    # getter for: Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->PsRejDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->access$200(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$4;->this$0:Lcom/android/internal/telephony/gsm/GsmNwRegInfo;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->PsRejDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->access$202(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 733
    :cond_0
    return-void
.end method
