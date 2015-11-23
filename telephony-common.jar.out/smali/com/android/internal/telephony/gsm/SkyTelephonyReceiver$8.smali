.class Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;
.super Landroid/os/Handler;
.source "SkyTelephonyReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const v8, 0x680002

    const/16 v7, 0x7d9

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 579
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 581
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 676
    :goto_0
    return-void

    .line 584
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$902(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 585
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$900(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v3, 0x1040680

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$900(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v3, 0x104067f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$900(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 588
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$900(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 589
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$900(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Window;->setType(I)V

    .line 591
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$900(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 593
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$900(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 597
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->warnningToneGen()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$400(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    .line 598
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$100(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$100(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 600
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->rmvCardDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1002(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 601
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->rmvCardDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1000(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v3, 0x1040681

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->rmvCardDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1000(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 603
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->rmvCardDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1000(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 605
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->rmvCardDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1000(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Window;->setType(I)V

    .line 608
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->rmvCardDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1000(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Window;->addFlags(I)V

    .line 613
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->rmvCardDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1000(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 615
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$100(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$100(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 619
    :pswitch_2
    const-string v1, "@@@"

    const-string v2, "EVENT_USIM_GET_ME_PERSO_IND"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPersoInd()V

    goto/16 :goto_0

    .line 625
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->rmvCardDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1000(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 627
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->reboot()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1100(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    goto/16 :goto_0

    .line 631
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->warnningToneRelease()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1200(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    goto/16 :goto_0

    .line 635
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->notifyMsg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1300(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 636
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->notifyMsg:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1302(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 640
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nwDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1400(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 641
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nwDlg:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1402(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 645
    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->faChangeDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1502(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 646
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->faChangeDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1500(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->res:Landroid/content/res/Resources;

    const v3, 0x1040685

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->faChangeDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1500(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 648
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->faChangeDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1500(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 650
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->faChangeDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1500(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Window;->setType(I)V

    .line 653
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->faChangeDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1500(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Window;->addFlags(I)V

    .line 658
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->faChangeDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1500(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 660
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$100(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$100(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 664
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # getter for: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->faChangeDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1500(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 665
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->reboot()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1100(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    goto/16 :goto_0

    .line 669
    :pswitch_9
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$8;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->checkFakeModeNV()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->access$1600(Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;)V

    goto/16 :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
