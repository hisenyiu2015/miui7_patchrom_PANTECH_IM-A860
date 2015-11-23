.class Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternetCheckingState"
.end annotation


# instance fields
.field dnsCheckLogStr:Ljava/lang/String;

.field dnsCheckSuccesses:[I

.field dnsResponseStrs:[Ljava/lang/String;

.field idDnsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field mPingIpAddrResult:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 1

    .prologue
    .line 1086
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->mDnsList:Ljava/util/List;

    .line 1092
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->idDnsMap:Ljava/util/HashMap;

    return-void
.end method

.method private makeLogString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1295
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->dnsCheckLogStr:Ljava/lang/String;

    .line 1296
    .local v3, "logStr":Ljava/lang/String;
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1297
    .local v4, "respStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1298
    .end local v4    # "respStr":Ljava/lang/String;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 1099
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x2101b

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPingToken:I
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1101
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1105
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    sparse-switch v15, :sswitch_data_0

    .line 1289
    const/4 v15, 0x0

    .line 1291
    :goto_0
    return v15

    .line 1107
    :sswitch_0
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPingToken:I
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7700(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1108
    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v6, v15, v0}, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiWatchdogStateMachine$1;)V

    .line 1109
    .local v6, "httpCheckingThread":Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;
    invoke-virtual {v6}, Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;->start()V

    .line 1110
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    const v17, 0x2101e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCheckInternetToken:I
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7904(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v18

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v16

    const-wide/16 v17, 0x2710

    invoke-virtual/range {v15 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1291
    .end local v6    # "httpCheckingThread":Landroid/net/wifi/WifiWatchdogStateMachine$HttpCheckingThread;
    :cond_0
    :goto_1
    const/4 v15, 0x0

    goto :goto_0

    .line 1115
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/DnsPinger;->cancelPings()V

    .line 1116
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 1119
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 1120
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1121
    .local v3, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1122
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1125
    .end local v3    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v10

    .line 1126
    .local v10, "numDnses":I
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Number of DNSes : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1128
    :cond_2
    new-array v15, v10, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->dnsCheckSuccesses:[I

    .line 1129
    new-array v15, v10, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    .line 1130
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v10, :cond_3

    .line 1131
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    const-string v16, ""

    aput-object v16, v15, v7

    .line 1130
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1133
    :cond_3
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1134
    const-string v15, "Pinging %s on ssid [%s]: "

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->mDnsList:Ljava/util/List;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectionInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->dnsCheckLogStr:Ljava/lang/String;

    .line 1136
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->dnsCheckLogStr:Ljava/lang/String;

    move-object/from16 v16, v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1139
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    .line 1140
    const/4 v7, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNumDnsPings:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8300(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    if-ge v7, v15, :cond_0

    .line 1141
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    if-ge v9, v10, :cond_5

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->idDnsMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPingTimeoutMs:I
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v18

    mul-int/lit16 v0, v7, 0x1f4

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0xbb8

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v15, v1, v2}, Landroid/net/DnsPinger;->pingDnsAsync(Ljava/net/InetAddress;II)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1140
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1148
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v10    # "numDnses":I
    :sswitch_2
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPingToken:I
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7700(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1150
    :try_start_0
    const-string v8, "8.8.8.8"

    .line 1151
    .local v8, "ipAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Start ping test, ping "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1152
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "ping -c 1 -W 10 "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v11

    .line 1153
    .local v11, "p":Ljava/lang/Process;
    invoke-virtual {v11}, Ljava/lang/Process;->waitFor()I

    move-result v14

    .line 1154
    .local v14, "status":I
    if-nez v14, :cond_6

    .line 1155
    const-string v15, "Pass"

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->mPingIpAddrResult:Ljava/lang/String;

    .line 1156
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 1157
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1159
    :cond_6
    const-string v15, "Fail: IP addr not reachable"

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1167
    .end local v8    # "ipAddress":Ljava/lang/String;
    .end local v11    # "p":Ljava/lang/Process;
    .end local v14    # "status":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mPingIpAddrResult: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->mPingIpAddrResult:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1170
    :try_start_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v16, "setDisableEnableAllNetworks -> true"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1171
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/WifiManager;->setDisableEnableAllNetworks(Z)Z

    .line 1172
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v16, "disableNetwork"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1173
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 1174
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendPoorInternetConnectionBroadcast()V
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9000(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1179
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 1180
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1161
    :catch_0
    move-exception v5

    .line 1162
    .local v5, "e":Ljava/io/IOException;
    const-string v15, "Fail: IOException"

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->mPingIpAddrResult:Ljava/lang/String;

    goto/16 :goto_6

    .line 1163
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 1164
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v15, "Fail: InterruptedException"

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->mPingIpAddrResult:Ljava/lang/String;

    goto/16 :goto_6

    .line 1175
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v5

    .line 1176
    .local v5, "e":Ljava/lang/NullPointerException;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[CMD_CHECK_POOR_INTERNET] Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_7

    .line 1184
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :sswitch_3
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 1185
    .local v12, "pingID":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 1187
    .local v13, "pingResponseTime":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1188
    .local v4, "dnsServerId":Ljava/lang/Integer;
    if-nez v4, :cond_9

    .line 1189
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v16, "Received a Dns response with unknown ID!"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1190
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1193
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    if-ltz v13, :cond_a

    const v15, 0x1869f

    if-ge v13, v15, :cond_a

    .line 1195
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->dnsCheckSuccesses:[I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aget v17, v15, v16

    add-int/lit8 v17, v17, 0x1

    aput v17, v15, v16

    .line 1197
    :cond_a
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1198
    if-ltz v13, :cond_d

    const v15, 0x1869f

    if-ge v13, v15, :cond_d

    .line 1199
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aget-object v18, v16, v17

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v18, "|"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v16, v17

    .line 1209
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->dnsCheckSuccesses:[I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_e

    .line 1211
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1212
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->makeLogString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  SUCCESS"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1215
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/DnsPinger;->cancelPings()V

    .line 1216
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 1218
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 1219
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1201
    :cond_d
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aget-object v18, v16, v17

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v18, "|x"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v16, v17

    goto/16 :goto_8

    .line 1222
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1223
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1224
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->makeLogString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  FAILURE"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1227
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/DnsPinger;->cancelPings()V

    .line 1228
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 1230
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsCaptiveNetwork:Z
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 1231
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v16, "This is captive portal, do not disconnect!"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 1233
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1237
    :cond_10
    :try_start_2
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v15

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v16, "setDisableEnableAllNetworks -> true"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1238
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/WifiManager;->setDisableEnableAllNetworks(Z)Z

    .line 1239
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v15

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v16, "disableNetwork"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1240
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 1241
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendPoorInternetConnectionBroadcast()V
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9000(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1246
    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 1247
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1242
    :catch_3
    move-exception v5

    .line 1243
    .restart local v5    # "e":Ljava/lang/NullPointerException;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[CMD_CHECK_POOR_INTERNET] Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_9

    .line 1251
    .end local v4    # "dnsServerId":Ljava/lang/Integer;
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .end local v12    # "pingID":I
    .end local v13    # "pingResponseTime":I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v16, "EVENT_POOR_INTERNET_HTTP_GOOD received"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1255
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v16, "EVENT_POOR_INTERNET_HTTP_BAD received"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1257
    :try_start_3
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v15

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v16, "setDisableEnableAllNetworks -> true"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1258
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/WifiManager;->setDisableEnableAllNetworks(Z)Z

    .line 1260
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v15

    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v16, "disableNetwork"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1261
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 1263
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendPoorInternetConnectionBroadcast()V
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9000(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_1

    .line 1266
    :catch_4
    move-exception v5

    .line 1267
    .restart local v5    # "e":Ljava/lang/NullPointerException;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[CMD_CHECK_POOR_INTERNET] Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1271
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :sswitch_6
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCheckInternetToken:I
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1272
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v16, "CMD_CHECK_INTERNET_TIMED_OUT received"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1274
    :try_start_4
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v15

    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v16, "setDisableEnableAllNetworks -> true"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1275
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/WifiManager;->setDisableEnableAllNetworks(Z)Z

    .line 1277
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v15

    if-eqz v15, :cond_16

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v16, "disableNetwork"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1278
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 1280
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendPoorInternetConnectionBroadcast()V
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9000(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_1

    .line 1283
    :catch_5
    move-exception v5

    .line 1284
    .restart local v5    # "e":Ljava/lang/NullPointerException;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$InternetCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[CMD_CHECK_POOR_INTERNET] Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1105
    :sswitch_data_0
    .sparse-switch
        0x21019 -> :sswitch_0
        0x2101a -> :sswitch_2
        0x2101b -> :sswitch_1
        0x2101c -> :sswitch_4
        0x2101d -> :sswitch_5
        0x2101e -> :sswitch_6
        0x50000 -> :sswitch_3
    .end sparse-switch
.end method
