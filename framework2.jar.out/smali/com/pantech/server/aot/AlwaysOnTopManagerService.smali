.class public Lcom/pantech/server/aot/AlwaysOnTopManagerService;
.super Landroid/view/alwaysontop/IAlwaysOnTop$Stub;
.source "AlwaysOnTopManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;,
        Lcom/pantech/server/aot/AlwaysOnTopManagerService$WFDConnectReceiver;,
        Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;,
        Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;,
        Lcom/pantech/server/aot/AlwaysOnTopManagerService$LidStateReceiver;,
        Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;
    }
.end annotation


# static fields
.field static final ACTION_WFD_SHUTDOWN:Ljava/lang/String; = "WFD_SHUTDOWN"

.field static final ACTION_WFD_START_SINK:Ljava/lang/String; = "WFD_START_SINK"

.field static final ACTION_WFD_STOP_SINK:Ljava/lang/String; = "WFD_STOP_SINK"

.field static final CALL_END_SETMODE_CHANGE:Ljava/lang/String; = "com.android.phone.action.ENDCALL_SETMODE_CHANGE"

.field static final DEBUG:Z = true

.field static final MSG_ATTACH_TOKEN:I = 0x424

.field static final MSG_HIDE_ALWAYSONTOP:I = 0x406

.field static final MSG_MEDIA_STATE_EVENT:I = 0x44c

.field static final MSG_MOVE_AOT_FRAME:I = 0x514

.field static final MSG_RESTORE_STATE:I = 0x4ba

.field static final MSG_SAVE_STATE:I = 0x4b0

.field static final MSG_SHOW_ALWAYSONTOP:I = 0x3fc

.field static final MSG_SHOW_AOT_ENTRY_WINDOW:I = 0x1

.field static final MSG_SHOW_AOT_PICKER:I = 0xa

.field static final MSG_SKIP_WINDOW:I = 0x4c4

.field static final MSG_START_ALWAYSONTOP:I = 0x410

.field static final MSG_STOP_ALWAYSONTOP:I = 0x41a

.field static final MSG_VISIBLE_AOT_FRAME:I = 0x578

.field static SINGLE_AOT:Z = false

.field static final STATE_MSG_LOOP_COUNT_MAX:I = 0xa

.field static final STATE_MSG_LOOP_TIME:I = 0x64

.field static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field private static final TAG:Ljava/lang/String; = "AlwaysOnTopManagerService"

.field static final call_aot_id:Ljava/lang/String; = "com.pantech.app.alwaysoncall/.PCUAlwaysonCallActivity"

.field static mMenuClassName:Ljava/lang/String;

.field public static mRepeatNumberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;",
            ">;"
        }
    .end annotation
.end field

.field public static mRepeatNumberList_four:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/server/aot/AlwaysOnTopManagerService$RepeatNumberClass;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CALCULATOR_AOTAPP:Ljava/lang/String;

.field private final CALCULATOR_APP:Ljava/lang/String;

.field private final DICTIONARY_AOTAPP:Ljava/lang/String;

.field private final DICTIONARY_APP:Ljava/lang/String;

.field private final NOTE_AOTAPP:Ljava/lang/String;

.field private final NOTE_APP:Ljava/lang/String;

.field private final SENSOR_X_AXIS_FLIP_THRESHOLD:F

.field private final SENSOR_X_AXIS_TILT_THRESHOLD:F

.field private final SENSOR_Y_AXIS_FLIP_THRESHOLD:F

.field private final SENSOR_Y_AXIS_TILT_THRESHOLD:F

.field final mAlwaysOnTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAlwaysOnTopMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/server/aot/AlwaysOnTopState;",
            ">;"
        }
    .end annotation
.end field

.field final mAlwaysOnTopStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/server/aot/AlwaysOnTopState;",
            ">;"
        }
    .end annotation
.end field

.field mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

.field mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mContext:Landroid/content/Context;

.field mCurIntent:Landroid/content/Intent;

.field mCurToken:Landroid/os/IBinder;

.field mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field final mHandler:Landroid/os/Handler;

.field mHaveConnection:Z

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mIsCalling:Z

.field mIsLongPress:Z

.field private mIsMediaApp:Z

.field mLastBindTime:J

.field final mModelInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mMultiDockTitleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mNextAotId:Ljava/lang/String;

.field mNextAppBundle:Landroid/os/Bundle;

.field mScreenOn:Z

