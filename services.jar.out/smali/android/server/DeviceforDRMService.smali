.class public Landroid/server/DeviceforDRMService;
.super Landroid/os/Binder;
.source "DeviceforDRMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/DeviceforDRMService$TimeoutHandler;
    }
.end annotation


# static fields
.field private static final AUTH_TIME_FILE:Ljava/lang/String; = "/data/system/drmauthtime.dat"

.field private static final CURRENT_TIME_FILE:Ljava/lang/String; = "/data/system/drmcurrenttime.dat"

.field private static final DRM_AUTH_TIME:I = 0x2

.field private static final DRM_CURRENT_TIME:I = 0x1

.field private static final FILE_TYPE:[Ljava/lang/String;

.field private static final NITZ_TIME:I = 0x3

.field private static final NITZ_TIME_FILE:Ljava/lang/String; = "/data/system/nitztime.dat"

.field private static final NITZ_TIME_LEN:I = 0xd

.field private static final RTC_TIME:I = 0x4

.field private static final RTC_TIME_FILE:Ljava/lang/String; = "/data/system/rtctime.dat"

.field private static final TAG:Ljava/lang/String; = "DeviceforDRMService"

.field private static final TIMEOUT_CHECK:I = 0x3

.field private static final TIMEOUT_CHECK_BOOT:I = 0x2

.field private static final TIMEOUT_CHECK_BOOT_DURATION:I = 0x2710

.field private static final TIMEOUT_CHECK_DURATION:I = 0x2bf20

.field private static final TIMEOUT_LOAD_LIBRARY:I = 0x1

.field private static final TIMEOUT_LOAD_LIBRARY_DURATION:I = 0x1388

.field private static mAuthTime:I

.field static mContext:Landroid/content/Context;

.field private static mCurrentTime:I

.field private static mServiceState:I


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mTimeoutHandler:Landroid/server/DeviceforDRMService$TimeoutHandler;

.field private mbLoadLibrary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/data/system/drmcurrenttime.dat"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "/data/system/drmauthtime.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/data/system/nitztime.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/data/system/rtctime.dat"

    aput-object v2, v0, v1

    sput-object v0, Landroid/server/DeviceforDRMService;->FILE_TYPE:[Ljava/lang/String;

    .line 61
    sput v3, Landroid/server/DeviceforDRMService;->mCurrentTime:I

    .line 62
    sput v3, Landroid/server/DeviceforDRMService;->mAuthTime:I

    .line 64
    const/4 v0, -0x1

    sput v0, Landroid/server/DeviceforDRMService;->mServiceState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 200
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/DeviceforDRMService;->mbLoadLibrary:Z

    .line 68
    new-instance v0, Landroid/server/DeviceforDRMService$1;

    invoke-direct {v0, p0}, Landroid/server/DeviceforDRMService$1;-><init>(Landroid/server/DeviceforDRMService;)V

    iput-object v0, p0, Landroid/server/DeviceforDRMService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 201
    sput-object p1, Landroid/server/DeviceforDRMService;->mContext:Landroid/content/Context;

    .line 204
    sget-object v0, Landroid/server/DeviceforDRMService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/server/DeviceforDRMService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 207
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceInfoDRMService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/server/DeviceforDRMService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 208
    iget-object v0, p0, Landroid/server/DeviceforDRMService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 209
    new-instance v0, Landroid/server/DeviceforDRMService$TimeoutHandler;

    iget-object v1, p0, Landroid/server/DeviceforDRMService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/server/DeviceforDRMService$TimeoutHandler;-><init>(Landroid/server/DeviceforDRMService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/server/DeviceforDRMService;->mTimeoutHandler:Landroid/server/DeviceforDRMService$TimeoutHandler;

    .line 211
    iget-boolean v0, p0, Landroid/server/DeviceforDRMService;->mbLoadLibrary:Z

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Landroid/server/DeviceforDRMService;->mTimeoutHandler:Landroid/server/DeviceforDRMService$TimeoutHandler;

    iget-object v1, p0, Landroid/server/DeviceforDRMService;->mTimeoutHandler:Landroid/server/DeviceforDRMService$TimeoutHandler;

    invoke-virtual {v1, v4}, Landroid/server/DeviceforDRMService$TimeoutHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/server/DeviceforDRMService$TimeoutHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 213
    const-string v0, "deviceinfodrm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 214
    iput-boolean v4, p0, Landroid/server/DeviceforDRMService;->mbLoadLibrary:Z

    .line 216
    :cond_0
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 31
    sget v0, Landroid/server/DeviceforDRMService;->mServiceState:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 31
    sput p0, Landroid/server/DeviceforDRMService;->mServiceState:I

    return p0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Landroid/server/DeviceforDRMService;->nativeDeviceInfoDRMInit()V

    return-void
.end method

.method static synthetic access$200(Landroid/server/DeviceforDRMService;)Landroid/server/DeviceforDRMService$TimeoutHandler;
    .locals 1
    .param p0, "x0"    # Landroid/server/DeviceforDRMService;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/server/DeviceforDRMService;->mTimeoutHandler:Landroid/server/DeviceforDRMService$TimeoutHandler;

    return-object v0
.end method

.method static synthetic access$300(IJ)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # J

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Landroid/server/DeviceforDRMService;->writeTime(IJ)V

    return-void
.end method

.method public static getAuthTime()I
    .locals 3

    .prologue
    .line 152
    sget v0, Landroid/server/DeviceforDRMService;->mAuthTime:I

    if-eqz v0, :cond_0

    sget v0, Landroid/server/DeviceforDRMService;->mServiceState:I

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    const-string v0, "DeviceforDRMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SKT_DRM] getAuthTime(readTime) state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/server/DeviceforDRMService;->mServiceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/server/DeviceforDRMService;->readTime(I)I

    move-result v0

    sput v0, Landroid/server/DeviceforDRMService;->mAuthTime:I

    .line 156
    :cond_1
    const-string v0, "DeviceforDRMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SKT_DRM] getAuthTime(authTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/server/DeviceforDRMService;->mAuthTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget v0, Landroid/server/DeviceforDRMService;->mAuthTime:I

    return v0
.end method

.method private static getAutoTime()I
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 84
    const/4 v7, -0x1

    .line 86
    .local v7, "real_time":I
    :try_start_0
    sget-object v8, Landroid/server/DeviceforDRMService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v0, 0x1

    .line 87
    .local v0, "auto_time":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 88
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v7, v8

    .line 89
    const-string v8, "DeviceforDRMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SKT_DRM] auto_time (real_time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v0    # "auto_time":Z
    :goto_0
    return v7

    .line 91
    .restart local v0    # "auto_time":Z
    :cond_1
    const-string v8, "gsm.nitz.time"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "nitz_str":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v5, v8, v10

    .line 93
    .local v5, "nitz_time":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v2, v8, v10

    .line 94
    .local v2, "elapsed_time":J
    add-long v8, v2, v5

    long-to-int v7, v8

    .line 95
    const-string v8, "DeviceforDRMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SKT_DRM] manual_time (nitz_time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", real_time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v0    # "auto_time":Z
    .end local v2    # "elapsed_time":J
    .end local v4    # "nitz_str":Ljava/lang/String;
    .end local v5    # "nitz_time":J
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v8, "DeviceforDRMService"

    const-string v9, "[SKT_DRM] NumberFormatException e(getAutoTime)"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getClientID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 176
    sget-object v2, Landroid/server/DeviceforDRMService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 177
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "client_str":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 181
    const-string v2, "DeviceforDRMService"

    const-string v3, "[SKT_DRM] getClientID Fail!!!!! from TelephonyMananger"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v0, "01012345678"

    .line 184
    :cond_0
    return-object v0
.end method

.method public static getClientIDint()I
    .locals 5

    .prologue
    .line 161
    sget-object v3, Landroid/server/DeviceforDRMService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 162
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "client_str":Ljava/lang/String;
    const v0, 0x3c572b4e

    .line 166
    .local v0, "client_id":I
    if-nez v1, :cond_0

    .line 167
    const-string v3, "DeviceforDRMService"

    const-string v4, "[SKT_DRM] getClientID Fail!!!!! from TelephonyMananger"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return v0

    .line 169
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getCurrentTime()I
    .locals 5

    .prologue
    .line 137
    sget v1, Landroid/server/DeviceforDRMService;->mCurrentTime:I

    if-eqz v1, :cond_0

    sget v1, Landroid/server/DeviceforDRMService;->mServiceState:I

    if-eqz v1, :cond_3

    .line 138
    :cond_0
    const-string v1, "DeviceforDRMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SKT_DRM] getCurrentTime(readTime) state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/server/DeviceforDRMService;->mServiceState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, -0x1

    .line 141
    .local v0, "sys_time":I
    const-string v1, "gsm.nitz.time"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 142
    invoke-static {}, Landroid/server/DeviceforDRMService;->getAutoTime()I

    move-result v0

    .line 143
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v0, v1

    .end local v0    # "sys_time":I
    :cond_2
    sput v0, Landroid/server/DeviceforDRMService;->mCurrentTime:I

    .line 147
    :cond_3
    const-string v1, "DeviceforDRMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SKT_DRM] getCurrentTime(currTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/server/DeviceforDRMService;->mCurrentTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget v1, Landroid/server/DeviceforDRMService;->mCurrentTime:I

    return v1
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 188
    sget-object v2, Landroid/server/DeviceforDRMService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 189
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "device_str":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 193
    const-string v2, "DeviceforDRMService"

    const-string v3, "[SKT_DRM] getDeviceID Fail!!!!! from TelephonyMananger"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v0, "000000000000000"

    .line 197
    :cond_0
    return-object v0
.end method

.method public static getRealTime()I
    .locals 16

    .prologue
    const-wide/16 v14, 0x0

    const/4 v13, 0x4

    const/4 v12, 0x3

    .line 106
    new-instance v1, Lcom/pantech/test/Sky_ctrl_drv;

    invoke-direct {v1}, Lcom/pantech/test/Sky_ctrl_drv;-><init>()V

    .line 107
    .local v1, "mSky_ctrl_drv":Lcom/pantech/test/Sky_ctrl_drv;
    invoke-virtual {v1}, Lcom/pantech/test/Sky_ctrl_drv;->Sky_Ctrl_Read_Rtc()J

    move-result-wide v8

    .line 108
    .local v8, "rtc_time":J
    const/4 v7, -0x1

    .line 110
    .local v7, "real_time":I
    const-string v10, "gsm.nitz.time"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "nitz_str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_1

    .line 113
    :try_start_0
    invoke-static {}, Landroid/server/DeviceforDRMService;->getAutoTime()I

    move-result v7

    .line 114
    const/4 v10, 0x3

    int-to-long v11, v7

    invoke-static {v10, v11, v12}, Landroid/server/DeviceforDRMService;->writeTime(IJ)V

    .line 115
    const/4 v10, 0x4

    invoke-static {v10, v8, v9}, Landroid/server/DeviceforDRMService;->writeTime(IJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    const-string v10, "DeviceforDRMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SKT_DRM] getRealTime (result : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v7

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v10, "DeviceforDRMService"

    const-string v11, "[SKT_DRM] NumberFormatException e(getRealTime)"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-static {v13}, Landroid/server/DeviceforDRMService;->readTime(I)I

    move-result v10

    int-to-long v5, v10

    .line 121
    .local v5, "prev_rtc_time":J
    invoke-static {v12}, Landroid/server/DeviceforDRMService;->readTime(I)I

    move-result v10

    int-to-long v3, v10

    .line 123
    .local v3, "prev_nitz_time":J
    cmp-long v10, v5, v14

    if-eqz v10, :cond_2

    cmp-long v10, v3, v14

    if-nez v10, :cond_3

    .line 124
    :cond_2
    const-string v10, "DeviceforDRMService"

    const-string v11, "[SKT_DRM] prev RTC or NITZ reset!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_3
    cmp-long v10, v8, v5

    if-lez v10, :cond_0

    .line 127
    sub-long v10, v8, v5

    add-long/2addr v10, v3

    long-to-int v7, v10

    .line 128
    const-string v10, "DeviceforDRMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SKT_DRM] prev_nitz_time : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", prev_rtc_time : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", rtc_time : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native nativeDeviceInfoDRMInit()V
.end method

.method private static readTime(I)I
    .locals 12
    .param p0, "mode"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v11, -0x1

    .line 299
    if-lt p0, v9, :cond_0

    const/4 v9, 0x4

    if-le p0, v9, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v6

    .line 302
    :cond_1
    new-instance v2, Ljava/io/File;

    sget-object v9, Landroid/server/DeviceforDRMService;->FILE_TYPE:[Ljava/lang/String;

    add-int/lit8 v10, p0, -0x1

    aget-object v9, v9, v10

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 306
    const/4 v6, 0x0

    .line 307
    .local v6, "read_time":I
    const/4 v3, 0x0

    .line 309
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 310
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .line 311
    .local v0, "buf_len":I
    if-lez v0, :cond_2

    .line 312
    add-int/lit8 v9, v0, 0x1

    new-array v7, v9, [B

    .line 313
    .local v7, "time_buf":[B
    const/4 v9, 0x1

    invoke-virtual {v4, v7, v9, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .line 314
    .local v5, "read_len":I
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    .local v8, "time_buf_str":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    .end local v5    # "read_len":I
    .end local v7    # "time_buf":[B
    .end local v8    # "time_buf_str":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v3, v4

    .line 325
    .end local v0    # "buf_len":I
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :goto_2
    if-eqz v3, :cond_3

    .line 327
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 333
    :cond_3
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1a4

    invoke-static {v9, v10, v11, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0

    .line 317
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "buf_len":I
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "read_len":I
    .restart local v7    # "time_buf":[B
    .restart local v8    # "time_buf_str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v9, "DeviceforDRMService"

    const-string v10, "ret time Error!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 321
    .end local v0    # "buf_len":I
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "read_len":I
    .end local v7    # "time_buf":[B
    .end local v8    # "time_buf_str":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v3, v4

    .line 322
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :goto_4
    const-string v9, "DeviceforDRMService"

    const-string v10, "File read Error!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 328
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 329
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "DeviceforDRMService"

    const-string v10, "File close Error!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 321
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    goto :goto_4
.end method

.method public static writeDefaultTime()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 220
    const/4 v6, 0x1

    invoke-static {v6, v7, v8}, Landroid/server/DeviceforDRMService;->writeTime(IJ)V

    .line 221
    const/4 v6, 0x2

    invoke-static {v6, v7, v8}, Landroid/server/DeviceforDRMService;->writeTime(IJ)V

    .line 223
    const-string v6, "gsm.nitz.time"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "nitz_str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_0

    .line 226
    :try_start_0
    new-instance v1, Lcom/pantech/test/Sky_ctrl_drv;

    invoke-direct {v1}, Lcom/pantech/test/Sky_ctrl_drv;-><init>()V

    .line 227
    .local v1, "mSky_ctrl_drv":Lcom/pantech/test/Sky_ctrl_drv;
    invoke-virtual {v1}, Lcom/pantech/test/Sky_ctrl_drv;->Sky_Ctrl_Read_Rtc()J

    move-result-wide v4

    .line 228
    .local v4, "rtc_time":J
    invoke-static {}, Landroid/server/DeviceforDRMService;->getAutoTime()I

    move-result v3

    .line 230
    .local v3, "real_time":I
    const/4 v6, 0x3

    int-to-long v7, v3

    invoke-static {v6, v7, v8}, Landroid/server/DeviceforDRMService;->writeTime(IJ)V

    .line 231
    const/4 v6, 0x4

    invoke-static {v6, v4, v5}, Landroid/server/DeviceforDRMService;->writeTime(IJ)V

    .line 232
    const-string v6, "DeviceforDRMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SKT_DRM] writeDaultRealTime  (rtc_time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", real_time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v1    # "mSky_ctrl_drv":Lcom/pantech/test/Sky_ctrl_drv;
    .end local v3    # "real_time":I
    .end local v4    # "rtc_time":J
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "DeviceforDRMService"

    const-string v7, "[SKT_DRM] NumberFormatException e(writeDefaultTime)"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static writeTime(IJ)V
    .locals 15
    .param p0, "mode"    # I
    .param p1, "wTime"    # J

    .prologue
    .line 240
    const/4 v11, 0x1

    if-lt p0, v11, :cond_0

    const/4 v11, 0x4

    if-le p0, v11, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    new-instance v3, Ljava/io/File;

    sget-object v11, Landroid/server/DeviceforDRMService;->FILE_TYPE:[Ljava/lang/String;

    add-int/lit8 v12, p0, -0x1

    aget-object v11, v11, v12

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 246
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_2
    :goto_1
    const/4 v7, 0x0

    .line 254
    .local v7, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .local v8, "out":Ljava/io/FileOutputStream;
    const-wide/16 v4, 0x0

    .line 257
    .local v4, "file_w_time":J
    const/4 v10, -0x1

    .line 258
    .local v10, "sys_time":I
    :try_start_2
    const-string v11, "gsm.nitz.time"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, "nitz_str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_3

    .line 260
    invoke-static {}, Landroid/server/DeviceforDRMService;->getAutoTime()I

    move-result v10

    .line 262
    :cond_3
    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    long-to-int v10, v11

    .line 263
    :cond_4
    packed-switch p0, :pswitch_data_0

    .line 278
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 279
    .local v9, "str_time":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    .line 280
    .local v0, "arrayLength":I
    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 281
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 282
    .local v1, "arrayTime":[B
    invoke-virtual {v8, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v7, v8

    .line 287
    .end local v0    # "arrayLength":I
    .end local v1    # "arrayTime":[B
    .end local v4    # "file_w_time":J
    .end local v6    # "nitz_str":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .end local v9    # "str_time":Ljava/lang/String;
    .end local v10    # "sys_time":I
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v7, :cond_5

    .line 289
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 295
    :cond_5
    :goto_4
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x1a4

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0

    .line 247
    .end local v7    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 248
    .local v2, "e":Ljava/io/IOException;
    const-string v11, "DeviceforDRMService"

    const-string v12, "File create Error!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 265
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "file_w_time":J
    .restart local v6    # "nitz_str":Ljava/lang/String;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "sys_time":I
    :pswitch_0
    :try_start_4
    sput v10, Landroid/server/DeviceforDRMService;->mCurrentTime:I

    .line 266
    sget v11, Landroid/server/DeviceforDRMService;->mCurrentTime:I

    int-to-long v4, v11

    .line 267
    goto :goto_2

    .line 269
    :pswitch_1
    sput v10, Landroid/server/DeviceforDRMService;->mAuthTime:I

    .line 270
    sget v11, Landroid/server/DeviceforDRMService;->mAuthTime:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    int-to-long v4, v11

    .line 271
    goto :goto_2

    .line 274
    :pswitch_2
    move-wide/from16 v4, p1

    goto :goto_2

    .line 283
    .end local v4    # "file_w_time":J
    .end local v6    # "nitz_str":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .end local v10    # "sys_time":I
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 284
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5
    const-string v11, "DeviceforDRMService"

    const-string v12, "File write Error!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 290
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 291
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "DeviceforDRMService"

    const-string v12, "File close Error!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 283
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "file_w_time":J
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "sys_time":I
    :catch_3
    move-exception v2

    move-object v7, v8

    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
