.class Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$4;
.super Ljava/lang/Object;
.source "SkyTelephonyReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->SetDataNeworkMode()V
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
    .line 324
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$4;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$4;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->currNwMode:I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$4;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nw_mode:I

    if-eq v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$4;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$4;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nw_mode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$4;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$4;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nw_mode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    :cond_0
    return-void
.end method
