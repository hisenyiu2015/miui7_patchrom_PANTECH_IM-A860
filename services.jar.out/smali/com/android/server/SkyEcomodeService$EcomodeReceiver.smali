.class Lcom/android/server/SkyEcomodeService$EcomodeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SkyEcomodeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SkyEcomodeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EcomodeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SkyEcomodeService;


# direct methods
.method public constructor <init>(Lcom/android/server/SkyEcomodeService;)V
    .locals 2

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 406
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 408
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string v1, "pantech.eco.MODE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v1, "pantech.eco.MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    const-string v1, "pantech.eco.CONFIRMED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    # getter for: Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/SkyEcomodeService;->access$600(Lcom/android/server/SkyEcomodeService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 417
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 421
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 429
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 430
    .local v3, "msg":Landroid/os/Message;
    iput v7, v3, Landroid/os/Message;->what:I

    .line 431
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mHandler:Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$000(Lcom/android/server/SkyEcomodeService;)Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 523
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    const-string v4, "pantech.eco.CONFIRMED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 437
    const/4 v2, 0x0

    .line 439
    .local v2, "getData":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    # invokes: Lcom/android/server/SkyEcomodeService;->getDataFromProvider()Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$300(Lcom/android/server/SkyEcomodeService;)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 444
    :goto_1
    if-nez v2, :cond_2

    .line 445
    const-string v4, "SkyEcomodeService"

    const-string v5, "Err with reading data from provider"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 440
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 448
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    const-string v4, "result"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 453
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$600(Lcom/android/server/SkyEcomodeService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "eco_nobutton_clicked"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 460
    :goto_2
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    # invokes: Lcom/android/server/SkyEcomodeService;->setCPUState(Z)V
    invoke-static {v4, v7}, Lcom/android/server/SkyEcomodeService;->access$1000(Lcom/android/server/SkyEcomodeService;Z)V

    .line 462
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    const-string v5, "yes"

    # invokes: Lcom/android/server/SkyEcomodeService;->backup(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/SkyEcomodeService;->access$1700(Lcom/android/server/SkyEcomodeService;Ljava/lang/String;)V

    .line 463
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    const-string v5, "yes"

    # invokes: Lcom/android/server/SkyEcomodeService;->doWifiBackup(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/SkyEcomodeService;->access$1800(Lcom/android/server/SkyEcomodeService;Ljava/lang/String;)V

    .line 464
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    const-string v5, "yes"

    # invokes: Lcom/android/server/SkyEcomodeService;->doBTBackup(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/SkyEcomodeService;->access$1900(Lcom/android/server/SkyEcomodeService;Ljava/lang/String;)V

    .line 465
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    const-string v5, "yes"

    # invokes: Lcom/android/server/SkyEcomodeService;->doNFCBackup(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/SkyEcomodeService;->access$2000(Lcom/android/server/SkyEcomodeService;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :catch_1
    move-exception v1

    .line 455
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 468
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$600(Lcom/android/server/SkyEcomodeService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "eco_nobutton_clicked"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 472
    :goto_3
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    const-string v5, "no"

    # invokes: Lcom/android/server/SkyEcomodeService;->backup(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/SkyEcomodeService;->access$1700(Lcom/android/server/SkyEcomodeService;Ljava/lang/String;)V

    .line 473
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    const-string v5, "no"

    # invokes: Lcom/android/server/SkyEcomodeService;->doWifiBackup(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/SkyEcomodeService;->access$1800(Lcom/android/server/SkyEcomodeService;Ljava/lang/String;)V

    .line 474
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    const-string v5, "no"

    # invokes: Lcom/android/server/SkyEcomodeService;->doBTBackup(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/SkyEcomodeService;->access$1900(Lcom/android/server/SkyEcomodeService;Ljava/lang/String;)V

    .line 475
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    const-string v5, "no"

    # invokes: Lcom/android/server/SkyEcomodeService;->doNFCBackup(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/SkyEcomodeService;->access$2000(Lcom/android/server/SkyEcomodeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 469
    :catch_2
    move-exception v1

    .line 470
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 481
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "getData":Z
    :cond_4
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 482
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    const-string v5, "level"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/server/SkyEcomodeService;->batteryLevel:I
    invoke-static {v4, v5}, Lcom/android/server/SkyEcomodeService;->access$1502(Lcom/android/server/SkyEcomodeService;I)I

    .line 483
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    const-string v5, "status"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/server/SkyEcomodeService;->batteryStatus:I
    invoke-static {v4, v5}, Lcom/android/server/SkyEcomodeService;->access$1302(Lcom/android/server/SkyEcomodeService;I)I

    .line 489
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 490
    .restart local v3    # "msg":Landroid/os/Message;
    const/4 v4, 0x5

    iput v4, v3, Landroid/os/Message;->what:I

    .line 491
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mHandler:Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$000(Lcom/android/server/SkyEcomodeService;)Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 495
    .end local v3    # "msg":Landroid/os/Message;
    :cond_5
    const-string v4, "pantech.eco.MODE_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 496
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 497
    .restart local v3    # "msg":Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v3, Landroid/os/Message;->what:I

    .line 498
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mHandler:Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$000(Lcom/android/server/SkyEcomodeService;)Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 502
    .end local v3    # "msg":Landroid/os/Message;
    :cond_6
    const-string v4, "pantech.eco.MODE_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 503
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 504
    .restart local v3    # "msg":Landroid/os/Message;
    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    .line 505
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mHandler:Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$000(Lcom/android/server/SkyEcomodeService;)Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 509
    .end local v3    # "msg":Landroid/os/Message;
    :cond_7
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 510
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 511
    .restart local v3    # "msg":Landroid/os/Message;
    const/4 v4, 0x6

    iput v4, v3, Landroid/os/Message;->what:I

    .line 512
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mHandler:Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$000(Lcom/android/server/SkyEcomodeService;)Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 515
    .end local v3    # "msg":Landroid/os/Message;
    :cond_8
    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 516
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 517
    .restart local v3    # "msg":Landroid/os/Message;
    const/4 v4, 0x7

    iput v4, v3, Landroid/os/Message;->what:I

    .line 518
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$EcomodeReceiver;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mHandler:Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$000(Lcom/android/server/SkyEcomodeService;)Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
