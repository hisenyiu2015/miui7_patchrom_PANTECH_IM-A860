.class Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;
.super Landroid/os/Handler;
.source "SkyEcomodeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SkyEcomodeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkyEcoWorkerHandler"
.end annotation


# static fields
.field private static final MSG_BATTERY_CHANGED:I = 0x5

.field private static final MSG_BOOT_COMPLETED:I = 0x1

.field private static final MSG_CONFIRMED_ECO_MODE:I = 0x4

.field private static final MSG_ECO_MODE_IS_OFF:I = 0x3

.field private static final MSG_ECO_MODE_IS_ON:I = 0x2

.field private static final MSG_POWER_CONNECTED:I = 0x6

.field private static final MSG_POWER_DISCONNECTED:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/android/server/SkyEcomodeService;


# direct methods
.method private constructor <init>(Lcom/android/server/SkyEcomodeService;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SkyEcomodeService;Lcom/android/server/SkyEcomodeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/SkyEcomodeService;
    .param p2, "x1"    # Lcom/android/server/SkyEcomodeService$1;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;-><init>(Lcom/android/server/SkyEcomodeService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 159
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 387
    const-string v4, "SkyEcomodeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not Defined Handle Message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 162
    :pswitch_1
    const/4 v4, 0x1

    # setter for: Lcom/android/server/SkyEcomodeService;->bBootCompleted:Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$202(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, "getData":Z
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # invokes: Lcom/android/server/SkyEcomodeService;->getDataFromProvider()Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$300(Lcom/android/server/SkyEcomodeService;)Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 170
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mMode:Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$400(Lcom/android/server/SkyEcomodeService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    if-nez v1, :cond_1

    .line 172
    const-string v4, "SkyEcomodeService"

    const-string v5, "Err with reading data from provider"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 390
    .end local v1    # "getData":Z
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SkyEcomodeService"

    const-string v5, "Exception in SkyEcoWorkerHandler.handleMessage:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "getData":Z
    :catch_1
    move-exception v0

    .line 167
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_3
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 175
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v2, 0x0

    .line 180
    .local v2, "savedStatus":I
    :try_start_4
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    iget-object v5, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/SkyEcomodeService;->access$600(Lcom/android/server/SkyEcomodeService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "eco_power_connected"

    invoke-static {v5, v6}, Lcom/pantech/providers/skysettings/SKYEco;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/SkyEcomodeService;->currentBatteryStatus:I
    invoke-static {v4, v2}, Lcom/android/server/SkyEcomodeService;->access$502(Lcom/android/server/SkyEcomodeService;I)I
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 188
    :goto_2
    :try_start_5
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mSessionOn:Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$700(Lcom/android/server/SkyEcomodeService;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mCheckBattery:Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$800(Lcom/android/server/SkyEcomodeService;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 192
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # invokes: Lcom/android/server/SkyEcomodeService;->restore()V
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$900(Lcom/android/server/SkyEcomodeService;)V

    goto :goto_0

    .line 181
    :catch_2
    move-exception v0

    .line 182
    .restart local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 196
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/SkyEcomodeService;->setCPUState(Z)V
    invoke-static {v4, v5}, Lcom/android/server/SkyEcomodeService;->access$1000(Lcom/android/server/SkyEcomodeService;Z)V

    .line 198
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mSessionOn:Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$700(Lcom/android/server/SkyEcomodeService;)Z

    move-result v4

    if-ne v4, v7, :cond_0

    .line 199
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # invokes: Lcom/android/server/SkyEcomodeService;->startSWControl()V
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$1100(Lcom/android/server/SkyEcomodeService;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 208
    .end local v1    # "getData":Z
    .end local v2    # "savedStatus":I
    :pswitch_2
    const/4 v2, 0x0

    .line 213
    .restart local v2    # "savedStatus":I
    const/4 v1, 0x0

    .line 215
    .restart local v1    # "getData":Z
    :try_start_6
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # invokes: Lcom/android/server/SkyEcomodeService;->getDataFromProvider()Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$300(Lcom/android/server/SkyEcomodeService;)Z
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result v1

    .line 221
    :goto_3
    :try_start_7
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    iget-object v5, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/SkyEcomodeService;->access$600(Lcom/android/server/SkyEcomodeService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "eco_power_connected"

    invoke-static {v5, v6}, Lcom/pantech/providers/skysettings/SKYEco;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/SkyEcomodeService;->currentBatteryStatus:I
    invoke-static {v4, v2}, Lcom/android/server/SkyEcomodeService;->access$502(Lcom/android/server/SkyEcomodeService;I)I
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 231
    :goto_4
    :try_start_8
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$600(Lcom/android/server/SkyEcomodeService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "eco_mode_enable"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 237
    :goto_5
    :try_start_9
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mCheckBattery:Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$800(Lcom/android/server/SkyEcomodeService;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 239
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # invokes: Lcom/android/server/SkyEcomodeService;->checkProcess()V
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$1200(Lcom/android/server/SkyEcomodeService;)V

    goto/16 :goto_0

    .line 216
    :catch_3
    move-exception v0

    .line 217
    .restart local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 222
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_4
    move-exception v0

    .line 223
    .restart local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 232
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_5
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EcoConfirmDialog"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v3, "showDlg":Landroid/content/Intent;
    const/high16 v4, 0x10800000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$600(Lcom/android/server/SkyEcomodeService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 254
    .end local v1    # "getData":Z
    .end local v2    # "savedStatus":I
    .end local v3    # "showDlg":Landroid/content/Intent;
    :pswitch_3
    const/4 v1, 0x0

    .line 256
    .restart local v1    # "getData":Z
    :try_start_a
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # invokes: Lcom/android/server/SkyEcomodeService;->getDataFromProvider()Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$300(Lcom/android/server/SkyEcomodeService;)Z
    :try_end_a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move-result v1

    .line 267
    :goto_6
    :try_start_b
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$600(Lcom/android/server/SkyEcomodeService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "eco_mode_enable"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/pantech/providers/skysettings/SKYEco;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 272
    :goto_7
    :try_start_c
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mSessionOn:Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$700(Lcom/android/server/SkyEcomodeService;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 276
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # invokes: Lcom/android/server/SkyEcomodeService;->restore()V
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$900(Lcom/android/server/SkyEcomodeService;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 280
    :cond_4
    :try_start_d
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

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
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_0

    .line 281
    :catch_6
    move-exception v0

    .line 282
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 258
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_6

    .line 268
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_8
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 296
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "getData":Z
    :pswitch_4
    # getter for: Lcom/android/server/SkyEcomodeService;->bBootCompleted:Z
    invoke-static {}, Lcom/android/server/SkyEcomodeService;->access$200()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    :try_start_f
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->currentBatteryStatus:I
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$500(Lcom/android/server/SkyEcomodeService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->batteryStatus:I
    invoke-static {v5}, Lcom/android/server/SkyEcomodeService;->access$1300(Lcom/android/server/SkyEcomodeService;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    move-result v5

    if-eq v4, v5, :cond_5

    .line 309
    :try_start_10
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$600(Lcom/android/server/SkyEcomodeService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "eco_power_connected"

    iget-object v6, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->batteryStatus:I
    invoke-static {v6}, Lcom/android/server/SkyEcomodeService;->access$1300(Lcom/android/server/SkyEcomodeService;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/pantech/providers/skysettings/SKYEco;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    .line 313
    :goto_8
    :try_start_11
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    iget-object v5, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->batteryStatus:I
    invoke-static {v5}, Lcom/android/server/SkyEcomodeService;->access$1300(Lcom/android/server/SkyEcomodeService;)I

    move-result v5

    # setter for: Lcom/android/server/SkyEcomodeService;->currentBatteryStatus:I
    invoke-static {v4, v5}, Lcom/android/server/SkyEcomodeService;->access$502(Lcom/android/server/SkyEcomodeService;I)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    .line 328
    :cond_5
    :goto_9
    :try_start_12
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->currentBatteryLevel:I
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$1400(Lcom/android/server/SkyEcomodeService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->batteryLevel:I
    invoke-static {v5}, Lcom/android/server/SkyEcomodeService;->access$1500(Lcom/android/server/SkyEcomodeService;)I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 329
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    iget-object v5, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->batteryLevel:I
    invoke-static {v5}, Lcom/android/server/SkyEcomodeService;->access$1500(Lcom/android/server/SkyEcomodeService;)I

    move-result v5

    # setter for: Lcom/android/server/SkyEcomodeService;->currentBatteryLevel:I
    invoke-static {v4, v5}, Lcom/android/server/SkyEcomodeService;->access$1402(Lcom/android/server/SkyEcomodeService;I)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    .line 330
    const/4 v1, 0x0

    .line 332
    .restart local v1    # "getData":Z
    :try_start_13
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # invokes: Lcom/android/server/SkyEcomodeService;->getDataFromProvider()Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$300(Lcom/android/server/SkyEcomodeService;)Z
    :try_end_13
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    move-result v1

    .line 337
    :goto_a
    :try_start_14
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mMode:Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$400(Lcom/android/server/SkyEcomodeService;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mCheckBattery:Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$800(Lcom/android/server/SkyEcomodeService;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->noButtonClicked:Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$1600(Lcom/android/server/SkyEcomodeService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 338
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # invokes: Lcom/android/server/SkyEcomodeService;->checkProcess()V
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$1200(Lcom/android/server/SkyEcomodeService;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_0

    .line 310
    .end local v1    # "getData":Z
    :catch_9
    move-exception v0

    .line 311
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    goto :goto_8

    .line 323
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v0

    .line 324
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 333
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "getData":Z
    :catch_b
    move-exception v0

    .line 334
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    goto :goto_a

    .line 346
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v1    # "getData":Z
    :pswitch_5
    const/4 v1, 0x0

    .line 348
    .restart local v1    # "getData":Z
    :try_start_17
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # invokes: Lcom/android/server/SkyEcomodeService;->getDataFromProvider()Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$300(Lcom/android/server/SkyEcomodeService;)Z
    :try_end_17
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_17 .. :try_end_17} :catch_c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    move-result v1

    .line 358
    :goto_b
    :try_start_18
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mSessionOn:Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$700(Lcom/android/server/SkyEcomodeService;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mCheckBattery:Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$800(Lcom/android/server/SkyEcomodeService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 362
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # invokes: Lcom/android/server/SkyEcomodeService;->restore()V
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$900(Lcom/android/server/SkyEcomodeService;)V

    goto/16 :goto_0

    .line 349
    :catch_c
    move-exception v0

    .line 350
    .restart local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    goto :goto_b

    .line 374
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v1    # "getData":Z
    :pswitch_6
    const/4 v1, 0x0

    .line 376
    .restart local v1    # "getData":Z
    :try_start_19
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # invokes: Lcom/android/server/SkyEcomodeService;->getDataFromProvider()Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$300(Lcom/android/server/SkyEcomodeService;)Z
    :try_end_19
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    move-result v1

    .line 381
    :goto_c
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mMode:Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$400(Lcom/android/server/SkyEcomodeService;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # getter for: Lcom/android/server/SkyEcomodeService;->mCheckBattery:Z
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$800(Lcom/android/server/SkyEcomodeService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 382
    iget-object v4, p0, Lcom/android/server/SkyEcomodeService$SkyEcoWorkerHandler;->this$0:Lcom/android/server/SkyEcomodeService;

    # invokes: Lcom/android/server/SkyEcomodeService;->checkProcess()V
    invoke-static {v4}, Lcom/android/server/SkyEcomodeService;->access$1200(Lcom/android/server/SkyEcomodeService;)V

    goto/16 :goto_0

    .line 377
    :catch_d
    move-exception v0

    .line 378
    .restart local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    goto :goto_c

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
