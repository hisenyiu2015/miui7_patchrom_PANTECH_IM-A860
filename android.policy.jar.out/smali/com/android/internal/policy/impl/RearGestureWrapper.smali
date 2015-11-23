.class public Lcom/android/internal/policy/impl/RearGestureWrapper;
.super Lcom/android/internal/policy/impl/RearGestureDetector$SimpleOnGestureListener;
.source "RearGestureWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/RearGestureWrapper$RearGestureHandler;
    }
.end annotation


# static fields
.field public static final ACTION_SCREEN_SHOT:Ljava/lang/String; = "android.intent.action.ACTION_REAR_TOUCH_SCREEN_SHOT"

.field private static final DEBUG:Z = true

.field private static final DOUBLE_TAB_SKIP_MOVE_Y:I = 0xa

.field private static final DOUBLE_TAB_SKIP_TIME:I = 0x6e

.field private static final FLING_MAX_OFF_PATH:I = 0x190

.field private static final FLING_MIN_DISTANCE:I = 0x0

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x32

.field public static final GESTURE_DOWN:I = 0x9

.field public static final GESTURE_DOWN_F:I = 0xa

.field public static final GESTURE_DOWN_FF:I = 0xb

.field private static final GESTURE_FLING_DOWN_SKIP_TIME:I = 0x23

.field private static final GESTURE_FLING_LEFT_RIGHT_SKIP_TIME:I = 0x23

.field private static final GESTURE_FLING_UP_SKIP_TIME:I = 0x23

.field public static final GESTURE_LEFT:I = 0x0

.field public static final GESTURE_LEFT_F:I = 0x1

.field public static final GESTURE_LEFT_FF:I = 0x2

.field public static final GESTURE_RIGHT:I = 0x3

.field public static final GESTURE_RIGHT_F:I = 0x4

.field public static final GESTURE_RIGHT_FF:I = 0x5

.field public static final GESTURE_UP:I = 0x6

.field public static final GESTURE_UP_F:I = 0x7

.field public static final GESTURE_UP_FF:I = 0x8

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x1

.field private static final SCRATCH_TAB_SKIP_TIME:I = 0xc8

.field private static final SCRATCH_THRESHOLD_COUNT:I = 0x3

.field private static final SCRATCH_THRESHOLD_DISTANCE_X:I = 0xa

.field private static final SCRATCH_THRESHOLD_DISTANCE_Y:I = 0xa

.field private static final TAG:Ljava/lang/String; = "RearGestureWrapper"

.field private static final TPPE_REAR_TOUCH_FOCUS_MOVE:I = 0x2

.field private static final TPPE_REAR_TOUCH_MOUSE:I = 0x1

.field private static final TYPE_REAR_TOUCH:I

.field private static final mSkipDoubleTabRect:Landroid/graphics/Rect;


# instance fields
.field private final GESTURE_VELOCITY_FAST:I

.field private final GESTURE_VELOCITY_NORMAL:I

.field private final MOTION_EVENT_CENTER_X:I

.field private final MOTION_EVENT_CENTER_Y:I

.field private final MOTION_EVENT_MOVE_POSITION_MAX:I

.field private final MOTION_EVENT_MOVE_TIME_MAX:I

.field final SKYSYSTEM_CLASS_NAME:Ljava/lang/String;

