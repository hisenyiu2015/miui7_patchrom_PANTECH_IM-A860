.class Lcom/android/server/net/NetworkPolicyManagerService$13;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .prologue
    .line 2013
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2016
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 2168
    const/16 v23, 0x0

    :goto_0
    return v23

    .line 2018
    :pswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 2019
    .local v20, "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    .line 2020
    .local v21, "uidRules":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v10

    .line 2021
    .local v10, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v10, :cond_1

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/net/INetworkPolicyListener;

    .line 2023
    .local v11, "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v11, :cond_0

    .line 2025
    :try_start_0
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v11, v0, v1}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2021
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2030
    .end local v11    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2031
    const/16 v23, 0x1

    goto :goto_0

    .line 2034
    .end local v8    # "i":I
    .end local v10    # "length":I
    .end local v20    # "uid":I
    .end local v21    # "uidRules":I
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [Ljava/lang/String;

    move-object/from16 v14, v23

    check-cast v14, [Ljava/lang/String;

    .line 2035
    .local v14, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v10

    .line 2036
    .restart local v10    # "length":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v10, :cond_3

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/net/INetworkPolicyListener;

    .line 2038
    .restart local v11    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v11, :cond_2

    .line 2040
    :try_start_1
    invoke-interface {v11, v14}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2036
    :cond_2
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2045
    .end local v11    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2046
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 2049
    .end local v8    # "i":I
    .end local v10    # "length":I
    .end local v14    # "meteredIfaces":[Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 2050
    .local v17, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    .line 2051
    .restart local v20    # "uid":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 2053
    .local v7, "foregroundActivities":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 2058
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/SparseBooleanArray;

    .line 2059
    .local v18, "pidForeground":Landroid/util/SparseBooleanArray;
    if-nez v18, :cond_4

    .line 2060
    new-instance v18, Landroid/util/SparseBooleanArray;

    .end local v18    # "pidForeground":Landroid/util/SparseBooleanArray;
    const/16 v23, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 2061
    .restart local v18    # "pidForeground":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2063
    :cond_4
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->computeUidForegroundLocked(I)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2100(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 2065
    monitor-exit v24

    .line 2066
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 2065
    .end local v18    # "pidForeground":Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v23

    .line 2069
    .end local v7    # "foregroundActivities":Z
    .end local v17    # "pid":I
    .end local v20    # "uid":I
    :pswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 2070
    .restart local v17    # "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    .line 2072
    .restart local v20    # "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 2074
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/SparseBooleanArray;

    .line 2075
    .restart local v18    # "pidForeground":Landroid/util/SparseBooleanArray;
    if-eqz v18, :cond_5

    .line 2076
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->computeUidForegroundLocked(I)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2100(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 2079
    :cond_5
    monitor-exit v24

    .line 2080
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 2079
    .end local v18    # "pidForeground":Landroid/util/SparseBooleanArray;
    :catchall_1
    move-exception v23

    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v23

    .line 2083
    .end local v17    # "pid":I
    .end local v20    # "uid":I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 2085
    .local v9, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$700(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 2087
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashSet;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v23

    if-eqz v23, :cond_6

    .line 2091
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2096
    :goto_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$900(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2099
    :cond_6
    monitor-exit v24

    .line 2100
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 2099
    :catchall_2
    move-exception v23

    monitor-exit v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v23

    .line 2103
    .end local v9    # "iface":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    if-eqz v23, :cond_8

    const/16 v19, 0x1

    .line 2104
    .local v19, "restrictBackground":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v10

    .line 2105
    .restart local v10    # "length":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_7
    if-ge v8, v10, :cond_9

    .line 2106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/net/INetworkPolicyListener;

    .line 2107
    .restart local v11    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v11, :cond_7

    .line 2109
    :try_start_7
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 2105
    :cond_7
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 2103
    .end local v8    # "i":I
    .end local v10    # "length":I
    .end local v11    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v19    # "restrictBackground":Z
    :cond_8
    const/16 v19, 0x0

    goto :goto_6

    .line 2114
    .restart local v8    # "i":I
    .restart local v10    # "length":I
    .restart local v19    # "restrictBackground":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2115
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 2118
    .end local v8    # "i":I
    .end local v10    # "length":I
    .end local v19    # "restrictBackground":Z
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2122
    .local v12, "lowestRule":J
    const-wide/16 v23, 0x3e8

    :try_start_8
    div-long v15, v12, v23

    .line 2123
    .local v15, "persistThreshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v15

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 2130
    .end local v15    # "persistThreshold":J
    :goto_9
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 2133
    .end local v12    # "lowestRule":J
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2400(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2134
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 2139
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 2140
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v26, 0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    const/16 v23, 0x1

    :goto_a
    move-object/from16 v0, v25

    move/from16 v1, v23

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2502(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 2141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$900(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2144
    monitor-exit v24

    .line 2145
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 2140
    :cond_a
    const/16 v23, 0x0

    goto :goto_a

    .line 2144
    :catchall_3
    move-exception v23

    monitor-exit v24
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v23

    .line 2149
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 2150
    :try_start_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/content/pm/UserInfo;

    .line 2151
    .local v22, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mCurrentAppCountMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2152
    .local v5, "currentAppCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mApplicationsMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2700(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2153
    .local v4, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v5, v0, :cond_b

    .line 2154
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v5, v0, :cond_b

    .line 2155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "currentAppCount":I
    .local v6, "currentAppCount":I
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 2156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mCurrentAppCountMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashMap;

    move-result-object v23

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v25

    const/16 v26, 0xa

    const/16 v27, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    const-wide/16 v26, 0x5

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2158
    const/16 v23, 0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 2163
    .end local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6    # "currentAppCount":I
    .end local v22    # "user":Landroid/content/pm/UserInfo;
    :catchall_4
    move-exception v23

    monitor-exit v24
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v23

    .line 2161
    .restart local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v5    # "currentAppCount":I
    .restart local v22    # "user":Landroid/content/pm/UserInfo;
    :cond_b
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v25

    const/16 v26, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v23

    if-eqz v23, :cond_c

    const/16 v23, 0x1

    :goto_b
    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v23

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/Message;->sendToTarget()V

    .line 2163
    monitor-exit v24
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 2164
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 2161
    :cond_c
    const/16 v23, 0x0

    goto :goto_b

    .line 2026
    .end local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5    # "currentAppCount":I
    .end local v22    # "user":Landroid/content/pm/UserInfo;
    .restart local v8    # "i":I
    .restart local v10    # "length":I
    .restart local v11    # "listener":Landroid/net/INetworkPolicyListener;
    .restart local v20    # "uid":I
    .restart local v21    # "uidRules":I
    :catch_0
    move-exception v23

    goto/16 :goto_2

    .line 2041
    .end local v20    # "uid":I
    .end local v21    # "uidRules":I
    .restart local v14    # "meteredIfaces":[Ljava/lang/String;
    :catch_1
    move-exception v23

    goto/16 :goto_4

    .line 2110
    .end local v14    # "meteredIfaces":[Ljava/lang/String;
    .restart local v19    # "restrictBackground":Z
    :catch_2
    move-exception v23

    goto/16 :goto_8

    .line 2126
    .end local v8    # "i":I
    .end local v10    # "length":I
    .end local v11    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v19    # "restrictBackground":Z
    .restart local v12    # "lowestRule":J
    :catch_3
    move-exception v23

    goto/16 :goto_9

    .line 2092
    .end local v12    # "lowestRule":J
    .restart local v9    # "iface":Ljava/lang/String;
    :catch_4
    move-exception v23

    goto/16 :goto_5

    .line 2016
    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch
.end method
