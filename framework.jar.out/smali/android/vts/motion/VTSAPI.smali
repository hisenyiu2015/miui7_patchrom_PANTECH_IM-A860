.class public Landroid/vts/motion/VTSAPI;
.super Ljava/lang/Object;
.source "VTSAPI.java"

# interfaces
.implements Landroid/vts/VTSAPIInterface;
.implements Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/vts/motion/VTSAPI$EventHandler;
    }
.end annotation


# static fields
.field public static final COVER:I = 0x2

.field private static final ERR_INIT:I = 0x7

.field private static final ERR_START:I = 0x8

.field private static final ERR_STOP:I = 0x9

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field private static final SKYMOTION_ENGINE_STATE_ERROR:I = 0x6

.field private static final SKYMOTION_ENGINE_STATE_IDLE:I = 0x0

.field private static final SKYMOTION_ENGINE_STATE_INIT:I = 0x2

.field private static final SKYMOTION_ENGINE_STATE_INIT_READY:I = 0x1

.field private static final SKYMOTION_ENGINE_STATE_START:I = 0x4

.field private static final SKYMOTION_ENGINE_STATE_START_READY:I = 0x3

.field private static final SKYMOTION_ENGINE_STATE_STOP_READY:I = 0x5

.field public static final STATUS_NOT_STABLE:I = 0x2

.field public static final STATUS_STABLE:I = 0x1

.field public static final STATUS_START:I = 0x0

.field public static final STATUS_STOP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VTSAPI"

.field private static final VERSION:Ljava/lang/String; = "Class VTSAPI v3.0.8.1 (2014.08.04)"

.field public static final VTS_CONFIG_DISPLAY_ICON:I = 0x0

.field private static final VTS_DETECTION_START:I = 0x1

.field private static final VTS_DETECTION_STOP:I = 0x3

.field private static final VTS_ERROR_DETECTED:I = 0x64

.field private static final VTS_FPS_CHANGE_DETECTED:I = 0xfa

.field private static final VTS_GESTURE_DETECTED:I = 0x2

.field private static final VTS_INIT_DONE:I = 0x0

.field private static final VTS_LOOP_QUIT:I = 0x12c

.field private static final VTS_LUX_CHANGE_DETECTED:I = 0x104

.field private static final VTS_STATUS_CHANGE_DETECTED:I = 0xc8

.field public static final WAVE_LEFT_RIGHT:I = 0x3

.field public static final WAVE_RIGHT_LEFT:I = 0x4

.field public static final WLEFT:I = 0x5

.field public static final WRIGHT:I = 0x6

.field private static final lock:Ljava/lang/Object;

.field private static mVTSState:I


# instance fields
.field private DBGLog:Z

.field private mCamType:I

.field private mCfgDisplayIcon:I

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

.field private mIgnoreGesture:Z

.field private mOnDetectionStartListener:Landroid/vts/OnDetectionStartListener;

.field private mOnDetectionStopListener:Landroid/vts/OnDetectionStopListener;

.field private mOnErrorDetectedListener:Landroid/vts/OnErrorDetectedListener;

.field private mOnFPSChangeDetectedListener:Landroid/vts/OnFPSChangeDetectedListener;

.field private mOnGestureDetectedListener:Landroid/vts/OnGestureDetectedListener;

.field private mOnInitDoneListener:Landroid/vts/OnInitDoneListener;

.field private mOnLUXChangeDetectedListener:Landroid/vts/OnLUXChangeDetectedListener;

.field private mOnStatusChangeDetectedListener:Landroid/vts/OnStatusChangeDetectedListener;

.field private mRecord:Z

