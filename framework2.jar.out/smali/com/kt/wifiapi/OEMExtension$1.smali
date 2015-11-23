.class Lcom/kt/wifiapi/OEMExtension$1;
.super Ljava/lang/Object;
.source "OEMExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/wifiapi/OEMExtension;->ManualConnectionEnable()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/wifiapi/OEMExtension;


# direct methods
.method constructor <init>(Lcom/kt/wifiapi/OEMExtension;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/kt/wifiapi/OEMExtension$1;->this$0:Lcom/kt/wifiapi/OEMExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 356
    const-string v0, "OEMExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ManualConnectionEnable Query timeout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kt/wifiapi/OEMExtension$1;->this$0:Lcom/kt/wifiapi/OEMExtension;

    # getter for: Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/kt/wifiapi/OEMExtension;->access$000(Lcom/kt/wifiapi/OEMExtension;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCheckManualQuery()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/kt/wifiapi/OEMExtension$1;->this$0:Lcom/kt/wifiapi/OEMExtension;

    # getter for: Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/kt/wifiapi/OEMExtension;->access$000(Lcom/kt/wifiapi/OEMExtension;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCheckManualQuery()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 358
    const-string v0, "OEMExtension"

    const-string v1, "mWifiManager.getCheckManualQuery() == true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/kt/wifiapi/OEMExtension$1;->this$0:Lcom/kt/wifiapi/OEMExtension;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kt/wifiapi/OEMExtension;->setManualConnection(Z)Z

    .line 361
    :cond_0
    return-void
.end method
