.class Lcom/android/server/DevicePolicyManagerService$5;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService;->stopPackageForMicrophone(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;)V
    .locals 0

    .prologue
    .line 6358
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$5;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6360
    const-string v1, "DevicePolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPackageForMirophone() pkg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$5;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # getter for: Lcom/android/server/DevicePolicyManagerService;->mMicrophonePkg:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/DevicePolicyManagerService;->access$500(Lcom/android/server/DevicePolicyManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6361
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService$5;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # getter for: Lcom/android/server/DevicePolicyManagerService;->mMicrophonePkg:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/DevicePolicyManagerService;->access$500(Lcom/android/server/DevicePolicyManagerService;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6368
    :goto_0
    return-void

    .line 6364
    :cond_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService$5;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 6365
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService$5;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # getter for: Lcom/android/server/DevicePolicyManagerService;->mMicrophonePkg:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/DevicePolicyManagerService;->access$500(Lcom/android/server/DevicePolicyManagerService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 6366
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService$5;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10402f5

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6367
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService$5;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/DevicePolicyManagerService;->mMicrophonePkg:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/DevicePolicyManagerService;->access$502(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