.field private mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/vts/motion/VTSAPI;->lock:Ljava/lang/Object;

    .line 788
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x3e8

    const/4 v5, 0x0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-boolean v5, p0, Landroid/vts/motion/VTSAPI;->DBGLog:Z

    .line 245
    const-string v2, "VTSAPI"

    const-string v3, "=================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v2, "VTSAPI"

    const-string v3, "Class VTSAPI v3.0.8.1 (2014.08.04)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v2, "VTSAPI"

    const-string v3, "=================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0}, Landroid/vts/motion/VTSAPI;->initializeMessageLooper()V

    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "wait":I
    :goto_0
    if-lt v1, v6, :cond_1

    .line 268
    :cond_0
    if-lt v1, v6, :cond_2

    .line 269
    const-string v2, "VTSAPI"

    const-string v3, "VTSAPI() : Fail InitializeMessageLooper!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_1
    return-void

    .line 254
    :cond_1
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    if-nez v2, :cond_0

    .line 256
    :try_start_0
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VTSAPI() : Wait InitializeMessageLooper (wait)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iput-boolean v5, p0, Landroid/vts/motion/VTSAPI;->mIgnoreGesture:Z

    .line 278
    const/4 v2, 0x1

    iput v2, p0, Landroid/vts/motion/VTSAPI;->mCfgDisplayIcon:I

    .line 280
    sput v5, Landroid/vts/motion/VTSAPI;->mVTSState:I

    .line 283
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VTSAPI() : End (ptr)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private DisplayStatusbarIcon(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 704
    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[API] DisplayStatusbarIcon(),  vaule : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget v1, p0, Landroid/vts/motion/VTSAPI;->mCfgDisplayIcon:I

    if-eqz v1, :cond_0

    .line 706
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.action.MOTION_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "MotionEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 708
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 710
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private SetEventHandler(Landroid/os/Looper;)V
    .locals 3
    .param p1, "myLooper"    # Landroid/os/Looper;

    .prologue
    .line 232
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetEventHandler() : (myLooper)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    if-eqz p1, :cond_0

    .line 235
    new-instance v0, Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-direct {v0, p0, p0, p1}, Landroid/vts/motion/VTSAPI$EventHandler;-><init>(Landroid/vts/motion/VTSAPI;Landroid/vts/motion/VTSAPI;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 157
    sget v0, Landroid/vts/motion/VTSAPI;->mVTSState:I

    return v0
.end method

.method static synthetic access$1(I)V
    .locals 0

    .prologue
    .line 157
    sput p0, Landroid/vts/motion/VTSAPI;->mVTSState:I

    return-void
.end method

.method static synthetic access$10(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnLUXChangeDetectedListener;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mOnLUXChangeDetectedListener:Landroid/vts/OnLUXChangeDetectedListener;

    return-object v0
.end method

.method static synthetic access$11(Landroid/vts/motion/VTSAPI;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0, p1}, Landroid/vts/motion/VTSAPI;->SetEventHandler(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$12()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Landroid/vts/motion/VTSAPI;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnInitDoneListener;
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mOnInitDoneListener:Landroid/vts/OnInitDoneListener;

    return-object v0
.end method

.method static synthetic access$3(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnDetectionStartListener;
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mOnDetectionStartListener:Landroid/vts/OnDetectionStartListener;

    return-object v0
.end method

.method static synthetic access$4(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnFPSChangeDetectedListener;
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mOnFPSChangeDetectedListener:Landroid/vts/OnFPSChangeDetectedListener;

    return-object v0
.end method

.method static synthetic access$5(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnGestureDetectedListener;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mOnGestureDetectedListener:Landroid/vts/OnGestureDetectedListener;

    return-object v0
.end method

.method static synthetic access$6(Landroid/vts/motion/VTSAPI;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnDetectionStopListener;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mOnDetectionStopListener:Landroid/vts/OnDetectionStopListener;

    return-object v0
.end method

.method static synthetic access$8(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnErrorDetectedListener;
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mOnErrorDetectedListener:Landroid/vts/OnErrorDetectedListener;

    return-object v0
.end method

.method static synthetic access$9(Landroid/vts/motion/VTSAPI;)Landroid/vts/OnStatusChangeDetectedListener;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mOnStatusChangeDetectedListener:Landroid/vts/OnStatusChangeDetectedListener;

    return-object v0
.end method

.method private initializeMessageLooper()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Landroid/vts/motion/VTSAPI$1;

    invoke-direct {v0, p0}, Landroid/vts/motion/VTSAPI$1;-><init>(Landroid/vts/motion/VTSAPI;)V

    .line 228
    invoke-virtual {v0}, Landroid/vts/motion/VTSAPI$1;->start()V

    .line 229
    return-void
.end method


# virtual methods
.method public EnableDBGLog(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 724
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] EnableDBGLog(on)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionAPI;->EnableDBGLog(Z)V

    .line 726
    iput-boolean p1, p0, Landroid/vts/motion/VTSAPI;->DBGLog:Z

    .line 728
    return-void
.end method

.method public EnableWaveAction(Z)I
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 481
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] EnableWaveAction() : (enable)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionAPI;->EnableWaveAction(Z)I

    move-result v0

    return v0
.end method

.method public HandleSKYMotionAction(I)V
    .locals 6
    .param p1, "action"    # I

    .prologue
    .line 986
    const/16 v0, 0x384

    .line 987
    .local v0, "iAct":I
    iget-boolean v2, p0, Landroid/vts/motion/VTSAPI;->mIgnoreGesture:Z

    if-eqz v2, :cond_1

    .line 988
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HandleSKYMotionAction() : Ignore Gesture!!! (action)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 994
    :pswitch_0
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionAction() : LEFT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const/4 v0, 0x0

    .line 1025
    :goto_1
    iget-boolean v2, p0, Landroid/vts/motion/VTSAPI;->mIgnoreGesture:Z

    if-nez v2, :cond_0

    .line 1027
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1028
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v2, v1}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 998
    .end local v1    # "m":Landroid/os/Message;
    :pswitch_1
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionAction() : RIGHT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v0, 0x1

    .line 1000
    goto :goto_1

    .line 1002
    :pswitch_2
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionAction() : COVER"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 v0, 0x2

    .line 1004
    goto :goto_1

    .line 1006
    :pswitch_3
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionAction() : WAVE_LEFT_RIGHT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v0, 0x3

    .line 1008
    goto :goto_1

    .line 1010
    :pswitch_4
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionAction() : WAVE_RIGHT_LEFT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const/4 v0, 0x4

    .line 1012
    goto :goto_1

    .line 1014
    :pswitch_5
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionAction() :WLEFT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const/4 v0, 0x5

    .line 1016
    goto :goto_1

    .line 1018
    :pswitch_6
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionAction() : WRIGHT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const/4 v0, 0x6

    .line 1020
    goto :goto_1

    .line 992
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public HandleSKYMotionError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 1095
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HandleSKYMotionError() : (error)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    return-void
.end method

.method public HandleSKYMotionFPS(I)V
    .locals 5
    .param p1, "fps"    # I

    .prologue
    .line 978
    iget-boolean v1, p0, Landroid/vts/motion/VTSAPI;->DBGLog:Z

    if-eqz v1, :cond_0

    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HandleSKYMotionFPS() : (fps)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_0
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/16 v2, 0xfa

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 980
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v0}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 981
    return-void
.end method

.method public HandleSKYMotionLUX(I)V
    .locals 5
    .param p1, "lux"    # I

    .prologue
    .line 1118
    iget-boolean v1, p0, Landroid/vts/motion/VTSAPI;->DBGLog:Z

    if-eqz v1, :cond_0

    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HandleSKYMotionLUX() : (lux)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_0
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/16 v2, 0x104

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1120
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v0}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1121
    return-void
.end method

.method public HandleSKYMotionStatus(I)V
    .locals 7
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1035
    const/16 v0, 0x64

    .line 1037
    .local v0, "iStatus":I
    packed-switch p1, :pswitch_data_0

    .line 1084
    const-string v2, "VTSAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HandleEyeCanStatus() : Unknown Status (status)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :goto_0
    return-void

    .line 1039
    :pswitch_0
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionStatus() : STATUS_START"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    invoke-direct {p0, v5}, Landroid/vts/motion/VTSAPI;->DisplayStatusbarIcon(Z)V

    .line 1045
    iput-boolean v4, p0, Landroid/vts/motion/VTSAPI;->mIgnoreGesture:Z

    .line 1047
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    iget v3, p0, Landroid/vts/motion/VTSAPI;->mCamType:I

    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1048
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v2, v1}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1053
    .end local v1    # "m":Landroid/os/Message;
    :pswitch_1
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionStatus() : STATUS_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-direct {p0, v4}, Landroid/vts/motion/VTSAPI;->DisplayStatusbarIcon(Z)V

    .line 1058
    iput-boolean v5, p0, Landroid/vts/motion/VTSAPI;->mIgnoreGesture:Z

    .line 1060
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v4, v4, v6}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1061
    .restart local v1    # "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v2, v1}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1066
    .end local v1    # "m":Landroid/os/Message;
    :pswitch_2
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionStatus() : STATUS_STABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-direct {p0, v5}, Landroid/vts/motion/VTSAPI;->DisplayStatusbarIcon(Z)V

    .line 1070
    const/4 v0, 0x2

    .line 1071
    iput-boolean v4, p0, Landroid/vts/motion/VTSAPI;->mIgnoreGesture:Z

    .line 1090
    :goto_1
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1091
    .restart local v1    # "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v2, v1}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1075
    .end local v1    # "m":Landroid/os/Message;
    :pswitch_3
    const-string v2, "VTSAPI"

    const-string v3, "HandleSKYMotionStatus() : STATUS_NOT_STABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-direct {p0, v4}, Landroid/vts/motion/VTSAPI;->DisplayStatusbarIcon(Z)V

    .line 1079
    const/4 v0, 0x3

    .line 1080
    iput-boolean v5, p0, Landroid/vts/motion/VTSAPI;->mIgnoreGesture:Z

    goto :goto_1

    .line 1037
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public Init(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 290
    const-string v1, "VTSAPI"

    const-string v2, "[API] Init()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget v1, Landroid/vts/motion/VTSAPI;->mVTSState:I

    if-eqz v1, :cond_0

    .line 294
    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Init(): state error!!! (state)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/vts/motion/VTSAPI;->mVTSState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/16 v2, 0x64

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 296
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v0}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    :goto_0
    return-void

    .line 300
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mContext:Landroid/content/Context;

    .line 302
    const/4 v1, 0x1

    sput v1, Landroid/vts/motion/VTSAPI;->mVTSState:I

    .line 304
    new-instance v1, Landroid/vts/motion/SKYMotionAPI;

    invoke-direct {v1}, Landroid/vts/motion/SKYMotionAPI;-><init>()V

    iput-object v1, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    .line 306
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v1, p1}, Landroid/vts/motion/SKYMotionAPI;->InitSKYMotionEngine(Landroid/content/Context;)V

    .line 307
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v1, p0}, Landroid/vts/motion/SKYMotionAPI;->RegisterSKYMotionCallback(Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;)V

    .line 308
    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[API] Init() : SDK Version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v3}, Landroid/vts/motion/SKYMotionAPI;->GetVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v4, v4, v4, v5}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 311
    .restart local v0    # "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v0}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public Init(Landroid/content/Context;I)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "algorithm"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 318
    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[API] Init() : (algorithm)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget v1, Landroid/vts/motion/VTSAPI;->mVTSState:I

    if-eqz v1, :cond_0

    .line 322
    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Init(): already inited!!! (state)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/vts/motion/VTSAPI;->mVTSState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/16 v2, 0x64

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 324
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v0}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 340
    :goto_0
    return-void

    .line 328
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mContext:Landroid/content/Context;

    .line 330
    const/4 v1, 0x1

    sput v1, Landroid/vts/motion/VTSAPI;->mVTSState:I

    .line 332
    new-instance v1, Landroid/vts/motion/SKYMotionAPI;

    invoke-direct {v1}, Landroid/vts/motion/SKYMotionAPI;-><init>()V

    iput-object v1, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    .line 334
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v1, p1, p2}, Landroid/vts/motion/SKYMotionAPI;->InitSKYMotionEngine(Landroid/content/Context;I)V

    .line 335
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v1, p0}, Landroid/vts/motion/SKYMotionAPI;->RegisterSKYMotionCallback(Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;)V

    .line 336
    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[API] Init() : SDK Version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v3}, Landroid/vts/motion/SKYMotionAPI;->GetVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v4, v4, v4, v5}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 339
    .restart local v0    # "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v0}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public InitCameraParameter()V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method public RecordGesture(Z)V
    .locals 3
    .param p1, "mRecord"    # Z

    .prologue
    .line 527
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] RecordGesture() : (mRecord)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionAPI;->RecordGesture(Z)V

    .line 529
    return-void
