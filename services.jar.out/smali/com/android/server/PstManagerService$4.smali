.class Lcom/android/server/PstManagerService$4;
.super Landroid/os/Handler;
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
    .line 955
    iput-object p1, p0, Lcom/android/server/PstManagerService$4;->this$0:Lcom/android/server/PstManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 957
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PstManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GpsMessageHandler msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 974
    :goto_0
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PstManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GpsMessageHandler msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_1
    return-void

    .line 961
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PstManagerService$4;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/PstManagerService;->access$1900(Lcom/android/server/PstManagerService;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PstManagerService$4;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->gpsStatusListener:Landroid/location/GpsStatus$Listener;
    invoke-static {v1}, Lcom/android/server/PstManagerService;->access$2200(Lcom/android/server/PstManagerService;)Landroid/location/GpsStatus$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 963
    iget-object v0, p0, Lcom/android/server/PstManagerService$4;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/PstManagerService;->access$1900(Lcom/android/server/PstManagerService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/PstManagerService$4;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->locationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/android/server/PstManagerService;->access$2300(Lcom/android/server/PstManagerService;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 964
    iget-object v0, p0, Lcom/android/server/PstManagerService$4;->this$0:Lcom/android/server/PstManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/PstManagerService;->mNavigating:Z
    invoke-static {v0, v1}, Lcom/android/server/PstManagerService;->access$2102(Lcom/android/server/PstManagerService;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 965
    :catch_0
    move-exception v6

    .line 966
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "PstManagerService"

    const-string v1, "LOCATION_GPS_START ERROR"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 970
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_1
    const-string v0, "PstManagerService"

    const-string v1, "LOCATION_GPS_STOP!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 958
    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
