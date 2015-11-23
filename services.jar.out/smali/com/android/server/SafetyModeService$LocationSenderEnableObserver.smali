.class Lcom/android/server/SafetyModeService$LocationSenderEnableObserver;
.super Landroid/database/ContentObserver;
.source "SafetyModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SafetyModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationSenderEnableObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/SafetyModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/SafetyModeService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/server/SafetyModeService$LocationSenderEnableObserver;->this$0:Lcom/android/server/SafetyModeService;

    .line 576
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 577
    iput-object p2, p0, Lcom/android/server/SafetyModeService$LocationSenderEnableObserver;->mHandler:Landroid/os/Handler;

    .line 578
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 581
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 582
    iget-object v0, p0, Lcom/android/server/SafetyModeService$LocationSenderEnableObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 583
    return-void
.end method
