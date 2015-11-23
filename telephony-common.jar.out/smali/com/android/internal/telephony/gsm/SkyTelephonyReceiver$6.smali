.class Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$6;
.super Ljava/lang/Object;
.source "SkyTelephonyReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->SetFakeRoamingMode()V
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
    .line 358
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$6;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$6;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fake_roaming_mode_setting"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$6;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->fake_roam:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    return-void
.end method
