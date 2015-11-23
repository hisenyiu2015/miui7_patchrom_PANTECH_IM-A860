.class Lcom/android/internal/telephony/gsm/GsmNwRegInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmNwRegInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmNwRegInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmNwRegInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmNwRegInfo;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmNwRegInfo$1;->this$0:Lcom/android/internal/telephony/gsm/GsmNwRegInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :cond_0
    return-void
.end method
