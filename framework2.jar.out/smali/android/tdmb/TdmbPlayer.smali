.class public Landroid/tdmb/TdmbPlayer;
.super Ljava/lang/Object;
.source "TdmbPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/tdmb/TdmbPlayer$OnErrorNotifyListener;,
        Landroid/tdmb/TdmbPlayer$OnAudioSessionIdListener;,
        Landroid/tdmb/TdmbPlayer$OnUSBANTListener;,
        Landroid/tdmb/TdmbPlayer$OnRadioPlayStartedListener;,
        Landroid/tdmb/TdmbPlayer$OnRadioSLSDataListener;,
        Landroid/tdmb/TdmbPlayer$OnOperateContentsFileListener;,
        Landroid/tdmb/TdmbPlayer$OnDisplayRSSIInfoListener;,
        Landroid/tdmb/TdmbPlayer$OnDisplayVideoResultListener;,
        Landroid/tdmb/TdmbPlayer$OnDisplayVideoListener;,
        Landroid/tdmb/TdmbPlayer$OnVideoPlayStartedListener;,
        Landroid/tdmb/TdmbPlayer$OnAntennaNumChangeListener;,
        Landroid/tdmb/TdmbPlayer$OnRadioDLSInfoListener;,
        Landroid/tdmb/TdmbPlayer$OnPlayProgReportListener;,
        Landroid/tdmb/TdmbPlayer$OnOutOfWeakFieldListener;,
        Landroid/tdmb/TdmbPlayer$OnWeakFieldListener;,
        Landroid/tdmb/TdmbPlayer$OnSetVideoWindowListener;,
        Landroid/tdmb/TdmbPlayer$OnLocalPlayDoneListener;,
        Landroid/tdmb/TdmbPlayer$OnRecordCompleteListener;,
        Landroid/tdmb/TdmbPlayer$OnRecordStopListener;,
        Landroid/tdmb/TdmbPlayer$OnRecordStartListener;,
        Landroid/tdmb/TdmbPlayer$OnMoveListener;,
        Landroid/tdmb/TdmbPlayer$OnCaptureListener;,
        Landroid/tdmb/TdmbPlayer$OnStopListener;,
        Landroid/tdmb/TdmbPlayer$OnResumeListener;,
        Landroid/tdmb/TdmbPlayer$OnPauseListener;,
        Landroid/tdmb/TdmbPlayer$OnPlayStartListener;,
        Landroid/tdmb/TdmbPlayer$OnChannelSelectListener;,
        Landroid/tdmb/TdmbPlayer$OnChannelInfoChangedListener;,
        Landroid/tdmb/TdmbPlayer$OnChannelInfoExtListener;,
        Landroid/tdmb/TdmbPlayer$OnChannelInfoListener;,
        Landroid/tdmb/TdmbPlayer$OnChannelScanProgRPTListener;,
        Landroid/tdmb/TdmbPlayer$OnChannelScanCancelListener;,
        Landroid/tdmb/TdmbPlayer$OnChannelScanDoneListener;,
        Landroid/tdmb/TdmbPlayer$OnExitDoneListener;,
        Landroid/tdmb/TdmbPlayer$OnInitDoneListener;,
        Landroid/tdmb/TdmbPlayer$EventHandler;,
        Landroid/tdmb/TdmbPlayer$TdmbDLS;,
        Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;,
        Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;,
        Landroid/tdmb/TdmbPlayer$TdmbChannelExts;,
        Landroid/tdmb/TdmbPlayer$TdmbChannels;,
        Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;,
        Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;
    }
.end annotation


# static fields
.field private static final ACTION_METADATA_CHANGED:Ljava/lang/String; = "android.tdmb.action.METADATA_CHANGED"

.field public static final CMDACTION_RESULT_FAIL:I = 0x1

.field public static final CMDACTION_RESULT_OK:I = 0x0

.field public static final CMDACTION_TDMB_RESULT:Ljava/lang/String; = "com.pantech.app.tdmbstabilitytool.result"

.field public static final DEFAULT_DMB:I = 0x3

.field public static final DMB_SRC_AIR:I = 0x0

.field public static final DMB_SRC_FILE:I = 0x1

.field private static final EVENT_LOOP_QUIT:I = 0x384

.field private static final MAX_TDMB_CHANNEL_NUM:I = 0x28

.field private static final METADATA_TDMB:Landroid/net/Uri;

.field private static final NATIVE_SETUP_FAIL:I = 0x1

.field private static final NATIVE_SETUP_FAIL_FWK_ERROR:I = 0x2

.field private static final NATIVE_SETUP_SUCCESS:I = 0x0

.field public static final PANTECH_DMB:I = 0x0

.field private static final PLAYER_PAUSE:I = 0x3

.field private static final PLAYER_PLAY:I = 0x2

.field private static final PLAYER_SEEK_COMPLETE:I = 0x1

.field private static final PLAYER_SEEK_TO:I = 0x5

.field private static final PLAYER_STOP:I = 0x4

.field private static final PLAYSTATUS_PAUSED:I = 0x2

.field private static final PLAYSTATUS_PLAYING:I = 0x1

.field private static final PLAYSTATUS_REWIND:I = 0x4

.field private static final PLAYSTATUS_SEEKFWD:I = 0x3

.field private static final PLAYSTATUS_STOPPED:I = 0x0

.field public static final SMT_DMB:I = 0x1

.field public static final SMT_DMB_HYBRID:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DMBFramework"

.field private static final TDMB_ANTENNA_NUM_CHANGED:I = 0x16

.field private static final TDMB_ANT_EARJACK:I = 0x0

.field private static final TDMB_ANT_EXTERNAL:I = 0x2

.field private static final TDMB_ANT_INTERNAL:I = 0x1

.field private static final TDMB_AUDIOSESSION_ID:I = 0x20

.field private static final TDMB_CAPTURE:I = 0xb

.field private static final TDMB_CHANNEL_INFO:I = 0x1a

.field private static final TDMB_CHANNEL_INFO_CHANGED:I = 0x5

.field private static final TDMB_CHANNEL_SCAN_CANCEL:I = 0x3

.field private static final TDMB_CHANNEL_SCAN_DONE:I = 0x2

.field private static final TDMB_CHANNEL_SELECTED:I = 0x6

.field public static final TDMB_CHCHANGE_STARTTIME:I = 0x3ea

.field public static final TDMB_CHSCAN_STARTTIME:I = 0x3eb

.field public static final TDMB_CONTENTS_CREATE:I = 0x0

.field public static final TDMB_CONTENTS_DELETE:I = 0x1

.field public static final TDMB_CONTENTS_GETBUF:I = 0x3

.field public static final TDMB_CONTENTS_GETINFO:I = 0x4

.field public static final TDMB_CONTENTS_ISEXIST:I = 0x2

.field private static final TDMB_CURRENT_CHANNEL_INFO:I = 0x21

.field private static final TDMB_DISPLAY_VIDEO:I = 0x18

.field public static final TDMB_ENTER_STARTTIME:I = 0x3e9

.field private static final TDMB_ERROR:I = 0x64

.field private static final TDMB_EXIT:I = 0x1

.field private static final TDMB_INIT:I = 0x0

.field private static final TDMB_LOCAL_PLAY_DONE:I = 0x10

.field private static final TDMB_MAX_NUM_OF_CHANNELS:I = 0x64

.field public static final TDMB_MODE_EMULATOR:I = 0x1

.field public static final TDMB_MODE_TUNER:I = 0x0

.field private static final TDMB_MOVE:I = 0xc

.field public static final TDMB_NATIVESETUP:I = 0x3f2

.field private static final TDMB_OPERATE_CONTENTS_FILE:I = 0x1b

.field private static final TDMB_OUTOF_WEAK_FIELD:I = 0x12

.field private static final TDMB_PAUSE:I = 0x8

.field private static final TDMB_PLAY:I = 0x7

.field private static final TDMB_PLAY_PROG_RPT:I = 0x14

.field private static final TDMB_RADIO_DLS:I = 0x15

.field private static final TDMB_RADIO_PLAY_STARTED:I = 0x1d

.field private static final TDMB_RADIO_SLS:I = 0x1c

.field private static final TDMB_RECORD_COMPLETE:I = 0xf

.field private static final TDMB_RECORD_START:I = 0xd

.field private static final TDMB_RECORD_STOP:I = 0xe

.field private static final TDMB_RESUME:I = 0x9

.field private static final TDMB_ROTATION_0:I = 0x0

.field private static final TDMB_ROTATION_180:I = 0x2

.field private static final TDMB_ROTATION_270:I = 0x3

.field private static final TDMB_ROTATION_90:I = 0x1

.field private static final TDMB_RSSI_MONITOR:I = 0x19

.field public static final TDMB_RSSI_TYPE_ANTENNA:I = 0x3

.field public static final TDMB_RSSI_TYPE_PCBER:I = 0x1

.field public static final TDMB_RSSI_TYPE_RSBER:I = 0x2

.field public static final TDMB_RSSI_TYPE_SNR:I = 0x0

.field private static final TDMB_SCAN_PROG_RPT:I = 0x4

.field private static final TDMB_SRC_AIR:I = 0x0

.field private static final TDMB_SRC_LOCAL_FILE:I = 0x1

.field private static final TDMB_STOP:I = 0xa

.field private static final TDMB_USB_ANT:I = 0x1f

.field public static final TDMB_VIDEO_OFF:I = 0x1

.field public static final TDMB_VIDEO_ON:I = 0x0

.field private static final TDMB_VIDEO_PLAY_STARTED:I = 0x17

.field public static final TDMB_VIDEO_REFRESH:I = 0x2

.field private static final TDMB_VIDEO_SIZE_CHANGED:I = 0x13

.field private static final TDMB_WAIT_TIME:J = 0x50L

.field private static final TDMB_WEAK_FIELD:I = 0x11

.field public static final TEST_DMB:I = 0x2

.field private static final VERSION:Ljava/lang/String; = "Class TdmbPlayer v4.3.9 (2013.11.29)"

.field private static final antennalock:Ljava/lang/Object;

.field private static final lock:Ljava/lang/Object;

.field private static final looperlock:Ljava/lang/Object;

.field private static mContext:Landroid/content/Context;

.field private static mSabilityToolLive:Z

.field private static mWaitForLooper:Z


# instance fields
.field private mAntennaState:Z

.field private mAntennaThreadQuit:Z

.field private mAntennaThreadWait:Z

.field public mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

.field public mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

.field private mContextState:Z

