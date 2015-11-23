.class Lcom/android/server/PstManagerService$2;
.super Ljava/lang/Object;
.source "PstManagerService.java"

# interfaces
.implements Landroid/location/LocationListener;


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
    .line 835
    iput-object p1, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    # setter for: Lcom/android/server/PstManagerService;->mLastLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/android/server/PstManagerService;->access$1002(Lcom/android/server/PstManagerService;Landroid/location/Location;)Landroid/location/Location;

    .line 838
    iget-object v0, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    # setter for: Lcom/android/server/PstManagerService;->Latitude:D
    invoke-static {v0, v1, v2}, Lcom/android/server/PstManagerService;->access$1102(Lcom/android/server/PstManagerService;D)D

    .line 839
    iget-object v0, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    # setter for: Lcom/android/server/PstManagerService;->Longitude:D
    invoke-static {v0, v1, v2}, Lcom/android/server/PstManagerService;->access$1202(Lcom/android/server/PstManagerService;D)D

    .line 840
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    # setter for: Lcom/android/server/PstManagerService;->Altitude:D
    invoke-static {v0, v1, v2}, Lcom/android/server/PstManagerService;->access$1302(Lcom/android/server/PstManagerService;D)D

    .line 841
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    # setter for: Lcom/android/server/PstManagerService;->Accuracy:F
    invoke-static {v0, v1}, Lcom/android/server/PstManagerService;->access$1402(Lcom/android/server/PstManagerService;F)F

    .line 842
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    # setter for: Lcom/android/server/PstManagerService;->Speed:F
    invoke-static {v0, v1}, Lcom/android/server/PstManagerService;->access$1502(Lcom/android/server/PstManagerService;F)F

    .line 843
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    # setter for: Lcom/android/server/PstManagerService;->Bearing:F
    invoke-static {v0, v1}, Lcom/android/server/PstManagerService;->access$1602(Lcom/android/server/PstManagerService;F)F

    .line 845
    :cond_3
    const-string v0, "PstManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latitude : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->Latitude:D
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$1100(Lcom/android/server/PstManagerService;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Longitude : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->Longitude:D
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$1200(Lcom/android/server/PstManagerService;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Altitude : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->Altitude:D
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$1300(Lcom/android/server/PstManagerService;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Speed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->Speed:F
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$1500(Lcom/android/server/PstManagerService;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Bearing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->Bearing:F
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$1600(Lcom/android/server/PstManagerService;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Accuracy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->Accuracy:F
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$1400(Lcom/android/server/PstManagerService;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v0, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    iget-object v0, v0, Lcom/android/server/PstManagerService;->mLocationmap:Ljava/util/HashMap;

    const-string v1, "Latitude"

    iget-object v2, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->Latitude:D
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$1100(Lcom/android/server/PstManagerService;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    iget-object v0, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    iget-object v0, v0, Lcom/android/server/PstManagerService;->mLocationmap:Ljava/util/HashMap;

    const-string v1, "Longitude"

    iget-object v2, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->Longitude:D
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$1200(Lcom/android/server/PstManagerService;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    iget-object v0, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    iget-object v0, v0, Lcom/android/server/PstManagerService;->mLocationmap:Ljava/util/HashMap;

    const-string v1, "Altitude"

    iget-object v2, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->Altitude:D
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$1300(Lcom/android/server/PstManagerService;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    iget-object v0, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    iget-object v0, v0, Lcom/android/server/PstManagerService;->mLocationmap:Ljava/util/HashMap;

    const-string v1, "Speed"

    iget-object v2, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->Speed:F
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$1500(Lcom/android/server/PstManagerService;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    iget-object v0, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    iget-object v0, v0, Lcom/android/server/PstManagerService;->mLocationmap:Ljava/util/HashMap;

    const-string v1, "Bearing"

    iget-object v2, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->Bearing:F
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$1600(Lcom/android/server/PstManagerService;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-object v0, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    iget-object v0, v0, Lcom/android/server/PstManagerService;->mLocationmap:Ljava/util/HashMap;

    const-string v1, "Accuracy"

    iget-object v2, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->Accuracy:F
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$1400(Lcom/android/server/PstManagerService;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    iget-object v0, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    iget-object v0, v0, Lcom/android/server/PstManagerService;->mLocationmap:Ljava/util/HashMap;

    const-string v1, "Ttff"

    iget-object v2, p0, Lcom/android/server/PstManagerService$2;->this$0:Lcom/android/server/PstManagerService;

    # getter for: Lcom/android/server/PstManagerService;->mTtff:I
    invoke-static {v2}, Lcom/android/server/PstManagerService;->access$1700(Lcom/android/server/PstManagerService;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 866
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PstManagerService"

    const-string v1, "onProviderDisabled: -----------------------> "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 862
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PstManagerService"

    const-string v1, "onProviderEnabled: -----------------------> "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 858
    # getter for: Lcom/android/server/PstManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/PstManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PstManagerService"

    const-string v1, "onStatusChanged: -----------------------> "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    return-void
.end method
