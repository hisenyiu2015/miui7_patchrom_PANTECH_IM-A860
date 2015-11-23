.class Lcom/android/internal/telephony/gsm/GsmNtpTime$2;
.super Landroid/telephony/PhoneStateListener;
.source "GsmNtpTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmNtpTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmNtpTime;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$2;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 125
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$2;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    const/16 v1, 0x64

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->sendEmptyMessageDelayed(IJ)Z

    .line 129
    :cond_0
    return-void
.end method
