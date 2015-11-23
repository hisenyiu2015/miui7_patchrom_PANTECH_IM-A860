.class Lcom/android/internal/telephony/dataconnection/DcTracker$5;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .prologue
    .line 3826
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 3829
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mRoamingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$500(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mAgree1:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mAgree2:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$700(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/widget/CheckBox;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3830
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[GsmDT] SKT Roaming onClick, should not happen!!!!!!! "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3839
    :goto_0
    return-void

    .line 3834
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mAgree1:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mAgree2:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$700(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3835
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mRoamingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$500(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 3837
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mRoamingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$500(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
