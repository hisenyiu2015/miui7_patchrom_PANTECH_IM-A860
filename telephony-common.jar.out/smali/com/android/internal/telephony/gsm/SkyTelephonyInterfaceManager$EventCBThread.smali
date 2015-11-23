.class Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;
.super Ljava/lang/Thread;
.source "SkyTelephonyInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventCBThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;
    .param p2, "x1"    # Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$1;

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;-><init>(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 745
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->native_cpmgr_wait_for_event()I
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$1700(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;)I

    move-result v0

    .line 747
    .local v0, "event":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager$EventCBThread;->this$0:Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;

    # invokes: Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->NativeEventParse(I)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;->access$1800(Lcom/android/internal/telephony/gsm/SkyTelephonyInterfaceManager;I)V

    goto :goto_0
.end method
