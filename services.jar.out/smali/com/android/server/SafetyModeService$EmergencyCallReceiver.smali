.class Lcom/android/server/SafetyModeService$EmergencyCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SafetyModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SafetyModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyCallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SafetyModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/SafetyModeService;)V
    .locals 0

    .prologue
    .line 857
    iput-object p1, p0, Lcom/android/server/SafetyModeService$EmergencyCallReceiver;->this$0:Lcom/android/server/SafetyModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SafetyModeService;Lcom/android/server/SafetyModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/SafetyModeService;
    .param p2, "x1"    # Lcom/android/server/SafetyModeService$1;

    .prologue
    .line 857
    invoke-direct {p0, p1}, Lcom/android/server/SafetyModeService$EmergencyCallReceiver;-><init>(Lcom/android/server/SafetyModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 860
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.pantech.app.safetymode.intent.action.emergency_call"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 863
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.pantech.app.safetymode.intent.action.emergency_action"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 865
    const-string v3, "safetylock"

    const-string v4, "0"

    invoke-static {p1, v3, v4}, Lcom/pantech/util/skysettings/Util_SkyOracle;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 866
    .local v1, "isTurnOn":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 880
    .end local v1    # "isTurnOn":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 869
    .restart local v1    # "isTurnOn":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safetylock_phonenum"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 870
    .local v2, "number":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 871
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "intent":Landroid/content/Intent;
    const-string v3, "com.pantech.action.VT_CALL"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 872
    .restart local p2    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 873
    const-string v3, "safetymode"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 874
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
