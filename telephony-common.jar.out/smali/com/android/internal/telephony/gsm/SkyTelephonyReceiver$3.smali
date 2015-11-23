.class Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$3;
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
    .line 318
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$3;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 320
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$3;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    const/16 v1, 0x9

    iput v1, v0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nw_mode:I

    .line 322
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver$3;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/gsm/SkyTelephonyReceiver;->nw_mode:I

    goto :goto_0
.end method
