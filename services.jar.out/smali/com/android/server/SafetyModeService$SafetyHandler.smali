.class public Lcom/android/server/SafetyModeService$SafetyHandler;
.super Landroid/os/Handler;
.source "SafetyModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SafetyModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SafetyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SafetyModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/SafetyModeService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/server/SafetyModeService$SafetyHandler;->this$0:Lcom/android/server/SafetyModeService;

    .line 218
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 219
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 223
    const-string v0, "SafetyModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 249
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 251
    :goto_0
    return-void

    .line 226
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/SafetyModeService$SafetyHandler;->this$0:Lcom/android/server/SafetyModeService;

    invoke-virtual {v0}, Lcom/android/server/SafetyModeService;->handleLBSService()V

    goto :goto_0

    .line 229
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/SafetyModeService$SafetyHandler;->this$0:Lcom/android/server/SafetyModeService;

    invoke-virtual {v0}, Lcom/android/server/SafetyModeService;->handleLocationSender()V

    goto :goto_0

    .line 232
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/SafetyModeService$SafetyHandler;->this$0:Lcom/android/server/SafetyModeService;

    invoke-virtual {v0}, Lcom/android/server/SafetyModeService;->handleEmergencyLock()V

    goto :goto_0

    .line 235
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/SafetyModeService$SafetyHandler;->this$0:Lcom/android/server/SafetyModeService;

    # invokes: Lcom/android/server/SafetyModeService;->handleLocationState()V
    invoke-static {v0}, Lcom/android/server/SafetyModeService;->access$400(Lcom/android/server/SafetyModeService;)V

    goto :goto_0

    .line 238
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/SafetyModeService$SafetyHandler;->this$0:Lcom/android/server/SafetyModeService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    # invokes: Lcom/android/server/SafetyModeService;->setBestLocation(Landroid/location/Location;)V
    invoke-static {v1, v0}, Lcom/android/server/SafetyModeService;->access$500(Lcom/android/server/SafetyModeService;Landroid/location/Location;)V

    goto :goto_0

    .line 241
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/SafetyModeService$SafetyHandler;->this$0:Lcom/android/server/SafetyModeService;

    # getter for: Lcom/android/server/SafetyModeService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/SafetyModeService;->access$600(Lcom/android/server/SafetyModeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safety_return_checker_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    iget-object v0, p0, Lcom/android/server/SafetyModeService$SafetyHandler;->this$0:Lcom/android/server/SafetyModeService;

    # invokes: Lcom/android/server/SafetyModeService;->successArrival()V
    invoke-static {v0}, Lcom/android/server/SafetyModeService;->access$700(Lcom/android/server/SafetyModeService;)V

    goto :goto_0

    .line 245
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/SafetyModeService$SafetyHandler;->this$0:Lcom/android/server/SafetyModeService;

    # invokes: Lcom/android/server/SafetyModeService;->stopLocationTracking()V
    invoke-static {v0}, Lcom/android/server/SafetyModeService;->access$800(Lcom/android/server/SafetyModeService;)V

    .line 246
    iget-object v0, p0, Lcom/android/server/SafetyModeService$SafetyHandler;->this$0:Lcom/android/server/SafetyModeService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/SafetyModeService;->startLocationTracking(Z)V
    invoke-static {v0, v1}, Lcom/android/server/SafetyModeService;->access$900(Lcom/android/server/SafetyModeService;Z)V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
