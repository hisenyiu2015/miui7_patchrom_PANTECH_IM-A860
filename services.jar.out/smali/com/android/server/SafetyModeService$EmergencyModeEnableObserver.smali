.class Lcom/android/server/SafetyModeService$EmergencyModeEnableObserver;
.super Landroid/database/ContentObserver;
.source "SafetyModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SafetyModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyModeEnableObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/SafetyModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/SafetyModeService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/server/SafetyModeService$EmergencyModeEnableObserver;->this$0:Lcom/android/server/SafetyModeService;

    .line 593
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 594
    iput-object p2, p0, Lcom/android/server/SafetyModeService$EmergencyModeEnableObserver;->mHandler:Landroid/os/Handler;

    .line 595
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 598
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 599
    iget-object v0, p0, Lcom/android/server/SafetyModeService$EmergencyModeEnableObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 600
    return-void
.end method