.field public mCurCHInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;

.field private mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

.field private mJpegSlideShow:Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;

.field private mListenerContext:I

.field private mNativeContext:I

.field private mNativeSetup:I

.field private mNativeSurfaceTexture:I

.field private mOnAntennaNumChangeListener:Landroid/tdmb/TdmbPlayer$OnAntennaNumChangeListener;

.field private mOnAudioSessionIdListener:Landroid/tdmb/TdmbPlayer$OnAudioSessionIdListener;

.field private mOnCaptureListener:Landroid/tdmb/TdmbPlayer$OnCaptureListener;

.field private mOnChannelInfoChangedListener:Landroid/tdmb/TdmbPlayer$OnChannelInfoChangedListener;

.field private mOnChannelInfoExtListener:Landroid/tdmb/TdmbPlayer$OnChannelInfoExtListener;

.field private mOnChannelInfoListener:Landroid/tdmb/TdmbPlayer$OnChannelInfoListener;

.field private mOnChannelScanCancelListener:Landroid/tdmb/TdmbPlayer$OnChannelScanCancelListener;

.field private mOnChannelScanDoneListener:Landroid/tdmb/TdmbPlayer$OnChannelScanDoneListener;

.field private mOnChannelScanProgRPTListener:Landroid/tdmb/TdmbPlayer$OnChannelScanProgRPTListener;

.field private mOnChannelSelectListener:Landroid/tdmb/TdmbPlayer$OnChannelSelectListener;

.field private mOnDisplayRSSIInfoListener:Landroid/tdmb/TdmbPlayer$OnDisplayRSSIInfoListener;

.field private mOnDisplayVideoListener:Landroid/tdmb/TdmbPlayer$OnDisplayVideoListener;

.field private mOnDisplayVideoResultListener:Landroid/tdmb/TdmbPlayer$OnDisplayVideoResultListener;

.field private mOnErrorNotifyListener:Landroid/tdmb/TdmbPlayer$OnErrorNotifyListener;

.field private mOnExitDoneListener:Landroid/tdmb/TdmbPlayer$OnExitDoneListener;

.field private mOnInitDoneListener:Landroid/tdmb/TdmbPlayer$OnInitDoneListener;

.field private mOnLocalPlayDoneListener:Landroid/tdmb/TdmbPlayer$OnLocalPlayDoneListener;

.field private mOnMoveListener:Landroid/tdmb/TdmbPlayer$OnMoveListener;

.field private mOnOperateContentsFileListener:Landroid/tdmb/TdmbPlayer$OnOperateContentsFileListener;

.field private mOnOutOfWeakFieldListener:Landroid/tdmb/TdmbPlayer$OnOutOfWeakFieldListener;

.field private mOnPauseListener:Landroid/tdmb/TdmbPlayer$OnPauseListener;

.field private mOnPlayProgReportListener:Landroid/tdmb/TdmbPlayer$OnPlayProgReportListener;

.field private mOnPlayStartListener:Landroid/tdmb/TdmbPlayer$OnPlayStartListener;

.field private mOnRadioDLSInfoListener:Landroid/tdmb/TdmbPlayer$OnRadioDLSInfoListener;

.field private mOnRadioPlayStartedListener:Landroid/tdmb/TdmbPlayer$OnRadioPlayStartedListener;

.field private mOnRadioSLSDataListener:Landroid/tdmb/TdmbPlayer$OnRadioSLSDataListener;

.field private mOnRecordCompleteListener:Landroid/tdmb/TdmbPlayer$OnRecordCompleteListener;

.field private mOnRecordStartListener:Landroid/tdmb/TdmbPlayer$OnRecordStartListener;

.field private mOnRecordStopListener:Landroid/tdmb/TdmbPlayer$OnRecordStopListener;

.field private mOnResumeListener:Landroid/tdmb/TdmbPlayer$OnResumeListener;

.field private mOnSetVideoWindowListener:Landroid/tdmb/TdmbPlayer$OnSetVideoWindowListener;

.field private mOnStopListener:Landroid/tdmb/TdmbPlayer$OnStopListener;

.field private mOnUSBANTListener:Landroid/tdmb/TdmbPlayer$OnUSBANTListener;

.field private mOnVideoPlayStartedListener:Landroid/tdmb/TdmbPlayer$OnVideoPlayStartedListener;

.field private mOnWeakFieldListener:Landroid/tdmb/TdmbPlayer$OnWeakFieldListener;

.field private mPlayState:I

.field private mPreAntennaState:Z

.field public mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTdmbDls:Landroid/tdmb/TdmbPlayer$TdmbDLS;

