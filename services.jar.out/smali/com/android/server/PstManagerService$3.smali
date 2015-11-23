.class Lcom/android/server/PstManagerService$3;
.super Ljava/lang/Object;
.source "PstManagerService.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


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
    .line 871
    iput-object p1, p0, Lcom/android/server/PstManagerService$3;->this$0:Lcom/android/server/PstManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 5
    .param p1, "event"    # I

    .prologue
    const/4 v4, 0x1

    .line 873
    iget-object v1, p0, Lcom/android/server/PstManagerService$3;->this$0:Lcom/android/server/PstManagerService;

    iget-object v2, p0, Lcom/android/server/PstManagerService$3;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$1900(Lcom/android/server/PstManagerService;)Landroid/location/LocationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PstManagerService$3;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->mGpsStatus:Landroid/location/GpsStatus;
    invoke-static {v3}, Lcom/android/server/PstManagerService;->access$1800(Lcom/android/server/PstManagerService;)Landroid/location/GpsStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v2

    # setter for: Lcom/android/server/PstManagerService;->mGpsStatus:Landroid/location/GpsStatus;
    invoke-static {v1, v2}, Lcom/android/server/PstManagerService;->access$1802(Lcom/android/server/PstManagerService;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    .line 874
    packed-switch p1, :pswitch_data_0

    .line 900
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PstManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGpsStatusChanged: event :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 877
    :pswitch_0
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PstManagerService"

    const-string v2, "onGpsStatusChanged: GPS_EVENT_SATELLITE_STATUS "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_1
    iget-object v1, p0, Lcom/android/server/PstManagerService$3;->this$0:Lcom/android/server/PstManagerService;

    iget-object v2, p0, Lcom/android/server/PstManagerService$3;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->mGpsStatus:Landroid/location/GpsStatus;
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$1800(Lcom/android/server/PstManagerService;)Landroid/location/GpsStatus;

    move-result-object v2

    # invokes: Lcom/android/server/PstManagerService;->updateStatelliteStatus(Landroid/location/GpsStatus;)V
    invoke-static {v1, v2}, Lcom/android/server/PstManagerService;->access$2000(Lcom/android/server/PstManagerService;Landroid/location/GpsStatus;)V

    .line 879
    iget-object v1, p0, Lcom/android/server/PstManagerService$3;->this$0:Lcom/android/server/PstManagerService;

    # setter for: Lcom/android/server/PstManagerService;->mNavigating:Z
    invoke-static {v1, v4}, Lcom/android/server/PstManagerService;->access$2102(Lcom/android/server/PstManagerService;Z)Z

    goto :goto_0

    .line 883
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/PstManagerService$3;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->mGpsStatus:Landroid/location/GpsStatus;
    invoke-static {v1}, Lcom/android/server/PstManagerService;->access$1800(Lcom/android/server/PstManagerService;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v0

    .line 884
    .local v0, "ttff":I
    iget-object v1, p0, Lcom/android/server/PstManagerService$3;->this$0:Lcom/android/server/PstManagerService;

    add-int/lit16 v2, v0, 0x1f4

    div-int/lit16 v2, v2, 0x3e8

    # setter for: Lcom/android/server/PstManagerService;->mTtff:I
    invoke-static {v1, v2}, Lcom/android/server/PstManagerService;->access$1702(Lcom/android/server/PstManagerService;I)I

    .line 885
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PstManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGpsStatusChanged: GPS_EVENT_FIRST_FIX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 889
    .end local v0    # "ttff":I
    :pswitch_2
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "PstManagerService"

    const-string v2, "onGpsStatusChanged: GPS_EVENT_STARTED "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_2
    iget-object v1, p0, Lcom/android/server/PstManagerService$3;->this$0:Lcom/android/server/PstManagerService;

    # setter for: Lcom/android/server/PstManagerService;->mNavigating:Z
    invoke-static {v1, v4}, Lcom/android/server/PstManagerService;->access$2102(Lcom/android/server/PstManagerService;Z)Z

    goto :goto_0

    .line 893
    :pswitch_3
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "PstManagerService"

    const-string v2, "onGpsStatusChanged: GPS_EVENT_STOPPED "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_3
    iget-object v1, p0, Lcom/android/server/PstManagerService$3;->this$0:Lcom/android/server/PstManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/PstManagerService;->mNavigating:Z
    invoke-static {v1, v2}, Lcom/android/server/PstManagerService;->access$2102(Lcom/android/server/PstManagerService;Z)Z

    goto :goto_0

    .line 874
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
