.class Lcom/android/server/PstManagerService$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 186
    iput-object p1, p0, Lcom/android/server/PstManagerService$1;->this$0:Lcom/android/server/PstManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PstManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/android/server/PstManagerService$1;->this$0:Lcom/android/server/PstManagerService;

    invoke-virtual {v2}, Lcom/android/server/PstManagerService;->updateWifiState()V

    .line 205
    :cond_2
    :goto_0
    return-void

    .line 195
    :cond_3
    iget-object v2, p0, Lcom/android/server/PstManagerService$1;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->PPST_REMOVE_SECURE_PIN_DATA:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$100(Lcom/android/server/PstManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 196
    iget-object v2, p0, Lcom/android/server/PstManagerService$1;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->PPST_REMOVE_SECURE_PIN_DATA_EXTRA_KEY:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$200(Lcom/android/server/PstManagerService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unkown"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    .local v1, "value":Ljava/lang/String;
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "PstManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_4
    iget-object v2, p0, Lcom/android/server/PstManagerService$1;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->PPST_REMOVE_SECURE_PIN_DATA_EXTRA_VALUE:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$300(Lcom/android/server/PstManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/android/server/PstManagerService$1;->this$0:Lcom/android/server/PstManagerService;

    # invokes: Lcom/android/server/PstManagerService;->removeSecurePinData()V
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$400(Lcom/android/server/PstManagerService;)V

    goto :goto_0

    .line 201
    .end local v1    # "value":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/server/PstManagerService$1;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->PPST_BK_RS_BROAD_CAST_SEND_COPY:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$500(Lcom/android/server/PstManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    iget-object v3, p0, Lcom/android/server/PstManagerService$1;->this$0:Lcom/android/server/PstManagerService;

    iget-object v2, p0, Lcom/android/server/PstManagerService$1;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->PPST_BK_RS_BROAD_CAST_EXTRA_VALUE_RESUlT:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$700(Lcom/android/server/PstManagerService;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "unkown"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    # setter for: Lcom/android/server/PstManagerService;->copyreturnval:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/server/PstManagerService;->access$602(Lcom/android/server/PstManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    iget-object v2, p0, Lcom/android/server/PstManagerService$1;->this$0:Lcom/android/server/PstManagerService;

    iget-object v3, p0, Lcom/android/server/PstManagerService$1;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->PPST_BK_RS_BROAD_CAST_EXTRA_VALUE_SIZE:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/PstManagerService;->access$900(Lcom/android/server/PstManagerService;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    # setter for: Lcom/android/server/PstManagerService;->copysize:J
    invoke-static {v2, v3, v4}, Lcom/android/server/PstManagerService;->access$802(Lcom/android/server/PstManagerService;J)J

    goto :goto_0
.end method
