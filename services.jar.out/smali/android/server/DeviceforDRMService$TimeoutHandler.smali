.class Landroid/server/DeviceforDRMService$TimeoutHandler;
.super Landroid/os/Handler;
.source "DeviceforDRMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/DeviceforDRMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/DeviceforDRMService;


# direct methods
.method constructor <init>(Landroid/server/DeviceforDRMService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 338
    iput-object p1, p0, Landroid/server/DeviceforDRMService$TimeoutHandler;->this$0:Landroid/server/DeviceforDRMService;

    .line 339
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 340
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/32 v4, 0x2bf20

    const/4 v3, 0x3

    .line 343
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 345
    :pswitch_0
    const-string v0, "DeviceforDRMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage TIMEOUT_LOAD_LIBRARY  mServiceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/server/DeviceforDRMService;->mServiceState:I
    invoke-static {}, Landroid/server/DeviceforDRMService;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    # invokes: Landroid/server/DeviceforDRMService;->nativeDeviceInfoDRMInit()V
    invoke-static {}, Landroid/server/DeviceforDRMService;->access$100()V

    .line 347
    iget-object v0, p0, Landroid/server/DeviceforDRMService$TimeoutHandler;->this$0:Landroid/server/DeviceforDRMService;

    # getter for: Landroid/server/DeviceforDRMService;->mTimeoutHandler:Landroid/server/DeviceforDRMService$TimeoutHandler;
    invoke-static {v0}, Landroid/server/DeviceforDRMService;->access$200(Landroid/server/DeviceforDRMService;)Landroid/server/DeviceforDRMService$TimeoutHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/server/DeviceforDRMService$TimeoutHandler;->this$0:Landroid/server/DeviceforDRMService;

    # getter for: Landroid/server/DeviceforDRMService;->mTimeoutHandler:Landroid/server/DeviceforDRMService$TimeoutHandler;
    invoke-static {v1}, Landroid/server/DeviceforDRMService;->access$200(Landroid/server/DeviceforDRMService;)Landroid/server/DeviceforDRMService$TimeoutHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/server/DeviceforDRMService$TimeoutHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/server/DeviceforDRMService$TimeoutHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 350
    :pswitch_1
    const-string v0, "DeviceforDRMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage TIMEOUT_CHECK_BOOT  mServiceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/server/DeviceforDRMService;->mServiceState:I
    invoke-static {}, Landroid/server/DeviceforDRMService;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Landroid/server/DeviceforDRMService$TimeoutHandler;->this$0:Landroid/server/DeviceforDRMService;

    # getter for: Landroid/server/DeviceforDRMService;->mTimeoutHandler:Landroid/server/DeviceforDRMService$TimeoutHandler;
    invoke-static {v0}, Landroid/server/DeviceforDRMService;->access$200(Landroid/server/DeviceforDRMService;)Landroid/server/DeviceforDRMService$TimeoutHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/server/DeviceforDRMService$TimeoutHandler;->this$0:Landroid/server/DeviceforDRMService;

    # getter for: Landroid/server/DeviceforDRMService;->mTimeoutHandler:Landroid/server/DeviceforDRMService$TimeoutHandler;
    invoke-static {v1}, Landroid/server/DeviceforDRMService;->access$200(Landroid/server/DeviceforDRMService;)Landroid/server/DeviceforDRMService$TimeoutHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/server/DeviceforDRMService$TimeoutHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/server/DeviceforDRMService$TimeoutHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 353
    # getter for: Landroid/server/DeviceforDRMService;->mServiceState:I
    invoke-static {}, Landroid/server/DeviceforDRMService;->access$000()I

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-static {}, Landroid/server/DeviceforDRMService;->writeDefaultTime()V

    goto :goto_0

    .line 358
    :pswitch_2
    iget-object v0, p0, Landroid/server/DeviceforDRMService$TimeoutHandler;->this$0:Landroid/server/DeviceforDRMService;

    # getter for: Landroid/server/DeviceforDRMService;->mTimeoutHandler:Landroid/server/DeviceforDRMService$TimeoutHandler;
    invoke-static {v0}, Landroid/server/DeviceforDRMService;->access$200(Landroid/server/DeviceforDRMService;)Landroid/server/DeviceforDRMService$TimeoutHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/server/DeviceforDRMService$TimeoutHandler;->this$0:Landroid/server/DeviceforDRMService;

    # getter for: Landroid/server/DeviceforDRMService;->mTimeoutHandler:Landroid/server/DeviceforDRMService$TimeoutHandler;
    invoke-static {v1}, Landroid/server/DeviceforDRMService;->access$200(Landroid/server/DeviceforDRMService;)Landroid/server/DeviceforDRMService$TimeoutHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/server/DeviceforDRMService$TimeoutHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/server/DeviceforDRMService$TimeoutHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 360
    # getter for: Landroid/server/DeviceforDRMService;->mServiceState:I
    invoke-static {}, Landroid/server/DeviceforDRMService;->access$000()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 370
    :pswitch_3
    const-string v0, "DeviceforDRMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage TIMEOUT_CHECK  mServiceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/server/DeviceforDRMService;->mServiceState:I
    invoke-static {}, Landroid/server/DeviceforDRMService;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_1
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    # invokes: Landroid/server/DeviceforDRMService;->writeTime(IJ)V
    invoke-static {v0, v1, v2}, Landroid/server/DeviceforDRMService;->access$300(IJ)V

    goto/16 :goto_0

    .line 363
    :pswitch_4
    const-string v0, "DeviceforDRMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage TIMEOUT_CHECK  mServiceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/server/DeviceforDRMService;->mServiceState:I
    invoke-static {}, Landroid/server/DeviceforDRMService;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 366
    :pswitch_5
    const-string v0, "DeviceforDRMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage TIMEOUT_CHECK  mServiceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/server/DeviceforDRMService;->mServiceState:I
    invoke-static {}, Landroid/server/DeviceforDRMService;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {}, Landroid/server/DeviceforDRMService;->writeDefaultTime()V

    goto :goto_1

    .line 343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 360
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
