.class Lcom/android/server/SafetyModeService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SafetyModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SafetyModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SafetyModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/SafetyModeService;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/server/SafetyModeService$BootCompletedReceiver;->this$0:Lcom/android/server/SafetyModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SafetyModeService;Lcom/android/server/SafetyModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/SafetyModeService;
    .param p2, "x1"    # Lcom/android/server/SafetyModeService$1;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/SafetyModeService$BootCompletedReceiver;-><init>(Lcom/android/server/SafetyModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/SafetyModeService$BootCompletedReceiver;->this$0:Lcom/android/server/SafetyModeService;

    # invokes: Lcom/android/server/SafetyModeService;->registerAllObservers()V
    invoke-static {v0}, Lcom/android/server/SafetyModeService;->access$200(Lcom/android/server/SafetyModeService;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/SafetyModeService$BootCompletedReceiver;->this$0:Lcom/android/server/SafetyModeService;

    # invokes: Lcom/android/server/SafetyModeService;->checkInitStates()V
    invoke-static {v0}, Lcom/android/server/SafetyModeService;->access$300(Lcom/android/server/SafetyModeService;)V

    .line 131
    return-void
.end method
