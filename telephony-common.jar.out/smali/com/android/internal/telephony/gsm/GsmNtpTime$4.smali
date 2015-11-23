.class Lcom/android/internal/telephony/gsm/GsmNtpTime$4;
.super Ljava/lang/Object;
.source "GsmNtpTime.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmNtpTime;->DisplayNtpTime()V
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
    .line 321
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$4;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime$4;->this$0:Lcom/android/internal/telephony/gsm/GsmNtpTime;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->sendEmptyMessage(I)Z

    .line 324
    return-void
.end method