.field private mTdmbJpegSlideShow:Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private manager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const-string v0, "dmb_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/tdmb/TdmbPlayer;->lock:Ljava/lang/Object;

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;

    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/tdmb/TdmbPlayer;->looperlock:Ljava/lang/Object;

    .line 215
    const-string v0, "content://media/external/tdmb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/tdmb/TdmbPlayer;->METADATA_TDMB:Landroid/net/Uri;

    .line 233
    const/4 v0, 0x0

    sput-boolean v0, Landroid/tdmb/TdmbPlayer;->mSabilityToolLive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v4, 0x64

    const/4 v5, 0x0

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 208
    const/4 v1, 0x1

    iput v1, p0, Landroid/tdmb/TdmbPlayer;->mNativeSetup:I

    .line 404
    const-string v1, "DMBFramework"

    const-string v2, "=================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v1, "DMBFramework"

    const-string v2, "Class TdmbPlayer v4.3.9 (2013.11.29)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v1, "DMBFramework"

    const-string v2, "=================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v1, "DMBFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TDMBJAVA] TdmbPlayer() : (ptr)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    sput-boolean v5, Landroid/tdmb/TdmbPlayer;->mWaitForLooper:Z

    .line 414
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->initializeMessageLooper()V

    .line 416
    new-instance v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-direct {v1, p0}, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;-><init>(Landroid/tdmb/TdmbPlayer;)V

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    .line 417
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    new-array v2, v4, [Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    iput-object v2, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    .line 418
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    new-array v2, v4, [Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    iput-object v2, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 422
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v1, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    new-instance v2, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;-><init>(Landroid/tdmb/TdmbPlayer$TdmbChannels;)V

    aput-object v2, v1, v0

    .line 423
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v1, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    new-instance v2, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;-><init>(Landroid/tdmb/TdmbPlayer$TdmbChannelExts;)V

    aput-object v2, v1, v0

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_0
    new-instance v1, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    invoke-direct {v1, p0}, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;-><init>(Landroid/tdmb/TdmbPlayer;)V

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    .line 427
    new-instance v1, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    invoke-direct {v1, p0}, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;-><init>(Landroid/tdmb/TdmbPlayer;)V

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    .line 429
    iput-boolean v5, p0, Landroid/tdmb/TdmbPlayer;->mContextState:Z

    .line 442
    const/4 v1, 0x4

    iput v1, p0, Landroid/tdmb/TdmbPlayer;->mPlayState:I

    .line 444
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/tdmb/TdmbPlayer;->_NativeSetup(Ljava/lang/Object;)V

    .line 447
    sget-object v1, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/tdmb/TdmbPlayer;->findStabilityTool(Landroid/content/Context;)V

    .line 448
    sget-object v1, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    const/16 v2, 0x3e9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p0, v1, v2, v5, v3}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 450
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/16 v4, 0x64

    const/4 v5, 0x0

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 208
    const/4 v1, 0x1

    iput v1, p0, Landroid/tdmb/TdmbPlayer;->mNativeSetup:I

    .line 476
    const-string v1, "DMBFramework"

    const-string v2, "=================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v1, "DMBFramework"

    const-string v2, "Class TdmbPlayer v4.3.9 (2013.11.29)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v1, "DMBFramework"

    const-string v2, "=================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v1, "DMBFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TDMBJAVA] TdmbPlayer() : (ptr)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (type)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sput-boolean v5, Landroid/tdmb/TdmbPlayer;->mWaitForLooper:Z

    .line 486
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->initializeMessageLooper()V

    .line 488
    new-instance v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-direct {v1, p0}, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;-><init>(Landroid/tdmb/TdmbPlayer;)V

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    .line 489
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    new-array v2, v4, [Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    iput-object v2, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    .line 490
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    new-array v2, v4, [Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    iput-object v2, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    .line 492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 494
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v1, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    new-instance v2, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;-><init>(Landroid/tdmb/TdmbPlayer$TdmbChannels;)V

    aput-object v2, v1, v0

    .line 495
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v1, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    new-instance v2, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;-><init>(Landroid/tdmb/TdmbPlayer$TdmbChannelExts;)V

    aput-object v2, v1, v0

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_0
    new-instance v1, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    invoke-direct {v1, p0}, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;-><init>(Landroid/tdmb/TdmbPlayer;)V

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    .line 499
    new-instance v1, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    invoke-direct {v1, p0}, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;-><init>(Landroid/tdmb/TdmbPlayer;)V

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    .line 501
    iput-boolean v5, p0, Landroid/tdmb/TdmbPlayer;->mContextState:Z

    .line 514
    const/4 v1, 0x4

    iput v1, p0, Landroid/tdmb/TdmbPlayer;->mPlayState:I

    .line 516
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Landroid/tdmb/TdmbPlayer;->_NativeSetupType(Ljava/lang/Object;I)V

    .line 519
    sget-object v1, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/tdmb/TdmbPlayer;->findStabilityTool(Landroid/content/Context;)V

    .line 520
    sget-object v1, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    const/16 v2, 0x3e9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p0, v1, v2, v5, v3}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 522
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 208
    iput v4, p0, Landroid/tdmb/TdmbPlayer;->mNativeSetup:I

    .line 623
    const-string v1, "DMBFramework"

    const-string v2, "=================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v1, "DMBFramework"

    const-string v2, "Class TdmbPlayer v4.3.9 (2013.11.29)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v1, "DMBFramework"

    const-string v2, "=================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v1, "DMBFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TDMBJAVA] TdmbPlayer() : (ptr)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (type)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    sput-boolean v5, Landroid/tdmb/TdmbPlayer;->mWaitForLooper:Z

    .line 633
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->initializeMessageLooper()V

    .line 635
    new-instance v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-direct {v1, p0}, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;-><init>(Landroid/tdmb/TdmbPlayer;)V

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    .line 636
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    new-array v2, v6, [Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    iput-object v2, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    .line 637
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    new-array v2, v6, [Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    iput-object v2, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    .line 639
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 641
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v1, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    new-instance v2, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;-><init>(Landroid/tdmb/TdmbPlayer$TdmbChannels;)V

    aput-object v2, v1, v0

    .line 642
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v1, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    new-instance v2, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;-><init>(Landroid/tdmb/TdmbPlayer$TdmbChannelExts;)V

    aput-object v2, v1, v0

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    :cond_0
    new-instance v1, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    invoke-direct {v1, p0}, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;-><init>(Landroid/tdmb/TdmbPlayer;)V

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    .line 646
    new-instance v1, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    invoke-direct {v1, p0}, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;-><init>(Landroid/tdmb/TdmbPlayer;)V

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    .line 649
    iput-boolean v5, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    .line 650
    sput-object p2, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    .line 651
    sget-object v1, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->manager:Landroid/media/AudioManager;

    .line 652
    iput-boolean v4, p0, Landroid/tdmb/TdmbPlayer;->mContextState:Z

    .line 653
    iput-boolean v4, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    .line 656
    iput v4, p0, Landroid/tdmb/TdmbPlayer;->mNativeSetup:I

    .line 657
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->SetFirstAntennaPath()V

    .line 658
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->AntennaThread()V

    .line 671
    const/4 v1, 0x4

    iput v1, p0, Landroid/tdmb/TdmbPlayer;->mPlayState:I

    .line 673
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Landroid/tdmb/TdmbPlayer;->_NativeSetupType(Ljava/lang/Object;I)V

    .line 674
    iput v5, p0, Landroid/tdmb/TdmbPlayer;->mNativeSetup:I

    .line 677
    sget-object v1, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/tdmb/TdmbPlayer;->findStabilityTool(Landroid/content/Context;)V

    .line 678
    sget-object v1, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    const/16 v2, 0x3e9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p0, v1, v2, v5, v3}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 680
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 208
    iput v4, p0, Landroid/tdmb/TdmbPlayer;->mNativeSetup:I

    .line 545
    const-string v1, "DMBFramework"

    const-string v2, "=================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v1, "DMBFramework"

    const-string v2, "Class TdmbPlayer v4.3.9 (2013.11.29)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v1, "DMBFramework"

    const-string v2, "=================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v1, "DMBFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TDMBJAVA] TdmbPlayer() : (ptr)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    sput-boolean v5, Landroid/tdmb/TdmbPlayer;->mWaitForLooper:Z

    .line 555
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->initializeMessageLooper()V

    .line 557
    new-instance v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-direct {v1, p0}, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;-><init>(Landroid/tdmb/TdmbPlayer;)V

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    .line 558
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    new-array v2, v6, [Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    iput-object v2, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    .line 559
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    new-array v2, v6, [Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    iput-object v2, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    .line 561
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 563
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v1, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    new-instance v2, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;-><init>(Landroid/tdmb/TdmbPlayer$TdmbChannels;)V

    aput-object v2, v1, v0

    .line 564
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v1, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    new-instance v2, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;-><init>(Landroid/tdmb/TdmbPlayer$TdmbChannelExts;)V

    aput-object v2, v1, v0

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_0
    new-instance v1, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    invoke-direct {v1, p0}, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;-><init>(Landroid/tdmb/TdmbPlayer;)V

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    .line 568
    new-instance v1, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    invoke-direct {v1, p0}, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;-><init>(Landroid/tdmb/TdmbPlayer;)V

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    .line 571
    iput-boolean v5, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    .line 572
    sput-object p1, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    .line 573
    sget-object v1, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->manager:Landroid/media/AudioManager;

    .line 574
    iput-boolean v4, p0, Landroid/tdmb/TdmbPlayer;->mContextState:Z

    .line 575
    iput-boolean v4, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    .line 578
    iput v4, p0, Landroid/tdmb/TdmbPlayer;->mNativeSetup:I

    .line 579
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->SetFirstAntennaPath()V

    .line 580
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->AntennaThread()V

    .line 593
    const/4 v1, 0x4

    iput v1, p0, Landroid/tdmb/TdmbPlayer;->mPlayState:I

    .line 595
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/tdmb/TdmbPlayer;->_NativeSetup(Ljava/lang/Object;)V

    .line 596
    iput v5, p0, Landroid/tdmb/TdmbPlayer;->mNativeSetup:I

    .line 599
    sget-object v1, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/tdmb/TdmbPlayer;->findStabilityTool(Landroid/content/Context;)V

    .line 600
    sget-object v1, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    const/16 v2, 0x3e9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p0, v1, v2, v5, v3}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 602
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app_name"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/16 v6, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object v8, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 208
    iput v5, p0, Landroid/tdmb/TdmbPlayer;->mNativeSetup:I

    .line 700
    const-string v1, "DMBFramework"

    const-string v2, "=================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string v1, "DMBFramework"

    const-string v2, "Class TdmbPlayer v4.3.9 (2013.11.29)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const-string v1, "DMBFramework"

    const-string v2, "=================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v1, "DMBFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TDMBJAVA] TdmbPlayer() : (ptr)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (type)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (context)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    sput-boolean v4, Landroid/tdmb/TdmbPlayer;->mWaitForLooper:Z

    .line 709
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->initializeMessageLooper()V

    .line 711
    new-instance v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-direct {v1, p0}, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;-><init>(Landroid/tdmb/TdmbPlayer;)V

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    .line 712
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    new-array v2, v6, [Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    iput-object v2, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    .line 713
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    new-array v2, v6, [Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    iput-object v2, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    .line 715
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 717
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v1, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    new-instance v2, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;-><init>(Landroid/tdmb/TdmbPlayer$TdmbChannels;)V

    aput-object v2, v1, v0

    .line 718
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v1, v1, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    new-instance v2, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    iget-object v3, p0, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;-><init>(Landroid/tdmb/TdmbPlayer$TdmbChannelExts;)V

    aput-object v2, v1, v0

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    :cond_0
    new-instance v1, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    invoke-direct {v1, p0}, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;-><init>(Landroid/tdmb/TdmbPlayer;)V

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    .line 722
    new-instance v1, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    invoke-direct {v1, p0}, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;-><init>(Landroid/tdmb/TdmbPlayer;)V

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    .line 724
    if-nez p1, :cond_2

    .line 726
    iput-boolean v4, p0, Landroid/tdmb/TdmbPlayer;->mContextState:Z

    .line 727
    sput-object v8, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    .line 766
    :goto_1
    iput v7, p0, Landroid/tdmb/TdmbPlayer;->mPlayState:I

    .line 769
    if-ne p2, v7, :cond_1

    .line 771
    new-instance v1, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;

    invoke-direct {v1, p0}, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;-><init>(Landroid/tdmb/TdmbPlayer;)V

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->mCurCHInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;

    .line 772
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mCurCHInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;

    const/4 v2, -0x1

    # setter for: Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mIdx:I
    invoke-static {v1, v2}, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->access$1002(Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;I)I

    .line 775
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p2}, Landroid/tdmb/TdmbPlayer;->_NativeSetupAppType(Ljava/lang/Object;I)I

    move-result v1

    iput v1, p0, Landroid/tdmb/TdmbPlayer;->mNativeSetup:I

    .line 776
    const-string v1, "DMBFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TDMBJAVA] TdmbPlayer() : (mNativeSetup)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/tdmb/TdmbPlayer;->mNativeSetup:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (app_name)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    sget-object v1, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/tdmb/TdmbPlayer;->findStabilityTool(Landroid/content/Context;)V

    .line 781
    sget-object v1, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    const/16 v2, 0x3e9

    iget v3, p0, Landroid/tdmb/TdmbPlayer;->mNativeSetup:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 782
    return-void

    .line 732
    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A870S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "EF52S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A870K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "EF52K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A870L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "EF52L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A870W"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "EF52W"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A880S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "EF56S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A880K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "EF57K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A880L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "EF58L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A890S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "EF59S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A890K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "EF59K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "IM-A890L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "EF59L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 746
    :cond_3
    const-string v1, "DMBFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TDMBJAVA] TdmbPlayer() : (MODEL)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Don\'t check antenna path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iput-boolean v4, p0, Landroid/tdmb/TdmbPlayer;->mContextState:Z

    .line 748
    sput-object p1, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    goto/16 :goto_1

    .line 753
    :cond_4
    iput-boolean v4, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    .line 754
    sput-object p1, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    .line 755
    sget-object v1, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/tdmb/TdmbPlayer;->manager:Landroid/media/AudioManager;

    .line 756
    iput-boolean v5, p0, Landroid/tdmb/TdmbPlayer;->mContextState:Z

    .line 757
    iput-boolean v5, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    .line 760
    iput v5, p0, Landroid/tdmb/TdmbPlayer;->mNativeSetup:I

    .line 761
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->SetFirstAntennaPath()V

    .line 762
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->AntennaThread()V

    goto/16 :goto_1
.end method

.method private AntennaThread()V
    .locals 2

    .prologue
    .line 287
    const-string v0, "DMBFramework"

    const-string v1, "[TDMBJAVA] AntennaThread()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v0, Landroid/tdmb/TdmbPlayer$2;

    invoke-direct {v0, p0}, Landroid/tdmb/TdmbPlayer$2;-><init>(Landroid/tdmb/TdmbPlayer;)V

    invoke-virtual {v0}, Landroid/tdmb/TdmbPlayer$2;->start()V

    .line 349
    return-void
.end method

.method private SetEventHandler(Landroid/os/Looper;)V
    .locals 1
    .param p1, "myLooper"    # Landroid/os/Looper;

    .prologue
    .line 274
    if-eqz p1, :cond_0

    .line 276
    new-instance v0, Landroid/tdmb/TdmbPlayer$EventHandler;

    invoke-direct {v0, p0, p0, p1}, Landroid/tdmb/TdmbPlayer$EventHandler;-><init>(Landroid/tdmb/TdmbPlayer;Landroid/tdmb/TdmbPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    goto :goto_0
.end method

.method private SetFirstAntennaPath()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 368
    const-string v0, "DMBFramework"

    const-string v1, "[TDMBJAVA] SetFirstAntennaPath()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->manager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iput-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaState:Z

    .line 370
    iget v0, p0, Landroid/tdmb/TdmbPlayer;->mNativeSetup:I

    if-nez v0, :cond_0

    .line 372
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaState:Z

    if-ne v0, v2, :cond_1

    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/tdmb/TdmbPlayer;->SetAntennaPath(I)V

    .line 383
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaState:Z

    iput-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mPreAntennaState:Z

    .line 384
    return-void

    .line 379
    :cond_1
    invoke-virtual {p0, v2}, Landroid/tdmb/TdmbPlayer;->SetAntennaPath(I)V

    goto :goto_0
.end method

.method private native _AirPause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _AirResume()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _Capture(Ljava/lang/String;ZII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _ChannelInfo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _ChannelScan()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _ChannelScanCancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _ChannelScanFreq(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _ChannelScanType(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _ChannelSelect(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _ChannelSelect(IILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _Contrast(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _DisplayRSSIValue(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _DisplayVideo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _Exit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _GetCurrentRSSIValue(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _GetSharpness()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _Init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _InitType(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _Move(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native _NativeFinalize()V
.end method

.method private final native _NativeSetup(Ljava/lang/Object;)V
.end method

.method private final native _NativeSetupAppType(Ljava/lang/Object;I)I
.end method

.method private final native _NativeSetupType(Ljava/lang/Object;I)V
.end method

.method private native _OperateContentsFile(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _Pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _Play()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _PlayPause(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _Record(Ljava/lang/String;Ljava/lang/String;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _Resume()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _SetAntennaPath(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _SetDLS(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _SetSLS(ZIIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _SetSharpness(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _SetVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _SetVideoWindow(IIIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _StartNetBERTest(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _Stop(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _StopNetBERTest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _StopRecord(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _Volume(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/tdmb/TdmbPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->SetEventHandler(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/tdmb/TdmbPlayer;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/tdmb/TdmbPlayer;->METADATA_TDMB:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/tdmb/TdmbPlayer;)I
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget v0, p0, Landroid/tdmb/TdmbPlayer;->mPlayState:I

    return v0
.end method

.method static synthetic access$1202(Landroid/tdmb/TdmbPlayer;I)I
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Landroid/tdmb/TdmbPlayer;->mPlayState:I

    return p1
.end method

.method static synthetic access$1300(Landroid/tdmb/TdmbPlayer;)I
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget v0, p0, Landroid/tdmb/TdmbPlayer;->mNativeContext:I

    return v0
.end method

.method static synthetic access$1400(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnInitDoneListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnInitDoneListener:Landroid/tdmb/TdmbPlayer$OnInitDoneListener;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnExitDoneListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnExitDoneListener:Landroid/tdmb/TdmbPlayer$OnExitDoneListener;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelScanDoneListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnChannelScanDoneListener:Landroid/tdmb/TdmbPlayer$OnChannelScanDoneListener;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelScanCancelListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnChannelScanCancelListener:Landroid/tdmb/TdmbPlayer$OnChannelScanCancelListener;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelInfoListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnChannelInfoListener:Landroid/tdmb/TdmbPlayer$OnChannelInfoListener;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Landroid/tdmb/TdmbPlayer;->mWaitForLooper:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelInfoExtListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnChannelInfoExtListener:Landroid/tdmb/TdmbPlayer$OnChannelInfoExtListener;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelScanProgRPTListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnChannelScanProgRPTListener:Landroid/tdmb/TdmbPlayer$OnChannelScanProgRPTListener;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelInfoChangedListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnChannelInfoChangedListener:Landroid/tdmb/TdmbPlayer$OnChannelInfoChangedListener;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnChannelSelectListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnChannelSelectListener:Landroid/tdmb/TdmbPlayer$OnChannelSelectListener;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnPlayStartListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnPlayStartListener:Landroid/tdmb/TdmbPlayer$OnPlayStartListener;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnPauseListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnPauseListener:Landroid/tdmb/TdmbPlayer$OnPauseListener;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnResumeListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnResumeListener:Landroid/tdmb/TdmbPlayer$OnResumeListener;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnStopListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnStopListener:Landroid/tdmb/TdmbPlayer$OnStopListener;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnCaptureListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnCaptureListener:Landroid/tdmb/TdmbPlayer$OnCaptureListener;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnMoveListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnMoveListener:Landroid/tdmb/TdmbPlayer$OnMoveListener;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/tdmb/TdmbPlayer;->looperlock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRecordStartListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnRecordStartListener:Landroid/tdmb/TdmbPlayer$OnRecordStartListener;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRecordStopListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnRecordStopListener:Landroid/tdmb/TdmbPlayer$OnRecordStopListener;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRecordCompleteListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnRecordCompleteListener:Landroid/tdmb/TdmbPlayer$OnRecordCompleteListener;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnLocalPlayDoneListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnLocalPlayDoneListener:Landroid/tdmb/TdmbPlayer$OnLocalPlayDoneListener;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnWeakFieldListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnWeakFieldListener:Landroid/tdmb/TdmbPlayer$OnWeakFieldListener;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnOutOfWeakFieldListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnOutOfWeakFieldListener:Landroid/tdmb/TdmbPlayer$OnOutOfWeakFieldListener;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnSetVideoWindowListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnSetVideoWindowListener:Landroid/tdmb/TdmbPlayer$OnSetVideoWindowListener;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnPlayProgReportListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnPlayProgReportListener:Landroid/tdmb/TdmbPlayer$OnPlayProgReportListener;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRadioDLSInfoListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnRadioDLSInfoListener:Landroid/tdmb/TdmbPlayer$OnRadioDLSInfoListener;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnAntennaNumChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnAntennaNumChangeListener:Landroid/tdmb/TdmbPlayer$OnAntennaNumChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/tdmb/TdmbPlayer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    return v0
.end method

.method static synthetic access$4000(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnVideoPlayStartedListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnVideoPlayStartedListener:Landroid/tdmb/TdmbPlayer$OnVideoPlayStartedListener;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnDisplayVideoListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnDisplayVideoListener:Landroid/tdmb/TdmbPlayer$OnDisplayVideoListener;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnDisplayVideoResultListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnDisplayVideoResultListener:Landroid/tdmb/TdmbPlayer$OnDisplayVideoResultListener;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnDisplayRSSIInfoListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnDisplayRSSIInfoListener:Landroid/tdmb/TdmbPlayer$OnDisplayRSSIInfoListener;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnOperateContentsFileListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnOperateContentsFileListener:Landroid/tdmb/TdmbPlayer$OnOperateContentsFileListener;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRadioSLSDataListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnRadioSLSDataListener:Landroid/tdmb/TdmbPlayer$OnRadioSLSDataListener;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnRadioPlayStartedListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnRadioPlayStartedListener:Landroid/tdmb/TdmbPlayer$OnRadioPlayStartedListener;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnUSBANTListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnUSBANTListener:Landroid/tdmb/TdmbPlayer$OnUSBANTListener;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnAudioSessionIdListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnAudioSessionIdListener:Landroid/tdmb/TdmbPlayer$OnAudioSessionIdListener;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/tdmb/TdmbPlayer;)Landroid/tdmb/TdmbPlayer$OnErrorNotifyListener;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mOnErrorNotifyListener:Landroid/tdmb/TdmbPlayer$OnErrorNotifyListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/tdmb/TdmbPlayer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    return v0
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Landroid/tdmb/TdmbPlayer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaState:Z

    return v0
.end method

.method static synthetic access$702(Landroid/tdmb/TdmbPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/tdmb/TdmbPlayer;->mAntennaState:Z

    return p1
.end method

.method static synthetic access$800(Landroid/tdmb/TdmbPlayer;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->manager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900(Landroid/tdmb/TdmbPlayer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mPreAntennaState:Z

    return v0
.end method

.method static synthetic access$902(Landroid/tdmb/TdmbPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/tdmb/TdmbPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/tdmb/TdmbPlayer;->mPreAntennaState:Z

    return p1
.end method

.method private initializeMessageLooper()V
    .locals 1

    .prologue
    .line 241
    new-instance v0, Landroid/tdmb/TdmbPlayer$1;

    invoke-direct {v0, p0}, Landroid/tdmb/TdmbPlayer$1;-><init>(Landroid/tdmb/TdmbPlayer;)V

    invoke-virtual {v0}, Landroid/tdmb/TdmbPlayer$1;->start()V

    .line 270
    return-void
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 7
    .param p0, "mediaplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3492
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediaplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/tdmb/TdmbPlayer;

    .line 3493
    .local v2, "mp":Landroid/tdmb/TdmbPlayer;
    if-nez v2, :cond_0

    .line 3495
    const-string v3, "DMBFramework"

    const-string v4, "[TDMBJAVA] postEventFromNative() : TDMBPlayer is null!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    :goto_0
    return-void

    .line 3500
    :cond_0
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    if-eqz v3, :cond_1

    .line 3504
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/tdmb/TdmbPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3505
    .local v1, "m":Landroid/os/Message;
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    invoke-virtual {v3, v1}, Landroid/tdmb/TdmbPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3509
    .end local v1    # "m":Landroid/os/Message;
    :cond_1
    const/4 v3, 0x1

    sput-boolean v3, Landroid/tdmb/TdmbPlayer;->mWaitForLooper:Z

    .line 3512
    :try_start_0
    sget-object v4, Landroid/tdmb/TdmbPlayer;->looperlock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3514
    :try_start_1
    const-string v3, "DMBFramework"

    const-string v5, "[TDMBJAVA] postEventFromNative() : Wait 1.5sec because mEventHandler is not instantiate"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    sget-object v3, Landroid/tdmb/TdmbPlayer;->looperlock:Ljava/lang/Object;

    const-wide/16 v5, 0x5dc

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 3516
    const-string v3, "DMBFramework"

    const-string v5, "[TDMBJAVA] postEventFromNative() : awake"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3525
    :goto_1
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    if-eqz v3, :cond_2

    .line 3529
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/tdmb/TdmbPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3530
    .restart local v1    # "m":Landroid/os/Message;
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    invoke-virtual {v3, v1}, Landroid/tdmb/TdmbPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3517
    .end local v1    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3519
    :catch_0
    move-exception v0

    .line 3521
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "DMBFramework"

    const-string v4, "[TDMBJAVA] postEventFromNative() : Wait : FAIL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 3534
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const-string v3, "DMBFramework"

    const-string v4, "[TDMBJAVA] postEventFromNative() : mEventHandler is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static postEventFromNativeForChannelInfo(Ljava/lang/Object;IIIJSLjava/lang/String;Ljava/lang/String;IISZ)V
    .locals 7
    .param p0, "mediaplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "idx"    # I
    .param p3, "channelID"    # I
    .param p4, "SId"    # J
    .param p6, "ChannelType"    # S
    .param p7, "ServiceName"    # Ljava/lang/String;
    .param p8, "ChannelName"    # Ljava/lang/String;
    .param p9, "Frequency"    # I
    .param p10, "SubChId"    # I
    .param p11, "EId"    # S
    .param p12, "lastIdx"    # Z

    .prologue
    .line 3622
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediaplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/tdmb/TdmbPlayer;

    .line 3626
    .local v2, "mp":Landroid/tdmb/TdmbPlayer;
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v3, v3, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    aget-object v3, v3, p2

    iput p3, v3, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;->ChannelID:I

    .line 3627
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v3, v3, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    aget-object v3, v3, p2

    iput-wide p4, v3, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;->SId:J

    .line 3628
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v3, v3, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    aget-object v3, v3, p2

    iput-short p6, v3, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;->ChannelType:S

    .line 3629
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v3, v3, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    aget-object v3, v3, p2

    iput-object p7, v3, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;->ServiceName:Ljava/lang/String;

    .line 3630
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v3, v3, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    aget-object v3, v3, p2

    iput-object p8, v3, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;->ChannelName:Ljava/lang/String;

    .line 3631
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v3, v3, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    aget-object v3, v3, p2

    move/from16 v0, p9

    iput v0, v3, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;->Frequency:I

    .line 3632
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v3, v3, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfos:[Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;

    aget-object v3, v3, p2

    move/from16 v0, p10

    iput v0, v3, Landroid/tdmb/TdmbPlayer$TdmbChannels$TdmbChannelInfo;->SubChId:I

    .line 3633
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mChannels:Landroid/tdmb/TdmbPlayer$TdmbChannelExts;

    iget-object v3, v3, Landroid/tdmb/TdmbPlayer$TdmbChannelExts;->channelInfoExts:[Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;

    aget-object v3, v3, p2

    move/from16 v0, p11

    iput-short v0, v3, Landroid/tdmb/TdmbPlayer$TdmbChannelExts$TdmbChannelInfoExt;->EnsembleId:S

    .line 3635
    if-eqz p12, :cond_0

    .line 3639
    if-nez v2, :cond_1

    .line 3641
    const-string v3, "DMBFramework"

    const-string v4, "[TDMBJAVA] postEventFromNativeForChannelInfo() : mp == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    :cond_0
    :goto_0
    return-void

    .line 3647
    :cond_1
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    if-eqz v3, :cond_0

    .line 3652
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    iget-object v4, v2, Landroid/tdmb/TdmbPlayer;->mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    # getter for: Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mTotal_ch_count:I
    invoke-static {v4}, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->access$5400(Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Landroid/tdmb/TdmbPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3653
    .local v1, "m":Landroid/os/Message;
    iget-object v3, v2, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    invoke-virtual {v3, v1}, Landroid/tdmb/TdmbPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private static postEventFromNativeForCurrentChannelInfo(Ljava/lang/Object;IIJII)V
    .locals 3
    .param p0, "tdmbplayer_ref"    # Ljava/lang/Object;
    .param p1, "Idx"    # I
    .param p2, "EId"    # I
    .param p3, "SId"    # J
    .param p5, "SubCHId"    # I
    .param p6, "SCIds"    # I

    .prologue
    .line 3685
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "tdmbplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/tdmb/TdmbPlayer;

    .line 3687
    .local v0, "dp":Landroid/tdmb/TdmbPlayer;
    if-nez v0, :cond_0

    .line 3689
    const-string v1, "DMBFramework"

    const-string v2, "[TDMBJAVA] postEventFromNativeForCurrentChannelInfo() : TdmbPlayer is null!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    :goto_0
    return-void

    .line 3693
    :cond_0
    iget-object v1, v0, Landroid/tdmb/TdmbPlayer;->mCurCHInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;

    # setter for: Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mIdx:I
    invoke-static {v1, p1}, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->access$1002(Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;I)I

    .line 3694
    iget-object v1, v0, Landroid/tdmb/TdmbPlayer;->mCurCHInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;

    # setter for: Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mEId:I
    invoke-static {v1, p2}, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->access$5502(Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;I)I

    .line 3695
    iget-object v1, v0, Landroid/tdmb/TdmbPlayer;->mCurCHInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;

    # setter for: Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mSId:J
    invoke-static {v1, p3, p4}, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->access$5602(Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;J)J

    .line 3696
    iget-object v1, v0, Landroid/tdmb/TdmbPlayer;->mCurCHInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;

    # setter for: Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mSCIds:I
    invoke-static {v1, p6}, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->access$5702(Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;I)I

    .line 3697
    iget-object v1, v0, Landroid/tdmb/TdmbPlayer;->mCurCHInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;

    # setter for: Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mSubCHId:I
    invoke-static {v1, p5}, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->access$5802(Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;I)I

    goto :goto_0
.end method

.method private static postEventFromNativeForRSSIInfo(Ljava/lang/Object;IIIII)V
    .locals 5
    .param p0, "tdmbplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "SNR"    # I
    .param p3, "PCBER"    # I
    .param p4, "RSBER"    # I
    .param p5, "RSSI"    # I

    .prologue
    const/4 v4, 0x0

    .line 3729
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "tdmbplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/tdmb/TdmbPlayer;

    .line 3731
    .local v0, "dp":Landroid/tdmb/TdmbPlayer;
    if-nez v0, :cond_1

    .line 3733
    const-string v2, "DMBFramework"

    const-string v3, "[TDMBJAVA] postEventFromNativeForRSSIInfo() : TdmbPlayer is null!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    :cond_0
    :goto_0
    return-void

    .line 3737
    :cond_1
    iget-object v2, v0, Landroid/tdmb/TdmbPlayer;->mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    # setter for: Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mSNR:I
    invoke-static {v2, p2}, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->access$5902(Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;I)I

    .line 3738
    iget-object v2, v0, Landroid/tdmb/TdmbPlayer;->mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    # setter for: Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mPCBER:I
    invoke-static {v2, p3}, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->access$6002(Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;I)I

    .line 3739
    iget-object v2, v0, Landroid/tdmb/TdmbPlayer;->mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    # setter for: Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mRSBER:I
    invoke-static {v2, p4}, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->access$6102(Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;I)I

    .line 3740
    iget-object v2, v0, Landroid/tdmb/TdmbPlayer;->mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    # setter for: Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mRSSI:I
    invoke-static {v2, p5}, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->access$6202(Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;I)I

    .line 3741
    iget-object v2, v0, Landroid/tdmb/TdmbPlayer;->mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    const/16 v3, 0x64

    # setter for: Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mRxPowerLevel:I
    invoke-static {v2, v3}, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->access$6302(Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;I)I

    .line 3744
    iget-object v2, v0, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 3747
    iget-object v2, v0, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v4, v4, v3}, Landroid/tdmb/TdmbPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3748
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    invoke-virtual {v2, v1}, Landroid/tdmb/TdmbPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private static postEventFromNativeForRSSIRxPowerInfo(Ljava/lang/Object;IIIIII)V
    .locals 5
    .param p0, "tdmbplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "SNR"    # I
    .param p3, "PCBER"    # I
    .param p4, "RSBER"    # I
    .param p5, "RSSI"    # I
    .param p6, "RxPowerLevel"    # I

    .prologue
    const/4 v4, 0x0

    .line 3781
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "tdmbplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/tdmb/TdmbPlayer;

    .line 3783
    .local v0, "dp":Landroid/tdmb/TdmbPlayer;
    if-nez v0, :cond_1

    .line 3785
    const-string v2, "DMBFramework"

    const-string v3, "[TDMBJAVA] postEventFromNativeForRSSIRxPowerInfo() : TdmbPlayer is null!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    :cond_0
    :goto_0
    return-void

    .line 3789
    :cond_1
    iget-object v2, v0, Landroid/tdmb/TdmbPlayer;->mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    # setter for: Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mSNR:I
    invoke-static {v2, p2}, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->access$5902(Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;I)I

    .line 3790
    iget-object v2, v0, Landroid/tdmb/TdmbPlayer;->mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    # setter for: Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mPCBER:I
    invoke-static {v2, p3}, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->access$6002(Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;I)I

    .line 3791
    iget-object v2, v0, Landroid/tdmb/TdmbPlayer;->mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    # setter for: Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mRSBER:I
    invoke-static {v2, p4}, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->access$6102(Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;I)I

    .line 3792
    iget-object v2, v0, Landroid/tdmb/TdmbPlayer;->mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    # setter for: Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mRSSI:I
    invoke-static {v2, p5}, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->access$6202(Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;I)I

    .line 3793
    iget-object v2, v0, Landroid/tdmb/TdmbPlayer;->mRSSIInfo:Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;

    # setter for: Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->mRxPowerLevel:I
    invoke-static {v2, p6}, Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;->access$6302(Landroid/tdmb/TdmbPlayer$TDMBRSSIInfo;I)I

    .line 3796
    iget-object v2, v0, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 3799
    iget-object v2, v0, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v4, v4, v3}, Landroid/tdmb/TdmbPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3800
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    invoke-virtual {v2, v1}, Landroid/tdmb/TdmbPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private static postEventFromNativeForScanInfo(Ljava/lang/Object;IIIIII)V
    .locals 2
    .param p0, "tdmbplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "Video_ch_count"    # I
    .param p3, "Audio_ch_count"    # I
    .param p4, "Data_ch_count"    # I
    .param p5, "Visual_radio_ch_count"    # I
    .param p6, "Total_ch_count"    # I

    .prologue
    .line 3568
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "tdmbplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/tdmb/TdmbPlayer;

    .line 3570
    .local v0, "mp":Landroid/tdmb/TdmbPlayer;
    iget-object v1, v0, Landroid/tdmb/TdmbPlayer;->mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    # setter for: Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mVideo_ch_count:I
    invoke-static {v1, p2}, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->access$5002(Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;I)I

    .line 3571
    iget-object v1, v0, Landroid/tdmb/TdmbPlayer;->mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    # setter for: Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mAudio_ch_count:I
    invoke-static {v1, p3}, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->access$5102(Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;I)I

    .line 3572
    iget-object v1, v0, Landroid/tdmb/TdmbPlayer;->mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    # setter for: Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mData_ch_count:I
    invoke-static {v1, p4}, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->access$5202(Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;I)I

    .line 3573
    iget-object v1, v0, Landroid/tdmb/TdmbPlayer;->mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    # setter for: Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mVisual_radio_ch_count:I
    invoke-static {v1, p5}, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->access$5302(Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;I)I

    .line 3574
    iget-object v1, v0, Landroid/tdmb/TdmbPlayer;->mChannelScanInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;

    # setter for: Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->mTotal_ch_count:I
    invoke-static {v1, p6}, Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;->access$5402(Landroid/tdmb/TdmbPlayer$TdmbChannelScanInfo;I)I

    .line 3575
    return-void
.end method

.method private stayAwake(Z)V
    .locals 1
    .param p1, "awake"    # Z

    .prologue
    .line 2577
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 2579
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2581
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2588
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/tdmb/TdmbPlayer;->mStayAwake:Z

    .line 2589
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->updateSurfaceScreenOn()V

    .line 2590
    return-void

    .line 2583
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2585
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 2611
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 2613
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 2615
    :cond_0
    return-void

    .line 2613
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public AirPause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1752
    const-string v0, "DMBFramework"

    const-string v1, "[TDMBJAVA] AirPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1756
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->_AirPause()V

    .line 1757
    return-void
.end method

.method public AirResume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1780
    const-string v0, "DMBFramework"

    const-string v1, "[TDMBJAVA] AirResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1784
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->_AirResume()V

    .line 1785
    return-void
.end method

.method public Capture(Ljava/lang/String;ZII)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "overwrite"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1879
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1881
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/tdmb/TdmbPlayer;->_Capture(Ljava/lang/String;ZII)V

    .line 1882
    return-void
.end method

.method public ChannelInfo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1432
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1434
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->_ChannelInfo()V

    .line 1435
    return-void
.end method

.method public ChannelScan()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1097
    const-string v0, "DMBFramework"

    const-string v1, "[TDMBJAVA] ChannelScan()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-direct {p0, v2}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1101
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mContextState:Z

    if-ne v0, v2, :cond_1

    .line 1103
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    if-ne v0, v2, :cond_0

    .line 1105
    iput-boolean v4, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    .line 1106
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->SetFirstAntennaPath()V

    .line 1107
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->AntennaThread()V

    .line 1110
    :cond_0
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    if-eqz v0, :cond_1

    .line 1113
    sget-object v1, Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;

    monitor-enter v1

    .line 1115
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    .line 1116
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->SetFirstAntennaPath()V

    .line 1117
    sget-object v0, Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    :cond_1
    sget-object v0, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    const/16 v1, 0x3eb

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0, v0, v1, v4, v2}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 1125
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->_ChannelScan()V

    .line 1126
    return-void

    .line 1118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public ChannelScan(F)V
    .locals 5
    .param p1, "scan_type"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1149
    const-string v0, "DMBFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TDMBJAVA] ChannelScan() : (scan_type)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-direct {p0, v3}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1153
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mContextState:Z

    if-ne v0, v3, :cond_1

    .line 1155
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    if-ne v0, v3, :cond_0

    .line 1157
    iput-boolean v4, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    .line 1158
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->SetFirstAntennaPath()V

    .line 1159
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->AntennaThread()V

    .line 1162
    :cond_0
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    if-eqz v0, :cond_1

    .line 1165
    sget-object v1, Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;

    monitor-enter v1

    .line 1167
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    .line 1168
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->SetFirstAntennaPath()V

    .line 1169
    sget-object v0, Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1170
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    :cond_1
    sget-object v0, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    const/16 v1, 0x3eb

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0, v0, v1, v4, v2}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 1177
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_ChannelScanType(F)V

    .line 1178
    return-void

    .line 1170
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public ChannelScan(I)V
    .locals 5
    .param p1, "freq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1203
    invoke-direct {p0, v1}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1205
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mContextState:Z

    if-ne v0, v1, :cond_1

    .line 1207
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    if-ne v0, v1, :cond_0

    .line 1209
    iput-boolean v4, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    .line 1210
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->SetFirstAntennaPath()V

    .line 1211
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->AntennaThread()V

    .line 1214
    :cond_0
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    if-eqz v0, :cond_1

    .line 1217
    sget-object v1, Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;

    monitor-enter v1

    .line 1219
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    .line 1220
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->SetFirstAntennaPath()V

    .line 1221
    sget-object v0, Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1222
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    :cond_1
    sget-object v0, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    const/16 v1, 0x3eb

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0, v0, v1, v4, v2}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 1229
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_ChannelScanFreq(I)V

    .line 1230
    return-void

    .line 1222
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public ChannelScanCancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1255
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1257
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->_ChannelScanCancel()V

    .line 1258
    return-void
.end method

.method public ChannelSelect(IIILjava/lang/String;)V
    .locals 5
    .param p1, "src"    # I
    .param p2, "ch_info_size"    # I
    .param p3, "ch_idx"    # I
    .param p4, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1469
    invoke-direct {p0, v1}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1471
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mContextState:Z

    if-ne v0, v1, :cond_1

    .line 1473
    if-nez p1, :cond_3

    .line 1475
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    if-ne v0, v1, :cond_0

    .line 1477
    iput-boolean v4, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    .line 1478
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->SetFirstAntennaPath()V

    .line 1479
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->AntennaThread()V

    .line 1482
    :cond_0
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    if-eqz v0, :cond_1

    .line 1484
    sget-object v1, Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;

    monitor-enter v1

    .line 1486
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    .line 1487
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->SetFirstAntennaPath()V

    .line 1488
    sget-object v0, Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1490
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1503
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 1505
    const-string v0, "DMBFramework"

    const-string v1, "[TDMBJAVA] ================ ChannelSelect() :1 ==================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    sget-object v0, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    const/16 v1, 0x3ea

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0, v0, v1, v4, v2}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 1510
    :cond_2
    invoke-direct {p0, p1, p3, p4}, Landroid/tdmb/TdmbPlayer;->_ChannelSelect(IILjava/lang/String;)V

    .line 1511
    return-void

    .line 1490
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1495
    :cond_3
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    if-nez v0, :cond_1

    .line 1497
    iput-boolean v1, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    goto :goto_0
.end method

.method public ChannelSelect(IILjava/lang/String;I)V
    .locals 5
    .param p1, "src"    # I
    .param p2, "ch_idx"    # I
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "start_time"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1543
    invoke-direct {p0, v1}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1545
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mContextState:Z

    if-ne v0, v1, :cond_1

    .line 1547
    if-nez p1, :cond_3

    .line 1549
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    if-ne v0, v1, :cond_0

    .line 1551
    iput-boolean v4, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    .line 1552
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->SetFirstAntennaPath()V

    .line 1553
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->AntennaThread()V

    .line 1556
    :cond_0
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    if-eqz v0, :cond_1

    .line 1558
    sget-object v1, Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;

    monitor-enter v1

    .line 1560
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    .line 1561
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->SetFirstAntennaPath()V

    .line 1562
    sget-object v0, Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1564
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1578
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 1580
    const-string v0, "DMBFramework"

    const-string v1, "[TDMBJAVA] ================ ChannelSelect() :2 ==================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    sget-object v0, Landroid/tdmb/TdmbPlayer;->mContext:Landroid/content/Context;

    const/16 v1, 0x3ea

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0, v0, v1, v4, v2}, Landroid/tdmb/TdmbPlayer;->sendbroadcastToStabilityTool(Landroid/content/Context;III)V

    .line 1585
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/tdmb/TdmbPlayer;->_ChannelSelect(IILjava/lang/String;I)V

    .line 1586
    return-void

    .line 1564
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1569
    :cond_3
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    if-nez v0, :cond_1

    .line 1571
    iput-boolean v1, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    goto :goto_0
.end method

.method public Contrast(I)V
    .locals 1
    .param p1, "contrast_count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1941
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1943
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_Contrast(I)V

    .line 1944
    return-void
.end method

.method public DisplayRSSIValue(I)V
    .locals 1
    .param p1, "on"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2107
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 2109
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_DisplayRSSIValue(I)V

    .line 2110
    return-void
.end method

.method public DisplayVideo(I)V
    .locals 1
    .param p1, "video"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2061
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 2063
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_DisplayVideo(I)V

    .line 2064
    return-void
.end method

.method public Exit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1059
    const-string v0, "DMBFramework"

    const-string v1, "[TDMBJAVA] Exit() : Start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mContextState:Z

    if-ne v0, v2, :cond_0

    .line 1064
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    if-nez v0, :cond_0

    .line 1066
    iput-boolean v2, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    .line 1071
    :cond_0
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->_Exit()V

    .line 1073
    const-string v0, "DMBFramework"

    const-string v1, "[TDMBJAVA] Exit() : End"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    return-void
.end method

.method public GetCurrentChannelInfo(I)Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;
    .locals 3
    .param p1, "idx"    # I

    .prologue
    .line 2410
    const-string v0, "DMBFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TDMBJAVA] GetCurrentChannelInfo() : (idx)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mCurCHInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;

    # getter for: Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->mIdx:I
    invoke-static {v0}, Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;->access$1000(Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2413
    const-string v0, "DMBFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TDMBJAVA] GetCurrentChannelInfo() : (idx)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t play now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    const/4 v0, 0x0

    .line 2416
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/tdmb/TdmbPlayer;->mCurCHInfo:Landroid/tdmb/TdmbPlayer$TdmbChannelInfoForHybrid;

    goto :goto_0
.end method

.method public GetCurrentRSSIValue(I)I
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2141
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_GetCurrentRSSIValue(I)I

    move-result v0

    return v0
.end method

.method public GetSharpness()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2467
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->_GetSharpness()I

    move-result v0

    .line 2469
    .local v0, "getSharpnessValue":I
    const-string v1, "DMBFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TDMBJAVA] GetSharpness() : getSharpnessValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    return v0
.end method

.method public Init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1004
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->_Init()V

    .line 1007
    return-void
.end method

.method public Init(I)V
    .locals 0
    .param p1, "src"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1033
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_InitType(I)V

    .line 1036
    return-void
.end method

.method public Move(I)V
    .locals 1
    .param p1, "mstime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1910
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1912
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_Move(I)V

    .line 1913
    return-void
.end method

.method public OperateContentsFile(ILjava/lang/String;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2385
    invoke-direct {p0, p1, p2}, Landroid/tdmb/TdmbPlayer;->_OperateContentsFile(ILjava/lang/String;)V

    .line 2386
    return-void
.end method

.method public Pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1698
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1700
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->_Pause()V

    .line 1701
    return-void
.end method

.method public Play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1611
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1613
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->_Play()V

    .line 1614
    return-void
.end method

.method public Play(I)V
    .locals 3
    .param p1, "pause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1637
    const-string v0, "DMBFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TDMBJAVA] Play() : (pause)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1641
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_PlayPause(I)V

    .line 1642
    return-void
.end method

.method public Record(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "thumbnail"    # Ljava/lang/String;
    .param p3, "thumbnail_dx"    # I
    .param p4, "thumbnail_dy"    # I
    .param p5, "max_recorded_file_size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1817
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1819
    invoke-direct/range {p0 .. p5}, Landroid/tdmb/TdmbPlayer;->_Record(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1820
    return-void
.end method

.method public Resume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1726
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1728
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->_Resume()V

    .line 1729
    return-void
.end method

.method public SetAntennaPath(I)V
    .locals 3
    .param p1, "path"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2280
    const-string v0, "DMBFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TDMBJAVA] SetAntennaPath() : (path)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_SetAntennaPath(I)V

    .line 2283
    return-void
.end method

.method public SetDLS(Z)V
    .locals 1
    .param p1, "DLS"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2251
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 2253
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_SetDLS(Z)V

    .line 2254
    return-void
.end method

.method public SetJPEGSlideShow(Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;)V
    .locals 6
    .param p1, "jpegSlideShow"    # Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2207
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 2209
    invoke-virtual {p1}, Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;->GetJpegSlideShowEnable()Z

    move-result v1

    invoke-virtual {p1}, Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;->GetJpegSlideShowXorg()I

    move-result v2

    invoke-virtual {p1}, Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;->GetJpegSlideShowYorg()I

    move-result v3

    invoke-virtual {p1}, Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;->GetJpegSlideShowDx()I

    move-result v4

    invoke-virtual {p1}, Landroid/tdmb/TdmbPlayer$TdmbJpegSlideShow;->GetJpegSlideShowDy()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/tdmb/TdmbPlayer;->_SetSLS(ZIIII)V

    .line 2215
    return-void
.end method

.method public SetKeepScreenOnWhilePlaying(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 2547
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_0

    .line 2549
    iput-boolean p1, p0, Landroid/tdmb/TdmbPlayer;->mScreenOnWhilePlaying:Z

    .line 2550
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->updateSurfaceScreenOn()V

    .line 2552
    :cond_0
    return-void
.end method

.method public SetOnAntennaNumChangeListener(Landroid/tdmb/TdmbPlayer$OnAntennaNumChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnAntennaNumChangeListener;

    .prologue
    .line 4554
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnAntennaNumChangeListener:Landroid/tdmb/TdmbPlayer$OnAntennaNumChangeListener;

    .line 4555
    return-void
.end method

.method public SetOnAudioSessionIdListener(Landroid/tdmb/TdmbPlayer$OnAudioSessionIdListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnAudioSessionIdListener;

    .prologue
    .line 4838
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnAudioSessionIdListener:Landroid/tdmb/TdmbPlayer$OnAudioSessionIdListener;

    .line 4839
    return-void
.end method

.method public SetOnCaptureListener(Landroid/tdmb/TdmbPlayer$OnCaptureListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnCaptureListener;

    .prologue
    .line 4222
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnCaptureListener:Landroid/tdmb/TdmbPlayer$OnCaptureListener;

    .line 4223
    return-void
.end method

.method public SetOnChannelInfoChangedListener(Landroid/tdmb/TdmbPlayer$OnChannelInfoChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnChannelInfoChangedListener;

    .prologue
    .line 4033
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnChannelInfoChangedListener:Landroid/tdmb/TdmbPlayer$OnChannelInfoChangedListener;

    .line 4034
    return-void
.end method

.method public SetOnChannelInfoExtListener(Landroid/tdmb/TdmbPlayer$OnChannelInfoExtListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnChannelInfoExtListener;

    .prologue
    .line 4004
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnChannelInfoExtListener:Landroid/tdmb/TdmbPlayer$OnChannelInfoExtListener;

    .line 4005
    return-void
.end method

.method public SetOnChannelInfoListener(Landroid/tdmb/TdmbPlayer$OnChannelInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnChannelInfoListener;

    .prologue
    .line 3975
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnChannelInfoListener:Landroid/tdmb/TdmbPlayer$OnChannelInfoListener;

    .line 3976
    return-void
.end method

.method public SetOnChannelScanCancelListener(Landroid/tdmb/TdmbPlayer$OnChannelScanCancelListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnChannelScanCancelListener;

    .prologue
    .line 3916
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnChannelScanCancelListener:Landroid/tdmb/TdmbPlayer$OnChannelScanCancelListener;

    .line 3917
    return-void
.end method

.method public SetOnChannelScanDoneListener(Landroid/tdmb/TdmbPlayer$OnChannelScanDoneListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnChannelScanDoneListener;

    .prologue
    .line 3887
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnChannelScanDoneListener:Landroid/tdmb/TdmbPlayer$OnChannelScanDoneListener;

    .line 3888
    return-void
.end method

.method public SetOnChannelScanProgRPTListener(Landroid/tdmb/TdmbPlayer$OnChannelScanProgRPTListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnChannelScanProgRPTListener;

    .prologue
    .line 3946
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnChannelScanProgRPTListener:Landroid/tdmb/TdmbPlayer$OnChannelScanProgRPTListener;

    .line 3947
    return-void
.end method

.method public SetOnChannelSelectListener(Landroid/tdmb/TdmbPlayer$OnChannelSelectListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnChannelSelectListener;

    .prologue
    .line 4062
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnChannelSelectListener:Landroid/tdmb/TdmbPlayer$OnChannelSelectListener;

    .line 4063
    return-void
.end method

.method public SetOnDisplayRSSIInfoListener(Landroid/tdmb/TdmbPlayer$OnDisplayRSSIInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnDisplayRSSIInfoListener;

    .prologue
    .line 4679
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnDisplayRSSIInfoListener:Landroid/tdmb/TdmbPlayer$OnDisplayRSSIInfoListener;

    .line 4680
    return-void
.end method

.method public SetOnDisplayVideoListener(Landroid/tdmb/TdmbPlayer$OnDisplayVideoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnDisplayVideoListener;

    .prologue
    .line 4613
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnDisplayVideoListener:Landroid/tdmb/TdmbPlayer$OnDisplayVideoListener;

    .line 4614
    return-void
.end method

.method public SetOnDisplayVideoResultListener(Landroid/tdmb/TdmbPlayer$OnDisplayVideoResultListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnDisplayVideoResultListener;

    .prologue
    .line 4646
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnDisplayVideoResultListener:Landroid/tdmb/TdmbPlayer$OnDisplayVideoResultListener;

    .line 4647
    return-void
.end method

.method public SetOnErrorNotifyListener(Landroid/tdmb/TdmbPlayer$OnErrorNotifyListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnErrorNotifyListener;

    .prologue
    .line 4870
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnErrorNotifyListener:Landroid/tdmb/TdmbPlayer$OnErrorNotifyListener;

    .line 4871
    return-void
.end method

.method public SetOnExitDoneListener(Landroid/tdmb/TdmbPlayer$OnExitDoneListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnExitDoneListener;

    .prologue
    .line 3858
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnExitDoneListener:Landroid/tdmb/TdmbPlayer$OnExitDoneListener;

    .line 3859
    return-void
.end method

.method public SetOnInitDoneListener(Landroid/tdmb/TdmbPlayer$OnInitDoneListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnInitDoneListener;

    .prologue
    .line 3828
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnInitDoneListener:Landroid/tdmb/TdmbPlayer$OnInitDoneListener;

    .line 3829
    return-void
.end method

.method public SetOnLocalPlayDoneListener(Landroid/tdmb/TdmbPlayer$OnLocalPlayDoneListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnLocalPlayDoneListener;

    .prologue
    .line 4372
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnLocalPlayDoneListener:Landroid/tdmb/TdmbPlayer$OnLocalPlayDoneListener;

    .line 4373
    return-void
.end method

.method public SetOnMoveListener(Landroid/tdmb/TdmbPlayer$OnMoveListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnMoveListener;

    .prologue
    .line 4255
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnMoveListener:Landroid/tdmb/TdmbPlayer$OnMoveListener;

    .line 4256
    return-void
.end method

.method public SetOnOperateContentsFileListener(Landroid/tdmb/TdmbPlayer$OnOperateContentsFileListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnOperateContentsFileListener;

    .prologue
    .line 4711
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnOperateContentsFileListener:Landroid/tdmb/TdmbPlayer$OnOperateContentsFileListener;

    .line 4712
    return-void
.end method

.method public SetOnOutOfWeakFieldListener(Landroid/tdmb/TdmbPlayer$OnOutOfWeakFieldListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnOutOfWeakFieldListener;

    .prologue
    .line 4459
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnOutOfWeakFieldListener:Landroid/tdmb/TdmbPlayer$OnOutOfWeakFieldListener;

    .line 4460
    return-void
.end method

.method public SetOnPauseListener(Landroid/tdmb/TdmbPlayer$OnPauseListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnPauseListener;

    .prologue
    .line 4125
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnPauseListener:Landroid/tdmb/TdmbPlayer$OnPauseListener;

    .line 4126
    return-void
.end method

.method public SetOnPlayProgReportListener(Landroid/tdmb/TdmbPlayer$OnPlayProgReportListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnPlayProgReportListener;

    .prologue
    .line 4488
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnPlayProgReportListener:Landroid/tdmb/TdmbPlayer$OnPlayProgReportListener;

    .line 4489
    return-void
.end method

.method public SetOnPlayStartListener(Landroid/tdmb/TdmbPlayer$OnPlayStartListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnPlayStartListener;

    .prologue
    .line 4093
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnPlayStartListener:Landroid/tdmb/TdmbPlayer$OnPlayStartListener;

    .line 4094
    return-void
.end method

.method public SetOnRadioDLSInfoListener(Landroid/tdmb/TdmbPlayer$OnRadioDLSInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnRadioDLSInfoListener;

    .prologue
    .line 4522
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnRadioDLSInfoListener:Landroid/tdmb/TdmbPlayer$OnRadioDLSInfoListener;

    .line 4523
    return-void
.end method

.method public SetOnRadioPlayStartedListener(Landroid/tdmb/TdmbPlayer$OnRadioPlayStartedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnRadioPlayStartedListener;

    .prologue
    .line 4774
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnRadioPlayStartedListener:Landroid/tdmb/TdmbPlayer$OnRadioPlayStartedListener;

    .line 4775
    return-void
.end method

.method public SetOnRadioSLSDataListener(Landroid/tdmb/TdmbPlayer$OnRadioSLSDataListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnRadioSLSDataListener;

    .prologue
    .line 4744
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnRadioSLSDataListener:Landroid/tdmb/TdmbPlayer$OnRadioSLSDataListener;

    .line 4745
    return-void
.end method

.method public SetOnRecordCompleteListener(Landroid/tdmb/TdmbPlayer$OnRecordCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnRecordCompleteListener;

    .prologue
    .line 4343
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnRecordCompleteListener:Landroid/tdmb/TdmbPlayer$OnRecordCompleteListener;

    .line 4344
    return-void
.end method

.method public SetOnRecordStartListener(Landroid/tdmb/TdmbPlayer$OnRecordStartListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnRecordStartListener;

    .prologue
    .line 4284
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnRecordStartListener:Landroid/tdmb/TdmbPlayer$OnRecordStartListener;

    .line 4285
    return-void
.end method

.method public SetOnRecordStopListener(Landroid/tdmb/TdmbPlayer$OnRecordStopListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnRecordStopListener;

    .prologue
    .line 4313
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnRecordStopListener:Landroid/tdmb/TdmbPlayer$OnRecordStopListener;

    .line 4314
    return-void
.end method

.method public SetOnResumeListener(Landroid/tdmb/TdmbPlayer$OnResumeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnResumeListener;

    .prologue
    .line 4157
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnResumeListener:Landroid/tdmb/TdmbPlayer$OnResumeListener;

    .line 4158
    return-void
.end method

.method public SetOnSetVideoWindowListener(Landroid/tdmb/TdmbPlayer$OnSetVideoWindowListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnSetVideoWindowListener;

    .prologue
    .line 4401
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnSetVideoWindowListener:Landroid/tdmb/TdmbPlayer$OnSetVideoWindowListener;

    .line 4402
    return-void
.end method

.method public SetOnStopListener(Landroid/tdmb/TdmbPlayer$OnStopListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnStopListener;

    .prologue
    .line 4189
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnStopListener:Landroid/tdmb/TdmbPlayer$OnStopListener;

    .line 4190
    return-void
.end method

.method public SetOnUSBANTListener(Landroid/tdmb/TdmbPlayer$OnUSBANTListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnUSBANTListener;

    .prologue
    .line 4806
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnUSBANTListener:Landroid/tdmb/TdmbPlayer$OnUSBANTListener;

    .line 4807
    return-void
.end method

.method public SetOnVideoPlayStartedListener(Landroid/tdmb/TdmbPlayer$OnVideoPlayStartedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnVideoPlayStartedListener;

    .prologue
    .line 4583
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnVideoPlayStartedListener:Landroid/tdmb/TdmbPlayer$OnVideoPlayStartedListener;

    .line 4584
    return-void
.end method

.method public SetOnWeakFieldListener(Landroid/tdmb/TdmbPlayer$OnWeakFieldListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/tdmb/TdmbPlayer$OnWeakFieldListener;

    .prologue
    .line 4430
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mOnWeakFieldListener:Landroid/tdmb/TdmbPlayer$OnWeakFieldListener;

    .line 4431
    return-void
.end method

.method public SetSharpness(I)V
    .locals 0
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2440
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_SetSharpness(I)V

    .line 2442
    return-void
.end method

.method public SetSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 971
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 972
    const-string v0, "DMBFramework"

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/tdmb/TdmbPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 975
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_SetVideoSurface(Landroid/view/Surface;)V

    .line 976
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->updateSurfaceScreenOn()V

    .line 977
    return-void
.end method

.method public SetVideoDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 910
    iput-object p1, p0, Landroid/tdmb/TdmbPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 912
    if-eqz p1, :cond_0

    .line 913
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 917
    .local v0, "surface":Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->_SetVideoSurface(Landroid/view/Surface;)V

    .line 918
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->updateSurfaceScreenOn()V

    .line 934
    return-void

    .line 915
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "surface":Landroid/view/Surface;
    goto :goto_0
.end method

.method public SetVideoWindow(IIIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2033
    return-void
.end method

.method public SetWakeMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 2501
    const/4 v1, 0x0

    .line 2505
    .local v1, "washeld":Z
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 2507
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2509
    const/4 v1, 0x1

    .line 2510
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2512
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2515
    :cond_1
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2516
    .local v0, "pm":Landroid/os/PowerManager;
    const/high16 v2, 0x20000000

    or-int/2addr v2, p2

    const-class v3, Landroid/tdmb/TdmbPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2517
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2518
    if-eqz v1, :cond_2

    .line 2520
    iget-object v2, p0, Landroid/tdmb/TdmbPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2522
    :cond_2
    return-void
.end method

.method public StartNetBERTest(I)V
    .locals 4
    .param p1, "freq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2307
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mContextState:Z

    if-ne v0, v2, :cond_1

    .line 2309
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    if-ne v0, v2, :cond_0

    .line 2311
    iput-boolean v1, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    .line 2312
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->SetFirstAntennaPath()V

    .line 2313
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->AntennaThread()V

    .line 2316
    :cond_0
    iget-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    if-eqz v0, :cond_1

    .line 2318
    sget-object v1, Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;

    monitor-enter v1

    .line 2320
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    .line 2321
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->SetFirstAntennaPath()V

    .line 2322
    sget-object v0, Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2323
    const-string v0, "DMBFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TDMBJAVA] StartNetBERTest() : mAntennaThreadWait = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2328
    :cond_1
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_StartNetBERTest(I)V

    .line 2329
    return-void

    .line 2324
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public Stop(I)V
    .locals 1
    .param p1, "holding_screen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1670
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1672
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_Stop(I)V

    .line 1673
    return-void
.end method

.method public StopNetBERTest()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2353
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->_StopNetBERTest()V

    .line 2354
    return-void
.end method

.method public StopRecord(I)V
    .locals 1
    .param p1, "cancel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1845
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1847
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_StopRecord(I)V

    .line 1848
    return-void
.end method

.method public Volume(I)V
    .locals 1
    .param p1, "volume_count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1972
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/tdmb/TdmbPlayer;->stayAwake(Z)V

    .line 1974
    invoke-direct {p0, p1}, Landroid/tdmb/TdmbPlayer;->_Volume(I)V

    .line 1975
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 874
    const-string v0, "DMBFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TDMBJAVA] finalize() : finalize (ptr)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    return-void
.end method

.method public findStabilityTool(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 2637
    if-eqz p1, :cond_2

    .line 2639
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2640
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v4, 0x32

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 2642
    .local v2, "rs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const-string v4, "DMBFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findStabilityTool rs.size() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    sput-boolean v7, Landroid/tdmb/TdmbPlayer;->mSabilityToolLive:Z

    .line 2647
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 2649
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2653
    .local v3, "rsi":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.pantech.app.TDMBStabilityTool"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2655
    const-string v4, "DMBFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findStabilityTool() TDMBStabilityTool is alive ..........rs.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    const/4 v4, 0x1

    sput-boolean v4, Landroid/tdmb/TdmbPlayer;->mSabilityToolLive:Z

    .line 2666
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "i":I
    .end local v2    # "rs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v3    # "rsi":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    :goto_1
    return-void

    .line 2647
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "i":I
    .restart local v2    # "rs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v3    # "rsi":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2664
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "i":I
    .end local v2    # "rs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v3    # "rsi":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    sput-boolean v7, Landroid/tdmb/TdmbPlayer;->mSabilityToolLive:Z

    goto :goto_1
.end method

.method public getNativeSetupResult()I
    .locals 3

    .prologue
    .line 805
    const-string v0, "DMBFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TDMBJAVA] getNativeSetupResult() : (mNativeSetup)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/tdmb/TdmbPlayer;->mNativeSetup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget v0, p0, Landroid/tdmb/TdmbPlayer;->mNativeSetup:I

    return v0
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 828
    const-string v1, "DMBFramework"

    const-string v2, "[TDMBJAVA] release() : Start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    if-eqz v1, :cond_0

    .line 833
    const-string v1, "DMBFramework"

    const-string v2, "[TDMBJAVA] release() : send event EVENT_LOOP_QUIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    const/16 v2, 0x384

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/tdmb/TdmbPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 836
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/tdmb/TdmbPlayer;->mEventHandler:Landroid/tdmb/TdmbPlayer$EventHandler;

    invoke-virtual {v1, v0}, Landroid/tdmb/TdmbPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 839
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-boolean v1, p0, Landroid/tdmb/TdmbPlayer;->mContextState:Z

    if-ne v1, v4, :cond_1

    iget-boolean v1, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    if-nez v1, :cond_1

    .line 841
    iput-boolean v4, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadWait:Z

    .line 842
    iput-boolean v4, p0, Landroid/tdmb/TdmbPlayer;->mAntennaThreadQuit:Z

    .line 843
    sget-object v2, Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;

    monitor-enter v2

    .line 845
    :try_start_0
    const-string v1, "DMBFramework"

    const-string v3, "[TDMBJAVA] release() : Quit Antenna Thread"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    sget-object v1, Landroid/tdmb/TdmbPlayer;->antennalock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 847
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    :cond_1
    invoke-direct {p0}, Landroid/tdmb/TdmbPlayer;->_NativeFinalize()V

    .line 851
    const-string v1, "DMBFramework"

    const-string v2, "[TDMBJAVA] release() : End"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    return-void

    .line 847
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sendbroadcastToStabilityTool(Landroid/content/Context;III)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "cmd"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 2687
    sget-boolean v2, Landroid/tdmb/TdmbPlayer;->mSabilityToolLive:Z

    if-nez v2, :cond_0

    .line 2776
    :goto_0
    return-void

    .line 2693
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.pantech.app.tdmbstabilitytool.result"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2694
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2696
    .local v1, "szIntent":Ljava/lang/String;
    const-string v2, "TDMB_CmdWhat"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2698
    sparse-switch p2, :sswitch_data_0

    .line 2760
    const-string v2, "DMBFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TDMBJAVA] sendBroadcastToStabilityToll() : Unknown command (cmd)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2754
    :sswitch_0
    const-string v2, "DMBFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TDMBJAVA] sendBroadcastToStabilityToll() : Not Valid (cmd)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    :sswitch_1
    const-string v2, "TDMB_CmdResultArg1"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2767
    const-string v2, "TDMB_CmdResultArg2"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2769
    if-eqz p1, :cond_1

    .line 2770
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2774
    :cond_1
    const-string v2, "DMBFramework"

    const-string v3, "sendbroadcastToStabilityTool Context in Null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2698
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_1
        0xf -> :sswitch_1
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x12 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x1a -> :sswitch_1
        0x1b -> :sswitch_1
        0x1c -> :sswitch_1
        0x1d -> :sswitch_1
        0x1f -> :sswitch_1
        0x20 -> :sswitch_1
        0x64 -> :sswitch_1
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_1
    .end sparse-switch
.end method
