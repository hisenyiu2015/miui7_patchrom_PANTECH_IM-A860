.class public final Lcom/pantech/server/multiwindow/MultiWindowManagerService;
.super Lcom/pantech/multiwindow/IMultiWindowManager$Stub;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;,
        Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final SUPPORT_APP_LIST_FILE:Ljava/lang/String; = "multiList.xml"

.field static final SUPPORT_LIST_DIR:Ljava/lang/String; = "/data/system/shared_prefs/"

.field static final SUPPORT_LIST_FILE:Ljava/lang/String; = "multiWindowSupportAppList.xml"

.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerService"

.field static final mDefaultAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final mVegaWindowAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mContext:Landroid/content/Context;

.field mDualMode:Z

.field private mDualModeZonesInitialized:Z

.field mEnabled:Z

.field mFocusedId:I

.field private mFocusedZone:I

.field private final mFrame:Landroid/graphics/Rect;

.field private final mHandler:Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;

.field private final mLock:Ljava/lang/Object;

.field private mRotation:I

.field private final mSeparatorBarHeight:I

.field private mSeparatorBarShown:Z

.field private final mSupportAppInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mThread:Landroid/os/HandlerThread;

.field final mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

.field final mWindowZones:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/pantech/server/multiwindow/MultiWindowZone;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/server/multiwindow/MultiWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;

    invoke-direct {v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;-><init>()V

    sput-object v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mVegaWindowAppList:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$2;

    invoke-direct {v0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$2;-><init>()V

    sput-object v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDefaultAppList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Lcom/pantech/multiwindow/IMultiWindowManager$Stub;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppInfoMap:Ljava/util/HashMap;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFrame:Landroid/graphics/Rect;

    .line 108
    iput-boolean v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mEnabled:Z

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    .line 110
    iput-boolean v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualModeZonesInitialized:Z

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFocusedId:I

    .line 113
    iput v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFocusedZone:I

    .line 114
    iput-boolean v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSeparatorBarShown:Z

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Lcom/pantech/server/multiwindow/MultiWindowZone;

    invoke-direct {v0, p0, v1}, Lcom/pantech/server/multiwindow/MultiWindowZone;-><init>(Lcom/pantech/server/multiwindow/MultiWindowManagerService;I)V

    iput-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 120
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    .line 125
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MultiWindowManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mThread:Landroid/os/HandlerThread;

    .line 126
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 127
    new-instance v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;

    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;-><init>(Lcom/pantech/server/multiwindow/MultiWindowManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mHandler:Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;

    .line 129
    iput-object p1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mContext:Landroid/content/Context;

    .line 130
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 132
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSeparatorBarHeight:I

    .line 134
    return-void
.end method

.method static synthetic access$100(Lcom/pantech/server/multiwindow/MultiWindowManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    .prologue
    .line 50
    iget v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFocusedZone:I

    return v0
.end method

.method static synthetic access$200(Lcom/pantech/server/multiwindow/MultiWindowManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/multiwindow/MultiWindowManagerService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private findHomeWindowIndexLocked()I
    .locals 3

    .prologue
    .line 1089
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1090
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/server/multiwindow/MultiWindow;

    .line 1091
    .local v1, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    iget-boolean v2, v1, Lcom/pantech/server/multiwindow/MultiWindow;->isHome:Z

    if-eqz v2, :cond_0

    .line 1095
    .end local v0    # "i":I
    .end local v1    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    :goto_1
    return v0

    .line 1089
    .restart local v0    # "i":I
    .restart local v1    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1095
    .end local v1    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findWindowLocked(I)Lcom/pantech/server/multiwindow/MultiWindow;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 1062
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    move-object v1, v2

    .line 1071
    :goto_0
    return-object v1

    .line 1066
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/server/multiwindow/MultiWindow;

    .line 1067
    .local v1, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    iget v3, v1, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    if-ne v3, p1, :cond_1

    goto :goto_0

    .end local v1    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    :cond_2
    move-object v1, v2

    .line 1071
    goto :goto_0
.end method

.method private findWindowTokenLocked(Landroid/os/IBinder;)Lcom/pantech/server/multiwindow/MultiWindowToken;
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 1075
    if-nez p1, :cond_0

    move-object v2, v3

    .line 1085
    :goto_0
    return-object v2

    .line 1079
    :cond_0
    iget-object v4, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/server/multiwindow/MultiWindow;

    .line 1080
    .local v1, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    invoke-virtual {v1, p1}, Lcom/pantech/server/multiwindow/MultiWindow;->findWindowTokenLocked(Landroid/os/IBinder;)Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v2

    .line 1081
    .local v2, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-eqz v2, :cond_1

    goto :goto_0

    .end local v1    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    .end local v2    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_2
    move-object v2, v3

    .line 1085
    goto :goto_0
.end method

.method private getWindowZoneLocked(Landroid/content/Intent;I)Lcom/pantech/server/multiwindow/MultiWindowZone;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "zone"    # I

    .prologue
    .line 1012
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1013
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 1014
    const/4 v3, 0x0

    .line 1058
    :cond_0
    :goto_0
    return-object v3

    .line 1017
    :cond_1
    const/4 v3, 0x0

    .line 1018
    .local v3, "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    const/4 v2, 0x0

    .line 1020
    .local v2, "obj":Ljava/lang/Object;
    :try_start_0
    const-string v4, "multi_window"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1024
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_1
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 1025
    iget-boolean v4, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    if-eqz v4, :cond_2

    .line 1026
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1028
    :pswitch_0
    iget-object v3, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 1029
    goto :goto_0

    .line 1021
    .restart local v2    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1022
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "MultiWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1032
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "obj":Ljava/lang/Object;
    :pswitch_1
    iget-object v4, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    check-cast v3, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 1033
    .restart local v3    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    goto :goto_0

    .line 1036
    :pswitch_2
    iget-object v4, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    check-cast v3, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .restart local v3    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    goto :goto_0

    .line 1040
    :cond_2
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 1042
    :pswitch_3
    iget-object v3, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

    goto :goto_0

    .line 1047
    :cond_3
    iget-boolean v4, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    if-nez v4, :cond_0

    .line 1048
    instance-of v4, v2, Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    .line 1049
    iget-object v4, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    check-cast v3, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 1050
    .restart local v3    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    if-nez v3, :cond_4

    .line 1051
    new-instance v3, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .end local v3    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    invoke-direct {v3, p0, p2}, Lcom/pantech/server/multiwindow/MultiWindowZone;-><init>(Lcom/pantech/server/multiwindow/MultiWindowManagerService;I)V

    .line 1052
    .restart local v3    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    invoke-virtual {p0, v3}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->addWindowZoneLocked(Lcom/pantech/server/multiwindow/MultiWindowZone;)V

    .line 1054
    :cond_4
    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Lcom/pantech/server/multiwindow/MultiWindowZone;->setFrameLocked(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1026
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1040
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method private getWindowZoneWithTokenLocked(Lcom/pantech/server/multiwindow/MultiWindowToken;Landroid/os/IBinder;)Lcom/pantech/server/multiwindow/MultiWindowZone;
    .locals 7
    .param p1, "windowToken"    # Lcom/pantech/server/multiwindow/MultiWindowToken;
    .param p2, "callerToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1131
    iget-boolean v6, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    if-nez v6, :cond_1

    .line 1165
    :cond_0
    :goto_0
    return-object v4

    .line 1135
    :cond_1
    invoke-direct {p0, p2}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->findWindowTokenLocked(Landroid/os/IBinder;)Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v1

    .line 1136
    .local v1, "callerWindowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-eqz v1, :cond_0

    .line 1140
    invoke-virtual {p1}, Lcom/pantech/server/multiwindow/MultiWindowToken;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1141
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/pantech/server/multiwindow/MultiWindowToken;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, "callerPackageName":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v5

    .line 1143
    .local v2, "isSamePackage":Z
    :goto_1
    if-nez v2, :cond_2

    .line 1144
    const-string v6, "android"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1148
    :cond_2
    if-eqz v2, :cond_4

    .line 1149
    iget-object v4, v1, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    .local v4, "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    goto :goto_0

    .line 1142
    .end local v2    # "isSamePackage":Z
    .end local v4    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 1151
    .restart local v2    # "isSamePackage":Z
    :cond_4
    iget-object v6, v1, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v6, v6, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    packed-switch v6, :pswitch_data_0

    .line 1161
    iget-object v4, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

    .restart local v4    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    goto :goto_0

    .line 1153
    .end local v4    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :pswitch_0
    iget-object v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 1154
    .restart local v4    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    goto :goto_0

    .line 1157
    .end local v4    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :pswitch_1
    iget-object v6, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 1158
    .restart local v4    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    goto :goto_0

    .line 1151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loadSupportAppList(Ljava/util/ArrayList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1215
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "/data/system/shared_prefs/"

    const-string v11, "multiWindowSupportAppList.xml"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v9}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1218
    .local v1, "file":Lcom/android/internal/os/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1220
    .local v2, "inStream":Ljava/io/FileInputStream;
    if-eqz v2, :cond_2

    .line 1223
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1224
    .local v3, "inXml":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v3, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1227
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 1228
    .local v6, "type":I
    const/4 v9, 0x2

    if-ne v6, v9, :cond_1

    .line 1229
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1230
    .local v5, "tag":Ljava/lang/String;
    const-string v9, "item"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1231
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v3, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1233
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1234
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1242
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_1
    if-ne v6, v8, :cond_0

    .line 1257
    .end local v3    # "inXml":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    move v7, v8

    .line 1268
    .end local v2    # "inStream":Ljava/io/FileInputStream;
    :cond_3
    :goto_1
    return v7

    .line 1244
    .restart local v2    # "inStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 1245
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_3
    const-string v9, "MultiWindowManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error. Null pointer exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1263
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v2    # "inStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 1264
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v8, "MultiWindowManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File not Found : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1246
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 1247
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v9, "MultiWindowManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error. Number format exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1248
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    .line 1249
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "MultiWindowManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in XML parsing : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1250
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v0

    .line 1251
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "MultiWindowManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in reading the xml file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1252
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 1253
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "MultiWindowManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error. Out of bound : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1258
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_6
    move-exception v0

    .line 1259
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "MultiWindowManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close input stream : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method

.method private loadSupportAppList(Ljava/util/HashMap;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1372
    .local p1, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;>;"
    new-instance v4, Lcom/android/internal/os/AtomicFile;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/shared_prefs/"

    const-string v13, "multiList.xml"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v11}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1373
    .local v4, "file":Lcom/android/internal/os/AtomicFile;
    const/4 v8, 0x1

    .line 1375
    .local v8, "result":Z
    :try_start_0
    invoke-virtual {v4}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    .line 1377
    .local v6, "inStream":Ljava/io/FileInputStream;
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1379
    if-eqz v6, :cond_3

    .line 1382
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 1383
    .local v7, "inXml":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v7, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1386
    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 1387
    .local v10, "type":I
    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 1388
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1389
    .local v9, "tag":Ljava/lang/String;
    const-string v11, "item"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1390
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 1392
    .local v2, "attrsCount":I
    if-lez v2, :cond_6

    .line 1393
    new-instance v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;

    const/4 v11, 0x0

    invoke-direct {v0, p0, v11}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;-><init>(Lcom/pantech/server/multiwindow/MultiWindowManagerService;Lcom/pantech/server/multiwindow/MultiWindowManagerService$1;)V

    .line 1394
    .local v0, "app":Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_4

    .line 1395
    invoke-interface {v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1396
    .local v1, "attrName":Ljava/lang/String;
    const-string v11, "packageName"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1397
    invoke-interface {v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;->packageName:Ljava/lang/String;

    .line 1394
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1399
    :cond_2
    const-string v11, "excludeActivity"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1400
    iget-object v11, v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;->excludeActivitys:Ljava/util/ArrayList;

    invoke-interface {v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 1412
    .end local v0    # "app":Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v2    # "attrsCount":I
    .end local v5    # "i":I
    .end local v7    # "inXml":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "type":I
    :catch_0
    move-exception v3

    .line 1413
    .local v3, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v11, "MultiWindowManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error. Null pointer exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1425
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :goto_2
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    move v11, v8

    .line 1436
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    :goto_3
    return v11

    .line 1404
    .restart local v0    # "app":Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;
    .restart local v2    # "attrsCount":I
    .restart local v5    # "i":I
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    .restart local v7    # "inXml":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v10    # "type":I
    :cond_4
    :try_start_4
    iget-object v11, v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1411
    .end local v0    # "app":Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;
    .end local v2    # "attrsCount":I
    .end local v5    # "i":I
    .end local v9    # "tag":Ljava/lang/String;
    :cond_5
    :goto_4
    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    goto :goto_2

    .line 1407
    .restart local v2    # "attrsCount":I
    .restart local v9    # "tag":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    goto :goto_4

    .line 1414
    .end local v2    # "attrsCount":I
    .end local v7    # "inXml":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "type":I
    :catch_1
    move-exception v3

    .line 1415
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v11, "MultiWindowManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error. Number format exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 1431
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .line 1432
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v11, "MultiWindowManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "File not Found : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const/4 v11, 0x0

    goto :goto_3

    .line 1416
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v3

    .line 1417
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v11, "MultiWindowManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error in XML parsing : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1418
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v3

    .line 1419
    .local v3, "e":Ljava/io/IOException;
    const-string v11, "MultiWindowManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error in reading the xml file : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1420
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 1421
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "MultiWindowManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error. Out of bound : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1426
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_6
    move-exception v3

    .line 1427
    .local v3, "e":Ljava/io/IOException;
    const-string v11, "MultiWindowManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to close input stream : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1428
    const/4 v11, 0x0

    goto/16 :goto_3
.end method

.method private makeSupportAppList(Ljava/util/ArrayList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1272
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "/data/system/shared_prefs/"

    const-string v11, "multiWindowSupportAppList.xml"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v9}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1275
    .local v1, "file":Lcom/android/internal/os/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    .line 1277
    .local v4, "outStream":Ljava/io/FileOutputStream;
    if-eqz v4, :cond_2

    .line 1278
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1280
    .local v3, "listSize":I
    if-nez v3, :cond_0

    .line 1281
    const-string v8, "MultiWindowManagerService"

    const-string v9, "putListIndexToFile : hashMap Size is 0 !!!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1317
    .end local v3    # "listSize":I
    .end local v4    # "outStream":Ljava/io/FileOutputStream;
    :goto_0
    return v7

    .line 1286
    .restart local v3    # "listSize":I
    .restart local v4    # "outStream":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1287
    .local v5, "outXml":Lorg/xmlpull/v1/XmlSerializer;
    const-string v9, "utf-8"

    invoke-interface {v5, v4, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1288
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1289
    const/4 v9, 0x0

    const-string v10, "map"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1291
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1292
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1294
    .local v6, "str":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "item"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1295
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v5, v9, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1296
    const/4 v9, 0x0

    const-string v10, "item"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1291
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1301
    .end local v6    # "str":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    const-string v10, "map"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1302
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1304
    invoke-virtual {v1, v4}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v7, v8

    .line 1305
    goto :goto_0

    .line 1306
    .end local v2    # "i":I
    .end local v5    # "outXml":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 1307
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v8, "MultiWindowManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in writing the xml file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "listSize":I
    :cond_2
    invoke-virtual {v1, v4}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1313
    .end local v4    # "outStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 1314
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "MultiWindowManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed in file writing : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeSupportAppList(Ljava/util/Collection;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "apps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1321
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/shared_prefs/"

    const-string v13, "multiList.xml"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v11}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1324
    .local v3, "file":Lcom/android/internal/os/AtomicFile;
    :try_start_0
    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7

    .line 1326
    .local v7, "outStream":Ljava/io/FileOutputStream;
    if-eqz v7, :cond_2

    .line 1327
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    .line 1329
    .local v6, "listSize":I
    if-nez v6, :cond_0

    .line 1330
    const-string v10, "MultiWindowManagerService"

    const-string v11, "putListIndexToFile : hashMap Size is 0 !!!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1368
    .end local v6    # "listSize":I
    .end local v7    # "outStream":Ljava/io/FileOutputStream;
    :goto_0
    return v9

    .line 1335
    .restart local v6    # "listSize":I
    .restart local v7    # "outStream":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1336
    .local v8, "outXml":Lorg/xmlpull/v1/XmlSerializer;
    const-string v11, "utf-8"

    invoke-interface {v8, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1337
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1338
    const/4 v11, 0x0

    const-string v12, "map"

    invoke-interface {v8, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1339
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1340
    .local v5, "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;>;"
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1341
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;

    .line 1342
    .local v0, "app":Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;
    if-eqz v0, :cond_1

    .line 1343
    const/4 v11, 0x0

    const-string v12, "item"

    invoke-interface {v8, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1344
    const/4 v11, 0x0

    const-string v12, "packageName"

    iget-object v13, v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1345
    iget-object v11, v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;->excludeActivitys:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1346
    .local v2, "exclude":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "excludeActivity"

    invoke-interface {v8, v11, v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1357
    .end local v0    # "app":Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;
    .end local v2    # "exclude":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;>;"
    .end local v8    # "outXml":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 1358
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v10, "MultiWindowManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in writing the xml file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "listSize":I
    :cond_2
    invoke-virtual {v3, v7}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1364
    .end local v7    # "outStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 1365
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "MultiWindowManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed in file writing : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1348
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "app":Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;>;"
    .restart local v6    # "listSize":I
    .restart local v7    # "outStream":Ljava/io/FileOutputStream;
    .restart local v8    # "outXml":Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    const/4 v11, 0x0

    :try_start_3
    const-string v12, "item"

    invoke-interface {v8, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 1352
    .end local v0    # "app":Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v11, 0x0

    const-string v12, "map"

    invoke-interface {v8, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1353
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1355
    invoke-virtual {v3, v7}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move v9, v10

    .line 1356
    goto/16 :goto_0
.end method

.method private needsToShowSeparatorBarLocked()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1099
    iget-boolean v6, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    if-nez v6, :cond_0

    move v4, v5

    .line 1126
    :goto_0
    return v4

    .line 1103
    :cond_0
    iget v6, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFocusedId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    move v4, v5

    .line 1104
    goto :goto_0

    .line 1107
    :cond_1
    const/4 v1, 0x0

    .line 1108
    .local v1, "otherZone":I
    iget-object v6, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 1109
    iget-object v6, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/server/multiwindow/MultiWindow;

    .line 1110
    .local v2, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    invoke-virtual {v2}, Lcom/pantech/server/multiwindow/MultiWindow;->currentWindowTokenLocked()Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v3

    .line 1111
    .local v3, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-nez v3, :cond_3

    .line 1108
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1115
    :cond_3
    iget-object v6, v3, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v6, v6, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-nez v6, :cond_5

    .end local v2    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    .end local v3    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_4
    move v4, v5

    .line 1126
    goto :goto_0

    .line 1119
    .restart local v2    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    .restart local v3    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_5
    if-nez v1, :cond_7

    .line 1120
    iget-object v6, v3, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v6, v6, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-eq v6, v4, :cond_6

    move v1, v4

    :goto_3
    goto :goto_2

    :cond_6
    const/4 v1, 0x2

    goto :goto_3

    .line 1122
    :cond_7
    iget-object v6, v3, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v6, v6, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-ne v6, v1, :cond_2

    goto :goto_0
.end method

.method private rearrangeWindowsLocked()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 1169
    iget-boolean v7, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    if-nez v7, :cond_1

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    const/4 v0, 0x0

    .line 1175
    .local v0, "exists":Z
    const/4 v6, 0x0

    .line 1176
    .local v6, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    iget-object v7, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_6

    .line 1177
    iget-object v7, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/server/multiwindow/MultiWindow;

    .line 1178
    .local v2, "nextWindow":Lcom/pantech/server/multiwindow/MultiWindow;
    invoke-virtual {v2}, Lcom/pantech/server/multiwindow/MultiWindow;->currentWindowTokenLocked()Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v3

    .line 1179
    .local v3, "nextWindowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-nez v3, :cond_2

    .line 1176
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1183
    :cond_2
    if-eqz v6, :cond_5

    .line 1184
    iget-object v7, v3, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v7, v7, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    iget-object v8, v6, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v8, v8, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-ne v7, v8, :cond_3

    .line 1185
    const/4 v0, 0x1

    .line 1186
    goto :goto_2

    .line 1189
    :cond_3
    iget-object v7, v3, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v7, v7, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-nez v7, :cond_0

    .line 1191
    if-nez v0, :cond_6

    iget-boolean v7, v3, Lcom/pantech/server/multiwindow/MultiWindowToken;->multiple:Z

    if-eqz v7, :cond_6

    .line 1192
    iget-object v7, v6, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v7, v7, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-eq v7, v5, :cond_4

    .line 1194
    .local v5, "otherZone":I
    :goto_3
    iget-object v7, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 1195
    .local v4, "otherWindowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    invoke-virtual {v2, v4}, Lcom/pantech/server/multiwindow/MultiWindow;->setWindowZoneLocked(Lcom/pantech/server/multiwindow/MultiWindowZone;)V

    .line 1197
    invoke-virtual {p0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->updateSeparatorBarVisibleChangedLocked()V

    goto :goto_0

    .line 1192
    .end local v4    # "otherWindowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    .end local v5    # "otherZone":I
    :cond_4
    const/4 v5, 0x2

    goto :goto_3

    .line 1203
    :cond_5
    iget-object v7, v3, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v7, v7, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-nez v7, :cond_7

    .line 1209
    .end local v2    # "nextWindow":Lcom/pantech/server/multiwindow/MultiWindow;
    .end local v3    # "nextWindowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_6
    if-eqz v6, :cond_0

    .line 1210
    iget-object v7, v6, Lcom/pantech/server/multiwindow/MultiWindowToken;->window:Lcom/pantech/server/multiwindow/MultiWindow;

    iget-object v8, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

    invoke-virtual {v7, v8}, Lcom/pantech/server/multiwindow/MultiWindow;->setWindowZoneLocked(Lcom/pantech/server/multiwindow/MultiWindowZone;)V

    goto :goto_0

    .line 1207
    .restart local v2    # "nextWindow":Lcom/pantech/server/multiwindow/MultiWindow;
    .restart local v3    # "nextWindowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_7
    move-object v6, v3

    goto :goto_2
.end method


# virtual methods
.method public add(Landroid/os/IBinder;ILandroid/content/Intent;ZZLandroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "fullscreen"    # Z
    .param p5, "isHome"    # Z
    .param p6, "callerToken"    # Landroid/os/IBinder;

    .prologue
    .line 652
    iget-object v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 653
    :try_start_0
    iget-object v3, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 654
    .local v3, "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    new-instance v2, Lcom/pantech/server/multiwindow/MultiWindowToken;

    invoke-direct {v2, p0, p1, p3, p4}, Lcom/pantech/server/multiwindow/MultiWindowToken;-><init>(Lcom/pantech/server/multiwindow/MultiWindowManagerService;Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 655
    .local v2, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    invoke-direct {p0, p2}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->findWindowLocked(I)Lcom/pantech/server/multiwindow/MultiWindow;

    move-result-object v1

    .line 656
    .local v1, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    if-nez v1, :cond_3

    .line 657
    new-instance v1, Lcom/pantech/server/multiwindow/MultiWindow;

    .end local v1    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    invoke-direct {v1, p0, p2}, Lcom/pantech/server/multiwindow/MultiWindow;-><init>(Lcom/pantech/server/multiwindow/MultiWindowManagerService;I)V

    .line 658
    .restart local v1    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    iget-object v4, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget-boolean v4, v2, Lcom/pantech/server/multiwindow/MultiWindowToken;->multiple:Z

    if-eqz v4, :cond_1

    .line 661
    invoke-direct {p0, p3, p2}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->getWindowZoneLocked(Landroid/content/Intent;I)Lcom/pantech/server/multiwindow/MultiWindowZone;

    move-result-object v3

    .line 662
    if-nez v3, :cond_0

    .line 663
    invoke-direct {p0, v2, p6}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->getWindowZoneWithTokenLocked(Lcom/pantech/server/multiwindow/MultiWindowToken;Landroid/os/IBinder;)Lcom/pantech/server/multiwindow/MultiWindowZone;

    move-result-object v3

    .line 665
    :cond_0
    if-nez v3, :cond_1

    .line 666
    iget-object v3, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 675
    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Lcom/pantech/server/multiwindow/MultiWindow;->addWindowTokenLocked(Lcom/pantech/server/multiwindow/MultiWindowToken;)V

    .line 676
    invoke-virtual {v2, v3}, Lcom/pantech/server/multiwindow/MultiWindowToken;->setWindowZoneLocked(Lcom/pantech/server/multiwindow/MultiWindowZone;)V

    .line 678
    if-eqz p5, :cond_2

    .line 679
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/pantech/server/multiwindow/MultiWindow;->isHome:Z

    .line 682
    :cond_2
    invoke-direct {p0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->rearrangeWindowsLocked()V

    .line 683
    monitor-exit v5

    .line 684
    return-void

    .line 669
    :cond_3
    iget-boolean v4, v2, Lcom/pantech/server/multiwindow/MultiWindowToken;->multiple:Z

    if-eqz v4, :cond_1

    .line 670
    invoke-direct {p0, p6}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->findWindowTokenLocked(Landroid/os/IBinder;)Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v0

    .line 671
    .local v0, "callerWindowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-eqz v0, :cond_1

    .line 672
    iget-object v3, v0, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    goto :goto_0

    .line 683
    .end local v0    # "callerWindowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    .end local v1    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    .end local v2    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    .end local v3    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method addWindowZoneLocked(Lcom/pantech/server/multiwindow/MultiWindowZone;)V
    .locals 2
    .param p1, "windowZone"    # Lcom/pantech/server/multiwindow/MultiWindowZone;

    .prologue
    .line 959
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    iget v1, p1, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 960
    return-void
.end method

.method public adjustZoneFrames(IIIII)V
    .locals 13
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "configWidth"    # I
    .param p4, "configHeight"    # I
    .param p5, "rotation"    # I

    .prologue
    .line 288
    iget-object v11, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 289
    sub-int v5, p1, p3

    .line 290
    .local v5, "left":I
    sub-int v7, p2, p4

    .line 291
    .local v7, "top":I
    move v6, p1

    .line 292
    .local v6, "right":I
    move v1, p2

    .line 293
    .local v1, "bottom":I
    :try_start_0
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-ne v10, v5, :cond_0

    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ne v10, v7, :cond_0

    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    if-ne v10, v6, :cond_0

    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    if-ne v10, v1, :cond_0

    .line 295
    monitor-exit v11

    .line 358
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFrame:Landroid/graphics/Rect;

    iput v5, v10, Landroid/graphics/Rect;->left:I

    .line 299
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFrame:Landroid/graphics/Rect;

    iput v7, v10, Landroid/graphics/Rect;->top:I

    .line 300
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFrame:Landroid/graphics/Rect;

    iput v6, v10, Landroid/graphics/Rect;->right:I

    .line 301
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFrame:Landroid/graphics/Rect;

    iput v1, v10, Landroid/graphics/Rect;->bottom:I

    .line 302
    iget v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mRotation:I

    move/from16 v0, p5

    if-ne v10, v0, :cond_1

    .line 303
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualModeZonesInitialized:Z

    .line 305
    :cond_1
    move/from16 v0, p5

    iput v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mRotation:I

    .line 307
    iget-boolean v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    if-eqz v10, :cond_4

    .line 308
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 309
    .local v8, "windowZone1":Lcom/pantech/server/multiwindow/MultiWindowZone;
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 310
    .local v9, "windowZone2":Lcom/pantech/server/multiwindow/MultiWindowZone;
    if-nez v8, :cond_2

    .line 311
    new-instance v8, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .end local v8    # "windowZone1":Lcom/pantech/server/multiwindow/MultiWindowZone;
    const/4 v10, 0x1

    invoke-direct {v8, p0, v10}, Lcom/pantech/server/multiwindow/MultiWindowZone;-><init>(Lcom/pantech/server/multiwindow/MultiWindowManagerService;I)V

    .line 312
    .restart local v8    # "windowZone1":Lcom/pantech/server/multiwindow/MultiWindowZone;
    invoke-virtual {p0, v8}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->addWindowZoneLocked(Lcom/pantech/server/multiwindow/MultiWindowZone;)V

    .line 314
    :cond_2
    if-nez v9, :cond_3

    .line 315
    new-instance v9, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .end local v9    # "windowZone2":Lcom/pantech/server/multiwindow/MultiWindowZone;
    const/4 v10, 0x2

    invoke-direct {v9, p0, v10}, Lcom/pantech/server/multiwindow/MultiWindowZone;-><init>(Lcom/pantech/server/multiwindow/MultiWindowManagerService;I)V

    .line 316
    .restart local v9    # "windowZone2":Lcom/pantech/server/multiwindow/MultiWindowZone;
    invoke-virtual {p0, v9}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->addWindowZoneLocked(Lcom/pantech/server/multiwindow/MultiWindowZone;)V

    .line 318
    :cond_3
    const/4 v2, 0x0

    .line 319
    .local v2, "frame1":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 321
    .local v3, "frame2":Landroid/graphics/Rect;
    packed-switch p5, :pswitch_data_0

    .line 351
    monitor-exit v11

    goto :goto_0

    .line 357
    .end local v2    # "frame1":Landroid/graphics/Rect;
    .end local v3    # "frame2":Landroid/graphics/Rect;
    .end local v8    # "windowZone1":Lcom/pantech/server/multiwindow/MultiWindowZone;
    .end local v9    # "windowZone2":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 324
    .restart local v2    # "frame1":Landroid/graphics/Rect;
    .restart local v3    # "frame2":Landroid/graphics/Rect;
    .restart local v8    # "windowZone1":Lcom/pantech/server/multiwindow/MultiWindowZone;
    .restart local v9    # "windowZone2":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :pswitch_0
    :try_start_1
    iget-boolean v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualModeZonesInitialized:Z

    if-nez v10, :cond_5

    .line 325
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualModeZonesInitialized:Z

    .line 327
    sub-int v10, v1, v7

    iget v12, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSeparatorBarHeight:I

    sub-int/2addr v10, v12

    div-int/lit8 v10, v10, 0x2

    add-int v4, v10, v7

    .line 328
    .local v4, "half":I
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "frame1":Landroid/graphics/Rect;
    invoke-direct {v2, v5, v7, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 329
    .restart local v2    # "frame1":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "frame2":Landroid/graphics/Rect;
    iget v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSeparatorBarHeight:I

    add-int/2addr v10, v4

    invoke-direct {v3, v5, v10, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 354
    .end local v4    # "half":I
    .restart local v3    # "frame2":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {v8, v2}, Lcom/pantech/server/multiwindow/MultiWindowZone;->setFrameLocked(Landroid/graphics/Rect;)V

    .line 355
    invoke-virtual {v9, v3}, Lcom/pantech/server/multiwindow/MultiWindowZone;->setFrameLocked(Landroid/graphics/Rect;)V

    .line 357
    .end local v2    # "frame1":Landroid/graphics/Rect;
    .end local v3    # "frame2":Landroid/graphics/Rect;
    .end local v8    # "windowZone1":Lcom/pantech/server/multiwindow/MultiWindowZone;
    .end local v9    # "windowZone2":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :cond_4
    monitor-exit v11

    goto :goto_0

    .line 331
    .restart local v2    # "frame1":Landroid/graphics/Rect;
    .restart local v3    # "frame2":Landroid/graphics/Rect;
    .restart local v8    # "windowZone1":Lcom/pantech/server/multiwindow/MultiWindowZone;
    .restart local v9    # "windowZone2":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :cond_5
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "frame1":Landroid/graphics/Rect;
    iget-object v10, v8, Lcom/pantech/server/multiwindow/MultiWindowZone;->frame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    invoke-direct {v2, v5, v7, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 332
    .restart local v2    # "frame1":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "frame2":Landroid/graphics/Rect;
    iget-object v10, v9, Lcom/pantech/server/multiwindow/MultiWindowZone;->frame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-direct {v3, v5, v10, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 334
    .restart local v3    # "frame2":Landroid/graphics/Rect;
    goto :goto_1

    .line 338
    :pswitch_1
    iget-boolean v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualModeZonesInitialized:Z

    if-nez v10, :cond_6

    .line 339
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualModeZonesInitialized:Z

    .line 341
    sub-int v10, v6, v5

    iget v12, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSeparatorBarHeight:I

    sub-int/2addr v10, v12

    div-int/lit8 v4, v10, 0x2

    .line 342
    .restart local v4    # "half":I
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "frame1":Landroid/graphics/Rect;
    invoke-direct {v2, v5, v7, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 343
    .restart local v2    # "frame1":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "frame2":Landroid/graphics/Rect;
    iget v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSeparatorBarHeight:I

    add-int/2addr v10, v4

    invoke-direct {v3, v10, v7, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 344
    .restart local v3    # "frame2":Landroid/graphics/Rect;
    goto :goto_1

    .line 345
    .end local v4    # "half":I
    :cond_6
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "frame1":Landroid/graphics/Rect;
    iget-object v10, v8, Lcom/pantech/server/multiwindow/MultiWindowZone;->frame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v5, v7, v10, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 346
    .restart local v2    # "frame1":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "frame2":Landroid/graphics/Rect;
    iget-object v10, v9, Lcom/pantech/server/multiwindow/MultiWindowZone;->frame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v10, v7, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    .restart local v3    # "frame2":Landroid/graphics/Rect;
    goto :goto_1

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 155
    iget-object v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump MultiWindowManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " without permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string v5, "MULTIWINDOW MANAGER (dumpsys multi_window)"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    const-string v5, "  mSupportAppList size:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 168
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 169
    const-string v5, "    Apps : "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    :cond_1
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    iget-object v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 174
    .local v2, "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;>;"
    const-string v5, "  MultiWindowAppInfo size:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 175
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;

    .line 177
    .local v0, "app":Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;
    if-eqz v0, :cond_2

    .line 178
    const-string v5, "    package : "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    const-string v5, ", excludeActivity:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;->excludeActivitys:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 182
    .end local v0    # "app":Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowAppInfo;
    :cond_3
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    const-string v5, "  mDualMode="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 185
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    const-string v5, "  mFocusedId="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFocusedId:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 188
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    const-string v5, "  mWindows.size="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 191
    const/4 v1, 0x0

    :goto_3
    iget-object v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 192
    iget-object v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/server/multiwindow/MultiWindow;

    .line 193
    .local v3, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    const-string v5, "    #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 194
    const-string v5, "      "

    invoke-virtual {v3, p2, v5}, Lcom/pantech/server/multiwindow/MultiWindow;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 196
    .end local v3    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    :cond_4
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    const-string v5, "  mWindowZoneNormal="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 199
    iget-object v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

    const-string v6, "    "

    invoke-virtual {v5, p2, v6}, Lcom/pantech/server/multiwindow/MultiWindowZone;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 200
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    const-string v5, "  mWindowZones.size="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 203
    const/4 v1, 0x0

    :goto_4
    iget-object v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 204
    iget-object v5, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 205
    .local v4, "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    const-string v5, "    #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 206
    const-string v5, "      "

    invoke-virtual {v4, p2, v5}, Lcom/pantech/server/multiwindow/MultiWindowZone;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 208
    .end local v4    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :cond_5
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public framesInitialized(Z)V
    .locals 13
    .param p1, "update"    # Z

    .prologue
    .line 572
    iget-object v11, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 573
    :try_start_0
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFrame:Landroid/graphics/Rect;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    .line 574
    .local v4, "left":I
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFrame:Landroid/graphics/Rect;

    iget v7, v10, Landroid/graphics/Rect;->top:I

    .line 575
    .local v7, "top":I
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFrame:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->right:I

    .line 576
    .local v5, "right":I
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFrame:Landroid/graphics/Rect;

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 577
    .local v0, "bottom":I
    iget v6, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mRotation:I

    .line 579
    .local v6, "rotation":I
    iget-boolean v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    if-eqz v10, :cond_0

    .line 580
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 581
    .local v8, "windowZone1":Lcom/pantech/server/multiwindow/MultiWindowZone;
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 582
    .local v9, "windowZone2":Lcom/pantech/server/multiwindow/MultiWindowZone;
    const/4 v1, 0x0

    .line 583
    .local v1, "frame1":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 585
    .local v2, "frame2":Landroid/graphics/Rect;
    packed-switch v6, :pswitch_data_0

    .line 601
    monitor-exit v11

    .line 608
    .end local v1    # "frame1":Landroid/graphics/Rect;
    .end local v2    # "frame2":Landroid/graphics/Rect;
    .end local v8    # "windowZone1":Lcom/pantech/server/multiwindow/MultiWindowZone;
    .end local v9    # "windowZone2":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :goto_0
    return-void

    .line 588
    .restart local v1    # "frame1":Landroid/graphics/Rect;
    .restart local v2    # "frame2":Landroid/graphics/Rect;
    .restart local v8    # "windowZone1":Lcom/pantech/server/multiwindow/MultiWindowZone;
    .restart local v9    # "windowZone2":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :pswitch_0
    sub-int v10, v0, v7

    iget v12, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSeparatorBarHeight:I

    sub-int/2addr v10, v12

    div-int/lit8 v10, v10, 0x2

    add-int v3, v10, v7

    .line 589
    .local v3, "half":I
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "frame1":Landroid/graphics/Rect;
    invoke-direct {v1, v4, v7, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 590
    .restart local v1    # "frame1":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "frame2":Landroid/graphics/Rect;
    iget v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSeparatorBarHeight:I

    add-int/2addr v10, v3

    invoke-direct {v2, v4, v10, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 604
    .restart local v2    # "frame2":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {v8, v1}, Lcom/pantech/server/multiwindow/MultiWindowZone;->setFrameLocked(Landroid/graphics/Rect;)V

    .line 605
    invoke-virtual {v9, v2}, Lcom/pantech/server/multiwindow/MultiWindowZone;->setFrameLocked(Landroid/graphics/Rect;)V

    .line 607
    .end local v1    # "frame1":Landroid/graphics/Rect;
    .end local v2    # "frame2":Landroid/graphics/Rect;
    .end local v3    # "half":I
    .end local v8    # "windowZone1":Lcom/pantech/server/multiwindow/MultiWindowZone;
    .end local v9    # "windowZone2":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :cond_0
    monitor-exit v11

    goto :goto_0

    .end local v0    # "bottom":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "rotation":I
    .end local v7    # "top":I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 595
    .restart local v0    # "bottom":I
    .restart local v1    # "frame1":Landroid/graphics/Rect;
    .restart local v2    # "frame2":Landroid/graphics/Rect;
    .restart local v4    # "left":I
    .restart local v5    # "right":I
    .restart local v6    # "rotation":I
    .restart local v7    # "top":I
    .restart local v8    # "windowZone1":Lcom/pantech/server/multiwindow/MultiWindowZone;
    .restart local v9    # "windowZone2":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :pswitch_1
    sub-int v10, v5, v4

    :try_start_1
    iget v12, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSeparatorBarHeight:I

    sub-int/2addr v10, v12

    div-int/lit8 v3, v10, 0x2

    .line 596
    .restart local v3    # "half":I
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "frame1":Landroid/graphics/Rect;
    invoke-direct {v1, v4, v7, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 597
    .restart local v1    # "frame1":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "frame2":Landroid/graphics/Rect;
    iget v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSeparatorBarHeight:I

    add-int/2addr v10, v3

    invoke-direct {v2, v10, v7, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    .restart local v2    # "frame2":Landroid/graphics/Rect;
    goto :goto_1

    .line 585
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFocusZone()I
    .locals 2

    .prologue
    .line 628
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 629
    :try_start_0
    iget v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFocusedZone:I

    monitor-exit v1

    return v0

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRelatedIds(IZLjava/util/ArrayList;)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x1

    .line 708
    iget-object v8, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 709
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->findWindowLocked(I)Lcom/pantech/server/multiwindow/MultiWindow;

    move-result-object v5

    .line 710
    .local v5, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    if-nez v5, :cond_0

    .line 711
    monitor-exit v8

    .line 757
    :goto_0
    return-void

    .line 714
    :cond_0
    invoke-virtual {v5}, Lcom/pantech/server/multiwindow/MultiWindow;->currentWindowTokenLocked()Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v6

    .line 715
    .local v6, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-eqz v6, :cond_1

    iget-object v9, v6, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v9, v9, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-nez v9, :cond_2

    .line 717
    :cond_1
    monitor-exit v8

    goto :goto_0

    .line 756
    .end local v5    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    .end local v6    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 720
    .restart local v5    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    .restart local v6    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_2
    const/4 v1, -0x1

    .line 721
    .local v1, "index":I
    :try_start_1
    iget-object v9, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 722
    iget-object v9, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/server/multiwindow/MultiWindow;

    .line 723
    .local v2, "nextWindow":Lcom/pantech/server/multiwindow/MultiWindow;
    const/4 v9, -0x1

    if-ne v1, v9, :cond_4

    .line 724
    if-ne v2, v5, :cond_3

    .line 725
    move v1, v0

    .line 721
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 730
    :cond_4
    invoke-virtual {v2}, Lcom/pantech/server/multiwindow/MultiWindow;->currentWindowTokenLocked()Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v3

    .line 731
    .local v3, "nextWindowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-eqz v3, :cond_3

    .line 735
    iget-object v9, v3, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v9, v9, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-nez v9, :cond_7

    .line 753
    .end local v2    # "nextWindow":Lcom/pantech/server/multiwindow/MultiWindow;
    .end local v3    # "nextWindowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_5
    :goto_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 754
    invoke-direct {p0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->rearrangeWindowsLocked()V

    .line 756
    :cond_6
    monitor-exit v8

    goto :goto_0

    .line 739
    .restart local v2    # "nextWindow":Lcom/pantech/server/multiwindow/MultiWindow;
    .restart local v3    # "nextWindowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_7
    iget-boolean v9, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    if-eqz v9, :cond_a

    .line 740
    iget-object v9, v6, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v9, v9, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-eq v9, v7, :cond_8

    move v4, v7

    .line 742
    .local v4, "otherZone":I
    :goto_4
    iget-object v9, v3, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v9, v9, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-ne v9, v4, :cond_9

    .line 743
    const/4 v7, 0x0

    iget v9, v2, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p3, v7, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 740
    .end local v4    # "otherZone":I
    :cond_8
    const/4 v4, 0x2

    goto :goto_4

    .line 745
    .restart local v4    # "otherZone":I
    :cond_9
    if-eqz p2, :cond_3

    .line 746
    const/4 v9, 0x0

    iget v10, v2, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p3, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 749
    .end local v4    # "otherZone":I
    :cond_a
    const/4 v9, 0x0

    iget v10, v2, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p3, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public getTopId()I
    .locals 4

    .prologue
    .line 898
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 899
    :try_start_0
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 900
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 901
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/server/multiwindow/MultiWindow;

    iget v1, v1, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    monitor-exit v2

    .line 903
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    monitor-exit v2

    goto :goto_0

    .line 904
    .end local v0    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVisibleIds(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 852
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 853
    const/4 v5, 0x3

    .line 854
    .local v5, "zone":I
    :try_start_0
    iget-object v6, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 855
    iget-object v6, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/server/multiwindow/MultiWindow;

    .line 857
    .local v3, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    const/4 v2, 0x0

    .line 859
    .local v2, "visible":Z
    iget-object v6, v3, Lcom/pantech/server/multiwindow/MultiWindow;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_2

    .line 860
    iget-object v6, v3, Lcom/pantech/server/multiwindow/MultiWindow;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/server/multiwindow/MultiWindowToken;

    .line 861
    .local v4, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    iget-boolean v6, v4, Lcom/pantech/server/multiwindow/MultiWindowToken;->finishing:Z

    if-eqz v6, :cond_1

    .line 859
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 865
    :cond_1
    iget-boolean v6, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    if-eqz v6, :cond_5

    .line 866
    if-nez v2, :cond_5

    iget-object v6, v4, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v6, v6, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-eqz v6, :cond_5

    iget-object v6, v4, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v6, v6, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    and-int/2addr v6, v5

    if-nez v6, :cond_5

    .line 886
    .end local v4    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 887
    const/4 v6, 0x0

    iget v8, v3, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 890
    :cond_3
    if-nez v5, :cond_7

    .line 894
    .end local v1    # "j":I
    .end local v2    # "visible":Z
    .end local v3    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    :cond_4
    monitor-exit v7

    .line 895
    return-void

    .line 872
    .restart local v1    # "j":I
    .restart local v2    # "visible":Z
    .restart local v3    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    .restart local v4    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_5
    const/4 v2, 0x1

    .line 874
    iget-boolean v6, v4, Lcom/pantech/server/multiwindow/MultiWindowToken;->fullscreen:Z

    if-eqz v6, :cond_0

    .line 875
    iget-object v6, v4, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v6, v6, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-nez v6, :cond_6

    .line 876
    const/4 v5, 0x0

    goto :goto_2

    .line 878
    :cond_6
    iget-boolean v6, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    if-eqz v6, :cond_2

    .line 879
    iget-object v6, v4, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v6, v6, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    goto :goto_2

    .line 854
    .end local v4    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 894
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "visible":Z
    .end local v3    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getZone(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 279
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 280
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->findWindowTokenLocked(Landroid/os/IBinder;)Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v0

    .line 281
    .local v0, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v1, v1, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 282
    .end local v0    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getZoneFrame(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "zone"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 362
    iget-object v3, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 363
    const/4 v1, 0x0

    .line 364
    .local v1, "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    if-nez p1, :cond_0

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 369
    :goto_0
    if-nez v1, :cond_1

    .line 370
    const/4 v2, 0x0

    monitor-exit v3

    .line 374
    :goto_1
    return v2

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/pantech/server/multiwindow/MultiWindowZone;

    move-object v1, v0

    goto :goto_0

    .line 373
    :cond_1
    iget-object v2, v1, Lcom/pantech/server/multiwindow/MultiWindowZone;->frame:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 374
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_1

    .line 375
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCurrentWindowSupportMulti()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 635
    iget-object v3, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 636
    :try_start_0
    iget v4, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFocusedId:I

    invoke-direct {p0, v4}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->findWindowLocked(I)Lcom/pantech/server/multiwindow/MultiWindow;

    move-result-object v0

    .line 637
    .local v0, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    if-nez v0, :cond_0

    .line 638
    monitor-exit v3

    .line 646
    :goto_0
    return v2

    .line 641
    :cond_0
    invoke-virtual {v0}, Lcom/pantech/server/multiwindow/MultiWindow;->currentWindowTokenLocked()Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v1

    .line 642
    .local v1, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-nez v1, :cond_1

    .line 643
    monitor-exit v3

    goto :goto_0

    .line 647
    .end local v0    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    .end local v1    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 646
    .restart local v0    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    .restart local v1    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_1
    :try_start_1
    iget-boolean v2, v1, Lcom/pantech/server/multiwindow/MultiWindowToken;->multiple:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isDualWindowEnable()Z
    .locals 2

    .prologue
    .line 612
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 613
    :try_start_0
    invoke-direct {p0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->needsToShowSeparatorBarLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public killActivity(I)Z
    .locals 15
    .param p1, "zone"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 500
    const/4 v8, 0x0

    .line 502
    .local v8, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    iget-object v13, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 503
    const/4 v9, 0x0

    .line 504
    .local v9, "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    if-eqz p1, :cond_0

    .line 505
    :try_start_0
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/pantech/server/multiwindow/MultiWindowZone;

    move-object v9, v0

    .line 507
    :cond_0
    if-nez v9, :cond_1

    .line 508
    monitor-exit v13

    move v10, v11

    .line 538
    :goto_0
    return v10

    .line 511
    :cond_1
    invoke-direct {p0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->findHomeWindowIndexLocked()I

    move-result v2

    .line 512
    .local v2, "homeWindowIndex":I
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    .local v3, "i":I
    :goto_1
    if-le v3, v2, :cond_4

    .line 513
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/server/multiwindow/MultiWindow;

    .line 514
    .local v4, "nextWindow":Lcom/pantech/server/multiwindow/MultiWindow;
    invoke-virtual {v4}, Lcom/pantech/server/multiwindow/MultiWindow;->currentWindowTokenLocked()Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v5

    .line 515
    .local v5, "nextWindowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-nez v5, :cond_3

    .line 512
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 519
    :cond_3
    iget-object v10, v5, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v10, v10, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    iget v14, v9, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-ne v10, v14, :cond_2

    .line 520
    move-object v8, v4

    .line 525
    .end local v4    # "nextWindow":Lcom/pantech/server/multiwindow/MultiWindow;
    .end local v5    # "nextWindowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_4
    if-nez v8, :cond_5

    .line 526
    monitor-exit v13

    move v10, v11

    goto :goto_0

    .line 528
    :cond_5
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 532
    .local v6, "origId":J
    :try_start_1
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v11, v8, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    const/4 v13, 0x1

    invoke-interface {v10, v11, v13}, Landroid/app/IActivityManager;->removeTask(II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 537
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v10, v12

    .line 538
    goto :goto_0

    .line 528
    .end local v2    # "homeWindowIndex":I
    .end local v3    # "i":I
    .end local v6    # "origId":J
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 534
    .restart local v2    # "homeWindowIndex":I
    .restart local v3    # "i":I
    .restart local v6    # "origId":J
    :catch_0
    move-exception v1

    .line 535
    .local v1, "e":Landroid/os/RemoteException;
    const-string v10, "MultiWindowManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to remove task for: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v8, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public killActivityAll()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 543
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 546
    :try_start_0
    iget-object v8, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/server/multiwindow/MultiWindow;

    .line 547
    .local v6, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    invoke-virtual {v6}, Lcom/pantech/server/multiwindow/MultiWindow;->currentWindowTokenLocked()Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v7

    .line 548
    .local v7, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-eqz v7, :cond_0

    iget-object v8, v7, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v8, v8, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-eqz v8, :cond_0

    .line 553
    const/4 v8, 0x0

    iget v10, v6, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 555
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    .end local v7    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 558
    .local v4, "origId":J
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 560
    .local v2, "id":I
    :try_start_2
    iget-object v8, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v9, 0x1

    invoke-interface {v8, v2, v9}, Landroid/app/IActivityManager;->removeTask(II)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "MultiWindowManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to remove task for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 566
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "id":I
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 567
    return v11
.end method

.method public makeFinishing(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 937
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 938
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->findWindowTokenLocked(Landroid/os/IBinder;)Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v0

    .line 939
    .local v0, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-nez v0, :cond_0

    .line 940
    monitor-exit v2

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pantech/server/multiwindow/MultiWindowToken;->finishing:Z

    .line 944
    monitor-exit v2

    goto :goto_0

    .end local v0    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public moveIdToFront(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 908
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 909
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->findWindowLocked(I)Lcom/pantech/server/multiwindow/MultiWindow;

    move-result-object v0

    .line 910
    .local v0, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    if-nez v0, :cond_0

    .line 911
    monitor-exit v2

    .line 917
    :goto_0
    return-void

    .line 914
    :cond_0
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 915
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    monitor-exit v2

    goto :goto_0

    .end local v0    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public moveRelatedIdsToBack(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 838
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 839
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->findWindowLocked(I)Lcom/pantech/server/multiwindow/MultiWindow;

    move-result-object v0

    .line 840
    .local v0, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    if-nez v0, :cond_0

    .line 841
    monitor-exit v2

    .line 849
    :goto_0
    return-void

    .line 844
    :cond_0
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 845
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 847
    invoke-direct {p0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->rearrangeWindowsLocked()V

    .line 848
    monitor-exit v2

    goto :goto_0

    .end local v0    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public moveRelatedIdsToFront(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callerToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x1

    .line 760
    iget-object v10, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 761
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->findWindowLocked(I)Lcom/pantech/server/multiwindow/MultiWindow;

    move-result-object v6

    .line 762
    .local v6, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    if-nez v6, :cond_0

    .line 763
    monitor-exit v10

    .line 835
    :goto_0
    return-void

    .line 766
    :cond_0
    invoke-virtual {v6}, Lcom/pantech/server/multiwindow/MultiWindow;->currentWindowTokenLocked()Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v7

    .line 767
    .local v7, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-nez v7, :cond_1

    .line 768
    monitor-exit v10

    goto :goto_0

    .line 834
    .end local v6    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    .end local v7    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 771
    .restart local v6    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    .restart local v7    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_1
    const/4 v8, 0x0

    .line 772
    .local v8, "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :try_start_1
    iget-boolean v9, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    if-eqz v9, :cond_b

    .line 773
    const/4 v5, 0x0

    .line 775
    .local v5, "tryToMove":Z
    if-nez p2, :cond_4

    .line 776
    iget-object v8, v7, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 778
    const/4 v5, 0x1

    .line 795
    :cond_2
    :goto_1
    if-eqz v5, :cond_a

    .line 796
    iget v9, v8, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-eqz v9, :cond_a

    .line 797
    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->findHomeWindowIndexLocked()I

    move-result v0

    .line 798
    .local v0, "homeWindowIndex":I
    :goto_2
    iget v9, v8, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-eq v9, v4, :cond_8

    .line 800
    .local v4, "otherZone":I
    :goto_3
    iget-object v9, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_4
    if-le v1, v0, :cond_a

    .line 801
    iget-object v9, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/server/multiwindow/MultiWindow;

    .line 802
    .local v2, "nextWindow":Lcom/pantech/server/multiwindow/MultiWindow;
    if-ne v2, v6, :cond_9

    .line 800
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 780
    .end local v0    # "homeWindowIndex":I
    .end local v1    # "i":I
    .end local v2    # "nextWindow":Lcom/pantech/server/multiwindow/MultiWindow;
    .end local v4    # "otherZone":I
    :cond_4
    iget-boolean v9, v7, Lcom/pantech/server/multiwindow/MultiWindowToken;->multiple:Z

    if-eqz v9, :cond_6

    .line 781
    invoke-direct {p0, p2, p1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->getWindowZoneLocked(Landroid/content/Intent;I)Lcom/pantech/server/multiwindow/MultiWindowZone;

    move-result-object v8

    .line 782
    if-nez v8, :cond_2

    .line 783
    invoke-direct {p0, v7, p3}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->getWindowZoneWithTokenLocked(Lcom/pantech/server/multiwindow/MultiWindowToken;Landroid/os/IBinder;)Lcom/pantech/server/multiwindow/MultiWindowZone;

    move-result-object v8

    .line 784
    if-eqz v8, :cond_5

    iget v9, v8, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-nez v9, :cond_2

    .line 785
    :cond_5
    iget-object v8, v7, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 787
    const/4 v5, 0x1

    goto :goto_1

    .line 791
    :cond_6
    iget-object v8, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

    goto :goto_1

    .line 797
    :cond_7
    const/4 v0, -0x1

    goto :goto_2

    .line 798
    .restart local v0    # "homeWindowIndex":I
    :cond_8
    const/4 v4, 0x2

    goto :goto_3

    .line 806
    .restart local v1    # "i":I
    .restart local v2    # "nextWindow":Lcom/pantech/server/multiwindow/MultiWindow;
    .restart local v4    # "otherZone":I
    :cond_9
    invoke-virtual {v2}, Lcom/pantech/server/multiwindow/MultiWindow;->currentWindowTokenLocked()Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v3

    .line 807
    .local v3, "nextWindowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-eqz v3, :cond_3

    .line 811
    iget-object v9, v3, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v9, v9, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-ne v9, v4, :cond_3

    .line 812
    iget-object v9, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 813
    iget-object v9, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    .end local v0    # "homeWindowIndex":I
    .end local v1    # "i":I
    .end local v2    # "nextWindow":Lcom/pantech/server/multiwindow/MultiWindow;
    .end local v3    # "nextWindowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    .end local v4    # "otherZone":I
    .end local v5    # "tryToMove":Z
    :cond_a
    :goto_5
    iget-object v9, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 829
    iget-object v9, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    invoke-virtual {v6, v8}, Lcom/pantech/server/multiwindow/MultiWindow;->setWindowZoneLocked(Lcom/pantech/server/multiwindow/MultiWindowZone;)V

    .line 833
    invoke-direct {p0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->rearrangeWindowsLocked()V

    .line 834
    monitor-exit v10

    goto/16 :goto_0

    .line 820
    :cond_b
    if-eqz p2, :cond_c

    .line 821
    invoke-direct {p0, p2, p1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->getWindowZoneLocked(Landroid/content/Intent;I)Lcom/pantech/server/multiwindow/MultiWindowZone;

    move-result-object v8

    .line 823
    :cond_c
    if-nez v8, :cond_a

    .line 824
    iget-object v8, v7, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method

.method performFocusedZoneChangedLocked(I)V
    .locals 2
    .param p1, "zone"    # I

    .prologue
    const/4 v1, 0x1

    .line 979
    iget v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFocusedZone:I

    if-ne v0, p1, :cond_0

    .line 989
    :goto_0
    return-void

    .line 983
    :cond_0
    iput p1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFocusedZone:I

    .line 985
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mHandler:Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;

    invoke-virtual {v0, v1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;->removeMessages(I)V

    .line 986
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mHandler:Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;

    invoke-virtual {v0, v1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;->sendEmptyMessage(I)Z

    .line 988
    invoke-virtual {p0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->updateSeparatorBarVisibleChangedLocked()V

    goto :goto_0
.end method

.method performWindowStatusChangedLocked(Lcom/pantech/server/multiwindow/MultiWindowToken;)V
    .locals 4
    .param p1, "windowToken"    # Lcom/pantech/server/multiwindow/MultiWindowToken;

    .prologue
    .line 967
    iget-boolean v1, p1, Lcom/pantech/server/multiwindow/MultiWindowToken;->finishing:Z

    if-eqz v1, :cond_0

    .line 976
    :goto_0
    return-void

    .line 972
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p1, Lcom/pantech/server/multiwindow/MultiWindowToken;->token:Landroid/os/IBinder;

    iget-object v3, p1, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v3, v3, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->windowStatusChanged(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to handle winodwStatusChanged() for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/pantech/server/multiwindow/MultiWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public remove(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 687
    iget-object v3, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 688
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->findWindowTokenLocked(Landroid/os/IBinder;)Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v1

    .line 689
    .local v1, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-nez v1, :cond_0

    .line 690
    monitor-exit v3

    .line 705
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v0, v1, Lcom/pantech/server/multiwindow/MultiWindowToken;->window:Lcom/pantech/server/multiwindow/MultiWindow;

    .line 694
    .local v0, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    invoke-virtual {v0, v1}, Lcom/pantech/server/multiwindow/MultiWindow;->removeWindowTokenLocked(Lcom/pantech/server/multiwindow/MultiWindowToken;)V

    .line 695
    iget-object v2, v0, Lcom/pantech/server/multiwindow/MultiWindow;->windowTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 696
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 698
    iget-boolean v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    if-nez v2, :cond_1

    .line 699
    iget v2, v0, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    invoke-virtual {p0, v2}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->removeWindowZoneLocked(I)V

    .line 702
    :cond_1
    invoke-direct {p0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->rearrangeWindowsLocked()V

    .line 704
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    .end local v1    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeMultiWindowList()V
    .locals 4

    .prologue
    .line 619
    iget-object v3, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 620
    :try_start_0
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/server/multiwindow/MultiWindow;

    .line 621
    .local v1, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

    invoke-virtual {v1, v2}, Lcom/pantech/server/multiwindow/MultiWindow;->setWindowZoneLocked(Lcom/pantech/server/multiwindow/MultiWindowZone;)V

    goto :goto_0

    .line 623
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    return-void
.end method

.method removeWindowZoneLocked(I)V
    .locals 1
    .param p1, "zone"    # I

    .prologue
    .line 963
    iget-object v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 964
    return-void
.end method

.method public setDualMode(Z)V
    .locals 2
    .param p1, "dualMode"    # Z

    .prologue
    .line 245
    iget-object v1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_0
    iput-boolean p1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    .line 247
    monitor-exit v1

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 9
    .param p1, "enabled"    # Z

    .prologue
    .line 213
    const/4 v2, -0x1

    .line 215
    .local v2, "id":I
    iget-object v7, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 216
    :try_start_0
    iput-boolean p1, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mEnabled:Z

    .line 218
    if-eqz p1, :cond_1

    .line 219
    monitor-exit v7

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v6, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/server/multiwindow/MultiWindow;

    .line 223
    .local v5, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    iget-object v6, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZoneNormal:Lcom/pantech/server/multiwindow/MultiWindowZone;

    invoke-virtual {v5, v6}, Lcom/pantech/server/multiwindow/MultiWindow;->setWindowZoneLocked(Lcom/pantech/server/multiwindow/MultiWindowZone;)V

    goto :goto_1

    .line 227
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 226
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFocusedId:I

    .line 227
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 233
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 235
    .local v3, "origId":J
    :try_start_2
    iget-object v6, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-interface {v6, v2, v7, v8}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 240
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "MultiWindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to move task to front for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public setFocusedId(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 920
    iget-object v4, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 921
    const/4 v0, -0x1

    .line 922
    .local v0, "focusedId":I
    const/4 v2, 0x0

    .line 924
    .local v2, "zone":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->findWindowTokenLocked(Landroid/os/IBinder;)Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v1

    .line 925
    .local v1, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-eqz v1, :cond_0

    .line 926
    iget-object v3, v1, Lcom/pantech/server/multiwindow/MultiWindowToken;->window:Lcom/pantech/server/multiwindow/MultiWindow;

    iget v0, v3, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    .line 927
    iget-object v3, v1, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v2, v3, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    .line 930
    :cond_0
    iput v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFocusedId:I

    .line 932
    invoke-virtual {p0, v2}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->performFocusedZoneChangedLocked(I)V

    .line 933
    monitor-exit v4

    .line 934
    return-void

    .line 933
    .end local v1    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setMultiple(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "multiple"    # Z

    .prologue
    .line 948
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 949
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->findWindowLocked(I)Lcom/pantech/server/multiwindow/MultiWindow;

    move-result-object v0

    .line 950
    .local v0, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    if-nez v0, :cond_0

    .line 951
    monitor-exit v2

    .line 956
    :goto_0
    return-void

    .line 954
    :cond_0
    invoke-virtual {v0, p2}, Lcom/pantech/server/multiwindow/MultiWindow;->setMultipleLocked(Z)V

    .line 955
    monitor-exit v2

    goto :goto_0

    .end local v0    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSeparatorBarPos(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 397
    iget-object v6, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 398
    :try_start_0
    iget-boolean v7, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    if-nez v7, :cond_0

    .line 399
    monitor-exit v6

    .line 426
    :goto_0
    return v4

    .line 402
    :cond_0
    iget-object v7, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 403
    .local v2, "windowZone1":Lcom/pantech/server/multiwindow/MultiWindowZone;
    iget-object v7, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 404
    .local v3, "windowZone2":Lcom/pantech/server/multiwindow/MultiWindowZone;
    new-instance v0, Landroid/graphics/Rect;

    iget-object v7, v2, Lcom/pantech/server/multiwindow/MultiWindowZone;->frame:Landroid/graphics/Rect;

    invoke-direct {v0, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 405
    .local v0, "frame1":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget-object v7, v3, Lcom/pantech/server/multiwindow/MultiWindowZone;->frame:Landroid/graphics/Rect;

    invoke-direct {v1, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 407
    .local v1, "frame2":Landroid/graphics/Rect;
    iget v7, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mRotation:I

    packed-switch v7, :pswitch_data_0

    .line 421
    monitor-exit v6

    goto :goto_0

    .line 427
    .end local v0    # "frame1":Landroid/graphics/Rect;
    .end local v1    # "frame2":Landroid/graphics/Rect;
    .end local v2    # "windowZone1":Lcom/pantech/server/multiwindow/MultiWindowZone;
    .end local v3    # "windowZone2":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 410
    .restart local v0    # "frame1":Landroid/graphics/Rect;
    .restart local v1    # "frame2":Landroid/graphics/Rect;
    .restart local v2    # "windowZone1":Lcom/pantech/server/multiwindow/MultiWindowZone;
    .restart local v3    # "windowZone2":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :pswitch_0
    :try_start_1
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 411
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSeparatorBarHeight:I

    add-int/2addr v4, v7

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 424
    :goto_1
    invoke-virtual {v2, v0}, Lcom/pantech/server/multiwindow/MultiWindowZone;->setFrameLocked(Landroid/graphics/Rect;)V

    .line 425
    invoke-virtual {v3, v1}, Lcom/pantech/server/multiwindow/MultiWindowZone;->setFrameLocked(Landroid/graphics/Rect;)V

    .line 426
    monitor-exit v6

    move v4, v5

    goto :goto_0

    .line 416
    :pswitch_1
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 417
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSeparatorBarHeight:I

    add-int/2addr v4, v7

    iput v4, v1, Landroid/graphics/Rect;->left:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSupportAppList([Ljava/lang/String;)V
    .locals 6
    .param p1, "apps"    # [Ljava/lang/String;

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    const-string v4, "MultiWindowManagerService"

    const-string v5, "support app list is null!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v4, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 259
    sget-object v4, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDefaultAppList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 260
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    array-length v0, p1

    .line 264
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 265
    iget-object v4, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 267
    :cond_2
    iget-object v4, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->makeSupportAppList(Ljava/util/ArrayList;)Z

    goto :goto_0
.end method

.method public setZoneFrame(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "zone"    # I
    .param p2, "inRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 381
    if-nez p1, :cond_0

    .line 382
    :try_start_0
    monitor-exit v2

    .line 391
    :goto_0
    return v1

    .line 385
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindowZones:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 386
    .local v0, "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    if-nez v0, :cond_1

    .line 387
    monitor-exit v2

    goto :goto_0

    .line 392
    .end local v0    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 390
    .restart local v0    # "windowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/pantech/server/multiwindow/MultiWindowZone;->setFrameLocked(Landroid/graphics/Rect;)V

    .line 391
    const/4 v1, 0x1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public swapZone()Z
    .locals 15

    .prologue
    const/4 v11, 0x0

    .line 432
    const/4 v1, 0x0

    .line 433
    .local v1, "focusedWindowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    const/4 v7, 0x0

    .line 435
    .local v7, "otherWindowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    iget-object v12, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 436
    :try_start_0
    iget-boolean v13, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    if-nez v13, :cond_0

    .line 437
    monitor-exit v12

    .line 495
    :goto_0
    return v11

    .line 440
    :cond_0
    iget v13, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFocusedZone:I

    if-nez v13, :cond_1

    .line 441
    monitor-exit v12

    goto :goto_0

    .line 479
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 444
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->findHomeWindowIndexLocked()I

    move-result v3

    .line 445
    .local v3, "homeWindowIndex":I
    iget-object v13, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v4, v13, -0x1

    .local v4, "i":I
    :goto_1
    if-le v4, v3, :cond_4

    .line 446
    iget-object v13, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/server/multiwindow/MultiWindow;

    .line 447
    .local v9, "window":Lcom/pantech/server/multiwindow/MultiWindow;
    invoke-virtual {v9}, Lcom/pantech/server/multiwindow/MultiWindow;->currentWindowTokenLocked()Lcom/pantech/server/multiwindow/MultiWindowToken;

    move-result-object v10

    .line 448
    .local v10, "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    if-nez v10, :cond_3

    .line 445
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 452
    :cond_3
    iget-object v13, v10, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v13, v13, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-nez v13, :cond_6

    .line 471
    .end local v9    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    .end local v10    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    if-nez v7, :cond_9

    .line 472
    :cond_5
    monitor-exit v12

    goto :goto_0

    .line 456
    .restart local v9    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    .restart local v10    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_6
    iget v13, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mFocusedZone:I

    iget-object v14, v10, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    iget v14, v14, Lcom/pantech/server/multiwindow/MultiWindowZone;->id:I

    if-ne v13, v14, :cond_8

    .line 457
    if-nez v1, :cond_7

    .line 458
    move-object v1, v10

    .line 466
    :cond_7
    :goto_3
    if-eqz v1, :cond_2

    if-eqz v7, :cond_2

    goto :goto_2

    .line 461
    :cond_8
    if-nez v7, :cond_7

    .line 462
    move-object v7, v10

    goto :goto_3

    .line 475
    .end local v9    # "window":Lcom/pantech/server/multiwindow/MultiWindow;
    .end local v10    # "windowToken":Lcom/pantech/server/multiwindow/MultiWindowToken;
    :cond_9
    iget-object v2, v1, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 476
    .local v2, "focusedWindowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    iget-object v8, v7, Lcom/pantech/server/multiwindow/MultiWindowToken;->windowZone:Lcom/pantech/server/multiwindow/MultiWindowZone;

    .line 477
    .local v8, "otherWindowZone":Lcom/pantech/server/multiwindow/MultiWindowZone;
    iget-object v11, v7, Lcom/pantech/server/multiwindow/MultiWindowToken;->window:Lcom/pantech/server/multiwindow/MultiWindow;

    invoke-virtual {v11, v2}, Lcom/pantech/server/multiwindow/MultiWindow;->setWindowZoneLocked(Lcom/pantech/server/multiwindow/MultiWindowZone;)V

    .line 478
    iget-object v11, v1, Lcom/pantech/server/multiwindow/MultiWindowToken;->window:Lcom/pantech/server/multiwindow/MultiWindow;

    invoke-virtual {v11, v8}, Lcom/pantech/server/multiwindow/MultiWindow;->setWindowZoneLocked(Lcom/pantech/server/multiwindow/MultiWindowZone;)V

    .line 479
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 483
    .local v5, "origId":J
    :try_start_2
    iget-object v11, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v12, v7, Lcom/pantech/server/multiwindow/MultiWindowToken;->window:Lcom/pantech/server/multiwindow/MultiWindow;

    iget v12, v12, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 489
    :goto_4
    :try_start_3
    iget-object v11, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v12, v1, Lcom/pantech/server/multiwindow/MultiWindowToken;->window:Lcom/pantech/server/multiwindow/MultiWindow;

    iget v12, v12, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 494
    :goto_5
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 495
    const/4 v11, 0x1

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    const-string v11, "MultiWindowManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to move task to front for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Lcom/pantech/server/multiwindow/MultiWindowToken;->window:Lcom/pantech/server/multiwindow/MultiWindow;

    iget v13, v13, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 491
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 492
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v11, "MultiWindowManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to move task to front for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/pantech/server/multiwindow/MultiWindowToken;->window:Lcom/pantech/server/multiwindow/MultiWindow;

    iget v13, v13, Lcom/pantech/server/multiwindow/MultiWindow;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 137
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->loadSupportAppList(Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 138
    sget-object v2, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDefaultAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    .local v1, "supportApp":Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v1    # "supportApp":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mVegaWindowAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    .restart local v1    # "supportApp":Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    .end local v1    # "supportApp":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->makeSupportAppList(Ljava/util/ArrayList;)Z

    .line 148
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppInfoMap:Ljava/util/HashMap;

    invoke-direct {p0, v2}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->loadSupportAppList(Ljava/util/HashMap;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 149
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSupportAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->makeSupportAppList(Ljava/util/Collection;)Z

    .line 151
    :cond_3
    return-void
.end method

.method updateSeparatorBarVisibleChangedLocked()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 992
    iget-boolean v3, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mDualMode:Z

    if-nez v3, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    invoke-direct {p0}, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->needsToShowSeparatorBarLocked()Z

    move-result v0

    .line 997
    .local v0, "separatorBarShown":Z
    iget-boolean v3, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSeparatorBarShown:Z

    if-eq v3, v0, :cond_0

    .line 1001
    iput-boolean v0, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mSeparatorBarShown:Z

    .line 1003
    iget-object v3, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mHandler:Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;

    invoke-virtual {v3, v1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;->removeMessages(I)V

    .line 1004
    iget-object v3, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mHandler:Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;

    invoke-virtual {v3, v2}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;->removeMessages(I)V

    .line 1005
    if-eqz v0, :cond_2

    .line 1008
    .local v1, "what":I
    :goto_1
    iget-object v2, p0, Lcom/pantech/server/multiwindow/MultiWindowManagerService;->mHandler:Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;

    invoke-virtual {v2, v1}, Lcom/pantech/server/multiwindow/MultiWindowManagerService$MultiWindowManagerHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .end local v1    # "what":I
    :cond_2
    move v1, v2

    .line 1005
    goto :goto_1
.end method
