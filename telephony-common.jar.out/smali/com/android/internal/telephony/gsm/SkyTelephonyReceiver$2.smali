.class Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$2;
.super Ljava/lang/Object;
.source "SkyTelephonyReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->needNetworkSetting()V
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
    .line 266
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$2;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "networkSettingIntent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.NetworkSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 272
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$2;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 273
    return-void
.end method
