.class Lcom/android/internal/telephony/gsm/GsmNtpTime$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 100
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$1;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "time"

    invoke-virtual {p2, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 106
    .local v0, "time":J
    cmp-long v2, v0, v5

    if-lez v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$1;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_NETWORK_SET_TIME: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/gsm/GsmNtpTime;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->access$000(Lcom/android/internal/telephony/gsm/GsmNtpTime;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$1;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    iput-boolean v7, v2, Lcom/android/internal/telephony/gsm/GsmNtpTime;->receivedNitzFromNetwork:Z

    .line 110
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$1;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    const-string v3, "gsm.nitz.time"

    invoke-static {v3, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/telephony/gsm/GsmNtpTime;->timeFromNitz:J

    .line 111
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$1;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/telephony/gsm/GsmNtpTime;->storedNitzRealTime:J

    .line 112
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$1;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$1;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    iget-wide v3, v3, Lcom/android/internal/telephony/gsm/GsmNtpTime;->timeFromNitz:J

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$1;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    iget-wide v5, v5, Lcom/android/internal/telephony/gsm/GsmNtpTime;->storedNitzRealTime:J

    # invokes: Lcom/android/internal/telephony/gsm/GsmNtpTime;->nitzTimeInfo(JJ)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->access$100(Lcom/android/internal/telephony/gsm/GsmNtpTime;JJ)V

    .line 116
    .end local v0    # "time":J
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.sky.intent.action.SET_NTP_TIME_DEBUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$1;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->sendEmptyMessage(I)Z

    .line 118
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$1;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    iput-boolean v7, v2, Lcom/android/internal/telephony/gsm/GsmNtpTime;->set_manual:Z

    .line 120
    :cond_1
    return-void
.end method
