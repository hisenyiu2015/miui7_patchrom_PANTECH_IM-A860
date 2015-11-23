.class Lcom/android/server/PstManagerService$6;
.super Landroid/telephony/PhoneStateListener;
.source "PstManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PstManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PstManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PstManagerService;)V
    .locals 0

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/android/server/PstManagerService$6;->this$0:Lcom/android/server/PstManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1083
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PstManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallStateChanged. state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", incomingNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAutoAnswer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PstManagerService$6;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->isAutoAnswer:Z
    invoke-static {v3}, Lcom/android/server/PstManagerService;->access$2400(Lcom/android/server/PstManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAutoCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PstManagerService$6;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->isAutoCall:Z
    invoke-static {v3}, Lcom/android/server/PstManagerService;->access$2700(Lcom/android/server/PstManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_0
    iget-object v1, p0, Lcom/android/server/PstManagerService$6;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/PstManagerService;->access$2500(Lcom/android/server/PstManagerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1085
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1086
    iget-object v1, p0, Lcom/android/server/PstManagerService$6;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/PstManagerService;->access$2500(Lcom/android/server/PstManagerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/PstManagerService$6;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->answer_delay_time:I
    invoke-static {v1}, Lcom/android/server/PstManagerService;->access$3000(Lcom/android/server/PstManagerService;)I

    move-result v1

    int-to-long v1, v1

    :goto_0
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1087
    return-void

    .line 1086
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0
.end method