.field private mActionEvent:[I

.field mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

.field mContext:Landroid/content/Context;

.field mCountX:I

.field mCountY:I

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDisableRearTouch:Z

.field mDistanceX:F

.field mDistanceY:F

.field private mDoubleTapTouchSlop:I

.field mEnable:Z

.field mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

.field private mGestureSend:Z

.field private final mHandler:Landroid/os/Handler;

.field mInTouchDown:Z

.field mInitialScratchEvent:Landroid/view/MotionEvent;

.field private mIsDoubleTab:Z

.field private mIsDoubleTabSend:Z

.field private mIsFocusMove:Z

.field private mIsGestureSend:Z

.field private mLeftRightActionEvent:[I

.field private mLongPressSlop:I

.field mMotionEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveScale:[I

.field private mMoveScale_F:[I

.field private mMoveScale_FF:[I

.field private mMoveScale_FFF:[I

.field private mOldAction:I

.field private mOldCallback:Landroid/view/Window$RearCallback;

.field mPrevX:Z

.field mPrevY:Z

.field private mSKYSystem_GetString:Ljava/lang/reflect/Method;

.field mSaveMoveY:I

.field mSendScratch:Z

.field private mTimeScale:[I

.field private mTimeScale_F:[I

.field private mTimeScale_FF:[I

.field private mTimeScale_FFF:[I

.field mWindow:Landroid/view/Window;

.field mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x118

    const/16 v1, 0x77

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSkipDoubleTabRect:Landroid/graphics/Rect;

    .line 76
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->LONGPRESS_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/RearGestureWrapper;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x7

    const/4 v9, 0x0

    .line 140
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RearGestureDetector$SimpleOnGestureListener;-><init>()V

    .line 67
    iput v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSaveMoveY:I

    .line 69
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mInTouchDown:Z

    .line 78
    iput-object v11, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mInitialScratchEvent:Landroid/view/MotionEvent;

    .line 79
    iput v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    .line 80
    iput v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    .line 81
    iput v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    .line 82
    iput v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    .line 99
    const/16 v10, 0x30

    iput v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mLongPressSlop:I

    .line 101
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsFocusMove:Z

    .line 102
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    .line 103
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsGestureSend:Z

    .line 104
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    .line 106
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDisableRearTouch:Z

    .line 108
    iput-object v11, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindowManager:Landroid/view/IWindowManager;

    .line 110
    const-string v10, "com.pantech.providers.skysettings.SKYSystem"

    iput-object v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->SKYSYSTEM_CLASS_NAME:Ljava/lang/String;

    .line 874
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0x14

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mMotionEventList:Ljava/util/ArrayList;

    .line 876
    const/16 v10, 0x12c

    iput v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->MOTION_EVENT_MOVE_POSITION_MAX:I

    .line 877
    const/16 v10, 0xdc

    iput v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->MOTION_EVENT_MOVE_TIME_MAX:I

    .line 878
    const/16 v10, 0x21c

    iput v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->MOTION_EVENT_CENTER_X:I

    .line 879
    const/16 v10, 0x3c0

    iput v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->MOTION_EVENT_CENTER_Y:I

    .line 881
    const/16 v10, 0x7d0

    iput v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->GESTURE_VELOCITY_NORMAL:I

    .line 882
    const/16 v10, 0xdac

    iput v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->GESTURE_VELOCITY_FAST:I

    .line 897
    new-array v10, v12, [I

    fill-array-data v10, :array_0

    iput-object v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mActionEvent:[I

    .line 905
    new-array v10, v12, [I

    fill-array-data v10, :array_1

    iput-object v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mMoveScale_F:[I

    .line 906
    new-array v10, v12, [I

    fill-array-data v10, :array_2

    iput-object v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mTimeScale_F:[I

    .line 908
    new-array v10, v12, [I

    fill-array-data v10, :array_3

    iput-object v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mMoveScale_FF:[I

    .line 909
    new-array v10, v12, [I

    fill-array-data v10, :array_4

    iput-object v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mTimeScale_FF:[I

    .line 911
    new-array v10, v12, [I

    fill-array-data v10, :array_5

    iput-object v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mMoveScale_FFF:[I

    .line 912
    new-array v10, v12, [I

    fill-array-data v10, :array_6

    iput-object v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mTimeScale_FFF:[I

    .line 914
    new-array v10, v12, [I

    fill-array-data v10, :array_7

    iput-object v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mMoveScale:[I

    .line 915
    new-array v10, v12, [I

    fill-array-data v10, :array_8

    iput-object v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mTimeScale:[I

    .line 917
    new-array v10, v12, [I

    fill-array-data v10, :array_9

    iput-object v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mLeftRightActionEvent:[I

    .line 141
    const/4 v6, 0x0

    .line 142
    .local v6, "supportApp":Z
    iput-object p2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    .line 143
    iput-object p1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    .line 147
    const-string v10, "alwaysontop"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/alwaysontop/IAlwaysOnTop;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

    .line 149
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "rear_touch"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    .line 151
    .local v7, "type":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "rear_touch_support_app"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v10

    if-ne v10, v8, :cond_1

    move v6, v8

    .line 153
    :goto_0
    if-nez v7, :cond_2

    move v10, v9

    :goto_1
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnable:Z

    .line 154
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsFocusMove:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v7    # "type":I
    :goto_2
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    .line 163
    new-instance v10, Lcom/android/internal/policy/impl/RearGestureWrapper$RearGestureHandler;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/RearGestureWrapper$RearGestureHandler;-><init>(Lcom/android/internal/policy/impl/RearGestureWrapper;)V

    iput-object v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mHandler:Landroid/os/Handler;

    .line 164
    iput v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSaveMoveY:I

    .line 166
    iget-object v10, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 167
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    .line 168
    iget-boolean v10, v3, Landroid/content/pm/ApplicationInfo;->supportRearTouch:Z

    if-nez v10, :cond_3

    if-eqz v6, :cond_3

    :goto_3
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDisableRearTouch:Z

    .line 172
    :cond_0
    :try_start_1
    const-string v8, "com.pantech.providers.skysettings.SKYSystem"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 173
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_4

    .line 174
    const/4 v8, 0x2

    new-array v4, v8, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/ContentResolver;

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v4, v8

    .line 175
    .local v4, "parameterTypes":[Ljava/lang/Class;
    const-string v8, "getString"

    invoke-virtual {v0, v8, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSKYSystem_GetString:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 185
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "parameterTypes":[Ljava/lang/Class;
    :goto_4
    return-void

    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "type":I
    :cond_1
    move v6, v9

    .line 151
    goto :goto_0

    :cond_2
    move v10, v8

    .line 153
    goto :goto_1

    .line 155
    .end local v7    # "type":I
    :catch_0
    move-exception v5

    .line 156
    .local v5, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnable:Z

    goto :goto_2

    .end local v5    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    move v8, v9

    .line 168
    goto :goto_3

    .line 178
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :try_start_2
    const-string v8, "RearGestureWrapper"

    const-string v9, "cls is Null!!!(SKYSystem)"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 180
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 181
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    const-string v8, "RearGestureWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Class Not Found:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 182
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "RearGestureWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Class Not Found(Exception):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 897
    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    .line 905
    :array_1
    .array-data 4
        0x0
        0x1e
        0x3c
        0x6e
        0x28
        0x28
        0x0
    .end array-data

    .line 906
    :array_2
    .array-data 4
        0x0
        0x3c
        0x1e
        0x46
        0x1e
        0x14
        0xa
    .end array-data

    .line 908
    :array_3
    .array-data 4
        0x0
        0x1e
        0x3c
        0x46
        0x5a
        0x64
        0x0
    .end array-data

    .line 909
    :array_4
    .array-data 4
        0x0
        0x1e
        0x1e
        0x1e
        0x1e
        0x14
        0xa
    .end array-data

    .line 911
    :array_5
    .array-data 4
        0x0
        0x1e
        0x5a
        0x78
        0x96
        0xc8
        0x0
    .end array-data

    .line 912
    :array_6
    .array-data 4
        0x0
        0xf
        0xf
        0xf
        0xf
        0xf
        0xa
    .end array-data

    .line 914
    :array_7
    .array-data 4
        0x0
        0x3c
        0x78
        0xc8
        0x50
        0x32
        0x0
    .end array-data

    .line 915
    :array_8
    .array-data 4
        0x0
        0x3c
        0x1e
        0x46
        0x1e
        0x14
        0xa
    .end array-data

    .line 917
    :array_9
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/RearGestureWrapper;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/RearGestureWrapper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/RearGestureWrapper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/RearGestureWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    return-void
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 800
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 802
    .local v0, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 803
    const-string v1, "RearGestureWrapper"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_0
    return-object v0
.end method

.method private initScratch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 347
    iput-object p1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mInitialScratchEvent:Landroid/view/MotionEvent;

    .line 348
    iput v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    iput v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    iput v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    .line 350
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevY:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevX:Z

    .line 351
    return-void
.end method

.method private measureScratch(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v6, 0x2

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 354
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_3

    .line 355
    const-string v0, "RearGestureWrapper"

    const-string v3, "mDistanceX = 0"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevX:Z

    .line 357
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevY:Z

    .line 358
    const-string v0, "RearGestureWrapper"

    const-string v3, "mDistanceX:%f, mDistanceY:%f, distanceX:%f, distanceY:%f,"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v6

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iput p3, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    .line 360
    iput p4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    .line 392
    :cond_0
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/RearGestureWrapper;->notiScratchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    .line 393
    return-void

    :cond_1
    move v0, v2

    .line 356
    goto :goto_0

    :cond_2
    move v0, v2

    .line 357
    goto :goto_1

    .line 362
    :cond_3
    const-string v0, "RearGestureWrapper"

    const-string v3, "mDistanceX:%f, mDistanceY:%f, distanceX:%f, distanceY:%f,"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_8

    .line 364
    cmpl-float v0, p3, v7

    if-lez v0, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    cmpg-float v0, v0, v7

    if-ltz v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_7

    cmpg-float v0, p3, v7

    if-gez v0, :cond_7

    .line 365
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevX:Z

    if-ne v0, v1, :cond_6

    cmpg-float v0, p3, v7

    if-gez v0, :cond_6

    .line 366
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    .line 367
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevX:Z

    if-nez v0, :cond_d

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevX:Z

    .line 369
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevX:Z

    if-nez v0, :cond_7

    cmpl-float v0, p3, v7

    if-lez v0, :cond_7

    .line 370
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    .line 371
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevX:Z

    if-nez v0, :cond_e

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevX:Z

    .line 374
    :cond_7
    iput p3, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceX:F

    .line 377
    :cond_8
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_0

    .line 378
    cmpl-float v0, p4, v7

    if-lez v0, :cond_9

    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    cmpg-float v0, v0, v7

    if-ltz v0, :cond_a

    :cond_9
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_c

    cmpg-float v0, p4, v7

    if-gez v0, :cond_c

    .line 379
    :cond_a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevY:Z

    if-ne v0, v1, :cond_b

    cmpg-float v0, p4, v7

    if-gez v0, :cond_b

    .line 380
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    .line 381
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevY:Z

    if-nez v0, :cond_f

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevY:Z

    .line 383
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevY:Z

    if-nez v0, :cond_c

    cmpl-float v0, p4, v7

    if-lez v0, :cond_c

    .line 384
    iget v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    .line 385
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevY:Z

    if-nez v0, :cond_10

    :goto_6
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mPrevY:Z

    .line 388
    :cond_c
    iput p4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDistanceY:F

    goto/16 :goto_2

    :cond_d
    move v0, v2

    .line 367
    goto :goto_3

    :cond_e
    move v0, v2

    .line 371
    goto :goto_4

    :cond_f
    move v0, v2

    .line 381
    goto :goto_5

    :cond_10
    move v1, v2

    .line 385
    goto :goto_6
.end method

.method private notiScratchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev1"    # Landroid/view/MotionEvent;
    .param p2, "ev2"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 396
    const/4 v2, 0x0

    .line 397
    .local v2, "ret":Z
    const-string v7, "RearGestureWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notiScratchEvent() mCountX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mCountY:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mSendScratch:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getRearCallback()Landroid/view/Window$RearCallback;

    move-result-object v0

    .line 400
    .local v0, "cb":Landroid/view/Window$RearCallback;
    :goto_0
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsFocusMove:Z

    if-eqz v7, :cond_5

    .line 401
    iget v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    iget v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    add-int/2addr v7, v8

    if-lt v7, v10, :cond_1

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    if-nez v7, :cond_1

    .line 402
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    .line 403
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    .line 404
    if-eqz v0, :cond_4

    .line 405
    invoke-interface {v0, p1, p2}, Landroid/view/Window$RearCallback;->onScratchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    .line 406
    if-nez v2, :cond_0

    .line 407
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendEvent(I)V

    .line 411
    :cond_0
    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    .line 413
    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    if-eqz v5, :cond_2

    .line 414
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    :cond_2
    move v6, v2

    .line 448
    :goto_2
    return v6

    .line 398
    .end local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 409
    .restart local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_4
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendEvent(I)V

    goto :goto_1

    .line 418
    :cond_5
    if-eqz v0, :cond_9

    .line 419
    iget v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountX:I

    iget v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCountY:I

    add-int/2addr v7, v8

    if-lt v7, v10, :cond_8

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    if-nez v7, :cond_8

    .line 420
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    .line 421
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    if-eqz v7, :cond_6

    .line 422
    const-string v5, "RearGestureWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notiScratchEvent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 425
    :cond_6
    const/16 v4, 0xc8

    .line 426
    .local v4, "time":I
    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    .line 427
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-int v4, v7

    .line 429
    :cond_7
    const/16 v7, 0xc8

    if-ge v4, v7, :cond_a

    .line 430
    const-string v5, "RearGestureWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cancel notiScratchEvent() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_3
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    .line 445
    .end local v4    # "time":I
    :cond_8
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    if-eqz v5, :cond_9

    .line 446
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSendScratch:Z

    :cond_9
    move v6, v2

    .line 448
    goto :goto_2

    .line 432
    .restart local v4    # "time":I
    :cond_a
    const/4 v1, 0x0

    .line 434
    .local v1, "isReceiveCall":Z
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "rear_touch_call"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_b

    move v1, v5

    .line 438
    :goto_4
    if-eqz v1, :cond_c

    .line 439
    invoke-interface {v0, p1, p2}, Landroid/view/Window$RearCallback;->onScratchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_3

    :cond_b
    move v1, v6

    .line 434
    goto :goto_4

    .line 435
    :catch_0
    move-exception v3

    .line 436
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    goto :goto_4

    .line 441
    .end local v3    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_c
    const-string v5, "RearGestureWrapper"

    const-string v7, "rear_touch_call is off"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private declared-synchronized sendFlingEvent(II)Z
    .locals 20
    .param p1, "type"    # I
    .param p2, "velocity"    # I

    .prologue
    .line 928
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v11

    .line 929
    .local v11, "disp":Landroid/view/Display;
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 930
    .local v16, "size":Landroid/graphics/Point;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 931
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 932
    .local v3, "downTime":J
    const-wide/16 v5, 0x0

    .line 933
    .local v5, "eventTime":J
    const/4 v12, 0x0

    .line 934
    .local v12, "i":I
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v2, 0x2

    .line 935
    .local v7, "baseX":I
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v8, v2, 0x2

    .line 939
    .local v8, "baseY":I
    sparse-switch p1, :sswitch_data_0

    .line 966
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->showHideGestureWindow(I)V

    .line 967
    const-string v2, "RearGestureWrapper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sendFlingEvent:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/16 v2, 0x7d0

    move/from16 v0, p2

    if-gt v0, v2, :cond_6

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mTimeScale_F:[I

    move-object/from16 v17, v0

    .line 970
    .local v17, "timeScale":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mMoveScale_F:[I

    .line 978
    .local v15, "moveScale":[I
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mActionEvent:[I

    .local v10, "arr$":[I
    array-length v14, v10

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_2
    if-ge v13, v14, :cond_8

    aget v9, v10, v13

    .line 979
    .local v9, "action":I
    aget v2, v17, v12

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v5, v5, v18

    .line 980
    packed-switch p1, :pswitch_data_0

    .line 1011
    :goto_3
    if-gez v7, :cond_0

    .line 1012
    const/4 v7, 0x0

    .line 1013
    :cond_0
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v8, v2, :cond_1

    .line 1014
    move-object/from16 v0, v16

    iget v8, v0, Landroid/graphics/Point;->y:I

    :cond_1
    move-object/from16 v2, p0

    .line 1015
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendMotionEvent(JJIII)V

    .line 1016
    add-int/lit8 v12, v12, 0x1

    .line 978
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 941
    .end local v9    # "action":I
    .end local v10    # "arr$":[I
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "moveScale":[I
    .end local v17    # "timeScale":[I
    :sswitch_0
    add-int/lit8 v8, v8, 0x1e

    .line 942
    goto :goto_0

    .line 944
    :sswitch_1
    add-int/lit8 v8, v8, 0x1e

    .line 945
    goto :goto_0

    .line 947
    :sswitch_2
    const/16 v2, 0x7d0

    move/from16 v0, p2

    if-gt v0, v2, :cond_2

    .line 948
    const/16 p1, 0x6

    goto :goto_0

    .line 949
    :cond_2
    const/16 v2, 0xdac

    move/from16 v0, p2

    if-gt v0, v2, :cond_3

    .line 950
    const/16 p1, 0x7

    goto :goto_0

    .line 952
    :cond_3
    const/16 p1, 0x8

    .line 954
    goto :goto_0

    .line 956
    :sswitch_3
    const/16 v2, 0x7d0

    move/from16 v0, p2

    if-gt v0, v2, :cond_4

    .line 957
    const/16 p1, 0x9

    goto :goto_0

    .line 958
    :cond_4
    const/16 v2, 0xdac

    move/from16 v0, p2

    if-gt v0, v2, :cond_5

    .line 959
    const/16 p1, 0xa

    goto/16 :goto_0

    .line 961
    :cond_5
    const/16 p1, 0xb

    goto/16 :goto_0

    .line 971
    :cond_6
    const/16 v2, 0xdac

    move/from16 v0, p2

    if-gt v0, v2, :cond_7

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mTimeScale_FF:[I

    move-object/from16 v17, v0

    .line 973
    .restart local v17    # "timeScale":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mMoveScale_FF:[I

    .restart local v15    # "moveScale":[I
    goto :goto_1

    .line 975
    .end local v15    # "moveScale":[I
    .end local v17    # "timeScale":[I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mTimeScale_FFF:[I

    move-object/from16 v17, v0

    .line 976
    .restart local v17    # "timeScale":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mMoveScale_FFF:[I

    .restart local v15    # "moveScale":[I
    goto :goto_1

    .line 985
    .restart local v9    # "action":I
    .restart local v10    # "arr$":[I
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mMoveScale:[I

    aget v2, v2, v12

    sub-int/2addr v7, v2

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mTimeScale:[I

    move-object/from16 v17, v0

    .line 987
    goto :goto_3

    .line 992
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mMoveScale:[I

    aget v2, v2, v12

    add-int/2addr v7, v2

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mTimeScale:[I

    move-object/from16 v17, v0

    .line 994
    goto :goto_3

    .line 998
    :pswitch_2
    aget v2, v15, v12

    sub-int/2addr v8, v2

    .line 999
    goto/16 :goto_3

    .line 1003
    :pswitch_3
    aget v2, v15, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v8, v2

    .line 1004
    goto/16 :goto_3

    .line 1018
    .end local v9    # "action":I
    :cond_8
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 928
    .end local v3    # "downTime":J
    .end local v5    # "eventTime":J
    .end local v7    # "baseX":I
    .end local v8    # "baseY":I
    .end local v10    # "arr$":[I
    .end local v11    # "disp":Landroid/view/Display;
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "moveScale":[I
    .end local v16    # "size":Landroid/graphics/Point;
    .end local v17    # "timeScale":[I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 939
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch

    .line 980
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private sendLongPressEvent(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 785
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsFocusMove:Z

    if-eqz v1, :cond_0

    .line 797
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

    if-nez v1, :cond_1

    .line 789
    const-string v1, "alwaysontop"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/alwaysontop/IAlwaysOnTop;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

    .line 792
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v1, p1}, Landroid/view/alwaysontop/IAlwaysOnTop;->setRearTouchLongPress(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "RearGestureWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRearTouchLongPress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendMotionEvent(JJIII)V
    .locals 14
    .param p1, "time"    # J
    .param p3, "eventTime"    # J
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "action"    # I

    .prologue
    .line 1022
    move-wide v11, p1

    .line 1023
    .local v11, "downTime":J
    const-string v2, "RearGestureWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMotionEvent: time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",eventTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v13, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/RearGestureWrapper$1;

    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p7

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/policy/impl/RearGestureWrapper$1;-><init>(Lcom/android/internal/policy/impl/RearGestureWrapper;JJIII)V

    move-wide/from16 v0, p3

    invoke-virtual {v13, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1034
    return-void
.end method

.method private showHideGestureWindow(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1038
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 1039
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindowManager:Landroid/view/IWindowManager;

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->showGestureWindow(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :goto_0
    return-void

    .line 1042
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 192
    const/4 v15, 0x0

    .line 194
    .local v15, "onGesture":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 196
    .local v12, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v12, :cond_0

    iget v1, v12, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    if-eqz v1, :cond_0

    .line 197
    const-string v1, "RearGestureWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support! window Flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v1, 0x1

    .line 311
    .end local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return v1

    .line 203
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getRearCallback()Landroid/view/Window$RearCallback;

    move-result-object v10

    .line 204
    .local v10, "cb":Landroid/view/Window$RearCallback;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

    if-nez v1, :cond_1

    .line 205
    new-instance v1, Lcom/android/internal/policy/impl/RearGestureDetector;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v1, v2, v0}, Lcom/android/internal/policy/impl/RearGestureDetector;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/RearGestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/RearGestureDetector;->setRearTouch()V

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    .line 208
    .local v11, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDoubleTapTouchSlop:I

    .line 211
    .end local v11    # "configuration":Landroid/view/ViewConfiguration;
    :cond_1
    const-string v1, "RearGestureWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",downtime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 215
    .local v9, "action":I
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mOldCallback:Landroid/view/Window$RearCallback;

    if-eq v1, v10, :cond_3

    .line 216
    const-string v1, "RearGestureWrapper"

    const-string v2, "change callback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

    move-object/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/RearGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 228
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 203
    .end local v9    # "action":I
    .end local v10    # "cb":Landroid/view/Window$RearCallback;
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 231
    .restart local v9    # "action":I
    .restart local v10    # "cb":Landroid/view/Window$RearCallback;
    :cond_3
    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsFocusMove:Z

    if-nez v1, :cond_4

    .line 232
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Landroid/view/Window$RearCallback;->onRearTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v15

    .line 235
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mOldAction:I

    if-ne v1, v9, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mOldAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 236
    const-string v1, "RearGestureWrapper"

    const-string v2, "mOldAction == action!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v15

    .line 237
    goto/16 :goto_0

    .line 240
    :cond_5
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mOldAction:I

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mMotionEventList:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    if-nez v9, :cond_c

    .line 245
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mOldCallback:Landroid/view/Window$RearCallback;

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_6

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v13, v1

    .line 249
    .local v13, "moveX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v14, v1

    .line 251
    .local v14, "moveY":I
    const-string v1, "RearGestureWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PenDown : moveX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",moveY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDoubleTapTouchSlop:I

    if-ge v13, v1, :cond_b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDoubleTapTouchSlop:I

    if-ge v14, v1, :cond_b

    .line 254
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTab:Z

    .line 258
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 260
    .end local v13    # "moveX":I
    .end local v14    # "moveY":I
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, Lcom/android/internal/policy/impl/RearGestureWrapper;->LONGPRESS_TIMEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 265
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mInTouchDown:Z

    .line 266
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->initScratch(Landroid/view/MotionEvent;)V

    .line 278
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureDetector:Lcom/android/internal/policy/impl/RearGestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/RearGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 282
    const/4 v1, 0x1

    if-ne v9, v1, :cond_9

    .line 283
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mInTouchDown:Z

    .line 284
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/RearGestureWrapper;->notiScratchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    .line 287
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    if-eqz v1, :cond_e

    .line 288
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsGestureSend:Z

    .line 291
    :goto_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    .line 292
    if-eqz v10, :cond_8

    .line 293
    const-string v1, "RearGestureWrapper"

    const-string v2, "onTouchUp()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Landroid/view/Window$RearCallback;->onTouchUp(Landroid/view/MotionEvent;)Z

    .line 297
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    .line 299
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSaveMoveY:I

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mMotionEventList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 304
    :cond_9
    const/4 v1, 0x3

    if-ne v9, v1, :cond_a

    .line 305
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mMotionEventList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_a
    move v1, v15

    .line 311
    goto/16 :goto_0

    .line 256
    .restart local v13    # "moveX":I
    .restart local v14    # "moveY":I
    :cond_b
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTab:Z

    goto/16 :goto_2

    .line 268
    .end local v13    # "moveX":I
    .end local v14    # "moveY":I
    :cond_c
    const/4 v1, 0x2

    if-ne v9, v1, :cond_7

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_7

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mLongPressSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mLongPressSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 271
    :cond_d
    const-string v1, "RearGestureWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancel Long press : moveX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",moveY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_3

    .line 290
    :cond_e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsGestureSend:Z

    goto/16 :goto_4
.end method

.method public isDoubleTabDisable()Z
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDoubleTabDisable()Z

    move-result v0

    .line 764
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFingerKeyEnable()Z
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isFingerKeyEnable()Z

    move-result v0

    .line 772
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusMove()Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsFocusMove:Z

    return v0
.end method

.method public isRearTouchDisable()Z
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isRearTouchDisable()Z

    move-result v0

    .line 780
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyRearTouchStatus(ZI)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 315
    const/4 v2, 0x0

    .line 316
    .local v2, "supportApp":Z
    const-string v5, "RearGestureWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyRearTouchStatus()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rear_touch_support_app"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v2, v3

    .line 320
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 321
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 322
    iget-boolean v5, v1, Landroid/content/pm/ApplicationInfo;->supportRearTouch:Z

    if-nez v5, :cond_4

    if-eqz v2, :cond_4

    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDisableRearTouch:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_2
    const/4 v5, 0x2

    if-ne p2, v5, :cond_5

    :goto_3
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsFocusMove:Z

    .line 329
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnable:Z

    if-eq v3, p1, :cond_2

    .line 330
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnable:Z

    .line 331
    iget-object v3, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

    if-nez v3, :cond_1

    .line 332
    const-string v3, "alwaysontop"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/alwaysontop/IAlwaysOnTop$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/alwaysontop/IAlwaysOnTop;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

    .line 335
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mEnable:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsFocusMove:Z

    if-nez v3, :cond_6

    .line 336
    iget-object v3, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v3}, Landroid/view/alwaysontop/IAlwaysOnTop;->registerGyroSensorListener()Z

    .line 344
    :cond_2
    :goto_4
    return-void

    :cond_3
    move v2, v4

    .line 318
    goto :goto_0

    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    move v5, v4

    .line 322
    goto :goto_1

    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_5
    move v3, v4

    .line 328
    goto :goto_3

    .line 338
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mAotService:Landroid/view/alwaysontop/IAlwaysOnTop;

    invoke-interface {v3}, Landroid/view/alwaysontop/IAlwaysOnTop;->unRegisterGyroSensorListener()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "RearGestureWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 29
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getRearCallback()Landroid/view/Window$RearCallback;

    move-result-object v3

    .line 466
    .local v3, "cb":Landroid/view/Window$RearCallback;
    :goto_0
    const/16 v19, 0x0

    .line 467
    .local v19, "rearTouchListener":Landroid/app/OnRearTouchListener;
    const-string v25, "RearGestureWrapper"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onDoubleTap() :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDoubleTapTouchSlop:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v25, v0

    if-eqz v25, :cond_17

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->getRawX()F

    move-result v25

    move/from16 v0, v25

    float-to-int v7, v0

    .line 471
    .local v7, "firstX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->getRawY()F

    move-result v25

    move/from16 v0, v25

    float-to-int v8, v0

    .line 472
    .local v8, "firstY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v20, v0

    .line 473
    .local v20, "secondX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v21, v0

    .line 474
    .local v21, "secondY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v25

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v27

    sub-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v24, v0

    .line 475
    .local v24, "time":I
    sget-object v25, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSkipDoubleTabRect:Landroid/graphics/Rect;

    if-eqz v25, :cond_0

    sget-object v25, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSkipDoubleTabRect:Landroid/graphics/Rect;

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v25

    if-eqz v25, :cond_1

    sget-object v25, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSkipDoubleTabRect:Landroid/graphics/Rect;

    move-object/from16 v0, v25

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v25

    if-eqz v25, :cond_1

    :cond_0
    const/16 v25, 0x6e

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 477
    :cond_1
    const-string v25, "RearGestureWrapper"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "cancel onDoubleTap() :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",time:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/16 v25, 0x0

    .line 613
    .end local v7    # "firstX":I
    .end local v8    # "firstY":I
    .end local v20    # "secondX":I
    .end local v21    # "secondY":I
    .end local v24    # "time":I
    :goto_1
    return v25

    .line 465
    .end local v3    # "cb":Landroid/view/Window$RearCallback;
    .end local v19    # "rearTouchListener":Landroid/app/OnRearTouchListener;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 480
    .restart local v3    # "cb":Landroid/view/Window$RearCallback;
    .restart local v7    # "firstX":I
    .restart local v8    # "firstY":I
    .restart local v19    # "rearTouchListener":Landroid/app/OnRearTouchListener;
    .restart local v20    # "secondX":I
    .restart local v21    # "secondY":I
    .restart local v24    # "time":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTab:Z

    move/from16 v25, v0

    if-eqz v25, :cond_17

    .line 483
    const/4 v10, 0x0

    .line 485
    .local v10, "isStatusBarCollapse":Z
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    .line 487
    const-string v25, "sys.shutdown.requested"

    const-string v26, ""

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 488
    .local v22, "shutdownAction":Ljava/lang/String;
    const-string v25, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 489
    const-string v25, "RearGestureWrapper"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "shutdownAction:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/16 v25, 0x0

    goto :goto_1

    .line 493
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsFocusMove:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    .line 494
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsGestureSend:Z

    move/from16 v25, v0

    if-nez v25, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSaveMoveY:I

    move/from16 v25, v0

    const/16 v26, 0xa

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    .line 495
    :cond_5
    const-string v25, "RearGestureWrapper"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "cancel onDoubleTap() mIsGestureSend:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsGestureSend:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",mSaveMoveY:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSaveMoveY:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 498
    :cond_6
    const/16 v25, 0x17

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendEvent(I)V

    .line 499
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 502
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/RearGestureWrapper;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v17

    .line 505
    .local v17, "phone":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v25

    if-nez v25, :cond_8

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x1040707

    const/16 v27, 0x1

    invoke-static/range {v25 .. v27}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 510
    :catch_0
    move-exception v18

    .line 511
    .local v18, "re":Landroid/os/RemoteException;
    const-string v25, "RearGestureWrapper"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "isIdle:RemoteException:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 516
    .end local v18    # "re":Landroid/os/RemoteException;
    :cond_8
    :try_start_1
    const-string v25, "window"

    invoke-static/range {v25 .. v25}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v12

    .line 517
    .local v12, "mWindowManager":Landroid/view/IWindowManager;
    invoke-interface {v12}, Landroid/view/IWindowManager;->getFocusedWindowOemFlags()I

    move-result v13

    .line 519
    .local v13, "oemFlags":I
    and-int/lit8 v25, v13, 0x8

    if-eqz v25, :cond_9

    .line 520
    const-string v25, "RearGestureWrapper"

    const-string v26, "skip rear touch OEM_FLAG_INTERCEPT_REAR_TOUCH:"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 521
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 523
    .end local v12    # "mWindowManager":Landroid/view/IWindowManager;
    .end local v13    # "oemFlags":I
    :catch_1
    move-exception v25

    .line 525
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "keyguard"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/KeyguardManager;

    .line 526
    .local v11, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 527
    const-string v25, "RearGestureWrapper"

    const-string v26, "isKeyguardLocked()"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 531
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->isDoubleTabDisable()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 532
    const-string v25, "RearGestureWrapper"

    const-string v26, "isDoubleTabDisable()"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 536
    :cond_b
    new-instance v9, Landroid/content/Intent;

    const-string v25, "android.intent.action.MAIN"

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .local v9, "intent":Landroid/content/Intent;
    const/4 v15, 0x0

    .line 538
    .local v15, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 540
    .local v4, "className":Ljava/lang/String;
    const/16 v25, 0x2

    :try_start_2
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 541
    .local v16, "param":[Ljava/lang/Object;
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    aput-object v26, v16, v25

    .line 542
    const/16 v25, 0x1

    const-string v26, "double_touch_target_package"

    aput-object v26, v16, v25

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSKYSystem_GetString:Ljava/lang/reflect/Method;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .line 544
    const/16 v25, 0x1

    const-string v26, "double_touch_target_class"

    aput-object v26, v16, v25

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mSKYSystem_GetString:Ljava/lang/reflect/Method;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 552
    .end local v16    # "param":[Ljava/lang/Object;
    :goto_2
    if-eqz v15, :cond_11

    if-eqz v4, :cond_11

    .line 553
    :try_start_3
    invoke-virtual {v9, v15, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v25, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v25, "com.pantech.app.aotdock"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_c

    .line 556
    new-instance v5, Landroid/content/Intent;

    const-string v25, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v5, "closeDialogs":Landroid/content/Intent;
    const-string v25, "reason"

    const-string v26, "doubletab"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 561
    .end local v5    # "closeDialogs":Landroid/content/Intent;
    :cond_c
    const-string v25, "com.vlingo.odyssey"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 562
    const v25, 0x10204000

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 572
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x10a000d

    const v27, 0x10a000e

    invoke-static/range {v25 .. v27}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v14

    .line 574
    .local v14, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual {v14}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 578
    const/4 v10, 0x1

    .line 597
    .end local v14    # "options":Landroid/app/ActivityOptions;
    :cond_d
    :goto_4
    if-eqz v10, :cond_e

    .line 599
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "statusbar"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/StatusBarManager;

    .line 600
    .local v23, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual/range {v23 .. v23}, Landroid/app/StatusBarManager;->collapsePanels()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4

    .line 603
    .end local v23    # "statusBarManager":Landroid/app/StatusBarManager;
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 604
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    .line 605
    if-eqz v3, :cond_16

    .line 606
    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/view/Window$RearCallback;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v25

    goto/16 :goto_1

    .line 547
    :catch_2
    move-exception v6

    .line 548
    .local v6, "ex":Ljava/lang/Exception;
    const-string v25, "RearGestureWrapper"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Invoke Exception:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 564
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_f
    :try_start_5
    const-string v25, "com.pantech.app.textaction"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 565
    const v25, 0x10208000

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 592
    :catch_3
    move-exception v6

    .line 593
    .restart local v6    # "ex":Ljava/lang/Exception;
    const-string v25, "RearGestureWrapper"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Double Tab Exception : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 569
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_10
    const/high16 v25, 0x10200000

    :try_start_6
    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 579
    :cond_11
    if-eqz v15, :cond_d

    if-nez v4, :cond_d

    .line 580
    const-string v25, "homekey"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 581
    const/16 v25, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendEvent(I)V

    goto/16 :goto_4

    .line 582
    :cond_12
    const-string v25, "menukey"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 583
    const/16 v25, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendEvent(I)V

    goto/16 :goto_4

    .line 584
    :cond_13
    const-string v25, "backkey"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 585
    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendEvent(I)V

    goto/16 :goto_4

    .line 586
    :cond_14
    const-string v25, "capture"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    new-instance v26, Landroid/content/Intent;

    const-string v27, "android.intent.action.ACTION_REAR_TOUCH_SCREEN_SHOT"

    invoke-direct/range {v26 .. v27}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 589
    :cond_15
    const-string v25, "RearGestureWrapper"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "key code type error:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_4

    .line 608
    :cond_16
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 612
    .end local v4    # "className":Ljava/lang/String;
    .end local v7    # "firstX":I
    .end local v8    # "firstY":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "isStatusBarCollapse":Z
    .end local v11    # "keyguardManager":Landroid/app/KeyguardManager;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v17    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v20    # "secondX":I
    .end local v21    # "secondY":I
    .end local v22    # "shutdownAction":Ljava/lang/String;
    .end local v24    # "time":I
    :cond_17
    const-string v25, "RearGestureWrapper"

    const-string v26, "cancel onDoubleTap() :"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 601
    .restart local v4    # "className":Ljava/lang/String;
    .restart local v7    # "firstX":I
    .restart local v8    # "firstY":I
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "isStatusBarCollapse":Z
    .restart local v11    # "keyguardManager":Landroid/app/KeyguardManager;
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v17    # "phone":Lcom/android/internal/telephony/ITelephony;
    .restart local v20    # "secondX":I
    .restart local v21    # "secondY":I
    .restart local v22    # "shutdownAction":Ljava/lang/String;
    .restart local v24    # "time":I
    :catch_4
    move-exception v25

    goto/16 :goto_5
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 618
    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getRearCallback()Landroid/view/Window$RearCallback;

    move-result-object v0

    .line 620
    .local v0, "cb":Landroid/view/Window$RearCallback;
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    .line 622
    if-eqz v0, :cond_1

    .line 623
    invoke-interface {v0, p1}, Landroid/view/Window$RearCallback;->onTouchDown(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 625
    :goto_1
    return v1

    .line 618
    .end local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 625
    .restart local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 647
    iget-object v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getRearCallback()Landroid/view/Window$RearCallback;

    move-result-object v0

    .line 649
    .local v0, "cb":Landroid/view/Window$RearCallback;
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDisableRearTouch:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsFocusMove:Z

    if-nez v4, :cond_1

    .line 650
    const/4 v4, 0x1

    .line 753
    :goto_1
    return v4

    .line 647
    .end local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 653
    .restart local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    if-eqz v4, :cond_2

    .line 654
    const-string v4, "RearGestureWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFling:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v4, 0x1

    goto :goto_1

    .line 658
    :cond_2
    if-eqz p1, :cond_3

    if-nez p1, :cond_4

    .line 659
    :cond_3
    const-string v4, "RearGestureWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event is null!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v4, 0x1

    goto :goto_1

    .line 663
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/RearGestureWrapper;->notiScratchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 664
    const/4 v4, 0x1

    goto :goto_1

    .line 667
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v1, v4

    .line 668
    .local v1, "moveX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v2, v4

    .line 669
    .local v2, "moveY":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v3, v4

    .line 671
    .local v3, "skipTime":I
    const-string v4, "RearGestureWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFling() : moveX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",moveY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",velocityX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",velocityY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    if-le v1, v2, :cond_e

    .line 674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x42480000    # 50.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    .line 676
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsFocusMove:Z

    if-eqz v4, :cond_7

    .line 677
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    .line 678
    const/16 v4, 0x15

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendEvent(I)V

    .line 753
    :cond_6
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 680
    :cond_7
    const/16 v4, 0x23

    if-le v3, v4, :cond_9

    .line 681
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDisableRearTouch:Z

    if-eqz v4, :cond_8

    .line 682
    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendFlingEvent(II)Z

    move-result v4

    goto/16 :goto_1

    .line 684
    :cond_8
    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$RearCallback;->onFlingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v4

    goto/16 :goto_1

    .line 687
    :cond_9
    const-string v4, "RearGestureWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skip onFlingLeft:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 689
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x42480000    # 50.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 691
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsFocusMove:Z

    if-eqz v4, :cond_b

    .line 692
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    .line 693
    const/16 v4, 0x16

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendEvent(I)V

    goto :goto_2

    .line 695
    :cond_b
    const/16 v4, 0x23

    if-le v3, v4, :cond_d

    .line 696
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDisableRearTouch:Z

    if-eqz v4, :cond_c

    .line 697
    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendFlingEvent(II)Z

    move-result v4

    goto/16 :goto_1

    .line 699
    :cond_c
    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$RearCallback;->onFlingRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v4

    goto/16 :goto_1

    .line 702
    :cond_d
    const-string v4, "RearGestureWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skip onFlingRight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 706
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_12

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x42480000    # 50.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_12

    .line 708
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsFocusMove:Z

    if-eqz v4, :cond_f

    .line 709
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    .line 710
    const/16 v4, 0x13

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendEvent(I)V

    goto/16 :goto_2

    .line 712
    :cond_f
    const/16 v4, 0x23

    if-le v3, v4, :cond_11

    .line 713
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDisableRearTouch:Z

    if-eqz v4, :cond_10

    .line 714
    const/4 v4, 0x6

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendFlingEvent(II)Z

    move-result v4

    goto/16 :goto_1

    .line 716
    :cond_10
    invoke-interface {v0, p1, p2, p4}, Landroid/view/Window$RearCallback;->onFlingUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v4

    goto/16 :goto_1

    .line 719
    :cond_11
    const-string v4, "RearGestureWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skip onFlingUp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 721
    :cond_12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x42480000    # 50.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 723
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsFocusMove:Z

    if-eqz v4, :cond_13

    .line 724
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mGestureSend:Z

    .line 725
    const/16 v4, 0x14

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendEvent(I)V

    goto/16 :goto_2

    .line 727
    :cond_13
    const/16 v4, 0x23

    if-le v3, v4, :cond_15

    .line 728
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mDisableRearTouch:Z

    if-eqz v4, :cond_14

    .line 729
    const/16 v4, 0x9

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendFlingEvent(II)Z

    goto/16 :goto_2

    .line 731
    :cond_14
    invoke-interface {v0, p1, p2, p4}, Landroid/view/Window$RearCallback;->onFlingDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v4

    goto/16 :goto_1

    .line 734
    :cond_15
    const-string v4, "RearGestureWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skip onFlingDown:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 630
    const-string v1, "RearGestureWrapper"

    const-string v2, "onLongPress()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getRearCallback()Landroid/view/Window$RearCallback;

    move-result-object v0

    .line 632
    .local v0, "cb":Landroid/view/Window$RearCallback;
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    if-eqz v1, :cond_1

    .line 633
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    .line 634
    const-string v1, "RearGestureWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLongPress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsDoubleTabSend:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :goto_1
    return-void

    .line 631
    .end local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 638
    .restart local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_1
    if-eqz v0, :cond_2

    .line 639
    invoke-interface {v0, p1}, Landroid/view/Window$RearCallback;->onLongPress(Landroid/view/MotionEvent;)V

    .line 642
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/RearGestureWrapper;->sendLongPressEvent(Z)V

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getRearCallback()Landroid/view/Window$RearCallback;

    move-result-object v0

    .line 454
    .local v0, "cb":Landroid/view/Window$RearCallback;
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/RearGestureWrapper;->mIsFocusMove:Z

    if-eqz v1, :cond_1

    .line 455
    :cond_0
    const-string v1, "RearGestureWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScroll() : distanceX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",distanceY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/RearGestureWrapper;->measureScratch(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 459
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 453
    .end local v0    # "cb":Landroid/view/Window$RearCallback;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sendEvent(I)V
    .locals 17
    .param p1, "code"    # I

    .prologue
    .line 809
    const-string v5, "RearGestureWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendEvent() code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 811
    .local v2, "time":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x48

    const/16 v13, 0x20

    move-wide v4, v2

    move/from16 v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 815
    .local v1, "down":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/hardware/input/InputManager;->injectInputEventFromRearTouch(Landroid/view/InputEvent;I)Z

    .line 817
    new-instance v4, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v15, 0x48

    const/16 v16, 0x20

    move-wide v5, v2

    move/from16 v10, p1

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 821
    .local v4, "up":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/hardware/input/InputManager;->injectInputEventFromRearTouch(Landroid/view/InputEvent;I)Z

    .line 823
    return-void
.end method
