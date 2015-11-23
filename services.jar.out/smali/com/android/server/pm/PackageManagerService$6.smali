.class Lcom/android/server/pm/PackageManagerService$6;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .locals 0

    .prologue
    .line 7126
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$6;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$6;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 7128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7130
    new-instance v26, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 7131
    .local v26, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$6;->val$currentStatus:I

    move-object/from16 v0, v26

    iput v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 7132
    const/4 v2, -0x1

    move-object/from16 v0, v26

    iput v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 7133
    const/4 v2, 0x0

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 7134
    new-instance v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;-><init>()V

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 7135
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 7136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    .line 7137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 7138
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$6;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v5, 0x1

    move-object/from16 v0, v26

    # invokes: Lcom/android/server/pm/PackageManagerService;->installPackageLI(Lcom/android/server/pm/PackageManagerService$InstallArgs;ZLcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    invoke-static {v2, v4, v5, v0}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;ZLcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 7139
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService;->isEnableInstallPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 7144
    const-string v2, "[MDM]PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "block install package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7146
    const/4 v2, -0x2

    move-object/from16 v0, v26

    iput v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 7147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->getDataPathForPackage(Ljava/lang/String;I)Ljava/io/File;
    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->access$2400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v18

    .line 7150
    .local v18, "dataDirExists":Z
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 7155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v18, :cond_6

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v10, 0x1

    # invokes: Lcom/android/server/pm/PackageManagerService;->deletePackageLI(Ljava/lang/String;Landroid/os/UserHandle;Z[I[ZILcom/android/server/pm/PackageManagerService$PackageRemovedInfo;Z)Z
    invoke-static/range {v2 .. v10}, Lcom/android/server/pm/PackageManagerService;->access$2500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/os/UserHandle;Z[I[ZILcom/android/server/pm/PackageManagerService$PackageRemovedInfo;Z)Z

    .line 7165
    .end local v18    # "dataDirExists":Z
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    .line 7171
    :cond_1
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v2, :cond_8

    const/16 v28, 0x1

    .line 7172
    .local v28, "update":Z
    :goto_2
    if-nez v28, :cond_9

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v2, :cond_9

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v2, :cond_9

    const/16 v19, 0x1

    .line 7180
    .local v19, "doRestore":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v2, v2, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 7181
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v0, v2, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    move/from16 v27, v0

    add-int/lit8 v3, v27, 0x1

    iput v3, v2, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 7183
    .local v27, "token":I
    new-instance v17, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$6;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 7184
    .local v17, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7187
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    if-eqz v19, :cond_3

    .line 7192
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v16

    .line 7194
    .local v16, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v16, :cond_a

    .line 7198
    :try_start_1
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v2, v1}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7214
    .end local v16    # "bm":Landroid/app/backup/IBackupManager;
    :cond_3
    :goto_4
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v3, -0x4

    if-ne v2, v3, :cond_4

    .line 7219
    const-string v2, "devicestoragemonitor"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    check-cast v20, Lcom/android/server/DeviceStorageMonitorService;

    .line 7222
    .local v20, "dsm":Lcom/android/server/DeviceStorageMonitorService;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7223
    .local v11, "apkFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 7225
    .local v12, "apkFileSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-nez v2, :cond_b

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 7226
    const-string v2, "PackageManager"

    const-string v3, "apkFile error!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7252
    .end local v11    # "apkFile":Ljava/io/File;
    .end local v12    # "apkFileSize":J
    .end local v20    # "dsm":Lcom/android/server/DeviceStorageMonitorService;
    :cond_4
    :goto_5
    if-nez v19, :cond_5

    .line 7256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v3, 0x9

    const/4 v4, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v25

    .line 7257
    .local v25, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7259
    .end local v25    # "msg":Landroid/os/Message;
    :cond_5
    return-void

    .line 7139
    .end local v17    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v19    # "doRestore":Z
    .end local v27    # "token":I
    .end local v28    # "update":Z
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 7155
    .restart local v18    # "dataDirExists":Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 7161
    .end local v18    # "dataDirExists":Z
    :cond_7
    const-string v2, "[MDM]PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable install package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7171
    :cond_8
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 7172
    .restart local v28    # "update":Z
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 7201
    .restart local v16    # "bm":Landroid/app/backup/IBackupManager;
    .restart local v17    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .restart local v19    # "doRestore":Z
    .restart local v27    # "token":I
    :catch_0
    move-exception v21

    .line 7202
    .local v21, "e":Ljava/lang/Exception;
    const-string v2, "PackageManager"

    const-string v3, "Exception trying to enqueue restore"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7203
    const/16 v19, 0x0

    .line 7204
    goto/16 :goto_4

    .line 7206
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_a
    const-string v2, "PackageManager"

    const-string v3, "Backup Manager not found!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7207
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 7228
    .end local v16    # "bm":Landroid/app/backup/IBackupManager;
    .restart local v11    # "apkFile":Ljava/io/File;
    .restart local v12    # "apkFileSize":J
    .restart local v20    # "dsm":Lcom/android/server/DeviceStorageMonitorService;
    :cond_b
    new-instance v22, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 7229
    .local v22, "internalStats":Landroid/os/StatFs;
    invoke-virtual/range {v22 .. v22}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual/range {v22 .. v22}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long v14, v2, v4

    .line 7232
    .local v14, "availInternalSize":J
    if-nez v20, :cond_c

    .line 7233
    :try_start_3
    const-string v2, "PackageManager"

    const-string v3, "Device Storage Monitor Service is NULL."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    .line 7243
    :catch_1
    move-exception v21

    .line 7244
    .restart local v21    # "e":Ljava/lang/Exception;
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insufficient Storage() error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 7235
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_c
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/DeviceStorageMonitorService;->getMemoryLowThreshold()J

    move-result-wide v23

    .line 7237
    .local v23, "lowThreshold":J
    cmp-long v2, v14, v23

    if-lez v2, :cond_d

    .line 7238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    add-long v3, v14, v12

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->freeStorage(JLandroid/content/IntentSender;)V

    goto/16 :goto_5

    .line 7240
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x0

    move-wide/from16 v0, v23

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/pm/PackageManagerService;->freeStorage(JLandroid/content/IntentSender;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_5

    .line 7199
    .end local v11    # "apkFile":Ljava/io/File;
    .end local v12    # "apkFileSize":J
    .end local v14    # "availInternalSize":J
    .end local v20    # "dsm":Lcom/android/server/DeviceStorageMonitorService;
    .end local v22    # "internalStats":Landroid/os/StatFs;
    .end local v23    # "lowThreshold":J
    .restart local v16    # "bm":Landroid/app/backup/IBackupManager;
    :catch_2
    move-exception v2

    goto/16 :goto_4
.end method
