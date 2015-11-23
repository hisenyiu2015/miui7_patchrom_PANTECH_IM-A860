.class Landroid/vts/motion/SKYMotionEngine;
.super Ljava/lang/Object;
.source "SKYMotionEngine.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static ANDROID_VERSION:I = 0x0

.field private static final ANDROID_VERSION_GB:I = 0x0

.field private static final ANDROID_VERSION_ICS:I = 0x1

.field private static final COVER:I = 0x3

.field private static final DATA_X:I = 0x0

.field private static final DATA_Y:I = 0x1

.field private static final DATA_Z:I = 0x2

.field public static final ERR_CAMERA_IN_USE:I = 0x6

.field public static final ERR_CAM_OPEN:I = 0x0

.field private static final FASTEST:I = 0x3

.field private static final GAME:I = 0x2

.field private static final INPUT_FRAME_HEIGHT:I = 0xf0

.field private static final INPUT_FRAME_WIDTH:I = 0x140

.field private static final LEFT:I = 0x1

.field private static final NORMAL:I = 0x1

.field private static final OUTPUT_FILE_NAME:Ljava/lang/String; = "/sdcard/vts"

.field private static final RECORDING_STATE_IDLE:I = 0x0

.field private static final RECORDING_STATE_START:I = 0x1

.field private static final RECORDING_STATE_STOP:I = 0x2

.field private static final RIGHT:I = 0x2

.field private static RecFrame:I = 0x0

.field private static RecMotionCntCover:I = 0x0

.field private static RecMotionCntLeft:I = 0x0

.field private static RecMotionCntRight:I = 0x0

.field private static final SHAKING_STATE_START:I = 0x0

.field private static final SHAKING_STATE_STOP:I = 0x1

.field private static final SHAKING_STATE_VTS_RELEASE:I = 0x3

.field private static final SHAKING_STATE_VTS_STOP:I = 0x2

.field private static final SKYMOTION_TYPE_MOTION_EST_COVER_3:I = 0x6

.field public static final STATUS_NOT_STABLE:I = 0x2

.field public static final STATUS_STABLE:I = 0x1

.field public static final STATUS_START:I = 0x0

.field public static final STATUS_STOP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SKYMotionEngine"

.field private static final UI:I = 0x0

.field public static final VERSION:Ljava/lang/String; = "SKYMotionEngine v1.0.7 (2014.08.11)"

.field private static final WAVE_DISABLE:I = 0x0

.field private static final WAVE_ENABLE:I = 0x1

.field private static final WAVE_LEFT_RIGHT:I = 0x4

.field private static final WAVE_RIGHT_LEFT:I = 0x5

.field private static final WLEFT:I = 0x6

.field private static final WRIGHT:I = 0x7

.field private static final cntEND:I = 0x7

.field private static cntFPS:I = 0x0

.field private static final cntIDLE:I = 0x0

.field private static final cntSTART:I = 0x1

.field private static mAlgorithm:I


# instance fields
.field private DBG_FPS_COUNT:Z

.field private DBG_FPS_LOG:Z

.field private DBG_LIGHT_SENSOR:Z

.field private DBG_LOG:Z

.field private MOTION_EVENT_CHECK:Z

.field private SENSOR_DELAY_MODE:I

.field private SENSOR_ENABLE:Z

.field private SHAKE_THRESHOLD:I

.field private accOn:Z

.field private cameraIsRunning:Z

.field private cntFrame:I

.field private cntShaking:I

.field private currentTimeForWAVE:J

.field private currentTimeForWAVE2:J

