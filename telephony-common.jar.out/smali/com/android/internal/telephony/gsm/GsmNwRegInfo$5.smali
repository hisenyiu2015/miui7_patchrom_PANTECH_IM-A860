.class Lcom/android/internal/telephony/gsm/GsmNwRegInfo$5;
.super Ljava/lang/Object;
.source "GsmNwRegInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmNwRegInfo;
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
    .line 758
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$5;->this$0:Lcom/android/internal/telephony/gsm/GsmNwRegInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 760
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 761
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$5;->this$0:Lcom/android/internal/telephony/gsm/GsmNwRegInfo;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->roamingRejectDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->access$302(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 763
    packed-switch p2, :pswitch_data_0

    .line 775
    :goto_0
    return-void

    .line 766
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.NetworkPlmnSelection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 769
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$5;->this$0:Lcom/android/internal/telephony/gsm/GsmNwRegInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmNwRegInfo;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 763
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
