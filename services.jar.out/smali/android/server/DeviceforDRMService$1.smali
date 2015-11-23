.class Landroid/server/DeviceforDRMService$1;
.super Landroid/telephony/PhoneStateListener;
.source "DeviceforDRMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/DeviceforDRMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/DeviceforDRMService;


# direct methods
.method constructor <init>(Landroid/server/DeviceforDRMService;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Landroid/server/DeviceforDRMService$1;->this$0:Landroid/server/DeviceforDRMService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 70
    # getter for: Landroid/server/DeviceforDRMService;->mServiceState:I
    invoke-static {}, Landroid/server/DeviceforDRMService;->access$000()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    # getter for: Landroid/server/DeviceforDRMService;->mServiceState:I
    invoke-static {}, Landroid/server/DeviceforDRMService;->access$000()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 71
    const-string v0, "DeviceforDRMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged  mServiceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/server/DeviceforDRMService;->mServiceState:I
    invoke-static {}, Landroid/server/DeviceforDRMService;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  state.getState():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 73
    :cond_0
    invoke-static {}, Landroid/server/DeviceforDRMService;->writeDefaultTime()V

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    # setter for: Landroid/server/DeviceforDRMService;->mServiceState:I
    invoke-static {v0}, Landroid/server/DeviceforDRMService;->access$002(I)I

    .line 78
    return-void
.end method
