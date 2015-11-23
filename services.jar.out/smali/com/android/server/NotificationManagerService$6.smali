.class Lcom/android/server/NotificationManagerService$6;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$isSystemNotification:Z

.field final synthetic val$notification:Landroid/app/Notification;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;IZILjava/lang/String;ILandroid/os/UserHandle;I)V
    .locals 0

    .prologue
    .line 1803
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iput-object p3, p0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/NotificationManagerService$6;->val$callingUid:I

    iput-boolean p5, p0, Lcom/android/server/NotificationManagerService$6;->val$isSystemNotification:Z

    iput p6, p0, Lcom/android/server/NotificationManagerService$6;->val$id:I

    iput-object p7, p0, Lcom/android/server/NotificationManagerService$6;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/NotificationManagerService$6;->val$callingPid:I

    iput-object p9, p0, Lcom/android/server/NotificationManagerService$6;->val$user:Landroid/os/UserHandle;

    iput p10, p0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 43

    .prologue
    .line 1810
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->priority:I

    const/4 v7, -0x2

    const/4 v8, 0x2

    # invokes: Lcom/android/server/NotificationManagerService;->clamp(III)I
    invoke-static {v6, v7, v8}, Lcom/android/server/NotificationManagerService;->access$2700(III)I

    move-result v6

    iput v6, v5, Landroid/app/Notification;->priority:I

    .line 1813
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    .line 1814
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->priority:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 1815
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->priority:I

    .line 1825
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->priority:I

    mul-int/lit8 v10, v5, 0xa

    .line 1831
    .local v10, "score":I
    move/from16 v28, v10

    .line 1832
    .local v28, "initialScore":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$2800(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1834
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$2800(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/internal/notification/NotificationScorer;

    .line 1836
    .local v34, "scorer":Lcom/android/internal/notification/NotificationScorer;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, v34

    invoke-interface {v0, v5, v10}, Lcom/android/internal/notification/NotificationScorer;->getScore(Landroid/app/Notification;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    goto :goto_0

    .line 1837
    :catch_0
    move-exception v37

    .line 1838
    .local v37, "t":Ljava/lang/Throwable;
    const-string v5, "NotificationService"

    const-string v6, "Scorer threw on .getScore."

    move-object/from16 v0, v37

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1845
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v34    # "scorer":Lcom/android/internal/notification/NotificationScorer;
    .end local v37    # "t":Ljava/lang/Throwable;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v6, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.scoreModified"

    move/from16 v0, v28

    if-eq v10, v0, :cond_3

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1849
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/NotificationManagerService$6;->val$callingUid:I

    # invokes: Lcom/android/server/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z
    invoke-static {v5, v6, v7}, Lcom/android/server/NotificationManagerService;->access$2900(Lcom/android/server/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1850
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/NotificationManagerService$6;->val$isSystemNotification:Z

    if-eqz v5, :cond_miui

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    invoke-static {v5}, Lmiui/util/NotificationFilterHelper;->canSystemNotificationBeBlocked(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_miui
    const/16 v10, -0x3e8

    .line 1852
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Suppressing notification from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " by user request."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    :cond_2
    const/16 v5, -0x14

    if-ge v10, v5, :cond_4

    .line 2107
    :goto_2
    return-void

    .line 1845
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1867
    :cond_4
    const/16 v5, -0xa

    if-lt v10, v5, :cond_14

    const/16 v19, 0x1

    .line 1869
    .local v19, "canInterrupt":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v42

    monitor-enter v42

    .line 1870
    :try_start_1
    new-instance v4, Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/NotificationManagerService$6;->val$id:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$6;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/NotificationManagerService$6;->val$callingUid:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/NotificationManagerService$6;->val$callingPid:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NotificationManagerService$6;->val$user:Landroid/os/UserHandle;

    invoke-direct/range {v4 .. v12}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1872
    .local v4, "n":Landroid/service/notification/StatusBarNotification;
    new-instance v32, Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v32

    invoke-direct {v0, v4}, Lcom/android/server/NotificationManagerService$NotificationRecord;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 1873
    .local v32, "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    const/16 v30, 0x0

    .line 1875
    .local v30, "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$6;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/NotificationManagerService$6;->val$id:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    # invokes: Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/server/NotificationManagerService;->access$3000(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v27

    .line 1876
    .local v27, "index":I
    if-gez v27, :cond_15

    .line 1877
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1890
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_6

    .line 1891
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x22

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 1896
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v38

    .line 1898
    .local v38, "token":J
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v21

    .line 1900
    .local v21, "currentUser":I
    :try_start_3
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1903
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    if-eqz v5, :cond_18

    .line 1904
    if-eqz v30, :cond_16

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v5, :cond_16

    .line 1905
    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    move-object/from16 v0, v32

    iput-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 1906
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v25

    .line 1908
    .local v25, "identity":J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$3100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v5

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/StatusBarManagerService;->updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1911
    :try_start_5
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1927
    :goto_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    move/from16 v0, v21

    if-ne v0, v5, :cond_7

    .line 1928
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    # invokes: Lcom/android/server/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    invoke-static {v5, v6, v7}, Lcom/android/server/NotificationManagerService;->access$3300(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 1931
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v32

    # invokes: Lcom/android/server/NotificationManagerService;->notifyPostedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    invoke-static {v5, v0}, Lcom/android/server/NotificationManagerService;->access$3400(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    .line 1952
    .end local v25    # "identity":J
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110064

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v35

    .line 1956
    .local v35, "smsRingtone":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)I

    move-result v5

    const/high16 v6, 0x40000

    and-int/2addr v5, v6

    if-eqz v5, :cond_8

    if-eqz v35, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_8
    if-eqz v30, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_11

    :cond_9
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    if-ne v5, v6, :cond_11

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v5

    move/from16 v0, v21

    if-ne v5, v0, :cond_11

    :cond_a
    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSystemReady:Z
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$3600(Lcom/android/server/NotificationManagerService;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1965
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/media/AudioManager;

    .line 1973
    .local v17, "audioManager":Landroid/media/AudioManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_b

    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    :cond_b
    const/16 v40, 0x1

    .line 1978
    .local v40, "useDefaultSound":Z
    :goto_7
    const/16 v36, 0x0

    .line 1979
    .local v36, "soundUri":Landroid/net/Uri;
    const/16 v23, 0x0

    .line 1981
    .local v23, "hasValidSound":Z
    if-eqz v40, :cond_1c

    .line 1982
    sget-object v36, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 1985
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    .line 1986
    .local v33, "resolver":Landroid/content/ContentResolver;
    const-string v5, "notification_sound"

    move-object/from16 v0, v33

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    const/16 v23, 0x1

    .line 1993
    .end local v33    # "resolver":Landroid/content/ContentResolver;
    :cond_c
    :goto_8
    if-eqz v23, :cond_e

    .line 1994
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1e

    const/16 v29, 0x1

    .line 1996
    .local v29, "looping":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->audioStreamType:I

    if-ltz v5, :cond_1f

    .line 1997
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v0, v5, Landroid/app/Notification;->audioStreamType:I

    move/from16 v18, v0

    .line 2001
    .local v18, "audioStreamType":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v32

    # setter for: Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v5, v0}, Lcom/android/server/NotificationManagerService;->access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2004
    invoke-virtual/range {v17 .. v18}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v5

    if-nez v5, :cond_e

    .line 2006
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v25

    .line 2008
    .restart local v25    # "identity":J
    :try_start_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$600(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v31

    .line 2009
    .local v31, "player":Landroid/media/IRingtonePlayer;
    if-eqz v31, :cond_d

    .line 2010
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$user:Landroid/os/UserHandle;

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    move/from16 v2, v29

    move/from16 v3, v18

    invoke-interface {v0, v1, v5, v2, v3}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZI)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 2014
    :cond_d
    :try_start_7
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2021
    .end local v18    # "audioStreamType":I
    .end local v25    # "identity":J
    .end local v29    # "looping":Z
    .end local v31    # "player":Landroid/media/IRingtonePlayer;
    :cond_e
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->vibrate:[J

    if-eqz v5, :cond_20

    const/16 v22, 0x1

    .line 2025
    .local v22, "hasCustomVibrate":Z
    :goto_c
    if-nez v22, :cond_21

    if-eqz v23, :cond_21

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_21

    const/16 v20, 0x1

    .line 2032
    .local v20, "convertSoundToVibration":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_22

    const/16 v41, 0x1

    .line 2035
    .local v41, "useDefaultVibrate":Z
    :goto_e
    if-nez v41, :cond_f

    if-nez v20, :cond_f

    if-eqz v22, :cond_11

    :cond_f
    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-eqz v5, :cond_11

    .line 2038
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v32

    # setter for: Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v5, v0}, Lcom/android/server/NotificationManagerService;->access$1002(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2040
    if-nez v41, :cond_10

    if-eqz v20, :cond_25

    .line 2043
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v25

    .line 2047
    .restart local v25    # "identity":J
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v11

    check-cast v11, Landroid/os/SystemVibrator;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v12

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v13

    if-eqz v41, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDefaultVibrationPattern:[J
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$3700(Lcom/android/server/NotificationManagerService;)[J

    move-result-object v14

    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_24

    const/4 v15, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrationLevel:I
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$2400(Lcom/android/server/NotificationManagerService;)I

    move-result v16

    invoke-virtual/range {v11 .. v16}, Landroid/os/SystemVibrator;->vibrate(ILjava/lang/String;[JII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 2063
    :try_start_9
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2089
    .end local v17    # "audioManager":Landroid/media/AudioManager;
    .end local v20    # "convertSoundToVibration":Z
    .end local v22    # "hasCustomVibrate":Z
    .end local v23    # "hasValidSound":Z
    .end local v25    # "identity":J
    .end local v36    # "soundUri":Landroid/net/Uri;
    .end local v40    # "useDefaultSound":Z
    .end local v41    # "useDefaultVibrate":Z
    :cond_11
    :goto_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2090
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-result-object v5

    move-object/from16 v0, v30

    if-ne v5, v0, :cond_12

    .line 2091
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v5, v6}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2096
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_27

    if-eqz v19, :cond_27

    .line 2098
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2099
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)V

    .line 2106
    :cond_13
    :goto_12
    monitor-exit v42

    goto/16 :goto_2

    .end local v4    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v21    # "currentUser":I
    .end local v27    # "index":I
    .end local v30    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v32    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v35    # "smsRingtone":Z
    .end local v38    # "token":J
    :catchall_0
    move-exception v5

    monitor-exit v42
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v5

    .line 1867
    .end local v19    # "canInterrupt":Z
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1879
    .restart local v4    # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v19    # "canInterrupt":Z
    .restart local v27    # "index":I
    .restart local v30    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v32    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_15
    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v30

    .end local v30    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    check-cast v30, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1880
    .restart local v30    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1882
    if-eqz v30, :cond_5

    .line 1883
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->flags:I

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x40

    or-int/2addr v6, v7

    iput v6, v5, Landroid/app/Notification;->flags:I

    goto/16 :goto_4

    .line 1900
    .restart local v38    # "token":J
    :catchall_1
    move-exception v5

    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1911
    .restart local v21    # "currentUser":I
    .restart local v25    # "identity":J
    :catchall_2
    move-exception v5

    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1914
    .end local v25    # "identity":J
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-wide v25

    .line 1916
    .restart local v25    # "identity":J
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$3100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/StatusBarManagerService;->addNotification(Landroid/service/notification/StatusBarNotification;)Landroid/os/IBinder;

    move-result-object v5

    move-object/from16 v0, v32

    iput-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 1917
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_17

    if-eqz v19, :cond_17

    .line 1919
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$3200(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/LightsService$Light;->pulse()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1923
    :cond_17
    :try_start_c
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_5

    :catchall_3
    move-exception v5

    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1933
    .end local v25    # "identity":J
    :cond_18
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not posting notification with icon==0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    if-eqz v30, :cond_19

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v5, :cond_19

    .line 1935
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-wide v25

    .line 1937
    .restart local v25    # "identity":J
    :try_start_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$3100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v5

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1940
    :try_start_e
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1943
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v32

    # invokes: Lcom/android/server/NotificationManagerService;->notifyRemovedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    invoke-static {v5, v0}, Lcom/android/server/NotificationManagerService;->access$3500(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    .line 1947
    .end local v25    # "identity":J
    :cond_19
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1940
    .restart local v25    # "identity":J
    :catchall_4
    move-exception v5

    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1973
    .end local v25    # "identity":J
    .restart local v17    # "audioManager":Landroid/media/AudioManager;
    .restart local v35    # "smsRingtone":Z
    :cond_1a
    const/16 v40, 0x0

    goto/16 :goto_7

    .line 1986
    .restart local v23    # "hasValidSound":Z
    .restart local v33    # "resolver":Landroid/content/ContentResolver;
    .restart local v36    # "soundUri":Landroid/net/Uri;
    .restart local v40    # "useDefaultSound":Z
    :cond_1b
    const/16 v23, 0x0

    goto/16 :goto_8

    .line 1988
    .end local v33    # "resolver":Landroid/content/ContentResolver;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v5, :cond_c

    .line 1989
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v0, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v36, v0

    .line 1990
    if-eqz v36, :cond_1d

    const/16 v23, 0x1

    :goto_13
    goto/16 :goto_8

    :cond_1d
    const/16 v23, 0x0

    goto :goto_13

    .line 1994
    :cond_1e
    const/16 v29, 0x0

    goto/16 :goto_9

    .line 1999
    .restart local v29    # "looping":Z
    :cond_1f
    const/16 v18, 0x5

    .restart local v18    # "audioStreamType":I
    goto/16 :goto_a

    .line 2014
    .restart local v25    # "identity":J
    :catchall_5
    move-exception v5

    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 2021
    .end local v18    # "audioStreamType":I
    .end local v25    # "identity":J
    .end local v29    # "looping":Z
    :cond_20
    const/16 v22, 0x0

    goto/16 :goto_c

    .line 2025
    .restart local v22    # "hasCustomVibrate":Z
    :cond_21
    const/16 v20, 0x0

    goto/16 :goto_d

    .line 2032
    .restart local v20    # "convertSoundToVibration":Z
    :cond_22
    const/16 v41, 0x0

    goto/16 :goto_e

    .line 2047
    .restart local v25    # "identity":J
    .restart local v41    # "useDefaultVibrate":Z
    :cond_23
    :try_start_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mFallbackVibrationPattern:[J
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$3800(Lcom/android/server/NotificationManagerService;)[J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move-result-object v14

    goto/16 :goto_f

    :cond_24
    const/4 v15, -0x1

    goto/16 :goto_10

    .line 2063
    :catchall_6
    move-exception v5

    :try_start_10
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 2065
    .end local v25    # "identity":J
    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->vibrate:[J

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_11

    .line 2070
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v11

    check-cast v11, Landroid/os/SystemVibrator;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v12

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v14, v5, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_26

    const/4 v15, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrationLevel:I
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$2400(Lcom/android/server/NotificationManagerService;)I

    move-result v16

    invoke-virtual/range {v11 .. v16}, Landroid/os/SystemVibrator;->vibrate(ILjava/lang/String;[JII)V

    goto/16 :goto_11

    :cond_26
    const/4 v15, -0x1

    goto :goto_14

    .line 2101
    .end local v17    # "audioManager":Landroid/media/AudioManager;
    .end local v20    # "convertSoundToVibration":Z
    .end local v22    # "hasCustomVibrate":Z
    .end local v23    # "hasValidSound":Z
    .end local v36    # "soundUri":Landroid/net/Uri;
    .end local v40    # "useDefaultSound":Z
    .end local v41    # "useDefaultVibrate":Z
    :cond_27
    if-eqz v30, :cond_13

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_13

    .line 2103
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_12

    .line 2012
    .restart local v17    # "audioManager":Landroid/media/AudioManager;
    .restart local v18    # "audioStreamType":I
    .restart local v23    # "hasValidSound":Z
    .restart local v25    # "identity":J
    .restart local v29    # "looping":Z
    .restart local v36    # "soundUri":Landroid/net/Uri;
    .restart local v40    # "useDefaultSound":Z
    :catch_1
    move-exception v5

    .line 2014
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_b
.end method