.field private mSensorData:[F

.field mSensorListener:Landroid/hardware/SensorEventListener;

.field mSensorManager:Landroid/hardware/SensorManager;

.field final mSingleDockTitleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mStateLoopCount:I

.field mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

.field mSystemReady:Z

.field private mToggleTime:J

.field powerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SINGLE_AOT:Z

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList:Ljava/util/ArrayList;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mRepeatNumberList_four:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v11, 0x10406e0

    const v10, 0x10406de

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 494
    invoke-direct {p0}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;-><init>()V

    .line 148
    iput-boolean v9, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    .line 151
    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAotId:Ljava/lang/String;

    .line 152
    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAppBundle:Landroid/os/Bundle;

    .line 164
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopList:Ljava/util/ArrayList;

    .line 165
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    .line 171
    iput-boolean v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mScreenOn:Z

    .line 177
    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    .line 179
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    .line 181
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF51S"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF51K"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF51L"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef51s"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef51k"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef51l"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef52l"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF52S"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF52K"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF52L"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF52W"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef52s"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef52k"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef52l"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef52w"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF56S"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF57K"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF58L"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef56s"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef57k"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef58l"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "IM-A880S"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "IM-A880K"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "IM-A880L"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF59S"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF59K"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF59L"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef59s"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef59k"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef59l"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "IM-A890S"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "IM-A890K"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "IM-A890L"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef60s"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef61k"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef62l"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF60S"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF61K"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF62L"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "IM-A900S"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "IM-A900K"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "IM-A900L"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef63s"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef63k"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "ef63l"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF63s"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF63k"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "EF63l"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "IM-A910S"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "IM-A910K"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    const-string v5, "IM-A910L"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iput-boolean v9, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    .line 250
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    .line 251
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    .line 262
    const/high16 v4, 0x41200000    # 10.0f

    iput v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SENSOR_X_AXIS_TILT_THRESHOLD:F

    .line 263
    const/high16 v4, 0x41f00000    # 30.0f

    iput v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SENSOR_Y_AXIS_TILT_THRESHOLD:F

    .line 264
    const/high16 v4, -0x3fc00000    # -3.0f

    iput v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SENSOR_X_AXIS_FLIP_THRESHOLD:F

    .line 265
    const/high16 v4, 0x40800000    # 4.0f

    iput v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SENSOR_Y_AXIS_FLIP_THRESHOLD:F

    .line 274
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    .line 276
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.minisketch/.main.miniSketch"

    const v6, 0x10406e3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    const v6, 0x10406e2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.vegacamera/.aot.AOTCameraService"

    const v6, 0x10406e4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.aotdialer/.PCUAOTDialer"

    const v6, 0x10406e5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.aotcalculator/.AOTCalculator"

    const v6, 0x10406e6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.aotdictionary/.AOTDictionary"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    const v6, 0x10406e1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.tdmb/.DmbAotPlayer"

    const v6, 0x10406df

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.aotfolder/.AOTFolder"

    const v6, 0x10406e7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.aotcalendar/.AOTCalendar"

    const v6, 0x10406f0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSingleDockTitleMap:Ljava/util/HashMap;

    .line 291
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSingleDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.alwaysonMusic/.AlwaysOnTopMusic"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSingleDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.tdmb/.DmbAotPlayer"

    const v6, 0x10406eb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSingleDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    const v6, 0x10406e2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSingleDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.aotnotepad/.AOTSkyNotepad"

    const v6, 0x10406e1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSingleDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.aotdictionary/.AOTDictionary"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSingleDockTitleMap:Ljava/util/HashMap;

    const-string v5, "com.pantech.app.minipen/.miniPen"

    const v6, 0x10406e3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    const-string v4, "com.pantech.app.aotnotepad"

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->NOTE_AOTAPP:Ljava/lang/String;

    .line 1327
    const-string v4, "com.pantech.app.notepad"

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->NOTE_APP:Ljava/lang/String;

    .line 1328
    const-string v4, "com.pantech.app.aotcalculator"

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->CALCULATOR_AOTAPP:Ljava/lang/String;

    .line 1329
    const-string v4, "com.pantech.app.calculator"

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->CALCULATOR_APP:Ljava/lang/String;

    .line 1330
    const-string v4, "com.pantech.app.aotdictionary"

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->DICTIONARY_AOTAPP:Ljava/lang/String;

    .line 1331
    const-string v4, "com.diotek.diodict3.phone.pantech.skydict"

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->DICTIONARY_APP:Ljava/lang/String;

    .line 495
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    .line 496
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    .line 497
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 500
    new-instance v4, Lcom/android/internal/os/HandlerCaller;

    new-instance v5, Lcom/pantech/server/aot/AlwaysOnTopManagerService$1;

    invoke-direct {v5, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$1;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    invoke-direct {v4, p1, v8, v5, v7}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 506
    new-instance v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;

    invoke-direct {v4, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v8, v7}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 510
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->powerManager:Landroid/os/PowerManager;

    .line 513
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 514
    .local v2, "screenOnOffFilt":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    const-string v4, "android.intent.action.APP_ERROR"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;

    invoke-direct {v5, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$ScreenOnOffReceiver;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 523
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 524
    .local v3, "telephonyFilt":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;

    invoke-direct {v5, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$TelephonyReceiver;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 543
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 544
    .local v0, "WFDConnectFilt":Landroid/content/IntentFilter;
    const-string v4, "WFD_START_SINK"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    const-string v4, "WFD_STOP_SINK"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    const-string v4, "WFD_SHUTDOWN"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/pantech/server/aot/AlwaysOnTopManagerService$WFDConnectReceiver;

    invoke-direct {v5, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$WFDConnectReceiver;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 550
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    invoke-virtual {p0, v4, v5}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->buildAlwaysOnTopListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 554
    const-string v4, "sensor"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 555
    new-instance v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;

    invoke-direct {v4, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$2;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    iput-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 643
    invoke-direct {p0, p1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isEnableRearTouch(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->registerGyroSensorListener()Z

    .line 646
    :cond_0
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 647
    .local v1, "model":Ljava/lang/String;
    const-string v4, "AlwaysOnTopManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "find model:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-virtual {p0, v1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->checkModelInfo(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 649
    const-string v4, "AlwaysOnTopManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not found model!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/server/aot/AlwaysOnTopManagerService;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isEnableRearTouch(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)[F
    .locals 1
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F

    return-object v0
.end method

.method static synthetic access$102(Lcom/pantech/server/aot/AlwaysOnTopManagerService;[F)[F
    .locals 0
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;
    .param p1, "x1"    # [F

    .prologue
    .line 108
    iput-object p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorData:[F

    return-object p1
.end method

.method static synthetic access$200(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mToggleTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/pantech/server/aot/AlwaysOnTopManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/pantech/server/aot/AlwaysOnTopManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mToggleTime:J

    return-wide p1
.end method

.method public static getCurrentRotation(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1704
    const/4 v1, 0x0

    .line 1705
    .local v1, "result":I
    if-eqz p0, :cond_0

    .line 1706
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1707
    .local v2, "window":Landroid/view/WindowManager;
    if-eqz v2, :cond_0

    .line 1708
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1709
    .local v0, "dis":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 1713
    .end local v0    # "dis":Landroid/view/Display;
    .end local v1    # "result":I
    .end local v2    # "window":Landroid/view/WindowManager;
    :cond_0
    return v1
.end method

.method private isEnableRearTouch(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1652
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rear_touch"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1654
    .local v0, "enable":I
    if-eqz v0, :cond_0

    .line 1655
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rear_touch_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 1657
    .local v1, "type":I
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEnableRearTouch type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1658
    if-nez v1, :cond_0

    .line 1659
    const/4 v2, 0x1

    .line 1666
    .end local v0    # "enable":I
    .end local v1    # "type":I
    :cond_0
    :goto_0
    return v2

    .line 1663
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method buildAlwaysOnTopListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1351
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 1352
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clear()V

    .line 1354
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1356
    .local v9, "pm":Landroid/content/pm/PackageManager;
    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.alwaysontopservice.AlwaysOnTopService"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x2280

    invoke-virtual {v9, v13, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 1363
    .local v11, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v13, "AlwaysOnTopManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AlwaysOnTop Serivce size is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const-string v13, "com.pantech.app.notepad"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isApplicationInstall(Ljava/lang/String;)Z

    move-result v7

    .line 1367
    .local v7, "isNoteAppExist":Z
    const-string v13, "com.pantech.app.calculator"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isApplicationInstall(Ljava/lang/String;)Z

    move-result v5

    .line 1368
    .local v5, "isCalculatorAppExist":Z
    const-string v13, "com.diotek.diodict3.phone.pantech.skydict"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->isApplicationInstall(Ljava/lang/String;)Z

    move-result v6

    .line 1370
    .local v6, "isDictionaryAppExist":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_4

    .line 1371
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 1372
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1373
    .local v12, "si":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v14, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    .local v1, "compName":Landroid/content/ComponentName;
    const-string v13, "android.permission.BIND_ALWAYS_ON_TOP"

    iget-object v14, v12, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1376
    const-string v13, "AlwaysOnTopManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping always on top method "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": it does not require the permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "android.permission.BIND_ALWAYS_ON_TOP"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1384
    :cond_0
    const-string v13, "AlwaysOnTopManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Checking packageName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v14, "com.pantech.app.aotnotepad"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    if-nez v7, :cond_1

    .line 1387
    const-string v13, "AlwaysOnTopManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Checking skip :: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1390
    :cond_1
    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v14, "com.pantech.app.aotcalculator"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    if-nez v5, :cond_2

    .line 1391
    const-string v13, "AlwaysOnTopManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Checking skip :: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1394
    :cond_2
    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v14, "com.pantech.app.aotdictionary"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-nez v6, :cond_3

    .line 1395
    const-string v13, "AlwaysOnTopManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Checking skip :: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1400
    :cond_3
    const-string v13, "AlwaysOnTopManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Checking "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :try_start_0
    new-instance v8, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13, v10}, Landroid/view/alwaysontop/AlwaysOnTopInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 1404
    .local v8, "p":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    invoke-virtual {v8}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 1406
    .local v4, "id":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 1408
    .end local v4    # "id":Ljava/lang/String;
    .end local v8    # "p":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :catch_0
    move-exception v2

    .line 1409
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v13, "AlwaysOnTopManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to load AlwaysOnTop Service "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1410
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 1411
    .local v2, "e":Ljava/io/IOException;
    const-string v13, "AlwaysOnTopManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to load AlwaysOnTop Serivce "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1415
    .end local v1    # "compName":Landroid/content/ComponentName;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v12    # "si":Landroid/content/pm/ServiceInfo;
    :cond_4
    return-void
.end method

.method checkModelInfo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 654
    const/4 v1, 0x0

    .line 655
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 656
    .local v2, "value":I
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mModelInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 657
    .local v0, "resId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 660
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 680
    :goto_0
    return v1

    .line 662
    :pswitch_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SINGLE_AOT:Z

    .line 663
    const-string v3, "com.pantech.server.aot.AlwaysOnTopMenuSingle"

    sput-object v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMenuClassName:Ljava/lang/String;

    .line 664
    const/4 v1, 0x1

    .line 665
    goto :goto_0

    .line 667
    :pswitch_1
    const/4 v3, 0x0

    sput-boolean v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SINGLE_AOT:Z

    .line 672
    const-string v3, "com.pantech.server.aot.AlwaysOnTopMenuMulti"

    sput-object v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMenuClassName:Ljava/lang/String;

    .line 674
    const/4 v1, 0x1

    .line 675
    goto :goto_0

    .line 660
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method createAlwaysOnTopEntryWindow()V
    .locals 4

    .prologue
    .line 1505
    const-string v1, "AlwaysOnTopManagerService"

    const-string v2, "createAlwaysOnTopEntryWindow()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1508
    const v0, 0x1030059

    .line 1510
    .local v0, "mTheme":I
    :try_start_0
    new-instance v1, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    .line 1511
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    invoke-virtual {v1, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->setWindowService(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    .line 1513
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->setCancelable(Z)V

    .line 1514
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->setCanceledOnTouchOutside(Z)V

    .line 1515
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    invoke-virtual {v1}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->showAotmWindow()V

    .line 1516
    monitor-exit v2

    .line 1517
    return-void

    .line 1516
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IInterface;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 998
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1004
    :goto_0
    return-void

    .line 1001
    :cond_0
    invoke-virtual {p0, p2}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 1002
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    goto :goto_0
.end method

.method public getAlwaysOnTopList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 712
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEnabledAlwaysOnTopList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 717
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 718
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->getEnabledAlwaysOnTopListLocked()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getEnabledAlwaysOnTopListLocked()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/alwaysontop/AlwaysOnTopInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v4, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopList:Ljava/util/ArrayList;

    .line 725
    .local v1, "aots":Ljava/util/List;, "Ljava/util/List<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 727
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 728
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 729
    .local v3, "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getIsDisableListResourceId()I

    move-result v5

    if-nez v5, :cond_0

    .line 730
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 733
    .end local v3    # "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_1
    return-object v4
.end method

.method public getMediaApp()Z
    .locals 3

    .prologue
    .line 1569
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1570
    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 1571
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 1574
    :cond_0
    const-string v0, "AlwaysOnTopManagerService"

    const-string v2, "not support api !!! ^^ getMediaApp"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRearTouchLongPress()Z
    .locals 3

    .prologue
    .line 1698
    const-string v0, "AlwaysOnTopManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRearTouchLongPress():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsLongPress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsLongPress:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1010
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage msg.what: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    move v3, v4

    .line 1187
    :goto_0
    return v3

    :sswitch_0
    move v3, v5

    .line 1015
    goto :goto_0

    .line 1018
    :sswitch_1
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->showAlwaysOnTopMenu()V

    move v3, v5

    .line 1019
    goto :goto_0

    .line 1022
    :sswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_0

    .line 1024
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->showAlwaysOnTop()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v5

    .line 1031
    goto :goto_0

    .line 1025
    :catch_0
    move-exception v1

    .line 1026
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail showAlwaysOnTop: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1029
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showAlwaysOnTop:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1034
    :sswitch_3
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 1037
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1040
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    if-ne v3, v5, :cond_1

    const-string v7, "com.pantech.app.alwaysoncall/.PCUAlwaysonCallActivity"

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1041
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10406dd

    const/4 v7, 0x1

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1042
    monitor-exit v6

    move v3, v5

    goto :goto_0

    .line 1045
    :cond_1
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 1047
    .local v2, "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    if-nez v2, :cond_2

    .line 1048
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "info is null!!:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    monitor-exit v6

    move v3, v4

    goto/16 :goto_0

    .line 1052
    :cond_2
    invoke-virtual {v2}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1054
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x10406ed

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget-boolean v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SINGLE_AOT:Z

    if-eqz v3, :cond_3

    iget-object v11, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSingleDockTitleMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    invoke-static {v4, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1058
    monitor-exit v6

    move v3, v5

    goto/16 :goto_0

    .line 1054
    :cond_3
    iget-object v11, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMultiDockTitleMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_2

    .line 1061
    :cond_4
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1062
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenu()V

    .line 1063
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v4, v7}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->setAlwaysOnTopLocked(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 1066
    :cond_5
    monitor-exit v6

    move v3, v5

    .line 1067
    goto/16 :goto_0

    .line 1066
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1070
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_7

    .line 1072
    :try_start_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->unbindAlwaysOnTopLocked()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1078
    :goto_3
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAotId:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 1079
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAotId:Ljava/lang/String;

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAppBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v3, v4, v5}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->setAlwaysOnTopLocked(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 1080
    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAotId:Ljava/lang/String;

    .line 1081
    iput-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAppBundle:Landroid/os/Bundle;

    :cond_6
    :goto_4
    move v3, v5

    .line 1087
    goto/16 :goto_0

    .line 1073
    :catch_1
    move-exception v1

    .line 1074
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail unbindAlwaysOnTopLocked: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1085
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unbindAlwaysOnTopLocked:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1090
    :sswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_8

    .line 1092
    :try_start_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->stopAlwaysOnTop()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    move v3, v5

    .line 1099
    goto/16 :goto_0

    .line 1093
    :catch_2
    move-exception v1

    .line 1094
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail stopAlwaysOnTop: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1097
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopAlwaysOnTop:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1102
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1105
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending attach of token: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/alwaysontopservice/IAlwaysOnTopInterface;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-interface {v3, v4}, Landroid/alwaysontopservice/IAlwaysOnTopInterface;->attachToken(Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_6
    move v3, v5

    .line 1111
    goto/16 :goto_0

    .line 1108
    :catch_3
    move-exception v1

    .line 1109
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail attachToken: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1114
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_9

    .line 1116
    :try_start_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4, v6}, Lcom/pantech/server/aot/AlwaysOnTopState;->sendMediaStateEvent(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_7
    move v3, v5

    .line 1123
    goto/16 :goto_0

    .line 1117
    :catch_4
    move-exception v1

    .line 1118
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail sendMediaStateEvent: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1121
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_9
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMediaStateEvent:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1126
    :sswitch_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_a

    .line 1128
    :try_start_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->saveState()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_8
    move v3, v5

    .line 1135
    goto/16 :goto_0

    .line 1129
    :catch_5
    move-exception v1

    .line 1130
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail saveState: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1133
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_a
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveState:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1138
    :sswitch_9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_b

    .line 1140
    :try_start_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->restoreState()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    :goto_9
    move v3, v5

    .line 1147
    goto/16 :goto_0

    .line 1141
    :catch_6
    move-exception v1

    .line 1142
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail restoreState: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1145
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_b
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreState:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1150
    :sswitch_a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_c

    .line 1152
    :try_start_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->skipAOTWindow()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    :goto_a
    move v3, v5

    .line 1159
    goto/16 :goto_0

    .line 1153
    :catch_7
    move-exception v1

    .line 1154
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail skipAOTWindow: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1157
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_c
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipAOTWindow:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1162
    :sswitch_b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_d

    .line 1164
    :try_start_9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->moveAOTFrame()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8

    :goto_b
    move v3, v5

    .line 1171
    goto/16 :goto_0

    .line 1165
    :catch_8
    move-exception v1

    .line 1166
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail moveAOTFrame :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1169
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_d
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveAOTFrame: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", msg.arg1 : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1175
    :sswitch_c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    if-eqz v3, :cond_e

    .line 1177
    :try_start_a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->visibleAOTFrame()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_9

    :goto_c
    move v3, v5

    .line 1184
    goto/16 :goto_0

    .line 1178
    :catch_9
    move-exception v1

    .line 1179
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail visibleAOTFrame :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1182
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_e
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "visibleAOTFrame: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", msg.arg1 : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1012
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x3fc -> :sswitch_2
        0x406 -> :sswitch_4
        0x410 -> :sswitch_3
        0x41a -> :sswitch_5
        0x424 -> :sswitch_6
        0x44c -> :sswitch_7
        0x4b0 -> :sswitch_8
        0x4ba -> :sswitch_9
        0x4c4 -> :sswitch_a
        0x514 -> :sswitch_b
        0x578 -> :sswitch_c
    .end sparse-switch
.end method

.method public hideAlwaysOnTop(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 840
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 841
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 842
    monitor-exit v2

    .line 852
    :goto_0
    return v1

    .line 845
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 846
    .local v0, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v0, :cond_1

    .line 848
    const-string v1, "AlwaysOnTopManagerService"

    const-string v3, "hideAlwaysOnTop"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x406

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 850
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 854
    .end local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 852
    .restart local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method hideAlwaysOnTopEntryWindow()V
    .locals 2

    .prologue
    .line 1532
    const-string v0, "AlwaysOnTopManagerService"

    const-string v1, "hideAlwaysOnTopEntryWindow()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1535
    :try_start_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    invoke-virtual {v0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->hideAotmWindow()V

    .line 1538
    :cond_0
    monitor-exit v1

    .line 1539
    return-void

    .line 1538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hideAlwaysOnTopMenu()V
    .locals 2

    .prologue
    .line 1478
    const-string v0, "AlwaysOnTopManagerService"

    const-string v1, "Hide always on top menu"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1481
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenuLocked()V

    .line 1482
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->showAlwaysOnTopEntryWindow()V

    .line 1483
    monitor-exit v1

    .line 1484
    return-void

    .line 1483
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hideAlwaysOnTopMenuLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1488
    const-string v0, "AlwaysOnTopManagerService"

    const-string v1, "Hide always on top menu Locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    if-eqz v0, :cond_0

    .line 1492
    const-string v0, "AlwaysOnTopManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alwyas on top menu isShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v2}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->hideAotMenuWindow()V

    .line 1494
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->dismiss()V

    .line 1495
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    .line 1498
    :cond_0
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1500
    iput-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAots:[Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 1501
    return-void
.end method

.method public isAlwaysOnTopRunning()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 876
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 877
    :try_start_0
    iget-boolean v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v5, :cond_0

    .line 878
    monitor-exit v4

    .line 895
    :goto_0
    return v3

    .line 882
    :cond_0
    const-string v5, "AlwaysOnTopManagerService"

    const-string v6, "isAlwaysOnTopRunning()"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 885
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 886
    .local v2, "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v2, :cond_1

    .line 887
    invoke-virtual {v2}, Lcom/pantech/server/aot/AlwaysOnTopState;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 888
    const/4 v3, 0x1

    monitor-exit v4

    goto :goto_0

    .line 896
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 893
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    const-string v5, "AlwaysOnTopManagerService"

    const-string v6, "isAlwaysOnTopRunning() not running"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isAlwaysOnTopRunningID(Ljava/lang/String;)Z
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 858
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 859
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 860
    monitor-exit v2

    .line 870
    :goto_0
    return v1

    .line 863
    :cond_0
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAlwaysOnTopRunning:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 866
    .local v0, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v0, :cond_1

    .line 867
    invoke-virtual {v0}, Lcom/pantech/server/aot/AlwaysOnTopState;->isRunning()Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 872
    .end local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 869
    .restart local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :cond_1
    :try_start_1
    const-string v3, "AlwaysOnTopManagerService"

    const-string v4, "isAlwaysOnTopRunning() not running"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method isApplicationInstall(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1334
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1338
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1339
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x1

    .line 1346
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    .local v1, "isAppExist":Z
    :goto_0
    return v1

    .line 1340
    .end local v1    # "isAppExist":Z
    :catch_0
    move-exception v0

    .line 1342
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 1344
    .restart local v1    # "isAppExist":Z
    const-string v4, "AlwaysOnTopManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not installed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isCameraRunning()I
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1627
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1629
    :try_start_0
    iget-boolean v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v5, :cond_0

    .line 1630
    monitor-exit v4

    .line 1643
    :goto_0
    return v1

    .line 1632
    :cond_0
    const/4 v0, 0x0

    .line 1635
    .local v0, "mCameraRunning":I
    invoke-static {}, Landroid/hardware/Camera;->isRunning()I

    move-result v5

    and-int/lit8 v0, v5, 0xf

    .line 1638
    if-ne v0, v2, :cond_1

    .line 1639
    monitor-exit v4

    move v1, v2

    goto :goto_0

    .line 1640
    :cond_1
    if-ne v0, v3, :cond_2

    .line 1641
    monitor-exit v4

    move v1, v3

    goto :goto_0

    .line 1643
    :cond_2
    monitor-exit v4

    goto :goto_0

    .line 1644
    .end local v0    # "mCameraRunning":I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMediaRunning(I)Z
    .locals 10
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1580
    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 1581
    :try_start_0
    iget-boolean v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v4, :cond_0

    .line 1582
    monitor-exit v7

    move v4, v5

    .line 1620
    :goto_0
    return v4

    .line 1585
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1616
    :pswitch_0
    const-string v4, "AlwaysOnTopManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isMediaRunning: default:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    const-string v4, "AlwaysOnTopManagerService"

    const-string v6, "isMediaRunning: false:"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    monitor-exit v7

    move v4, v5

    goto :goto_0

    .line 1588
    :pswitch_1
    invoke-static {}, Landroid/hardware/Camera;->isRunning()I

    move-result v4

    and-int/lit8 v1, v4, 0xf

    .line 1589
    .local v1, "mCameraRunning":I
    const-string v4, "AlwaysOnTopManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMediaRunning: mCameraRunning:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    if-eq v1, v6, :cond_1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 1591
    :cond_1
    monitor-exit v7

    move v4, v6

    goto :goto_0

    .line 1593
    :cond_2
    monitor-exit v7

    move v4, v5

    goto :goto_0

    .line 1598
    .end local v1    # "mCameraRunning":I
    :pswitch_2
    invoke-static {}, Landroid/media/MediaPlayer;->isRunningExceptAOT()Z

    move-result v4

    monitor-exit v7

    goto :goto_0

    .line 1621
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1604
    :pswitch_3
    :try_start_1
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1605
    .local v2, "manager":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1606
    .local v3, "taskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1607
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/view/alwaysontop/AlwaysOnTopManager;->isExceptionPackage(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 1608
    :try_start_2
    monitor-exit v7

    move v4, v6

    goto/16 :goto_0

    .line 1611
    .end local v2    # "manager":Landroid/app/ActivityManager;
    .end local v3    # "taskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v0

    .line 1612
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "AlwaysOnTopManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    goto/16 :goto_0

    .line 1585
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public moveAOTFrame()V
    .locals 7

    .prologue
    .line 1731
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1732
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 1733
    monitor-exit v4

    .line 1742
    :goto_0
    return-void

    .line 1735
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1736
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1737
    .local v0, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v0, :cond_1

    .line 1738
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x514

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1741
    .end local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public registerGyroSensorListener()Z
    .locals 4

    .prologue
    .line 1670
    const-string v0, "AlwaysOnTopManagerService"

    const-string v1, "registerGyroSensorListener()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 1672
    const-string v0, "AlwaysOnTopManagerService"

    const-string v1, "registerGyroSensorListener()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 1679
    :goto_0
    return v0

    .line 1677
    :cond_0
    const-string v0, "AlwaysOnTopManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerGyroSensorListener fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState()V
    .locals 3

    .prologue
    .line 920
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 921
    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 922
    monitor-exit v1

    return-void

    .line 924
    :cond_0
    const-string v0, "AlwaysOnTopManagerService"

    const-string v2, "not support api !!! ^^ restoreState"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 934
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreState(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 955
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 956
    :try_start_0
    iget-boolean v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 957
    monitor-exit v2

    .line 969
    :goto_0
    return-void

    .line 960
    :cond_0
    const-string v1, "AlwaysOnTopManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 963
    .local v0, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v0, :cond_1

    .line 964
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x4ba

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 968
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 966
    .restart local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :cond_1
    :try_start_1
    const-string v1, "AlwaysOnTopManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreState() info is null:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public saveState()V
    .locals 3

    .prologue
    .line 900
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 901
    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 902
    monitor-exit v1

    return-void

    .line 905
    :cond_0
    const-string v0, "AlwaysOnTopManagerService"

    const-string v2, "not support api !!! ^^ saveState"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 915
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveState(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 938
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 939
    :try_start_0
    iget-boolean v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 940
    monitor-exit v2

    .line 952
    :goto_0
    return-void

    .line 943
    :cond_0
    const-string v1, "AlwaysOnTopManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 946
    .local v0, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v0, :cond_1

    .line 947
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x4b0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 951
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 949
    .restart local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :cond_1
    :try_start_1
    const-string v1, "AlwaysOnTopManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveState() info is null:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public sendCallEvent(I)V
    .locals 8
    .param p1, "event"    # I

    .prologue
    .line 1749
    const-string v4, "AlwaysOnTopManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCallEvent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 1752
    packed-switch p1, :pswitch_data_0

    .line 1796
    :try_start_0
    const-string v4, "AlwaysOnTopManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendCallEvent: default:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :goto_0
    monitor-exit v5

    .line 1800
    return-void

    .line 1755
    :pswitch_0
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v4}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1756
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenu()V

    .line 1758
    :cond_0
    iget-boolean v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1759
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1760
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1761
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1762
    .local v3, "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1763
    .local v2, "id":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, "com.pantech.app.alwaysoncall/.PCUAlwaysonCallActivity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1764
    invoke-virtual {p0, v2}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->saveState(Ljava/lang/String;)V

    .line 1765
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    invoke-virtual {p0, v2}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->stopAlwaysOnTop(Ljava/lang/String;)Z

    goto :goto_1

    .line 1799
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1770
    :cond_2
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    goto :goto_0

    .line 1774
    :pswitch_1
    iget-boolean v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1775
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    .line 1776
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopSaveStateMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1777
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1778
    .restart local v2    # "id":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1780
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1781
    .restart local v3    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    const-string v4, "com.pantech.app.aotfolder/.AOTFolder"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "persist.launcher2.aotfolder"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    .line 1782
    const-string v4, "AlwaysOnTopManagerService"

    const-string v6, "sendCallEvent : AOTFolder is not exist "

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1785
    :cond_4
    invoke-virtual {v3}, Lcom/pantech/server/aot/AlwaysOnTopState;->getAotAppBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->startAlwaysOnTopEx(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_2

    .line 1791
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    :cond_5
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1752
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public sendMediaStateEvent(II)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "state"    # I

    .prologue
    .line 1542
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1543
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 1544
    monitor-exit v4

    .line 1556
    :goto_0
    return-void

    .line 1547
    :cond_0
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMediaStateEvent: type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1550
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1551
    .local v0, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v0, :cond_1

    .line 1552
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x44c

    invoke-virtual {v5, v6, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1555
    .end local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public serviceTest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 684
    const-string v0, "AlwaysOnTopManagerService"

    const-string v1, "AlwaysOnTop Service Test.."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-void
.end method

.method setAlwaysOnTopLocked(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 21
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "restart"    # Z

    .prologue
    .line 1194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 1195
    .local v7, "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAlwaysOnTopLocked() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    if-nez v7, :cond_0

    .line 1198
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1201
    :cond_0
    const/4 v2, 0x0

    .line 1202
    .local v2, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    sget-boolean v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SINGLE_AOT:Z

    if-eqz v3, :cond_6

    .line 1203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 1204
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    check-cast v2, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1205
    .restart local v2    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v2, :cond_1

    .line 1206
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1207
    .local v15, "curId":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1208
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->stopAlwaysOnTop(Ljava/lang/String;)Z

    .line 1209
    const/4 v2, 0x0

    .line 1266
    .end local v15    # "curId":Ljava/lang/String;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/pantech/server/aot/AlwaysOnTopState;->isValid()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1267
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove aot state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    const/4 v2, 0x0

    .line 1272
    :cond_3
    if-nez v2, :cond_7

    .line 1275
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mStateLoopCount:I

    .line 1279
    new-instance v2, Lcom/pantech/server/aot/AlwaysOnTopState;

    .end local v2    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/pantech/server/aot/AlwaysOnTopState;-><init>(Landroid/content/Context;Lcom/pantech/server/aot/AlwaysOnTopManagerService;Ljava/lang/String;Landroid/os/Bundle;Landroid/view/alwaysontop/AlwaysOnTopInfo;)V

    .line 1284
    .restart local v2    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :try_start_0
    invoke-virtual {v2}, Lcom/pantech/server/aot/AlwaysOnTopState;->startAlwaysOnTopInnerLocked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    :cond_4
    :goto_1
    return-void

    .line 1212
    .restart local v15    # "curId":Ljava/lang/String;
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_5
    if-eqz p2, :cond_2

    .line 1214
    invoke-virtual {v2}, Lcom/pantech/server/aot/AlwaysOnTopState;->getAotAppBundle()Landroid/os/Bundle;

    move-result-object v19

    .line 1215
    .local v19, "stateBundle":Landroid/os/Bundle;
    if-eqz v19, :cond_2

    .line 1216
    const-string v3, "android.alwaysontopservice.aot.widget_db_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1217
    .local v13, "curBundleId":J
    const-string v3, "android.alwaysontopservice.aot.widget_db_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1219
    .local v11, "bundleId":J
    cmp-long v3, v13, v11

    if-eqz v3, :cond_2

    .line 1220
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAotId:Ljava/lang/String;

    .line 1221
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mNextAppBundle:Landroid/os/Bundle;

    .line 1222
    const/4 v2, 0x0

    .line 1223
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->stopAlwaysOnTop(Ljava/lang/String;)Z

    goto :goto_1

    .line 1263
    .end local v11    # "bundleId":J
    .end local v13    # "curBundleId":J
    .end local v15    # "curId":Ljava/lang/String;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "stateBundle":Landroid/os/Bundle;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    check-cast v2, Lcom/pantech/server/aot/AlwaysOnTopState;

    .restart local v2    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    goto/16 :goto_0

    .line 1288
    :catch_0
    move-exception v16

    .line 1289
    .local v16, "e":Ljava/lang/RuntimeException;
    const-string v3, "AlwaysOnTopManagerService"

    const-string v4, "Unexpected exception"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1295
    .end local v16    # "e":Ljava/lang/RuntimeException;
    :cond_7
    invoke-virtual {v2}, Lcom/pantech/server/aot/AlwaysOnTopState;->getAOTState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 1296
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mStateLoopCount:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_8

    .line 1297
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loop count is max. fail start aot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1300
    :cond_8
    move-object/from16 v9, p1

    .line 1301
    .local v9, "aotId":Ljava/lang/String;
    move-object/from16 v8, p2

    .line 1302
    .local v8, "aotBundle":Landroid/os/Bundle;
    move/from16 v10, p3

    .line 1303
    .local v10, "aotRestart":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9, v8, v10}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$3;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;Ljava/lang/String;Landroid/os/Bundle;Z)V

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1311
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mStateLoopCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mStateLoopCount:I

    goto/16 :goto_1

    .line 1317
    .end local v8    # "aotBundle":Landroid/os/Bundle;
    .end local v9    # "aotId":Ljava/lang/String;
    .end local v10    # "aotRestart":Z
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mStateLoopCount:I

    .line 1319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3fc

    const/4 v6, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v5, v6, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method

.method public setMediaApp(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 1559
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1560
    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 1561
    monitor-exit v1

    .line 1566
    :goto_0
    return-void

    .line 1563
    :cond_0
    const-string v0, "AlwaysOnTopManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMediaApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    iput-boolean p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsMediaApp:Z

    .line 1565
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRearTouchLongPress(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 1693
    const-string v0, "AlwaysOnTopManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRearTouchLongPress(): flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsLongPress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsLongPress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iput-boolean p1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsLongPress:Z

    .line 1695
    return-void
.end method

.method public setShowOnList(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 1719
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1720
    :try_start_0
    const-string v0, "AlwaysOnTopManagerService"

    const-string v2, "setShowOnList()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 1722
    const-string v0, "AlwaysOnTopManagerService"

    const-string v2, "service not running!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    const/4 v0, 0x0

    monitor-exit v1

    .line 1726
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->setShowOnList(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 1727
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method showAlwaysOnTopEntryWindow()V
    .locals 2

    .prologue
    .line 1521
    const-string v0, "AlwaysOnTopManagerService"

    const-string v1, "showAlwaysOnTopEntryWindow()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1524
    :try_start_0
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAotEntryWindow:Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;

    invoke-virtual {v0}, Lcom/pantech/server/aot/AlwaysOnTopManagerWindow;->showAotmWindow()V

    .line 1527
    :cond_0
    monitor-exit v1

    .line 1528
    return-void

    .line 1527
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method showAlwaysOnTopMenu()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 1419
    const-string v8, "AlwaysOnTopManagerService"

    const-string v9, "Show always on top menu"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-boolean v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    if-eqz v8, :cond_1

    .line 1422
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    const v9, 0x10406dd

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 1426
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenuLocked()V

    .line 1428
    const v6, 0x10301e5

    .line 1431
    .local v6, "mTheme":I
    :try_start_0
    sget-object v8, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMenuClassName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1432
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    .line 1433
    const/4 v8, 0x4

    new-array v0, v8, [Ljava/lang/Class;

    .line 1434
    .local v0, "arg":[Ljava/lang/Class;
    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v0, v8

    .line 1435
    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v0, v8

    .line 1436
    const/4 v8, 0x2

    const-class v9, Ljava/util/List;

    aput-object v9, v0, v8

    .line 1437
    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v0, v8

    .line 1438
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1439
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopList:Ljava/util/ArrayList;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-boolean v10, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsCalling:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1440
    .local v7, "obj":Ljava/lang/Object;
    check-cast v7, Lcom/pantech/server/aot/AlwaysOnTopMenu;

    .end local v7    # "obj":Ljava/lang/Object;
    iput-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1454
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v8, p0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->setWindowService(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    .line 1456
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v8, v11}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->setCancelable(Z)V

    .line 1457
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    new-instance v9, Lcom/pantech/server/aot/AlwaysOnTopManagerService$4;

    invoke-direct {v9, p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService$4;-><init>(Lcom/pantech/server/aot/AlwaysOnTopManagerService;)V

    invoke-virtual {v8, v9}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1464
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v8}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 1465
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v8, 0x7e1

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1466
    const-string v8, "AlwaysOnTopMenu"

    invoke-virtual {v5, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1467
    const/16 v8, 0x50

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1468
    const/4 v8, -0x1

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1469
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v8}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1470
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v8, v11}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->setCanceledOnTouchOutside(Z)V

    .line 1471
    iget-object v8, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v8}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->showAotMenuWindow()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1472
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenuLocked()V

    goto/16 :goto_0

    .line 1442
    .end local v0    # "arg":[Ljava/lang/Class;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    :try_start_1
    const-string v8, "AlwaysOnTopManagerService"

    const-string v9, "Class Not Found!!!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1445
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 1446
    .local v4, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v8, "AlwaysOnTopManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Class Not Found:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMenuClassName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1449
    .end local v4    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    .line 1450
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "AlwaysOnTopManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Class Not Found:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mMenuClassName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public showAlwaysOnTopPicker()V
    .locals 3

    .prologue
    .line 737
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 739
    :try_start_0
    const-string v0, "AlwaysOnTopManagerService"

    const-string v2, "showAlwaysOnTopPicker"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSwitchingDialog:Lcom/pantech/server/aot/AlwaysOnTopMenu;

    invoke-virtual {v0}, Lcom/pantech/server/aot/AlwaysOnTopMenu;->isShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 751
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 752
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->hideAlwaysOnTopMenuLocked()V

    .line 753
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 758
    return-void

    .line 753
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 757
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 755
    :cond_0
    :try_start_5
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public skipAOTWindow()V
    .locals 9

    .prologue
    .line 972
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 973
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 974
    monitor-exit v4

    .line 995
    :goto_0
    return-void

    .line 976
    :cond_0
    const-string v3, "AlwaysOnTopManagerService"

    const-string v5, "skipAOTWindow()"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 988
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 989
    .local v2, "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/pantech/server/aot/AlwaysOnTopState;->getAOTState()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    .line 990
    const-string v5, "AlwaysOnTopManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipAOTWindow():"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x4c4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 994
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startAlwaysOnTop(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 762
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->startAlwaysOnTopEx(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startAlwaysOnTopEx(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 768
    iget-object v6, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 769
    :try_start_0
    iget-boolean v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v7, :cond_0

    .line 770
    monitor-exit v6

    .line 795
    :goto_0
    return v5

    .line 774
    :cond_0
    const-string v7, "AlwaysOnTopManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startAlwaysOnTop:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopList:Ljava/util/ArrayList;

    .line 777
    .local v1, "aots":Ljava/util/List;, "Ljava/util/List<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 778
    .local v0, "N":I
    const/4 v3, 0x0

    .line 779
    .local v3, "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 780
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/alwaysontop/AlwaysOnTopInfo;

    .line 781
    .local v4, "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    invoke-virtual {v4}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 782
    move-object v3, v4

    .line 786
    .end local v4    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_1
    if-eqz v3, :cond_3

    .line 788
    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v8, 0x410

    invoke-virtual {v3}, Landroid/view/alwaysontop/AlwaysOnTopInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 791
    const/4 v5, 0x1

    monitor-exit v6

    goto :goto_0

    .line 796
    .end local v0    # "N":I
    .end local v1    # "aots":Ljava/util/List;, "Ljava/util/List<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 779
    .restart local v0    # "N":I
    .restart local v1    # "aots":Ljava/util/List;, "Ljava/util/List<Landroid/view/alwaysontop/AlwaysOnTopInfo;>;"
    .restart local v2    # "i":I
    .restart local v3    # "info":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    .restart local v4    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 793
    .end local v4    # "property":Landroid/view/alwaysontop/AlwaysOnTopInfo;
    :cond_3
    :try_start_1
    const-string v7, "AlwaysOnTopManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startAlwaysOnTop() info is null:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stopAllAlwaysOnTop()Z
    .locals 7

    .prologue
    .line 821
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 822
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 823
    const/4 v3, 0x0

    monitor-exit v4

    .line 835
    :goto_0
    return v3

    .line 826
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 828
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    const-string v5, "AlwaysOnTopManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopAllAlwaysOnTop:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 831
    .local v2, "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v2, :cond_1

    .line 832
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x406

    invoke-virtual {v5, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 836
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "state":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 835
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stopAlwaysOnTop(Ljava/lang/String;)Z
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 801
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 802
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 803
    monitor-exit v2

    .line 816
    :goto_0
    return v1

    .line 807
    :cond_0
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopAlwaysOnTop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 810
    .local v0, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    if-eqz v0, :cond_1

    .line 811
    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x41a

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 812
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 817
    .end local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 814
    .restart local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    :cond_1
    :try_start_1
    const-string v3, "AlwaysOnTopManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopAlwaysOnTop() info is null:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 688
    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 689
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 690
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    .line 691
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 694
    sget-boolean v3, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->SINGLE_AOT:Z

    if-nez v3, :cond_0

    .line 695
    const-string v3, "persist.launcher2.aotfolder"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 696
    .local v0, "aotFolderExist":Z
    :goto_0
    const-string v1, "com.pantech.app.aotfolder/.AOTFolder"

    invoke-virtual {p0, v1, v0}, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->setShowOnList(Ljava/lang/String;Z)Z

    .line 707
    .end local v0    # "aotFolderExist":Z
    :cond_0
    monitor-exit v2

    .line 708
    return-void

    :cond_1
    move v0, v1

    .line 695
    goto :goto_0

    .line 707
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unRegisterGyroSensorListener()V
    .locals 3

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 1684
    const-string v0, "AlwaysOnTopManagerService"

    const-string v1, "unRegisterGyroSensorListener()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget-object v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1689
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mIsLongPress:Z

    .line 1690
    return-void

    .line 1687
    :cond_0
    const-string v0, "AlwaysOnTopManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterGyroSensorListener fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public visibleAOTFrame(Z)V
    .locals 7
    .param p1, "flipFlag"    # Z

    .prologue
    .line 1806
    iget-object v4, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1807
    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 1808
    monitor-exit v4

    .line 1818
    :goto_0
    return-void

    .line 1810
    :cond_0
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mAlwaysOnTopStateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1811
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/server/aot/AlwaysOnTopState;

    .line 1812
    .local v0, "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    invoke-virtual {v0, p1}, Lcom/pantech/server/aot/AlwaysOnTopState;->setFlipValue(Z)V

    .line 1813
    if-eqz v0, :cond_1

    .line 1814
    iget-object v3, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/pantech/server/aot/AlwaysOnTopManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x578

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1817
    .end local v0    # "aotState":Lcom/pantech/server/aot/AlwaysOnTopState;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pantech/server/aot/AlwaysOnTopState;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
