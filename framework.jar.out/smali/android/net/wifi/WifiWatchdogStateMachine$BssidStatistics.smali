.class Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BssidStatistics"
.end annotation


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private mBssidAvoidTimeMax:J

.field private mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mEntriesSize:I

.field private mGoodLinkTargetCount:I

.field private mGoodLinkTargetIndex:I

.field private mGoodLinkTargetRssi:I

.field private mLastTimeGood:J

.field private mLastTimePoor:J

.field private mLastTimeSample:J

.field private mRssiBase:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 5
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1515
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1516
    iput-object p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    .line 1517
    const/16 v1, -0x69

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    .line 1518
    const/16 v1, 0x3d

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    .line 1519
    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    new-array v1, v1, [Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 1520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v0, v1, :cond_0

    .line 1521
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    new-instance v2, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    const-wide v3, 0x3fb999999999999aL    # 0.1

    invoke-direct {v2, p1, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;D)V

    aput-object v2, v1, v0

    .line 1520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1522
    :cond_0
    return-void
.end method

.method static synthetic access$11900(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1485
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12002(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 1485
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    return-wide p1
.end method

.method static synthetic access$12102(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 1485
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    return-wide p1
.end method

.method static synthetic access$4500(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1485
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide v0
.end method

.method static synthetic access$4502(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 1485
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide p1
.end method

.method static synthetic access$4700(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1485
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    return v0
.end method

.method static synthetic access$4800(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1485
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    return v0
.end method

.method static synthetic access$7200(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1485
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide v0
.end method

.method static synthetic access$7202(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 1485
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide p1
.end method


# virtual methods
.method public findRssiTarget(IID)I
    .locals 13
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "threshold"    # D

    .prologue
    .line 1635
    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int/2addr p1, v7

    .line 1636
    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int/2addr p2, v7

    .line 1637
    const/4 v2, 0x0

    .line 1638
    .local v2, "emptyCount":I
    if-ge p1, p2, :cond_1

    const/4 v0, 0x1

    .line 1639
    .local v0, "d":I
    :goto_0
    move v3, p1

    .local v3, "i":I
    :goto_1
    if-eq v3, p2, :cond_4

    .line 1641
    if-ltz v3, :cond_2

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v3, v7, :cond_2

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v7, v7, v3

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7400(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_2

    .line 1642
    const/4 v2, 0x0

    .line 1643
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v7, v7, v3

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7300(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v7

    cmpg-double v7, v7, p3

    if-gez v7, :cond_3

    .line 1645
    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v6, v7, v3

    .line 1646
    .local v6, "rssi":I
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1647
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v7, "#.##"

    invoke-direct {v1, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1648
    .local v1, "df":Ljava/text/DecimalFormat;
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scan target found: rssi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " threshold="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double v9, v9, p3

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "% value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v9, v9, v3

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7300(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v9

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double/2addr v9, v11

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "% volume="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v9, v9, v3

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7400(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1670
    .end local v1    # "df":Ljava/text/DecimalFormat;
    .end local v6    # "rssi":I
    :cond_0
    :goto_2
    return v6

    .line 1638
    .end local v0    # "d":I
    .end local v3    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 1655
    .restart local v0    # "d":I
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x3

    if-lt v2, v7, :cond_3

    .line 1657
    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v6, v7, v3

    .line 1658
    .restart local v6    # "rssi":I
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->presetLoss(I)D

    move-result-wide v4

    .line 1659
    .local v4, "lossPreset":D
    cmpg-double v7, v4, p3

    if-gez v7, :cond_3

    .line 1660
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1661
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v7, "#.##"

    invoke-direct {v1, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1662
    .restart local v1    # "df":Ljava/text/DecimalFormat;
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scan target found: rssi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " threshold="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double v9, v9, p3

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "% value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v9, v4

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "% volume=preset"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_2

    .line 1639
    .end local v1    # "df":Ljava/text/DecimalFormat;
    .end local v4    # "lossPreset":D
    .end local v6    # "rssi":I
    :cond_3
    add-int/2addr v3, v0

    goto/16 :goto_1

    .line 1670
    :cond_4
    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v6, v7, p2

    goto :goto_2
.end method

.method public newLinkDetected()V
    .locals 6

    .prologue
    .line 1610
    iget-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1611
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous avoidance still in effect, rssi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1624
    :cond_0
    :goto_0
    return-void

    .line 1617
    :cond_1
    const/16 v0, -0x69

    .line 1618
    .local v0, "from":I
    const/16 v1, -0x2d

    .line 1619
    .local v1, "to":I
    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1620
    const/4 v2, 0x1

    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 1621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12600()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    .line 1622
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New link verifying target set, rssi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public poorLinkDetected(I)Z
    .locals 16
    .param p1, "rssi"    # I

    .prologue
    .line 1569
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Poor link detected, rssi="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1571
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1572
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    sub-long v4, v8, v13

    .line 1573
    .local v4, "lastGood":J
    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    sub-long v6, v8, v13

    .line 1577
    .local v6, "lastPoor":J
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    if-lez v13, :cond_1

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v14, v14, -0x1

    aget-object v13, v13, v14

    iget v13, v13, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->REDUCE_TIME_MS:I

    int-to-long v13, v13

    cmp-long v13, v6, v13

    if-ltz v13, :cond_1

    .line 1578
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    goto :goto_0

    .line 1579
    :cond_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    aget-object v13, v13, v14

    iget v13, v13, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->SAMPLE_COUNT:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 1582
    add-int/lit8 v3, p1, 0x3

    .line 1583
    .local v3, "from":I
    add-int/lit8 v12, p1, 0x14

    .line 1584
    .local v12, "to":I
    const-wide v13, 0x3fb999999999999aL    # 0.1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1585
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    aget-object v14, v14, v15

    iget v14, v14, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->RSSI_ADJ_DBM:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1586
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v14

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    if-ge v13, v14, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    .line 1589
    :cond_2
    const/4 v10, 0x0

    .local v10, "p":I
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12600()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v13

    array-length v13, v13

    add-int/lit8 v11, v13, -0x1

    .line 1590
    .local v11, "pmax":I
    :goto_1
    if-ge v10, v11, :cond_3

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12600()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v13

    add-int/lit8 v14, v10, 0x1

    aget-object v13, v13, v14

    iget v13, v13, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->MIN_RSSI_DBM:I

    move/from16 v0, p1

    if-lt v0, v13, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1591
    :cond_3
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12600()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v13

    aget-object v13, v13, v10

    iget v13, v13, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v1, v13

    .line 1594
    .local v1, "avoidMax":J
    const-wide/16 v13, 0x0

    cmp-long v13, v1, v13

    if-gtz v13, :cond_4

    const/4 v13, 0x0

    .line 1602
    :goto_2
    return v13

    .line 1597
    :cond_4
    add-long v13, v8, v1

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    .line 1599
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "goodRssi="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " goodCount="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " lastGood="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " lastPoor="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " avoidMax="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1602
    :cond_5
    const/4 v13, 0x1

    goto :goto_2
.end method

.method public presetLoss(I)D
    .locals 10
    .param p1, "rssi"    # I

    .prologue
    const/16 v9, 0x5a

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1550
    const/16 v4, -0x5a

    if-gt p1, v4, :cond_0

    .line 1559
    :goto_0
    return-wide v2

    .line 1551
    :cond_0
    if-lez p1, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1553
    :cond_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12300()[D

    move-result-object v4

    if-nez v4, :cond_2

    .line 1555
    const/16 v1, 0x5a

    .line 1556
    .local v1, "size":I
    new-array v4, v9, [D

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12302([D)[D

    .line 1557
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v9, :cond_2

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12300()[D

    move-result-object v4

    rsub-int/lit8 v5, v0, 0x5a

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double v5, v2, v5

    aput-wide v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1559
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12300()[D

    move-result-object v2

    neg-int v3, p1

    aget-wide v2, v2, v3

    goto :goto_0
.end method

.method public updateLoss(IDI)V
    .locals 8
    .param p1, "rssi"    # I
    .param p2, "value"    # D
    .param p4, "volume"    # I

    .prologue
    .line 1532
    if-gtz p4, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return-void

    .line 1533
    :cond_1
    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int v1, p1, v2

    .line 1534
    .local v1, "index":I
    if-ltz v1, :cond_0

    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v1, v2, :cond_0

    .line 1535
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2, p3, p4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 1536
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1537
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1538
    .local v0, "df":Ljava/text/DecimalFormat;
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache updated: loss["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v4, v4, v1

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7300(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% volume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v4, v4, v1

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7400(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method
