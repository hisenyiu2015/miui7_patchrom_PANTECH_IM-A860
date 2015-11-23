.class public final Lcom/pantech/wifi/statemachine/PantechWifiService;
.super Ljava/lang/Object;
.source "PantechWifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;,
        Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;,
        Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolBoolArgument;,
        Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntIntArgument;,
        Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntBoolArgument;,
        Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntArgument;,
        Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;,
        Lcom/pantech/wifi/statemachine/PantechWifiService$SetNoneArgument;,
        Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final RESPONSE_NULL:Ljava/lang/String; = ""

.field public static final RET_INT:I = 0x0

.field public static final RET_STRING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PantechWifiService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPantechServiceThreadhandler:Landroid/os/Handler;

.field private mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiStateMachine;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "sm"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/pantech/wifi/statemachine/PantechWifiService;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;

    invoke-direct {v0, p0, p2}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadhandler;-><init>(Lcom/pantech/wifi/statemachine/PantechWifiService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/wifi/statemachine/PantechWifiService;->mPantechServiceThreadhandler:Landroid/os/Handler;

    .line 49
    iput-object p3, p0, Lcom/pantech/wifi/statemachine/PantechWifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 50
    return-void
.end method

.method private SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "onCompleted"    # Landroid/os/Message;
    .param p3, "request"    # Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;
    .param p4, "ret"    # I

    .prologue
    .line 83
    iget-object v1, p0, Lcom/pantech/wifi/statemachine/PantechWifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 85
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 86
    .local v0, "messsage":Landroid/os/Message;
    const v1, 0x251f4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 87
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 88
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcom/pantech/wifi/statemachine/PantechWifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 105
    .end local v0    # "messsage":Landroid/os/Message;
    :goto_0
    return-void

    .line 93
    :cond_0
    if-nez p4, :cond_1

    .line 94
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p3, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    .line 100
    :goto_1
    const-string v1, "PantechWifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiStateMachine or request is null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not send"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    monitor-enter p3

    .line 102
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 95
    :cond_1
    const/4 v1, 0x1

    if-ne p4, v1, :cond_2

    .line 96
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p3, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .line 98
    :cond_2
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p3, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/pantech/wifi/statemachine/PantechWifiService;ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V
    .locals 0
    .param p0, "x0"    # Lcom/pantech/wifi/statemachine/PantechWifiService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Message;
    .param p3, "x3"    # Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;
    .param p4, "x4"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/wifi/statemachine/PantechWifiService;->SendMessage(ILandroid/os/Message;Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;I)V

    return-void
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 62
    new-instance v1, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;

    invoke-direct {v1, p2}, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 63
    .local v1, "request":Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;
    iget-object v2, p0, Lcom/pantech/wifi/statemachine/PantechWifiService;->mPantechServiceThreadhandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 65
    const-string v2, "PantechWifiService"

    const-string v3, "mPantechServiceThreadhandler is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v2, 0x0

    .line 79
    :goto_0
    return-object v2

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/pantech/wifi/statemachine/PantechWifiService;->mPantechServiceThreadhandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 69
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 70
    monitor-enter v1

    .line 71
    :goto_1
    :try_start_0
    iget-object v2, v1, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 73
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 74
    :catch_0
    move-exception v2

    goto :goto_1

    .line 78
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    iget-object v2, v1, Lcom/pantech/wifi/statemachine/PantechWifiService$PantechServiceThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public doWiFiCustBooleanCommand(Ljava/lang/String;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 670
    const-string v3, "PantechWifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doWiFiCustBooleanCommand command is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const v3, 0x2520d

    new-instance v4, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;

    invoke-direct {v4, p1}, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/pantech/wifi/statemachine/PantechWifiService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 673
    .local v0, "cmd":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 675
    const-string v3, "PantechWifiService"

    const-string v4, "doWiFiCustBooleanCommand cmd is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    :goto_0
    return v2

    .line 679
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 680
    .local v1, "ret":I
    const-string v3, "PantechWifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doWiFiCustBooleanCommand return is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public doWiFiCustIntCommand(Ljava/lang/String;)I
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 688
    const-string v2, "PantechWifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doWiFiCustIntCommand command is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const v2, 0x2520f

    new-instance v3, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;

    invoke-direct {v3, p1}, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/pantech/wifi/statemachine/PantechWifiService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 691
    .local v0, "cmd":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 693
    const-string v2, "PantechWifiService"

    const-string v3, "doWiFiCustIntCommand cmd is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v1, -0x1

    .line 699
    :goto_0
    return v1

    .line 697
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 698
    .local v1, "ret":I
    const-string v2, "PantechWifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doWiFiCustIntCommand return is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doWiFiCustStringCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 703
    const-string v1, "PantechWifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doWiFiCustStringCommand command is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const v1, 0x25211

    new-instance v2, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;

    invoke-direct {v2, p1}, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/pantech/wifi/statemachine/PantechWifiService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 706
    .local v0, "cmd":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 708
    const-string v1, "PantechWifiService"

    const-string v2, "doWiFiCustStringCommand cmd is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/4 v0, 0x0

    .line 713
    .end local v0    # "cmd":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 712
    .restart local v0    # "cmd":Ljava/lang/String;
    :cond_0
    const-string v1, "PantechWifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doWiFiCustStringCommand return is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public get80211ModeCommand()I
    .locals 5

    .prologue
    .line 599
    const-string v2, "PantechWifiService"

    const-string v3, "get80211ModeCommand"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const v2, 0x25205

    new-instance v3, Lcom/pantech/wifi/statemachine/PantechWifiService$SetNoneArgument;

    invoke-direct {v3}, Lcom/pantech/wifi/statemachine/PantechWifiService$SetNoneArgument;-><init>()V

    invoke-direct {p0, v2, v3}, Lcom/pantech/wifi/statemachine/PantechWifiService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 602
    .local v0, "command":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 604
    const-string v2, "PantechWifiService"

    const-string v3, "get80211ModeCommand command is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v1, -0x1

    .line 610
    :goto_0
    return v1

    .line 608
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 609
    .local v1, "ret":I
    const-string v2, "PantechWifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get80211ModeCommand return is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiNativeCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 616
    const-string v1, "PantechWifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiNativeCommand command is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const v1, 0x25207

    new-instance v2, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;

    invoke-direct {v2, p1}, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/pantech/wifi/statemachine/PantechWifiService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 619
    .local v0, "cmd":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 621
    const-string v1, "PantechWifiService"

    const-string v2, "getWifiNativeCommand cmd is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v0, 0x0

    .line 626
    .end local v0    # "cmd":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 625
    .restart local v0    # "cmd":Ljava/lang/String;
    :cond_0
    const-string v1, "PantechWifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiNativeCommand return is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initConfiguration()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 579
    const-string v3, "PantechWifiService"

    const-string v4, "initConfiguration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const v3, 0x25203

    new-instance v4, Lcom/pantech/wifi/statemachine/PantechWifiService$SetNoneArgument;

    invoke-direct {v4}, Lcom/pantech/wifi/statemachine/PantechWifiService$SetNoneArgument;-><init>()V

    invoke-direct {p0, v3, v4}, Lcom/pantech/wifi/statemachine/PantechWifiService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 582
    .local v0, "config":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 584
    const-string v3, "PantechWifiService"

    const-string v4, "initConfiguration config is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    :goto_0
    return v2

    .line 588
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 589
    .local v1, "ret":I
    const-string v3, "PantechWifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initConfiguration return is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public removePseudonymId()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 650
    const-string v3, "PantechWifiService"

    const-string v4, "removePseudonymId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const v3, 0x2520b

    new-instance v4, Lcom/pantech/wifi/statemachine/PantechWifiService$SetNoneArgument;

    invoke-direct {v4}, Lcom/pantech/wifi/statemachine/PantechWifiService$SetNoneArgument;-><init>()V

    invoke-direct {p0, v3, v4}, Lcom/pantech/wifi/statemachine/PantechWifiService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 653
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 655
    const-string v3, "PantechWifiService"

    const-string v4, "removePseudonymId id is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_0
    :goto_0
    return v2

    .line 659
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 660
    .local v1, "ret":I
    const-string v3, "PantechWifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removePseudonymId return is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setCheckManualConnection(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 478
    const-string v0, "PantechWifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCheckManualConnection value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-eqz p1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/pantech/wifi/statemachine/PantechWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_check_manual_connection"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 495
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/pantech/wifi/statemachine/PantechWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_check_manual_connection"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setCheckManualQuery(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 518
    const-string v0, "PantechWifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCheckManualQuery value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    if-eqz p1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/pantech/wifi/statemachine/PantechWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_check_manual_query"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 535
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/pantech/wifi/statemachine/PantechWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_check_manual_query"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setConnectionPriority(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 540
    const-string v0, "PantechWifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectionPriority value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/pantech/wifi/statemachine/PantechWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connection_priority_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 554
    return-void
.end method

.method public setDisableEnableAllNetworks(Z)Z
    .locals 6
    .param p1, "value"    # Z

    .prologue
    const/4 v2, 0x0

    .line 721
    const-string v3, "PantechWifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDisableEnableAllNetworks value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const v3, 0x25213

    new-instance v4, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;

    invoke-direct {v4, p1}, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;-><init>(Z)V

    invoke-direct {p0, v3, v4}, Lcom/pantech/wifi/statemachine/PantechWifiService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 724
    .local v0, "enable":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 726
    const-string v3, "PantechWifiService"

    const-string v4, "setDisableEnableAllNetworks enable is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    :goto_0
    return v2

    .line 730
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 731
    .local v1, "ret":I
    const-string v3, "PantechWifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDisableEnableAllNetworks return is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setDisconnectionPriority(I)Z
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 559
    const-string v3, "PantechWifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDisconnectionPriority value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const v3, 0x25201

    new-instance v4, Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntArgument;

    invoke-direct {v4, p1}, Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntArgument;-><init>(I)V

    invoke-direct {p0, v3, v4}, Lcom/pantech/wifi/statemachine/PantechWifiService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 562
    .local v0, "mode":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 564
    const-string v3, "PantechWifiService"

    const-string v4, "setDisconnectionPriority mode is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    :goto_0
    return v2

    .line 568
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 569
    .local v1, "ret":I
    const-string v3, "PantechWifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDisconnectionPriority return is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setManualConnection(Z)Z
    .locals 6
    .param p1, "value"    # Z

    .prologue
    const/4 v2, 0x0

    .line 444
    const-string v3, "PantechWifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setManualConnection value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const v3, 0x251f5

    new-instance v4, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;

    invoke-direct {v4, p1}, Lcom/pantech/wifi/statemachine/PantechWifiService$SetBoolArgument;-><init>(Z)V

    invoke-direct {p0, v3, v4}, Lcom/pantech/wifi/statemachine/PantechWifiService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 447
    .local v0, "manual":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 449
    const-string v3, "PantechWifiService"

    const-string v4, "setManualConnection manual is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    :goto_0
    return v2

    .line 453
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 454
    .local v1, "ret":I
    const-string v3, "PantechWifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setManualConnection return is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setProfileManualConnection(IZ)Z
    .locals 6
    .param p1, "networkId"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v2, 0x0

    .line 462
    const-string v3, "PantechWifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProfileManualConnection netwirkId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const v3, 0x251f7

    new-instance v4, Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntBoolArgument;

    invoke-direct {v4, p1, p2}, Lcom/pantech/wifi/statemachine/PantechWifiService$SetIntBoolArgument;-><init>(IZ)V

    invoke-direct {p0, v3, v4}, Lcom/pantech/wifi/statemachine/PantechWifiService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 465
    .local v0, "profile":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 467
    const-string v3, "PantechWifiService"

    const-string v4, "setProfileManualConnection profile is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    :goto_0
    return v2

    .line 471
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 472
    .local v1, "ret":I
    const-string v3, "PantechWifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProfileManualConnection return is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setReCheckManualConnection(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 498
    const-string v0, "PantechWifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReCheckManualConnection value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    if-eqz p1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/pantech/wifi/statemachine/PantechWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_re_check_manual_connection"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 515
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/pantech/wifi/statemachine/PantechWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_re_check_manual_connection"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setRealmForOllehWiFi(Ljava/lang/String;)Z
    .locals 6
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 741
    const-string v3, "PantechWifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRealmForOllehWiFi item is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const v3, 0x25215

    new-instance v4, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;

    invoke-direct {v4, p1}, Lcom/pantech/wifi/statemachine/PantechWifiService$SetStringArgument;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/pantech/wifi/statemachine/PantechWifiService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 744
    .local v0, "realm":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 746
    const-string v3, "PantechWifiService"

    const-string v4, "setRealmForOllehWiFi realm is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    :goto_0
    return v2

    .line 750
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 751
    .local v1, "ret":I
    const-string v3, "PantechWifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRealmForOllehWiFi return is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public showConfInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 632
    const-string v1, "PantechWifiService"

    const-string v2, "showConfInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const v1, 0x25209

    new-instance v2, Lcom/pantech/wifi/statemachine/PantechWifiService$SetNoneArgument;

    invoke-direct {v2}, Lcom/pantech/wifi/statemachine/PantechWifiService$SetNoneArgument;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/pantech/wifi/statemachine/PantechWifiService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 635
    .local v0, "show":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 637
    const-string v1, "PantechWifiService"

    const-string v2, "showConfInfo show is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v0, 0x0

    .line 642
    .end local v0    # "show":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 641
    .restart local v0    # "show":Ljava/lang/String;
    :cond_0
    const-string v1, "PantechWifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showConfInfo return is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
