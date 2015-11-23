.class Lcom/android/internal/telephony/dataconnection/DcTracker$4;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 3543
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 3545
    packed-switch p2, :pswitch_data_0

    .line 3569
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3570
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataConnDialogDisplayed:Z
    invoke-static {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$302(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 3571
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->dataConnectionDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$402(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3573
    return-void

    .line 3547
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionDialogClick, positive, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsWifiConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3549
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataConnPopupAllowed:Z
    invoke-static {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$102(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 3550
    const-string v0, "ril.net.data.popup"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3552
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-eqz v0, :cond_0

    .line 3553
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->enableDataConnectionOnBoot()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$200(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto :goto_0

    .line 3556
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataConnectionMode(Z)V

    goto :goto_0

    .line 3561
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v1, "onDataConnectionDialogClick, negative"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3563
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataConnPopupAllowed:Z
    invoke-static {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$102(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 3564
    const-string v0, "ril.net.data.popup"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3565
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataConnectionMode(Z)V

    goto :goto_0

    .line 3545
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
