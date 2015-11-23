.class public final Lcom/android/internal/pantech/PantechDebug;
.super Ljava/lang/Object;
.source "PantechDebug.java"


# static fields
.field public static final FW_DBG_ADB_LOGSWITCH:Z = true

.field public static final FW_DBG_DISABLE_QUALCOMM_ANR_TRACE:Z = true

.field public static final FW_DBG_DROPBOX_FOLDER_EXIST:Z = true

.field public static final FW_DBG_MUTED_STREAM:Z = true

.field public static final FW_DBG_TIME_SET_N_TICK:Z = true

.field public static final FW_DEBUG_POWER_PACKAGE:Z = true

.field public static final FW_DEBUG_SUPPORT_MDM_FUNCTION:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppNameByPID(I)Ljava/lang/String;
    .locals 5
    .param p0, "pid"    # I

    .prologue
    .line 84
    const/4 v3, 0x0

    .line 86
    .local v3, "rtn":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 87
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p0, :cond_0

    .line 88
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v3
.end method
