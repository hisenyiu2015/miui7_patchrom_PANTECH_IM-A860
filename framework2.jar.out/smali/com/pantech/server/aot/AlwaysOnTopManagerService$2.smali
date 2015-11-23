.class Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;
.super Ljava/lang/Object;
.source "AlwaysOnTopManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/server/aot/AlwaysOnTopManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;


# direct methods
.method constructor <init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 639
    const-string v0, "AlwaysOnTopManagerService"

    const-string v1, "onAccuracyChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 558
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-boolean v14, v14, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsLongPress:Z

    if-nez v14, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v14}, Landroid/hardware/Sensor;->getType()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_0

    .line 563
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 564
    .local v5, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v12

    .line 566
    .local v12, "type":I
    const/4 v9, 0x0

    .line 567
    .local v9, "sum":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v14, v14, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->getCurrentRotation(Landroid/content/Context;)I

    move-result v4

    .line 570
    .local v4, "rotation":I
    packed-switch v4, :pswitch_data_0

    .line 580
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x0

    aget v13, v14, v15

    .line 583
    .local v13, "x":F
    :goto_1
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x3dcccccd    # 0.1f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_2

    .line 584
    const/4 v13, 0x0

    .line 586
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$100(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v14

    if-nez v14, :cond_3

    .line 587
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    const/16 v15, 0xa

    new-array v15, v15, [F

    # setter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14, v15}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$102(Lcom/pantech/server/aot/AlwaysOnTopManagerService;[F)[F

    .line 589
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$100(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v14

    array-length v1, v14

    .line 591
    .local v1, "count":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_4

    .line 592
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$100(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v14

    add-int/lit8 v15, v3, -0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 591
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 573
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v13    # "x":F
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x0

    aget v13, v14, v15

    .line 574
    .restart local v13    # "x":F
    goto :goto_1

    .line 577
    .end local v13    # "x":F
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x1

    aget v13, v14, v15

    .line 578
    .restart local v13    # "x":F
    goto :goto_1

    .line 594
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$100(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v14

    array-length v1, v14

    .line 596
    .restart local v1    # "count":I
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 597
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$100(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v14

    aget v14, v14, v3

    add-float/2addr v9, v14

    .line 598
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$100(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v14

    add-int/lit8 v15, v3, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static/range {v16 .. v16}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$100(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v16

    aget v16, v16, v3

    aput v16, v14, v15

    .line 596
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 602
    :cond_4
    add-float/2addr v9, v13

    .line 603
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$100(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v14

    add-int/lit8 v15, v1, -0x1

    aput v13, v14, v15

    .line 604
    const-string v14, "AlwaysOnTopManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onSensorChanged: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    int-to-float v0, v1

    move/from16 v16, v0

    div-float v16, v9, v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mIsLongPress = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsLongPress:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v2, 0x0

    .line 607
    .local v2, "flip_recognize":Z
    if-nez v4, :cond_7

    .line 608
    int-to-float v14, v1

    div-float v14, v9, v14

    const/high16 v15, -0x3fc00000    # -3.0f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_6

    const/4 v2, 0x1

    .line 614
    :cond_5
    :goto_4
    if-eqz v2, :cond_0

    .line 615
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_b

    .line 616
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$100(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F

    move-result-object v14

    const/4 v15, 0x0

    aput v15, v14, v3

    .line 615
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 608
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 609
    :cond_7
    const/4 v14, 0x1

    if-ne v4, v14, :cond_9

    .line 610
    int-to-float v14, v1

    div-float v14, v9, v14

    const/high16 v15, 0x40800000    # 4.0f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_8

    const/4 v2, 0x1

    :goto_6
    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    .line 611
    :cond_9
    const/4 v14, 0x3

    if-ne v4, v14, :cond_5

    .line 612
    int-to-float v14, v1

    div-float v14, v9, v14

    const/high16 v15, -0x3f800000    # -4.0f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_a

    const/4 v2, 0x1

    :goto_7
    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    goto :goto_7

    .line 617
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-boolean v14, v14, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsLongPress:Z

    if-eqz v14, :cond_0

    .line 618
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 619
    .local v10, "time":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # getter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mToggleTime:J
    invoke-static {v14}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$200(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)J

    move-result-wide v14

    sub-long v14, v10, v14

    const-wide/16 v16, 0x3e8

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    .line 622
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v14, v14, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "rear_touch_open_status_bar"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 626
    .local v8, "statusEnable":I
    :goto_8
    if-eqz v8, :cond_0

    .line 628
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    iget-object v14, v14, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    const-string v15, "statusbar"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/StatusBarManager;

    .line 629
    .local v7, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v7}, Landroid/app/StatusBarManager;->toggleStatusBarExpand()V

    .line 630
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;->this$0:Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    # setter for: Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mToggleTime:J
    invoke-static {v14, v10, v11}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->access$202(Lcom/pantech/server/aot/AlwaysOnTopManagerService;J)J

    goto/16 :goto_0

    .line 623
    .end local v7    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v8    # "statusEnable":I
    :catch_0
    move-exception v6

    .line 624
    .local v6, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v8, 0x1

    .restart local v8    # "statusEnable":I
    goto :goto_8

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
