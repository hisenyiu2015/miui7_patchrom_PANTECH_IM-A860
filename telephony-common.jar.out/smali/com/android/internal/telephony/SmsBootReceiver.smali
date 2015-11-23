.class public Lcom/android/internal/telephony/SmsBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsBootReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsBootReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/internal/telephony/SmsBootReceiver$1;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/SmsBootReceiver$1;-><init>(Lcom/android/internal/telephony/SmsBootReceiver;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 113
    :cond_2
    const-string v1, "android.sms.intent.action.GARBAGE_COLLECTOR_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-static {p1, p2}, Lcom/android/internal/telephony/SmsGarbageCollectionTimer;->runGarbageCollector(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