.field private data1:[B

.field private data2:[B

.field private gapOfTimeForWAVE2:J

.field hdmiService:Landroid/os/IHDMIService;

.field private isNotShaking:I

.field private isProcessing:Z

.field private isShaking:I

.field private lastTimeForACC:J

.field lastTimeForFPS:J

.field private lastTimeForWAVE:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private lightSensor:Landroid/hardware/Sensor;

.field private lock:I

.field private mCamera:Landroid/hardware/Camera;

.field private mContext:Landroid/content/Context;

.field private mCore:Landroid/vts/motion/SKYMotionCore;

.field private mDt:Ljava/lang/String;

.field private mEPLock:Ljava/lang/String;

.field private mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

.field private mFixedFPS:I

.field private mFrame:[B

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mHDMI:Z

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mMotion:I

.field private mOrientation:I

.field private mPreview:Z

.field private mRPM:Ljava/lang/String;

.field private mRotation:I

.field private mScale:I

.field private mThreadRun:Z

.field private mView:Landroid/vts/motion/SKYMotionView;

.field private mVisiblePreview:Z

.field private mY_channel:[B

.field private mYuv:Landroid/vts/cv/VTSMat;

.field private mYuv2:Landroid/vts/cv/VTSMat;

.field private mYuv_0:Landroid/vts/cv/VTSMat;

.field private mYuv_90:Landroid/vts/cv/VTSMat;

.field private model:Landroid/vts/VTSModelFlag;

.field private outStream:Ljava/io/FileOutputStream;

.field private outputFile:Ljava/io/File;

.field private proxSensor:Landroid/hardware/Sensor;

.field private recordingState:I

.field private releaseCalled:Z

.field private releaseForThread:Z

.field private resetFPS:Z

.field private rotationVectorSensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private shakingState:I

.field private speed:F

.field public status:I

.field private stopCalled:Z

.field private stopDone:Z

.field private useRecType:I

.field private waveState:I

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    const/4 v0, 0x1

    sput v0, Landroid/vts/motion/SKYMotionEngine;->ANDROID_VERSION:I

    .line 276
    sput v1, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntLeft:I

    sput v1, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntRight:I

    sput v1, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntCover:I

    .line 277
    sput v1, Landroid/vts/motion/SKYMotionEngine;->RecFrame:I

    .line 317
    sput v1, Landroid/vts/motion/SKYMotionEngine;->cntFPS:I

    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/vts/motion/SKYMotionAPI;Landroid/content/Context;)V
    .locals 6
    .param p1, "api"    # Landroid/vts/motion/SKYMotionAPI;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->lock:I

    .line 166
    const/16 v0, 0x1e

    iput v0, p0, Landroid/vts/motion/SKYMotionEngine;->mFixedFPS:I

    .line 183
    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    .line 197
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->mVisiblePreview:Z

    .line 235
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->waveState:I

    .line 238
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->MOTION_EVENT_CHECK:Z

    .line 251
    const/4 v0, 0x5

    iput v0, p0, Landroid/vts/motion/SKYMotionEngine;->SHAKE_THRESHOLD:I

    .line 257
    iput v3, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    .line 262
    iput-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->accOn:Z

    .line 263
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->isShaking:I

    .line 264
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->isNotShaking:I

    .line 265
    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->cntShaking:I

    .line 271
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->recordingState:I

    .line 272
    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    .line 278
    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mEPLock:Ljava/lang/String;

    .line 279
    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mDt:Ljava/lang/String;

    .line 280
    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mRPM:Ljava/lang/String;

    .line 283
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->stopDone:Z

    .line 284
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->releaseCalled:Z

    .line 285
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->isProcessing:Z

    .line 286
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->stopCalled:Z

    .line 287
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->releaseForThread:Z

    .line 289
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->SENSOR_ENABLE:Z

    .line 295
    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->SENSOR_DELAY_MODE:I

    .line 299
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->mHDMI:Z

    .line 307
    iput-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->cameraIsRunning:Z

    .line 311
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    .line 312
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_LOG:Z

    .line 313
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_COUNT:Z

    .line 314
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LIGHT_SENSOR:Z

    .line 316
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->lastTimeForFPS:J

    .line 318
    iput-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->resetFPS:Z

    .line 321
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    .line 339
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] instanciation() : (ptr)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iput-object p2, p0, Landroid/vts/motion/SKYMotionEngine;->mContext:Landroid/content/Context;

    .line 343
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Landroid/vts/motion/SKYMotionEngine;->init(Landroid/vts/motion/SKYMotionAPI;I)V

    .line 344
    return-void
.end method

.method public constructor <init>(Landroid/vts/motion/SKYMotionAPI;Landroid/content/Context;I)V
    .locals 6
    .param p1, "api"    # Landroid/vts/motion/SKYMotionAPI;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "algorithm"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->lock:I

    .line 166
    const/16 v0, 0x1e

    iput v0, p0, Landroid/vts/motion/SKYMotionEngine;->mFixedFPS:I

    .line 183
    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    .line 197
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->mVisiblePreview:Z

    .line 235
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->waveState:I

    .line 238
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->MOTION_EVENT_CHECK:Z

    .line 251
    const/4 v0, 0x5

    iput v0, p0, Landroid/vts/motion/SKYMotionEngine;->SHAKE_THRESHOLD:I

    .line 257
    iput v3, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    .line 262
    iput-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->accOn:Z

    .line 263
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->isShaking:I

    .line 264
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->isNotShaking:I

    .line 265
    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->cntShaking:I

    .line 271
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->recordingState:I

    .line 272
    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    .line 278
    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mEPLock:Ljava/lang/String;

    .line 279
    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mDt:Ljava/lang/String;

    .line 280
    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mRPM:Ljava/lang/String;

    .line 283
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->stopDone:Z

    .line 284
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->releaseCalled:Z

    .line 285
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->isProcessing:Z

    .line 286
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->stopCalled:Z

    .line 287
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->releaseForThread:Z

    .line 289
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->SENSOR_ENABLE:Z

    .line 295
    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->SENSOR_DELAY_MODE:I

    .line 299
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->mHDMI:Z

    .line 307
    iput-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->cameraIsRunning:Z

    .line 311
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    .line 312
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_LOG:Z

    .line 313
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_COUNT:Z

    .line 314
    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LIGHT_SENSOR:Z

    .line 316
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->lastTimeForFPS:J

    .line 318
    iput-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->resetFPS:Z

    .line 321
    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    .line 354
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] instanciation() : (ptr)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iput-object p2, p0, Landroid/vts/motion/SKYMotionEngine;->mContext:Landroid/content/Context;

    .line 358
    invoke-virtual {p0, p1, p3}, Landroid/vts/motion/SKYMotionEngine;->init(Landroid/vts/motion/SKYMotionAPI;I)V

    .line 359
    return-void
.end method

.method static synthetic access$0(Landroid/vts/motion/SKYMotionEngine;)Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_LOG:Z

    return v0
.end method

.method static synthetic access$1(Landroid/vts/motion/SKYMotionEngine;)Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_COUNT:Z

    return v0
.end method

.method static synthetic access$2(Landroid/vts/motion/SKYMotionEngine;)Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->resetFPS:Z

    return v0
.end method

.method static synthetic access$3(Landroid/vts/motion/SKYMotionEngine;Z)V
    .locals 0

    .prologue
    .line 318
    iput-boolean p1, p0, Landroid/vts/motion/SKYMotionEngine;->resetFPS:Z

    return-void
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 317
    sget v0, Landroid/vts/motion/SKYMotionEngine;->cntFPS:I

    return v0
.end method

.method static synthetic access$5(I)V
    .locals 0

    .prologue
    .line 317
    sput p0, Landroid/vts/motion/SKYMotionEngine;->cntFPS:I

    return-void
.end method

.method static synthetic access$6(Landroid/vts/motion/SKYMotionEngine;)Landroid/vts/motion/SKYMotionAPI;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    return-object v0
.end method

.method static synthetic access$7(Landroid/vts/motion/SKYMotionEngine;[B)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrame:[B

    return-void
.end method

.method private openCamera(I)Landroid/hardware/Camera;
    .locals 8
    .param p1, "cameraId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 610
    const/4 v0, 0x0

    .line 612
    .local v0, "camera":Landroid/hardware/Camera;
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    if-nez v4, :cond_5

    .line 614
    iget-boolean v4, p0, Landroid/vts/motion/SKYMotionEngine;->cameraIsRunning:Z

    if-eqz v4, :cond_4

    .line 616
    invoke-static {}, Landroid/hardware/Camera;->isRunning()I

    move-result v4

    if-eqz v4, :cond_1

    .line 617
    const/4 v2, 0x0

    .line 619
    .local v2, "wait":I
    :cond_0
    const-string v4, "SKYMotionEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[ENGINE] startVTS() : camera is running (wait)"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    add-int/lit8 v2, v2, 0x1

    .line 622
    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    .line 633
    .end local v2    # "wait":I
    :cond_1
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->isRunning()I

    move-result v4

    if-eqz v4, :cond_3

    .line 634
    const-string v4, "SKYMotionEngine"

    const-string v5, "[ENGINE] startVTS() : do not open camera because camera is still running"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v4, v4, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionError(I)V

    .line 665
    :goto_1
    return-object v3

    .line 626
    .restart local v2    # "wait":I
    :cond_2
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :goto_2
    invoke-static {}, Landroid/hardware/Camera;->isRunning()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 627
    :catch_0
    move-exception v1

    .line 628
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 638
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "wait":I
    :cond_3
    const-string v4, "SKYMotionEngine"

    const-string v5, "[ENGINE] startVTS() : camera is not running "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :try_start_1
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_3
    move-object v3, v0

    .line 665
    goto :goto_1

    .line 641
    :catch_1
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SKYMotionEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[ENGINE] startVTS() : mCamera.open is failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v4, v4, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v4, v7}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionError(I)V

    goto :goto_1

    .line 650
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_3

    .line 652
    :catch_2
    move-exception v1

    .line 653
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "SKYMotionEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[ENGINE] startVTS() : mCamera.open is failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v4, v4, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v4, v7}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionError(I)V

    goto :goto_1

    .line 661
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v3, "SKYMotionEngine"

    const-string v4, "[ENGINE] startVTS() : Camera is opened already!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v3, v3, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v3, v7}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionError(I)V

    goto :goto_3
.end method

.method private processFrame([B)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "data"    # [B

    .prologue
    const/4 v11, 0x3

    const/16 v7, 0x140

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1009
    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "SKYMotionEngine"

    const-string v4, "[ENGINE] processFrame()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_0
    const/4 v0, -0x1

    .line 1012
    .local v0, "motion":I
    iput-boolean v9, p0, Landroid/vts/motion/SKYMotionEngine;->isProcessing:Z

    .line 1014
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    if-lez v3, :cond_9

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    const/4 v4, 0x7

    if-ge v3, v4, :cond_9

    .line 1015
    const-string v3, "SKYMotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] processFrame():(cntFrame)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    .line 1024
    :cond_1
    :goto_0
    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v3, :cond_2

    const-string v3, "SKYMotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] processFrame_end(isProcessing)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->isProcessing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_2
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    if-ne v3, v10, :cond_c

    .line 1029
    :cond_3
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    const/16 v3, 0xf0

    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v3, v4

    if-lt v2, v3, :cond_a

    .line 1040
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_0:Landroid/vts/cv/VTSMat;

    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mY_channel:[B

    invoke-virtual {v3, v8, v8, v4}, Landroid/vts/cv/VTSMat;->put(II[B)V

    .line 1041
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_0:Landroid/vts/cv/VTSMat;

    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_90:Landroid/vts/cv/VTSMat;

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v5, v6

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v6, v7

    invoke-static {v3, v4, v5, v6}, Landroid/vts/cv/VTSImgProc;->resize(Landroid/vts/cv/VTSMat;Landroid/vts/cv/VTSMat;II)V

    .line 1058
    :goto_2
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_90:Landroid/vts/cv/VTSMat;

    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->data1:[B

    invoke-virtual {v3, v8, v8, v4}, Landroid/vts/cv/VTSMat;->get(II[B)V

    .line 1059
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mCore:Landroid/vts/motion/SKYMotionCore;

    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_90:Landroid/vts/cv/VTSMat;

    invoke-virtual {v4}, Landroid/vts/cv/VTSMat;->getNativeObjAddr()J

    move-result-wide v4

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/vts/motion/SKYMotionCore;->NativeProcessFrame(JI)I

    move-result v0

    .line 1061
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    if-eq v3, v9, :cond_4

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    if-ne v3, v10, :cond_f

    .line 1062
    :cond_4
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->data1:[B

    invoke-virtual {p0, v3, v0}, Landroid/vts/motion/SKYMotionEngine;->record([BI)V

    .line 1074
    :cond_5
    :goto_3
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    if-ne v3, v9, :cond_10

    .line 1075
    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v3, :cond_6

    const-string v3, "SKYMotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] processFrame():sendEvent(motion)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_6
    invoke-virtual {p0, v0}, Landroid/vts/motion/SKYMotionEngine;->sendEvent(I)V

    .line 1082
    :cond_7
    :goto_4
    iput-boolean v8, p0, Landroid/vts/motion/SKYMotionEngine;->isProcessing:Z

    .line 1083
    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v3, :cond_8

    const-string v3, "SKYMotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] processFrame_end(isProcessing)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->isProcessing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_8
    const/4 v3, 0x0

    return-object v3

    .line 1018
    .end local v2    # "y":I
    :cond_9
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 1019
    const-string v3, "SKYMotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] processFrame():(cntFrame)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "send COVER event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v3, v3, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v3, v11}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionAction(I)V

    .line 1021
    iput v8, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    goto/16 :goto_0

    .line 1030
    .restart local v2    # "y":I
    :cond_a
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_5
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int v3, v7, v3

    if-lt v1, v3, :cond_b

    .line 1029
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1031
    :cond_b
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mY_channel:[B

    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int v4, v7, v4

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    mul-int/lit16 v4, v4, 0xf0

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v4, v5

    add-int/2addr v4, v2

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    mul-int/2addr v5, v2

    mul-int/lit16 v5, v5, 0x140

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    aget-byte v5, p1, v5

    aput-byte v5, v3, v4

    .line 1030
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1043
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "y":I
    :goto_6
    const/16 v3, 0xf0

    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v3, v4

    if-lt v2, v3, :cond_d

    .line 1051
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_90:Landroid/vts/cv/VTSMat;

    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mY_channel:[B

    invoke-virtual {v3, v8, v8, v4}, Landroid/vts/cv/VTSMat;->put(II[B)V

    goto/16 :goto_2

    .line 1044
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "x":I
    :goto_7
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int v3, v7, v3

    if-lt v1, v3, :cond_e

    .line 1043
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1045
    :cond_e
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mY_channel:[B

    mul-int/lit16 v4, v2, 0x140

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    mul-int/2addr v5, v2

    mul-int/lit16 v5, v5, 0x140

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    aget-byte v5, p1, v5

    aput-byte v5, v3, v4

    .line 1044
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1064
    .end local v1    # "x":I
    :cond_f
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    if-ne v3, v11, :cond_5

    .line 1065
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv:Landroid/vts/cv/VTSMat;

    invoke-virtual {v3, v8, v8, p1}, Landroid/vts/cv/VTSMat;->put(II[B)V

    .line 1066
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv:Landroid/vts/cv/VTSMat;

    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv2:Landroid/vts/cv/VTSMat;

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v5, v6

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v6, v7

    invoke-static {v3, v4, v5, v6}, Landroid/vts/cv/VTSImgProc;->resize(Landroid/vts/cv/VTSMat;Landroid/vts/cv/VTSMat;II)V

    .line 1067
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv2:Landroid/vts/cv/VTSMat;

    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->data2:[B

    invoke-virtual {v3, v8, v8, v4}, Landroid/vts/cv/VTSMat;->get(II[B)V

    .line 1068
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->data2:[B

    invoke-virtual {p0, v3, v0}, Landroid/vts/motion/SKYMotionEngine;->record([BI)V

    goto/16 :goto_3

    .line 1079
    :cond_10
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    if-ne v3, v10, :cond_7

    .line 1080
    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v3, :cond_7

    const-string v3, "SKYMotionEngine"

    const-string v4, "[ENGINE] processFrame: do not send Event (NotStable)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private setLuxMode()V
    .locals 3

    .prologue
    .line 1452
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE]setLuxMode()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LIGHT_SENSOR:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LIGHT_SENSOR:Z

    if-eqz v0, :cond_1

    .line 1455
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->lightSensor:Landroid/hardware/Sensor;

    .line 1456
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->lightSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1459
    :cond_1
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1461
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->lightSensor:Landroid/hardware/Sensor;

    goto :goto_0
.end method


# virtual methods
.method public EnableDBGLog(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1439
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] EnableDBGLog(on)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iput-boolean p1, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    .line 1441
    iput-boolean p1, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_LOG:Z

    .line 1442
    iput-boolean p1, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_FPS_COUNT:Z

    .line 1444
    iput-boolean p1, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LIGHT_SENSOR:Z

    .line 1445
    invoke-direct {p0}, Landroid/vts/motion/SKYMotionEngine;->setLuxMode()V

    .line 1446
    return-void
.end method

.method public EnableWaveAction(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1221
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] EnableWaveAction() : (enable)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    if-eqz p1, :cond_1

    .line 1224
    const/4 v0, 0x1

    iput v0, p0, Landroid/vts/motion/SKYMotionEngine;->waveState:I

    .line 1229
    :cond_0
    :goto_0
    return v3

    .line 1225
    :cond_1
    if-nez p1, :cond_0

    .line 1226
    iput v3, p0, Landroid/vts/motion/SKYMotionEngine;->waveState:I

    goto :goto_0
.end method

.method public RecordGesture(Z)V
    .locals 6
    .param p1, "mRecord"    # Z

    .prologue
    .line 1401
    const-string v3, "SKYMotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] StartRecordGesture() : (mRecord)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    if-eqz p1, :cond_0

    .line 1403
    const/4 v3, 0x1

    iput v3, p0, Landroid/vts/motion/SKYMotionEngine;->recordingState:I

    .line 1405
    const/4 v3, 0x0

    sput v3, Landroid/vts/motion/SKYMotionEngine;->RecFrame:I

    sput v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntCover:I

    sput v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntRight:I

    sput v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntLeft:I

    .line 1407
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "MM.dd.HH.mm.ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1408
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1409
    .local v0, "date":Ljava/util/Date;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/sdcard/vts"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_epLock"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mEPLock:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_dt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mDt:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_rpm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mRPM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".vts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outputFile:Ljava/io/File;

    .line 1412
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->outputFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-void

    .line 1413
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 1415
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1418
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Landroid/vts/motion/SKYMotionEngine;->recordingState:I

    goto :goto_0
.end method

.method public RecordGesture(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mRecord"    # Z
    .param p2, "epLock"    # Ljava/lang/String;
    .param p3, "dt"    # Ljava/lang/String;
    .param p4, "rpm"    # Ljava/lang/String;

    .prologue
    .line 1423
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] StartRecordGesture() : (mRecord)"

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

    .line 1424
    iput-object p2, p0, Landroid/vts/motion/SKYMotionEngine;->mEPLock:Ljava/lang/String;

    .line 1425
    iput-object p3, p0, Landroid/vts/motion/SKYMotionEngine;->mDt:Ljava/lang/String;

    .line 1426
    iput-object p4, p0, Landroid/vts/motion/SKYMotionEngine;->mRPM:Ljava/lang/String;

    .line 1427
    invoke-virtual {p0, p1}, Landroid/vts/motion/SKYMotionEngine;->RecordGesture(Z)V

    .line 1428
    return-void
.end method

.method public SetAccelerometerFilter(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1234
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] SetAccelerometerFilter() : (on)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iput-boolean p1, p0, Landroid/vts/motion/SKYMotionEngine;->accOn:Z

    .line 1236
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->accOn:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/vts/motion/SKYMotionEngine;->SetAccelerometerFilter(ZI)V

    .line 1238
    return-void
.end method

.method public SetAccelerometerFilter(ZI)V
    .locals 7
    .param p1, "on"    # Z
    .param p2, "i"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1241
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] SetAccelerometerFilter() : (on)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(i)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iput-boolean p1, p0, Landroid/vts/motion/SKYMotionEngine;->accOn:Z

    .line 1245
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->accOn:Z

    if-eqz v0, :cond_2

    .line 1247
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    if-ne v0, v3, :cond_1

    .line 1249
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->rotationVectorSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 1251
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->SENSOR_DELAY_MODE:I

    packed-switch v0, :pswitch_data_0

    .line 1262
    :cond_0
    :goto_0
    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    .line 1301
    :cond_1
    :goto_1
    return-void

    .line 1254
    :pswitch_0
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->rotationVectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1256
    :pswitch_1
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->rotationVectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1258
    :pswitch_2
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->rotationVectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1260
    :pswitch_3
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->rotationVectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 1267
    :cond_2
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->accOn:Z

    if-nez v0, :cond_1

    .line 1269
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    if-eq v0, v5, :cond_3

    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    if-ne v0, v6, :cond_1

    .line 1271
    :cond_3
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->rotationVectorSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_5

    .line 1273
    const-string v0, "SKYMotionEngine"

    const-string v1, "RotationVector : unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->rotationVectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1280
    :goto_2
    if-nez p2, :cond_4

    .line 1281
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v0, v0, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v0, v3}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionStatus(I)V

    .line 1282
    iput v3, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    .line 1284
    :cond_4
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    if-nez v0, :cond_1

    .line 1285
    iput v3, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    goto :goto_1

    .line 1277
    :cond_5
    const-string v0, "SKYMotionEngine"

    const-string v1, "RotationVector : null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public SetParameter(II)V
    .locals 3
    .param p1, "param"    # I
    .param p2, "value"    # I

    .prologue
    .line 1388
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] SetParameter() : (param)"

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

    .line 1389
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1390
    iput p2, p0, Landroid/vts/motion/SKYMotionEngine;->SHAKE_THRESHOLD:I

    .line 1393
    :goto_0
    return-void

    .line 1392
    :cond_0
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mCore:Landroid/vts/motion/SKYMotionCore;

    invoke-virtual {v0, p1, p2}, Landroid/vts/motion/SKYMotionCore;->NativeSetParameter(II)V

    goto :goto_0
.end method

.method public SetVisiblePreview(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1396
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] SetVisiblePreview() : (on)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iput-boolean p1, p0, Landroid/vts/motion/SKYMotionEngine;->mVisiblePreview:Z

    .line 1398
    return-void
.end method

.method public init(Landroid/vts/motion/SKYMotionAPI;I)V
    .locals 8
    .param p1, "api"    # Landroid/vts/motion/SKYMotionAPI;
    .param p2, "algorithm"    # I

    .prologue
    const/16 v7, 0x18

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 367
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] init() : (ptr)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput-object p1, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    .line 374
    sput p2, Landroid/vts/motion/SKYMotionEngine;->mAlgorithm:I

    .line 376
    new-instance v0, Landroid/vts/motion/SKYMotionCore;

    invoke-direct {v0}, Landroid/vts/motion/SKYMotionCore;-><init>()V

    iput-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mCore:Landroid/vts/motion/SKYMotionCore;

    .line 377
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mCore:Landroid/vts/motion/SKYMotionCore;

    sget v1, Landroid/vts/motion/SKYMotionEngine;->mAlgorithm:I

    invoke-virtual {v0, v1}, Landroid/vts/motion/SKYMotionCore;->NativeSetup(I)V

    .line 379
    const/16 v0, 0x140

    iput v0, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    .line 380
    const/16 v0, 0xf0

    iput v0, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    .line 381
    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->mOrientation:I

    .line 383
    new-instance v0, Landroid/vts/cv/VTSMat;

    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v1, v2

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v2, v3

    invoke-direct {v0, v1, v2, v5}, Landroid/vts/cv/VTSMat;-><init>(III)V

    iput-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_90:Landroid/vts/cv/VTSMat;

    .line 384
    new-instance v0, Landroid/vts/cv/VTSMat;

    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v1, v2

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v2, v3

    invoke-direct {v0, v1, v2, v5}, Landroid/vts/cv/VTSMat;-><init>(III)V

    iput-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_0:Landroid/vts/cv/VTSMat;

    .line 386
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    if-ne v0, v6, :cond_0

    .line 387
    new-instance v0, Landroid/vts/cv/VTSMat;

    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    invoke-direct {v0, v1, v2, v6}, Landroid/vts/cv/VTSMat;-><init>(III)V

    iput-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv:Landroid/vts/cv/VTSMat;

    .line 388
    new-instance v0, Landroid/vts/cv/VTSMat;

    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v1, v2

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    div-int/2addr v2, v3

    invoke-direct {v0, v1, v2, v6}, Landroid/vts/cv/VTSMat;-><init>(III)V

    iput-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv2:Landroid/vts/cv/VTSMat;

    .line 389
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    mul-int/2addr v1, v2

    div-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->data2:[B

    .line 392
    :cond_0
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    mul-int/2addr v1, v2

    div-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mY_channel:[B

    .line 393
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mScale:I

    mul-int/2addr v1, v2

    div-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->data1:[B

    .line 394
    iput-boolean v4, p0, Landroid/vts/motion/SKYMotionEngine;->mPreview:Z

    .line 396
    iput-boolean v4, p0, Landroid/vts/motion/SKYMotionEngine;->stopCalled:Z

    .line 402
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    .line 405
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->rotationVectorSensor:Landroid/hardware/Sensor;

    .line 409
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->SENSOR_ENABLE:Z

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->lightSensor:Landroid/hardware/Sensor;

    .line 411
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->proxSensor:Landroid/hardware/Sensor;

    .line 418
    :cond_1
    new-instance v0, Landroid/vts/VTSModelFlag;

    invoke-direct {v0}, Landroid/vts/VTSModelFlag;-><init>()V

    iput-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->model:Landroid/vts/VTSModelFlag;

    .line 421
    sget-boolean v0, Landroid/vts/VTSModelFlag;->EF47:Z

    if-eqz v0, :cond_2

    .line 422
    iput v7, p0, Landroid/vts/motion/SKYMotionEngine;->mFixedFPS:I

    .line 423
    iput-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->mHDMI:Z

    .line 426
    :cond_2
    sget-boolean v0, Landroid/vts/VTSModelFlag;->EF39:Z

    if-eqz v0, :cond_3

    .line 427
    const/4 v0, 0x6

    iput v0, p0, Landroid/vts/motion/SKYMotionEngine;->cntShaking:I

    .line 432
    :cond_3
    sget-boolean v0, Landroid/vts/VTSModelFlag;->EF48:Z

    if-eqz v0, :cond_4

    .line 433
    iput v7, p0, Landroid/vts/motion/SKYMotionEngine;->mFixedFPS:I

    .line 436
    :cond_4
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[BUILD_MODEL]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->model:Landroid/vts/VTSModelFlag;

    iget-object v2, v2, Landroid/vts/VTSModelFlag;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFixedFPS is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFixedFPS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[BUILD_MODEL]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->model:Landroid/vts/VTSModelFlag;

    iget-object v2, v2, Landroid/vts/VTSModelFlag;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHDMI is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->mHDMI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[BUILD_MODEL]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->model:Landroid/vts/VTSModelFlag;

    iget-object v2, v2, Landroid/vts/VTSModelFlag;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cntShaking is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->cntShaking:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[BUILD_MODEL]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->model:Landroid/vts/VTSModelFlag;

    iget-object v2, v2, Landroid/vts/VTSModelFlag;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cameraIsRunning is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->cameraIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->mHDMI:Z

    if-eqz v0, :cond_5

    .line 446
    const-string v0, "hdmi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHDMIService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHDMIService;

    move-result-object v0

    iput-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->hdmiService:Landroid/os/IHDMIService;

    .line 452
    :cond_5
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 1306
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1312
    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 1385
    :cond_0
    :goto_0
    return-void

    .line 1316
    :sswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1317
    .local v0, "currentTime":J
    iget-wide v6, p0, Landroid/vts/motion/SKYMotionEngine;->lastTimeForACC:J

    sub-long v3, v0, v6

    .line 1319
    .local v3, "gapOfTime":J
    const-wide/16 v6, 0x14

    cmp-long v6, v3, v6

    if-lez v6, :cond_0

    .line 1320
    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->lastTimeForACC:J

    .line 1322
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    iput v6, p0, Landroid/vts/motion/SKYMotionEngine;->x:F

    .line 1323
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    iput v6, p0, Landroid/vts/motion/SKYMotionEngine;->y:F

    .line 1324
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v11

    iput v6, p0, Landroid/vts/motion/SKYMotionEngine;->z:F

    .line 1327
    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->x:F

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->y:F

    add-float/2addr v6, v7

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->z:F

    add-float/2addr v6, v7

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->lastX:F

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->lastY:F

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->lastZ:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    long-to-float v7, v3

    div-float/2addr v6, v7

    const v7, 0x461c4000    # 10000.0f

    mul-float/2addr v6, v7

    iput v6, p0, Landroid/vts/motion/SKYMotionEngine;->speed:F

    .line 1329
    iget-boolean v6, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v6, :cond_1

    const-string v6, "SKYMotionEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ENGINE] onSensorChanged : (x)"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Landroid/vts/motion/SKYMotionEngine;->x:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(y)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/vts/motion/SKYMotionEngine;->y:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(z)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/vts/motion/SKYMotionEngine;->z:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(lastX)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/vts/motion/SKYMotionEngine;->lastX:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(lastY)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/vts/motion/SKYMotionEngine;->lastY:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(lastZ)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/vts/motion/SKYMotionEngine;->lastZ:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :cond_1
    iget-boolean v6, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v6, :cond_2

    const-string v6, "SKYMotionEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ENGINE] onSensorChanged : (speed)"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Landroid/vts/motion/SKYMotionEngine;->speed:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_2
    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->speed:F

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->SHAKE_THRESHOLD:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 1334
    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->isShaking:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/vts/motion/SKYMotionEngine;->isShaking:I

    .line 1335
    iput v10, p0, Landroid/vts/motion/SKYMotionEngine;->isNotShaking:I

    .line 1342
    :goto_1
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    iput v6, p0, Landroid/vts/motion/SKYMotionEngine;->lastX:F

    .line 1343
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    iput v6, p0, Landroid/vts/motion/SKYMotionEngine;->lastY:F

    .line 1344
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v11

    iput v6, p0, Landroid/vts/motion/SKYMotionEngine;->lastZ:F

    .line 1346
    iget-boolean v6, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v6, :cond_3

    const-string v6, "SKYMotionEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ENGINE] onSensorChanged : (isShaking)"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Landroid/vts/motion/SKYMotionEngine;->isShaking:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(isNotShaking)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/vts/motion/SKYMotionEngine;->isNotShaking:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_3
    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->isShaking:I

    iget v7, p0, Landroid/vts/motion/SKYMotionEngine;->cntShaking:I

    if-ne v6, v7, :cond_4

    .line 1349
    iget-object v6, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v6, v6, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v6, v11}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionStatus(I)V

    .line 1350
    iput v11, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    .line 1353
    :cond_4
    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->isNotShaking:I

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_0

    .line 1355
    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    if-eq v6, v9, :cond_6

    .line 1356
    iget-object v6, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v6, v6, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v6, v9}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionStatus(I)V

    .line 1357
    iput v9, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    .line 1360
    :try_start_0
    const-string v6, "SKYMotionEngine"

    const-string v7, "[ENGINE] onSensorChanged : (Thread)begin"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const-wide/16 v6, 0x12c

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    :goto_2
    const-string v6, "SKYMotionEngine"

    const-string v7, "[ENGINE] onSensorChanged : (Thread)end"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1338
    :cond_5
    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->isNotShaking:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/vts/motion/SKYMotionEngine;->isNotShaking:I

    .line 1339
    iput v10, p0, Landroid/vts/motion/SKYMotionEngine;->isShaking:I

    goto :goto_1

    .line 1362
    :catch_0
    move-exception v2

    .line 1364
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1368
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_6
    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    if-ne v6, v9, :cond_0

    .line 1369
    const-string v6, "SKYMotionEngine"

    const-string/jumbo v7, "no delay"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-object v6, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v6, v6, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v6, v9}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionStatus(I)V

    .line 1371
    iput v9, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    goto/16 :goto_0

    .line 1378
    .end local v0    # "currentTime":J
    .end local v3    # "gapOfTime":J
    :sswitch_1
    iget-boolean v6, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LIGHT_SENSOR:Z

    if-eqz v6, :cond_0

    .line 1379
    const-string v6, "SKYMotionEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ENGINE] onSensorChanged : LUX value : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    float-to-int v5, v6

    .line 1381
    .local v5, "lux":I
    iget-object v6, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v6, v6, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v6, v5}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionLUX(I)V

    goto/16 :goto_0

    .line 1312
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public record([BI)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "motion"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 965
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->recordingState:I

    if-ne v3, v6, :cond_5

    .line 966
    sget v3, Landroid/vts/motion/SKYMotionEngine;->RecFrame:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/vts/motion/SKYMotionEngine;->RecFrame:I

    .line 967
    if-ne p2, v6, :cond_3

    sget v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntLeft:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntLeft:I

    .line 972
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v3, :cond_1

    const-string v3, "SKYMotionEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ENGINE] record() : (type)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_1
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outStream:Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-virtual {v3, p1, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 974
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    if-eq v3, v6, :cond_2

    .line 975
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    :cond_2
    :goto_1
    return-void

    .line 968
    :cond_3
    if-ne p2, v4, :cond_4

    sget v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntRight:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntRight:I

    goto :goto_0

    .line 969
    :cond_4
    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    sget v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntCover:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntCover:I

    goto :goto_0

    .line 976
    :catch_0
    move-exception v2

    .line 977
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 979
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->recordingState:I

    if-ne v3, v4, :cond_2

    .line 981
    :try_start_1
    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    if-eq v3, v6, :cond_6

    .line 982
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outStream:Ljava/io/FileOutputStream;

    sget v4, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntLeft:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 983
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outStream:Ljava/io/FileOutputStream;

    sget v4, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntRight:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 984
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outStream:Ljava/io/FileOutputStream;

    sget v4, Landroid/vts/motion/SKYMotionEngine;->RecMotionCntCover:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 986
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 987
    .local v0, "buff":Ljava/nio/ByteBuffer;
    sget v3, Landroid/vts/motion/SKYMotionEngine;->RecFrame:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 988
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 989
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 990
    .local v1, "byteV":[B
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outStream:Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 992
    .end local v0    # "buff":Ljava/nio/ByteBuffer;
    .end local v1    # "byteV":[B
    :cond_6
    iget-object v3, p0, Landroid/vts/motion/SKYMotionEngine;->outStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 996
    :goto_2
    iput v7, p0, Landroid/vts/motion/SKYMotionEngine;->recordingState:I

    goto :goto_1

    .line 993
    :catch_1
    move-exception v2

    .line 994
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public release()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 731
    const-string v2, "SKYMotionEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ENGINE] release() : (isProcessing)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Landroid/vts/motion/SKYMotionEngine;->isProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (ptr)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->stopCalled:Z

    if-eqz v2, :cond_2

    .line 734
    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->stopDone:Z

    if-nez v2, :cond_0

    .line 735
    const-string v2, "SKYMotionEngine"

    const-string v3, "[ENGINE] release() : stop is not done"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iput-boolean v6, p0, Landroid/vts/motion/SKYMotionEngine;->releaseCalled:Z

    .line 815
    :goto_0
    return-void

    .line 740
    :cond_0
    const/4 v1, 0x0

    .line 742
    .local v1, "wait":I
    :cond_1
    const-string v2, "SKYMotionEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ENGINE] release() : wait until ProcessFrame is end (wait)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    add-int/lit8 v1, v1, 0x1

    .line 745
    const/16 v2, 0xf

    if-ne v1, v2, :cond_a

    .line 755
    .end local v1    # "wait":I
    :cond_2
    :goto_1
    iput v8, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    .line 757
    invoke-virtual {p0, v7, v6}, Landroid/vts/motion/SKYMotionEngine;->SetAccelerometerFilter(ZI)V

    .line 760
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    .line 761
    iput-boolean v7, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LIGHT_SENSOR:Z

    .line 762
    invoke-direct {p0}, Landroid/vts/motion/SKYMotionEngine;->setLuxMode()V

    .line 765
    :cond_3
    monitor-enter p0

    .line 766
    :try_start_0
    const-string v2, "SKYMotionEngine"

    const-string v3, "[ENGINE] release() : this.wait.notify()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->releaseForThread:Z

    .line 768
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 765
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mCore:Landroid/vts/motion/SKYMotionCore;

    if-eqz v2, :cond_4

    .line 774
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mCore:Landroid/vts/motion/SKYMotionCore;

    invoke-virtual {v2}, Landroid/vts/motion/SKYMotionCore;->NativeRelease()V

    .line 775
    iput-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mCore:Landroid/vts/motion/SKYMotionCore;

    .line 786
    :cond_4
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_0:Landroid/vts/cv/VTSMat;

    if-eqz v2, :cond_5

    .line 787
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_0:Landroid/vts/cv/VTSMat;

    invoke-virtual {v2}, Landroid/vts/cv/VTSMat;->release()V

    .line 788
    iput-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_0:Landroid/vts/cv/VTSMat;

    .line 791
    :cond_5
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_90:Landroid/vts/cv/VTSMat;

    if-eqz v2, :cond_6

    .line 792
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_90:Landroid/vts/cv/VTSMat;

    invoke-virtual {v2}, Landroid/vts/cv/VTSMat;->release()V

    .line 793
    iput-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv_90:Landroid/vts/cv/VTSMat;

    .line 797
    :cond_6
    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->useRecType:I

    if-ne v2, v8, :cond_9

    .line 798
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv:Landroid/vts/cv/VTSMat;

    if-eqz v2, :cond_7

    .line 799
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv:Landroid/vts/cv/VTSMat;

    invoke-virtual {v2}, Landroid/vts/cv/VTSMat;->release()V

    .line 800
    iput-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv:Landroid/vts/cv/VTSMat;

    .line 802
    :cond_7
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv2:Landroid/vts/cv/VTSMat;

    if-eqz v2, :cond_8

    .line 803
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv2:Landroid/vts/cv/VTSMat;

    invoke-virtual {v2}, Landroid/vts/cv/VTSMat;->release()V

    .line 804
    iput-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mYuv2:Landroid/vts/cv/VTSMat;

    .line 806
    :cond_8
    iput-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->data2:[B

    .line 809
    :cond_9
    iput-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mY_channel:[B

    .line 810
    iput-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->data1:[B

    .line 811
    iput-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->model:Landroid/vts/VTSModelFlag;

    goto :goto_0

    .line 748
    .restart local v1    # "wait":I
    :cond_a
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 752
    :goto_2
    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->isProcessing:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 765
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "wait":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1183
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->mThreadRun:Z

    .line 1184
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->mThreadRun:Z

    if-nez v2, :cond_1

    .line 1211
    return-void

    .line 1185
    :cond_1
    const/4 v0, 0x0

    .line 1187
    .local v0, "bmp":Landroid/graphics/Bitmap;
    monitor-enter p0

    .line 1189
    :try_start_0
    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v2, :cond_2

    const-string v2, "SKYMotionEngine"

    const-string v3, "[ENGINE] this.wait.before()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 1191
    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->releaseForThread:Z

    if-nez v2, :cond_5

    .line 1192
    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v2, :cond_3

    const-string v2, "SKYMotionEngine"

    const-string v3, "[ENGINE] this.wait.after()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_3
    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v2, :cond_4

    const-string v2, "SKYMotionEngine"

    const-string v3, "[ENGINE]run():processFrame()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_4
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrame:[B

    invoke-direct {p0, v2}, Landroid/vts/motion/SKYMotionEngine;->processFrame([B)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1187
    :cond_5
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1203
    sget v2, Landroid/vts/motion/SKYMotionEngine;->ANDROID_VERSION:I

    if-nez v2, :cond_0

    .line 1204
    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->mPreview:Z

    if-eqz v2, :cond_0

    .line 1205
    if-eqz v0, :cond_0

    .line 1206
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mView:Landroid/vts/motion/SKYMotionView;

    invoke-virtual {v2, v0}, Landroid/vts/motion/SKYMotionView;->draw(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1197
    :catch_0
    move-exception v1

    .line 1198
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1187
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public sendEvent(I)V
    .locals 9
    .param p1, "motion"    # I

    .prologue
    const-wide/16 v7, 0x7d0

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1094
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] sendEvent():(mMotion) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mMotion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (motion) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_0
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->waveState:I

    if-ne v0, v4, :cond_8

    .line 1097
    if-eq p1, v4, :cond_1

    if-ne p1, v6, :cond_6

    .line 1098
    :cond_1
    if-ne p1, v4, :cond_4

    .line 1099
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v0, v0, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionAction(I)V

    .line 1103
    :goto_0
    iput-boolean v4, p0, Landroid/vts/motion/SKYMotionEngine;->MOTION_EVENT_CHECK:Z

    .line 1105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->currentTimeForWAVE:J

    .line 1107
    iget-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->currentTimeForWAVE:J

    iget-wide v2, p0, Landroid/vts/motion/SKYMotionEngine;->lastTimeForWAVE:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->gapOfTimeForWAVE2:J

    .line 1112
    iget-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->gapOfTimeForWAVE2:J

    cmp-long v0, v0, v7

    if-gez v0, :cond_2

    .line 1116
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->mMotion:I

    if-ne v0, v4, :cond_5

    if-ne p1, v6, :cond_5

    .line 1117
    const/4 p1, 0x4

    .line 1118
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v0, v0, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v0, p1}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionAction(I)V

    .line 1119
    iput-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->MOTION_EVENT_CHECK:Z

    .line 1127
    :cond_2
    :goto_1
    iput p1, p0, Landroid/vts/motion/SKYMotionEngine;->mMotion:I

    .line 1128
    iget-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->currentTimeForWAVE:J

    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->lastTimeForWAVE:J

    .line 1175
    :cond_3
    :goto_2
    return-void

    .line 1101
    :cond_4
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v0, v0, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionAction(I)V

    goto :goto_0

    .line 1120
    :cond_5
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->mMotion:I

    if-ne v0, v6, :cond_2

    if-ne p1, v4, :cond_2

    .line 1121
    const/4 p1, 0x5

    .line 1122
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v0, v0, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v0, p1}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionAction(I)V

    .line 1123
    iput-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->MOTION_EVENT_CHECK:Z

    goto :goto_1

    .line 1131
    :cond_6
    if-nez p1, :cond_7

    .line 1132
    iget-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->MOTION_EVENT_CHECK:Z

    if-eqz v0, :cond_3

    .line 1133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->currentTimeForWAVE2:J

    .line 1134
    iget-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->currentTimeForWAVE2:J

    iget-wide v2, p0, Landroid/vts/motion/SKYMotionEngine;->lastTimeForWAVE:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->gapOfTimeForWAVE2:J

    .line 1136
    iget-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->gapOfTimeForWAVE2:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_3

    .line 1139
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v0, v0, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mMotion:I

    invoke-interface {v0, v1}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionAction(I)V

    .line 1140
    iput p1, p0, Landroid/vts/motion/SKYMotionEngine;->mMotion:I

    .line 1141
    iput-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->MOTION_EVENT_CHECK:Z

    .line 1142
    iget-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->currentTimeForWAVE:J

    iput-wide v0, p0, Landroid/vts/motion/SKYMotionEngine;->lastTimeForWAVE:J

    goto :goto_2

    .line 1145
    :cond_7
    if-ne p1, v3, :cond_3

    .line 1154
    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    goto :goto_2

    .line 1157
    :cond_8
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->waveState:I

    if-nez v0, :cond_3

    .line 1158
    iget v0, p0, Landroid/vts/motion/SKYMotionEngine;->mMotion:I

    if-eq v0, p1, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    .line 1159
    if-ne p1, v3, :cond_9

    .line 1168
    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->cntFrame:I

    goto :goto_2

    .line 1171
    :cond_9
    iget-object v0, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v0, v0, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v0, p1}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionAction(I)V

    goto :goto_2
.end method

.method public setCameraParameters()V
    .locals 5

    .prologue
    .line 823
    const-string v2, "SKYMotionEngine"

    const-string v3, "[ENGINE] setCameraParameters()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 826
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 829
    sget-boolean v2, Landroid/vts/VTSModelFlag;->EF39:Z

    sget-boolean v3, Landroid/vts/VTSModelFlag;->EF40:Z

    or-int/2addr v2, v3

    sget-boolean v3, Landroid/vts/VTSModelFlag;->EF65L:Z

    or-int/2addr v2, v3

    sget-boolean v3, Landroid/vts/VTSModelFlag;->EF47:Z

    or-int/2addr v2, v3

    sget-boolean v3, Landroid/vts/VTSModelFlag;->EF44:Z

    or-int/2addr v2, v3

    sget-boolean v3, Landroid/vts/VTSModelFlag;->EF48:Z

    or-int/2addr v2, v3

    sget-boolean v3, Landroid/vts/VTSModelFlag;->EF51:Z

    or-int/2addr v2, v3

    sget-boolean v3, Landroid/vts/VTSModelFlag;->EF52:Z

    or-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 831
    const-string/jumbo v2, "preview-frame-rate"

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mFixedFPS:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 832
    const-string/jumbo v2, "whitebalance"

    const-string v3, "daylight"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :goto_0
    const-string v2, "SKYMotionEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ENGINE] start() : (mVisiblePreview)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Landroid/vts/motion/SKYMotionEngine;->mVisiblePreview:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-boolean v2, p0, Landroid/vts/motion/SKYMotionEngine;->mVisiblePreview:Z

    if-eqz v2, :cond_1

    .line 847
    const-string/jumbo v2, "pantech-vts"

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :goto_1
    const-string v2, "auto-exposure-values"

    const-string v3, "center-weighted"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 868
    return-void

    .line 837
    :cond_0
    :try_start_0
    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFixedFPS:I

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Landroid/vts/motion/SKYMotionEngine;->mFixedFPS:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :goto_2
    const-string v2, "daylight"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto :goto_0

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 849
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const-string/jumbo v2, "pantech-vts"

    const-string/jumbo v3, "on"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setExposureLock(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 877
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 878
    const-string v1, "SKYMotionEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ENGINE] setExposureLock(value)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 880
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    iget v1, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameWidth:I

    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mFrameHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 881
    if-eqz p1, :cond_0

    .line 882
    const-string v1, "auto-exposure-lock"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :goto_0
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 890
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :goto_1
    return-void

    .line 884
    .restart local v0    # "params":Landroid/hardware/Camera$Parameters;
    :cond_0
    const-string v1, "auto-exposure-lock"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 888
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :cond_1
    const-string v1, "SKYMotionEngine"

    const-string v2, "[ENGINE] setExposureLock : mCamera is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setOrientation(I)I
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/4 v5, 0x0

    .line 918
    const-string v2, "SKYMotionEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ENGINE] setOrientation() : (ori)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iput p1, p0, Landroid/vts/motion/SKYMotionEngine;->mOrientation:I

    .line 921
    iget v2, p0, Landroid/vts/motion/SKYMotionEngine;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 953
    :goto_0
    const-string v2, "SKYMotionEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ENGINE] setOrientation() : set rotation (rotation)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    return v5

    .line 923
    :pswitch_0
    iget-object v2, p0, Landroid/vts/motion/SKYMotionEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 924
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 925
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    goto :goto_0

    .line 929
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :pswitch_1
    iput v5, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    goto :goto_0

    .line 933
    :pswitch_2
    const/4 v2, 0x1

    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    goto :goto_0

    .line 937
    :pswitch_3
    const/4 v2, 0x3

    iput v2, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    goto :goto_0

    .line 921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setPreview(Landroid/view/SurfaceHolder;II)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 901
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] setPreview() : (holder)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (width)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (height)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iput-object p1, p0, Landroid/vts/motion/SKYMotionEngine;->mHolder:Landroid/view/SurfaceHolder;

    .line 905
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/vts/motion/SKYMotionEngine;->mPreview:Z

    .line 909
    return-void
.end method

.method public setSensorMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1433
    const-string v0, "SKYMotionEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ENGINE] setSensorMode(mode)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iput p1, p0, Landroid/vts/motion/SKYMotionEngine;->SENSOR_DELAY_MODE:I

    .line 1435
    return-void
.end method

.method public start(I)I
    .locals 11
    .param p1, "cameraId"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 461
    const-string v4, "SKYMotionEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[ENGINE] start() : (cameraId)"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (ptr)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    if-ne v4, v10, :cond_1

    .line 468
    :cond_0
    const-string v4, "SKYMotionEngine"

    const-string v5, "[ENGINE] start() : stop state!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_0
    return v8

    .line 476
    :cond_1
    iget-boolean v4, p0, Landroid/vts/motion/SKYMotionEngine;->mHDMI:Z

    if-eqz v4, :cond_2

    .line 478
    :try_start_0
    const-string v4, "SKYMotionEngine"

    const-string v5, "[ENGINE] hdmiService.setIsMotionRec(1)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->hdmiService:Landroid/os/IHDMIService;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/os/IHDMIService;->setIsMotionRec(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :cond_2
    :goto_1
    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mOrientation:I

    if-nez v4, :cond_3

    .line 491
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 492
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 493
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    .line 494
    const-string v4, "SKYMotionEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[ENGINE] start() : Display Rotation (rotation)"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v0    # "display":Landroid/view/Display;
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_3
    iput-boolean v8, p0, Landroid/vts/motion/SKYMotionEngine;->stopCalled:Z

    .line 503
    monitor-enter p0

    .line 504
    :try_start_1
    invoke-direct {p0, p1}, Landroid/vts/motion/SKYMotionEngine;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    .line 506
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_6

    .line 508
    invoke-virtual {p0}, Landroid/vts/motion/SKYMotionEngine;->setCameraParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    :try_start_2
    sget v4, Landroid/vts/motion/SKYMotionEngine;->ANDROID_VERSION:I

    if-nez v4, :cond_7

    .line 514
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 526
    :cond_4
    :goto_2
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    new-instance v5, Landroid/vts/motion/SKYMotionEngine$1;

    invoke-direct {v5, p0}, Landroid/vts/motion/SKYMotionEngine$1;-><init>(Landroid/vts/motion/SKYMotionEngine;)V

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 570
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 575
    :goto_3
    :try_start_3
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 586
    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    if-eq v4, v9, :cond_5

    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    if-ne v4, v10, :cond_b

    .line 587
    :cond_5
    const-string v4, "SKYMotionEngine"

    const-string v5, "[ENGINE] start() : already stopped"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_6
    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 480
    :catch_0
    move-exception v2

    .line 482
    .local v2, "e1":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 517
    .end local v2    # "e1":Landroid/os/RemoteException;
    :cond_7
    :try_start_4
    sget v4, Landroid/vts/motion/SKYMotionEngine;->ANDROID_VERSION:I

    if-ne v4, v7, :cond_4

    .line 518
    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    if-eqz v4, :cond_8

    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    if-ne v4, v9, :cond_a

    .line 519
    :cond_8
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    const/16 v5, 0x5a

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 523
    :cond_9
    :goto_5
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    iget-object v5, p0, Landroid/vts/motion/SKYMotionEngine;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 571
    :catch_1
    move-exception v1

    .line 572
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    const-string v4, "SKYMotionEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mCamera.setPreviewDisplay fails: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 520
    .end local v1    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_6
    iget v4, p0, Landroid/vts/motion/SKYMotionEngine;->mRotation:I

    if-ne v4, v10, :cond_9

    .line 521
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    const/16 v5, 0xb4

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 589
    :cond_b
    :try_start_7
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v4, v4, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionStatus(I)V

    .line 590
    const/4 v4, 0x0

    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    .line 593
    iget-object v4, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v4, v4, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionStatus(I)V

    .line 594
    const/4 v4, 0x1

    iput v4, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    .line 597
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/vts/motion/SKYMotionEngine;->SetAccelerometerFilter(ZI)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method

.method public stop()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 675
    const-string v1, "SKYMotionEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ENGINE] stop() : (ptr)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iput-boolean v4, p0, Landroid/vts/motion/SKYMotionEngine;->mPreview:Z

    .line 678
    iput-boolean v4, p0, Landroid/vts/motion/SKYMotionEngine;->mThreadRun:Z

    .line 679
    iput-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->stopCalled:Z

    .line 680
    const/4 v1, 0x2

    iput v1, p0, Landroid/vts/motion/SKYMotionEngine;->shakingState:I

    .line 683
    invoke-virtual {p0, v4, v5}, Landroid/vts/motion/SKYMotionEngine;->SetAccelerometerFilter(ZI)V

    .line 686
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 687
    iput-boolean v4, p0, Landroid/vts/motion/SKYMotionEngine;->DBG_LIGHT_SENSOR:Z

    .line 688
    invoke-direct {p0}, Landroid/vts/motion/SKYMotionEngine;->setLuxMode()V

    .line 695
    :cond_0
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 696
    monitor-enter p0

    .line 697
    :try_start_0
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 698
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 699
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 700
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mCamera:Landroid/hardware/Camera;

    .line 701
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mHolder:Landroid/view/SurfaceHolder;

    .line 696
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->mEngineAPI:Landroid/vts/motion/SKYMotionAPI;

    iget-object v1, v1, Landroid/vts/motion/SKYMotionAPI;->mCallback:Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;

    invoke-interface {v1, v6}, Landroid/vts/motion/SKYMotionAPI$SKYMotionCallback;->HandleSKYMotionStatus(I)V

    .line 704
    iput v6, p0, Landroid/vts/motion/SKYMotionEngine;->status:I

    .line 707
    :cond_1
    iput-boolean v5, p0, Landroid/vts/motion/SKYMotionEngine;->stopDone:Z

    .line 708
    iget-boolean v1, p0, Landroid/vts/motion/SKYMotionEngine;->releaseCalled:Z

    if-eqz v1, :cond_2

    .line 709
    const-string v1, "SKYMotionEngine"

    const-string v2, "[ENGINE] stop() : call release()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {p0}, Landroid/vts/motion/SKYMotionEngine;->release()V

    .line 714
    :cond_2
    iget-boolean v1, p0, Landroid/vts/motion/SKYMotionEngine;->mHDMI:Z

    if-eqz v1, :cond_3

    .line 716
    :try_start_1
    const-string v1, "SKYMotionEngine"

    const-string v2, "[ENGINE] hdmiService.setIsMotionRec(0)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v1, p0, Landroid/vts/motion/SKYMotionEngine;->hdmiService:Landroid/os/IHDMIService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IHDMIService;->setIsMotionRec(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 723
    :cond_3
    :goto_0
    return v4

    .line 696
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