.end method

.method public RecordGesture(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mRecord"    # Z
    .param p2, "epLock"    # Ljava/lang/String;
    .param p3, "dt"    # Ljava/lang/String;
    .param p4, "rpm"    # Ljava/lang/String;

    .prologue
    .line 535
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] RecordGesture() : (mRecord)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (epLock)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (dt)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (rpm)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/vts/motion/SKYMotionAPI;->RecordGesture(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public RegisterPreview(Landroid/view/SurfaceHolder;II)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 682
    const-string v0, "VTSAPI"

    const-string v1, "[API] RegisterPreview()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1, p2, p3}, Landroid/vts/motion/SKYMotionAPI;->RegisterPreview(Landroid/view/SurfaceHolder;II)V

    .line 684
    return-void
.end method

.method public SetAccelerometerFilter(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 581
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] SetAccelerometerFilter() : (on)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionAPI;->SetAccelerometerFilter(Z)V

    .line 584
    return-void
.end method

.method public SetConfig(II)V
    .locals 3
    .param p1, "config"    # I
    .param p2, "value"    # I

    .prologue
    .line 654
    packed-switch p1, :pswitch_data_0

    .line 663
    :goto_0
    return-void

    .line 656
    :pswitch_0
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] SetConfig() : display STATUSBAR ICON mode (on)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iput p2, p0, Landroid/vts/motion/VTSAPI;->mCfgDisplayIcon:I

    goto :goto_0

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public SetOnDetectionStartListener(Landroid/vts/OnDetectionStartListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/vts/OnDetectionStartListener;

    .prologue
    .line 1133
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mOnDetectionStartListener:Landroid/vts/OnDetectionStartListener;

    .line 1134
    return-void
.end method

.method public SetOnDetectionStopListener(Landroid/vts/OnDetectionStopListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/vts/OnDetectionStopListener;

    .prologue
    .line 1158
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mOnDetectionStopListener:Landroid/vts/OnDetectionStopListener;

    .line 1159
    return-void
.end method

.method public SetOnErrorDetectedListener(Landroid/vts/OnErrorDetectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/vts/OnErrorDetectedListener;

    .prologue
    .line 1166
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mOnErrorDetectedListener:Landroid/vts/OnErrorDetectedListener;

    .line 1167
    return-void
.end method

.method public SetOnFPSChangeDetectedListener(Landroid/vts/OnFPSChangeDetectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/vts/OnFPSChangeDetectedListener;

    .prologue
    .line 1141
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mOnFPSChangeDetectedListener:Landroid/vts/OnFPSChangeDetectedListener;

    .line 1143
    return-void
.end method

.method public SetOnGestureDetectedListener(Landroid/vts/OnGestureDetectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/vts/OnGestureDetectedListener;

    .prologue
    .line 1150
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mOnGestureDetectedListener:Landroid/vts/OnGestureDetectedListener;

    .line 1151
    return-void
.end method

.method public SetOnInitDoneListener(Landroid/vts/OnInitDoneListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/vts/OnInitDoneListener;

    .prologue
    .line 1126
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mOnInitDoneListener:Landroid/vts/OnInitDoneListener;

    .line 1127
    return-void
.end method

.method public SetOnLUXChangeDetectedListener(Landroid/vts/OnLUXChangeDetectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/vts/OnLUXChangeDetectedListener;

    .prologue
    .line 1183
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mOnLUXChangeDetectedListener:Landroid/vts/OnLUXChangeDetectedListener;

    .line 1184
    return-void
.end method

.method public SetOnStatusChangeDetectedListener(Landroid/vts/OnStatusChangeDetectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/vts/OnStatusChangeDetectedListener;

    .prologue
    .line 1174
    iput-object p1, p0, Landroid/vts/motion/VTSAPI;->mOnStatusChangeDetectedListener:Landroid/vts/OnStatusChangeDetectedListener;

    .line 1175
    return-void
.end method

.method public SetOrientation(I)I
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 504
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] SetOrientation() : (orientation)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionAPI;->SetOrientation(I)I

    move-result v0

    return v0
.end method

.method public SetParameter(II)V
    .locals 3
    .param p1, "param"    # I
    .param p2, "value"    # I

    .prologue
    .line 605
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] SetParameter() : (param)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(value)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1, p2}, Landroid/vts/motion/SKYMotionAPI;->SetParameter(II)V

    .line 608
    return-void
.end method

.method public SetVisiblePreview(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 629
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] SetVisiblePreview() : (on)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionAPI;->SetVisiblePreview(Z)V

    .line 632
    return-void
.end method

.method public StartVTS(I)V
    .locals 6
    .param p1, "cam"    # I

    .prologue
    .line 346
    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[API] StartVTS() : (cam)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sget v1, Landroid/vts/motion/VTSAPI;->mVTSState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 350
    const-string v1, "VTSAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StartVTS(): already started!!! (state)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/vts/motion/VTSAPI;->mVTSState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/16 v2, 0x64

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 352
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v0}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 365
    .end local v0    # "m":Landroid/os/Message;
    :goto_0
    return-void

    .line 356
    :cond_0
    const/4 v1, 0x3

    sput v1, Landroid/vts/motion/VTSAPI;->mVTSState:I

    .line 358
    iput p1, p0, Landroid/vts/motion/VTSAPI;->mCamType:I

    .line 359
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    iget v2, p0, Landroid/vts/motion/VTSAPI;->mCamType:I

    invoke-virtual {v1, v2}, Landroid/vts/motion/SKYMotionAPI;->StartSKYMotionEngine(I)I

    goto :goto_0
.end method

.method public StopRecordGesture()V
    .locals 3

    .prologue
    .line 558
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] StopRecordGesture() : (mRecord)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/vts/motion/VTSAPI;->mRecord:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 761
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finalize() : finalize (ptr)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void
.end method

.method public getAPIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    const-string v0, "Class VTSAPI v3.0.8.1 (2014.08.04)"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0}, Landroid/vts/motion/SKYMotionAPI;->GetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Landroid/vts/VTSAPIInterface;
    .locals 1

    .prologue
    .line 208
    new-instance v0, Landroid/vts/motion/VTSAPI;

    invoke-direct {v0}, Landroid/vts/motion/VTSAPI;-><init>()V

    return-object v0
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 430
    const-string v1, "VTSAPI"

    const-string v2, "[API] release()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    sput v4, Landroid/vts/motion/VTSAPI;->mVTSState:I

    .line 435
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v1}, Landroid/vts/motion/SKYMotionAPI;->DestroySKYMotionEngine()V

    .line 437
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 440
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v1, v0}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 442
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setSensorMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 717
    const-string v0, "VTSAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[API] setSensorMode(mode)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v0, p1}, Landroid/vts/motion/SKYMotionAPI;->setSensorMode(I)V

    .line 719
    return-void
