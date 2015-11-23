.class Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;
.super Landroid/os/Handler;
.source "PantechWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/wifi/statemachine/PantechWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PantechServiceThreadhandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;


# direct methods
.method constructor <init>(Lcom/pantech/wifi/statemachine/PantechWifiService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    .line 172
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 173
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 177
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;

    .line 178
    .local v9, "request":Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;
    const/4 v5, 0x0

    .line 180
    .local v5, "onCompleted":Landroid/os/Message;
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 434
    const-string v10, "PantechWifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PantechServiceThreadhandler ignoring msg is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_0
    return-void

    .line 183
    :pswitch_0
    iget-object v3, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;

    .line 184
    .local v3, "manual":Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;
    if-eqz v3, :cond_0

    .line 185
    const v11, 0x251f6

    iget-boolean v10, v3, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;->value:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    const/4 v12, 0x0

    invoke-virtual {p0, v11, v10, v12, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 187
    :cond_0
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x251f5

    const/4 v12, 0x0

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto :goto_0

    .line 185
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 191
    .end local v3    # "manual":Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;
    :pswitch_1
    new-instance v10, Ljava/lang/Integer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 192
    monitor-enter v9

    .line 193
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 194
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 198
    :pswitch_2
    iget-object v6, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->argument:Ljava/lang/Object;

    check-cast v6, Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntBoolArgument;

    .line 199
    .local v6, "profile":Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntBoolArgument;
    if-eqz v6, :cond_2

    .line 200
    const v11, 0x251f8

    iget v12, v6, Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntBoolArgument;->ivalue:I

    iget-boolean v10, v6, Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntBoolArgument;->bvalue:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {p0, v11, v12, v10, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 202
    :cond_2
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x251f7

    const/4 v12, 0x0

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto :goto_0

    .line 200
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 206
    .end local v6    # "profile":Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntBoolArgument;
    :pswitch_3
    new-instance v10, Ljava/lang/Integer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 207
    monitor-enter v9

    .line 208
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 209
    monitor-exit v9

    goto :goto_0

    :catchall_1
    move-exception v10

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v10

    .line 213
    :pswitch_4
    iget-object v0, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;

    .line 214
    .local v0, "arg":Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;
    if-eqz v0, :cond_4

    .line 215
    const v11, 0x251fa

    iget-boolean v10, v0, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;->value:Z

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    :goto_3
    const/4 v12, 0x0

    invoke-virtual {p0, v11, v10, v12, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 217
    :cond_4
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x251f9

    const/4 v12, 0x0

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto :goto_0

    .line 215
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 221
    .end local v0    # "arg":Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;
    :pswitch_5
    new-instance v10, Ljava/lang/Integer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 222
    monitor-enter v9

    .line 223
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 224
    monitor-exit v9

    goto/16 :goto_0

    :catchall_2
    move-exception v10

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v10

    .line 228
    :pswitch_6
    iget-object v8, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->argument:Ljava/lang/Object;

    check-cast v8, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;

    .line 229
    .local v8, "recheck":Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;
    if-eqz v8, :cond_6

    .line 230
    const v11, 0x251fc

    iget-boolean v10, v8, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;->value:Z

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    :goto_4
    const/4 v12, 0x0

    invoke-virtual {p0, v11, v10, v12, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 232
    :cond_6
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x251fb

    const/4 v12, 0x0

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto/16 :goto_0

    .line 230
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 236
    .end local v8    # "recheck":Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;
    :pswitch_7
    new-instance v10, Ljava/lang/Integer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 237
    monitor-enter v9

    .line 238
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 239
    monitor-exit v9

    goto/16 :goto_0

    :catchall_3
    move-exception v10

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v10

    .line 243
    :pswitch_8
    iget-object v7, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->argument:Ljava/lang/Object;

    check-cast v7, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;

    .line 244
    .local v7, "query":Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;
    if-eqz v7, :cond_8

    .line 245
    const v11, 0x251fe

    iget-boolean v10, v7, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;->value:Z

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    :goto_5
    const/4 v12, 0x0

    invoke-virtual {p0, v11, v10, v12, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 247
    :cond_8
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x251fd

    const/4 v12, 0x0

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto/16 :goto_0

    .line 245
    :cond_9
    const/4 v10, 0x0

    goto :goto_5

    .line 251
    .end local v7    # "query":Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;
    :pswitch_9
    new-instance v10, Ljava/lang/Integer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 252
    monitor-enter v9

    .line 253
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 254
    monitor-exit v9

    goto/16 :goto_0

    :catchall_4
    move-exception v10

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v10

    .line 260
    :pswitch_a
    iget-object v4, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->argument:Ljava/lang/Object;

    check-cast v4, Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntArgument;

    .line 261
    .local v4, "mode":Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntArgument;
    if-eqz v4, :cond_a

    .line 262
    const v10, 0x25200

    iget v11, v4, Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntArgument;->value:I

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 264
    :cond_a
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x251ff

    const/4 v12, 0x0

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto/16 :goto_0

    .line 268
    .end local v4    # "mode":Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntArgument;
    :pswitch_b
    new-instance v10, Ljava/lang/Integer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 269
    monitor-enter v9

    .line 270
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 271
    monitor-exit v9

    goto/16 :goto_0

    :catchall_5
    move-exception v10

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v10

    .line 275
    :pswitch_c
    iget-object v1, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntArgument;

    .line 276
    .local v1, "dismode":Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntArgument;
    if-eqz v1, :cond_b

    .line 277
    const v10, 0x25202

    iget v11, v1, Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntArgument;->value:I

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 279
    :cond_b
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x25201

    const/4 v12, 0x0

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto/16 :goto_0

    .line 283
    .end local v1    # "dismode":Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntArgument;
    :pswitch_d
    new-instance v10, Ljava/lang/Integer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 284
    monitor-enter v9

    .line 285
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 286
    monitor-exit v9

    goto/16 :goto_0

    :catchall_6
    move-exception v10

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v10

    .line 292
    :pswitch_e
    const v10, 0x25204

    invoke-virtual {p0, v10, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 293
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x25203

    const/4 v12, 0x0

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto/16 :goto_0

    .line 297
    :pswitch_f
    new-instance v10, Ljava/lang/Integer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 298
    monitor-enter v9

    .line 299
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 300
    monitor-exit v9

    goto/16 :goto_0

    :catchall_7
    move-exception v10

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v10

    .line 306
    :pswitch_10
    const v10, 0x25206

    invoke-virtual {p0, v10, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 307
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x25205

    const/4 v12, 0x0

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto/16 :goto_0

    .line 311
    :pswitch_11
    new-instance v10, Ljava/lang/Integer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 312
    monitor-enter v9

    .line 313
    :try_start_8
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 314
    monitor-exit v9

    goto/16 :goto_0

    :catchall_8
    move-exception v10

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v10

    .line 318
    :pswitch_12
    const v10, 0x25208

    invoke-virtual {p0, v10, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 319
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x25207

    const/4 v12, 0x1

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto/16 :goto_0

    .line 323
    :pswitch_13
    const-string v10, "PantechWifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RECEIVE_NATIVE_COMMAND_DONE result is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    if-nez v10, :cond_c

    .line 325
    new-instance v10, Ljava/lang/String;

    const-string v11, ""

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 326
    :cond_c
    monitor-enter v9

    .line 327
    :try_start_9
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 328
    monitor-exit v9

    goto/16 :goto_0

    :catchall_9
    move-exception v10

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v10

    .line 334
    :pswitch_14
    const v10, 0x2520a

    invoke-virtual {p0, v10, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 335
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x25209

    const/4 v12, 0x1

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto/16 :goto_0

    .line 339
    :pswitch_15
    const-string v10, "PantechWifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RECEIVE_SHOW_CONF_DONE result is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    if-nez v10, :cond_d

    .line 341
    new-instance v10, Ljava/lang/String;

    const-string v11, ""

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 342
    :cond_d
    monitor-enter v9

    .line 343
    :try_start_a
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 344
    monitor-exit v9

    goto/16 :goto_0

    :catchall_a
    move-exception v10

    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v10

    .line 350
    :pswitch_16
    const v10, 0x2520c

    invoke-virtual {p0, v10, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 351
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x2520b

    const/4 v12, 0x0

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto/16 :goto_0

    .line 355
    :pswitch_17
    new-instance v10, Ljava/lang/Integer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 356
    monitor-enter v9

    .line 357
    :try_start_b
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 358
    monitor-exit v9

    goto/16 :goto_0

    :catchall_b
    move-exception v10

    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v10

    .line 364
    :pswitch_18
    const v10, 0x2520e

    invoke-virtual {p0, v10, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 365
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x2520d

    const/4 v12, 0x0

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto/16 :goto_0

    .line 369
    :pswitch_19
    new-instance v10, Ljava/lang/Integer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 370
    monitor-enter v9

    .line 371
    :try_start_c
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 372
    monitor-exit v9

    goto/16 :goto_0

    :catchall_c
    move-exception v10

    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v10

    .line 376
    :pswitch_1a
    const v10, 0x25210

    invoke-virtual {p0, v10, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 377
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x2520f

    const/4 v12, 0x0

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto/16 :goto_0

    .line 381
    :pswitch_1b
    new-instance v10, Ljava/lang/Integer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 382
    monitor-enter v9

    .line 383
    :try_start_d
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 384
    monitor-exit v9

    goto/16 :goto_0

    :catchall_d
    move-exception v10

    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v10

    .line 388
    :pswitch_1c
    const v10, 0x25212

    invoke-virtual {p0, v10, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 389
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x25211

    const/4 v12, 0x1

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto/16 :goto_0

    .line 393
    :pswitch_1d
    const-string v10, "PantechWifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RECEIVE_CUST_STRING_COMMAND_DONE result is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    if-nez v10, :cond_e

    .line 395
    new-instance v10, Ljava/lang/String;

    const-string v11, ""

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 396
    :cond_e
    monitor-enter v9

    .line 397
    :try_start_e
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 398
    monitor-exit v9

    goto/16 :goto_0

    :catchall_e
    move-exception v10

    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v10

    .line 404
    :pswitch_1e
    iget-object v2, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;

    .line 405
    .local v2, "enable":Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;
    if-eqz v2, :cond_f

    .line 406
    const v11, 0x25214

    iget-boolean v10, v2, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;->value:Z

    if-eqz v10, :cond_10

    const/4 v10, 0x1

    :goto_6
    const/4 v12, 0x0

    invoke-virtual {p0, v11, v10, v12, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 408
    :cond_f
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x25213

    const/4 v12, 0x0

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto/16 :goto_0

    .line 406
    :cond_10
    const/4 v10, 0x0

    goto :goto_6

    .line 412
    .end local v2    # "enable":Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;
    :pswitch_1f
    new-instance v10, Ljava/lang/Integer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 413
    monitor-enter v9

    .line 414
    :try_start_f
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 415
    monitor-exit v9

    goto/16 :goto_0

    :catchall_f
    move-exception v10

    monitor-exit v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v10

    .line 421
    :pswitch_20
    const v10, 0x25216

    invoke-virtual {p0, v10, v9}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 422
    iget-object v10, p0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;->this$0:Lcom/pantech/wifi/statemachine/PantechWifiService;

    const v11, 0x25215

    const/4 v12, 0x0

    # invokes: Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    invoke-static {v10, v11, v5, v9, v12}, Lcom/pantech/wifi/statemachine/PantechWifiService;->access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    goto/16 :goto_0

    .line 426
    :pswitch_21
    new-instance v10, Ljava/lang/Integer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    iput-object v10, v9, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 427
    monitor-enter v9

    .line 428
    :try_start_10
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 429
    monitor-exit v9

    goto/16 :goto_0

    :catchall_10
    move-exception v10

    monitor-exit v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v10

    .line 180
    :pswitch_data_0
    .packed-switch 0x251f5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method
