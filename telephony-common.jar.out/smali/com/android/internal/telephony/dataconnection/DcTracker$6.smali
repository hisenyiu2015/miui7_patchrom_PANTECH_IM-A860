.class Lcom/android/internal/telephony/dataconnection/DcTracker$6;
.super Ljava/lang/Thread;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;->restoreDefaultApn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .prologue
    .line 4268
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 4270
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v4, "restoreApnThread-start"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4271
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mRestoreApnProcessing:Z
    invoke-static {v3, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$802(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 4273
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v5, 0x42030

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4275
    const-string v3, "content://telephony/carriers/restore"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4276
    .local v0, "RESTORE_APN_URI":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4277
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4279
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v5, 0x42030

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4284
    .end local v0    # "RESTORE_APN_URI":Landroid/net/Uri;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mRestoreApnProcessing:Z
    invoke-static {v3, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$802(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 4285
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v4, "restoreApnThread-end"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4286
    return-void

    .line 4281
    :catch_0
    move-exception v1

    .line 4282
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$6;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreApnThread exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