.end method

.method public stopVTS()V
    .locals 8

    .prologue
    const/4 v6, 0x3

    .line 371
    const-string v3, "VTSAPI"

    const-string v4, "[API] stopVTS()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget v3, Landroid/vts/motion/VTSAPI;->mVTSState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 376
    const-string v3, "VTSAPI"

    const-string v4, "[API] stopVTS() : (SKYMOTION_ENGINE_STATE_ERROR)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    :goto_0
    const/4 v3, 0x5

    sput v3, Landroid/vts/motion/VTSAPI;->mVTSState:I

    .line 405
    iget-object v3, p0, Landroid/vts/motion/VTSAPI;->mSKYMotionAPI:Landroid/vts/motion/SKYMotionAPI;

    invoke-virtual {v3}, Landroid/vts/motion/SKYMotionAPI;->StopSKYMotionEngine()I

    .line 411
    :goto_1
    return-void

    .line 378
    :cond_1
    sget v3, Landroid/vts/motion/VTSAPI;->mVTSState:I

    if-ne v3, v6, :cond_3

    .line 379
    const-string v3, "VTSAPI"

    const-string v4, "[API] stopVTS() : (SKYMOTION_ENGINE_STATE_START_READY)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v2, 0x0

    .line 383
    .local v2, "wait":I
    :cond_2
    const-string v3, "VTSAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] stopVTS() : waiting (wait)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    add-int/lit8 v2, v2, 0x1

    .line 387
    const/16 v3, 0x32

    if-eq v2, v3, :cond_0

    .line 390
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_2
    sget v3, Landroid/vts/motion/VTSAPI;->mVTSState:I

    if-eq v3, v6, :cond_2

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 396
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "wait":I
    :cond_3
    sget v3, Landroid/vts/motion/VTSAPI;->mVTSState:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 398
    const-string v3, "VTSAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "stopVTS(): invalid state!!! (state)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Landroid/vts/motion/VTSAPI;->mVTSState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v3, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    const/16 v4, 0x64

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/vts/motion/VTSAPI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 400
    .local v1, "m":Landroid/os/Message;
    iget-object v3, p0, Landroid/vts/motion/VTSAPI;->mEventHandler:Landroid/vts/motion/VTSAPI$EventHandler;

    invoke-virtual {v3, v1}, Landroid/vts/motion/VTSAPI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
