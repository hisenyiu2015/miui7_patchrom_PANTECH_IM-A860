.class Lcom/android/internal/policy/impl/PhoneWindowManager$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 547
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.pantech.intent.action.LOGONOFF_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    const-string v0, ""

    .line 549
    .local v0, "logStatus":Ljava/lang/String;
    const-string v1, "logSet"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set logStatus action flag. => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    sput-boolean v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG:Z

    .line 553
    sput-boolean v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->localLOGV:Z

    .line 554
    sput-boolean v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 561
    .end local v0    # "logStatus":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 555
    .restart local v0    # "logStatus":Ljava/lang/String;
    :cond_1
    const-string v1, "FALSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    sput-boolean v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG:Z

    .line 557
    sput-boolean v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->localLOGV:Z

    .line 558
    sput-boolean v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_INPUT:Z

    goto :goto_0
.end method
