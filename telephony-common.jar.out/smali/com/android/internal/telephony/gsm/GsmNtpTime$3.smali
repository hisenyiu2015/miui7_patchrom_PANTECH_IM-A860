.class Lcom/android/internal/telephony/gsm/GsmNtpTime$3;
.super Ljava/lang/Object;
.source "GsmNtpTime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmNtpTime;->getntptime()V
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
    .line 233
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$3;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$3;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mMyLooper:Landroid/os/Looper;

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$3;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    # invokes: Lcom/android/internal/telephony/gsm/GsmNtpTime;->connNtpServer()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->access$200(Lcom/android/internal/telephony/gsm/GsmNtpTime;)V

    .line 239
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 240
    return-void
.end method
