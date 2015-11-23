.class Lcom/android/server/SkyEcomodeService$SkyEcoWorkerThread;
.super Ljava/lang/Thread;
.source "SkyEcomodeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SkyEcomodeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkyEcoWorkerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SkyEcomodeService;


# direct methods
.method public constructor <init>(Lcom/android/server/SkyEcomodeService;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerThread;->this$0:Lcom/android/server/SkyEcomodeService;

    .line 131
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 132
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 135
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 136
    iget-object v0, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerThread;->this$0:Lcom/android/server/SkyEcomodeService;

    new-instance v1, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;

    iget-object v2, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerThread;->this$0:Lcom/android/server/SkyEcomodeService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;-><init>(Lcom/android/server/SkyEcomodeService;Lcom/android/server/SkyEcomodeService$1;)V

    # setter for: Lcom/android/server/SkyEcomodeService;->mHandler:Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;
    invoke-static {v0, v1}, Lcom/android/server/SkyEcomodeService;->access$002(Lcom/android/server/SkyEcomodeService;Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;)Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;

    .line 137
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 138
    return-void
.end method
