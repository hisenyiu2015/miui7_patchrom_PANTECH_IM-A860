.class public Lcom/android/internal/telephony/gsm/GsmNtpTime;
.super Landroid/os/Handler;
.source "GsmNtpTime.java"


# static fields
.field static final DBG:Z = false

.field public static final EVENT_AUTO_SET_NTP_TIME:I = 0x67

.field public static final EVENT_CANCEL_DISP:I = 0x69

.field public static final EVENT_DATA_CONNECTED:I = 0x64

.field public static final EVENT_GET_NTP_TIME:I = 0x65

.field public static final EVENT_NTP_TIME_DISPLAY:I = 0x66

.field public static final EVENT_SET_DISP_NTP_TIME:I = 0x68

.field static final LOG_TAG:Ljava/lang/String; = "GsmNtpTime"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "GsmNtpTime"


# instance fields
.field RcvNtpTime:J

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mMyLooper:Landroid/os/Looper;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field ntpTimeAutoChecked:Z

.field receivedNitzFromNetwork:Z

.field set_manual:Z

.field sntpClient:Landroid/net/SntpClient;

.field storedNitzRealTime:J

.field timeFromNitz:J


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->receivedNitzFromNetwork:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->ntpTimeAutoChecked:Z

    .line 73
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->set_manual:Z

    .line 75
    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->timeFromNitz:J

    .line 76
    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->storedNitzRealTime:J

    .line 78
    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->RcvNtpTime:J

    .line 79
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mMyLooper:Landroid/os/Looper;

    .line 100
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmNtpTime$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmNtpTime$1;-><init>(Lcom/android/internal/telephony/gsm/GsmNtpTime;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmNtpTime$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmNtpTime$2;-><init>(Lcom/android/internal/telephony/gsm/GsmNtpTime;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 82
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v2, "android.sky.intent.action.SET_NTP_TIME_DEBUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 92
    .local v1, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "GsmNtpTime"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 94
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 95
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 97
    new-instance v2, Landroid/net/SntpClient;

    invoke-direct {v2}, Landroid/net/SntpClient;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->sntpClient:Landroid/net/SntpClient;

    .line 98
    return-void
.end method

.method private DisplayNtpTime()V
    .locals 11

    .prologue
    .line 304
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 305
    .local v10, "t":Landroid/text/format/Time;
    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->RcvNtpTime:J

    invoke-virtual {v10, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 306
    new-instance v0, Ljava/util/Date;

    iget v1, v10, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x76c

    iget v2, v10, Landroid/text/format/Time;->month:I

    iget v3, v10, Landroid/text/format/Time;->monthDay:I

    iget v4, v10, Landroid/text/format/Time;->hour:I

    iget v5, v10, Landroid/text/format/Time;->minute:I

    iget v6, v10, Landroid/text/format/Time;->second:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 308
    .local v0, "ntp":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 310
    .local v8, "now":Ljava/util/Date;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sys time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ntp time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 313
    .local v9, "ntpTimeinfo":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Update Time"

    new-instance v3, Lcom/android/internal/telephony/gsm/GsmNtpTime$5;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmNtpTime$5;-><init>(Lcom/android/internal/telephony/gsm/GsmNtpTime;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "cancel"

    new-instance v3, Lcom/android/internal/telephony/gsm/GsmNtpTime$4;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmNtpTime$4;-><init>(Lcom/android/internal/telephony/gsm/GsmNtpTime;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 328
    .local v7, "NtpTimeDialog":Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 331
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x680002

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 336
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 338
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmNtpTime;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmNtpTime;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmNtpTime;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmNtpTime;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->nitzTimeInfo(JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmNtpTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmNtpTime;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->connNtpServer()V

    return-void
.end method

.method private connNtpServer()V
    .locals 9

    .prologue
    .line 198
    const-wide/16 v2, 0x0

    .line 201
    .local v2, "ntpTime":J
    :try_start_0
    const-string v5, "persist.radio.ntpserver"

    const-string v6, "kr.pool.ntp.org"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "defaultNtpServer":Ljava/lang/String;
    const-string v5, "persist.radio.ntptimeout"

    const/16 v6, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 203
    .local v4, "timeout":I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 204
    :cond_0
    const-string v0, "kr.pool.ntp.org"

    .line 207
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->sntpClient:Landroid/net/SntpClient;

    invoke-virtual {v5, v0, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 208
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->sntpClient:Landroid/net/SntpClient;

    invoke-virtual {v5}, Landroid/net/SntpClient;->getNtpTime()J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 221
    .end local v0    # "defaultNtpServer":Ljava/lang/String;
    .end local v4    # "timeout":I
    :cond_2
    :goto_0
    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->RcvNtpTime:J

    .line 223
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->set_manual:Z

    if-eqz v5, :cond_6

    .line 224
    const/16 v5, 0x66

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->sendEmptyMessage(I)Z

    .line 229
    :cond_3
    :goto_1
    return-void

    .line 209
    .restart local v0    # "defaultNtpServer":Ljava/lang/String;
    .restart local v4    # "timeout":I
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->sntpClient:Landroid/net/SntpClient;

    const-string v6, "pool.ntp.org"

    const/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 210
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->sntpClient:Landroid/net/SntpClient;

    invoke-virtual {v5}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v2

    goto :goto_0

    .line 211
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->sntpClient:Landroid/net/SntpClient;

    const-string v6, "asia.pool.ntp.org"

    const/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 212
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->sntpClient:Landroid/net/SntpClient;

    invoke-virtual {v5}, Landroid/net/SntpClient;->getNtpTime()J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 217
    .end local v0    # "defaultNtpServer":Ljava/lang/String;
    .end local v4    # "timeout":I
    :catch_0
    move-exception v1

    .line 218
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v5, "GsmNtpTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getntptime error occured  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_6
    iget-wide v5, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->RcvNtpTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    const/16 v5, 0x67

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 356
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 359
    :goto_0
    return v1

    .line 356
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getntptime()V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/gsm/GsmNtpTime$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmNtpTime$3;-><init>(Lcom/android/internal/telephony/gsm/GsmNtpTime;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 242
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 243
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 364
    const-string v0, "GsmNtpTime"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method private needTimeUpdateAutomatic()Z
    .locals 6

    .prologue
    .line 246
    const/4 v2, 0x0

    .line 250
    .local v2, "needUpdate":Z
    const-string v4, "persist.radio.ntpdisable"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 251
    .local v0, "disabled":I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v2

    .line 253
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getGcfMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 254
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mphone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "000000000000000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 255
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-nez v4, :cond_0

    .line 256
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 258
    const-string v4, "gsm.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "mccmnc":Ljava/lang/String;
    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "sim_mccmnc":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, "45005"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    if-eqz v3, :cond_0

    const-string v4, "45005"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->getAutoTime()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private nitzTimeInfo(JJ)V
    .locals 9
    .param p1, "storednitz"    # J
    .param p3, "realtime"    # J

    .prologue
    .line 186
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 188
    .local v8, "t":Landroid/text/format/Time;
    invoke-virtual {v8, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 189
    new-instance v0, Ljava/util/Date;

    iget v2, v8, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v2, -0x76c

    iget v2, v8, Landroid/text/format/Time;->month:I

    iget v3, v8, Landroid/text/format/Time;->monthDay:I

    iget v4, v8, Landroid/text/format/Time;->hour:I

    iget v5, v8, Landroid/text/format/Time;->minute:I

    iget v6, v8, Landroid/text/format/Time;->second:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 191
    .local v0, "nitz":Ljava/util/Date;
    invoke-virtual {v8, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 192
    new-instance v1, Ljava/util/Date;

    iget v2, v8, Landroid/text/format/Time;->year:I

    add-int/lit16 v2, v2, -0x76c

    iget v3, v8, Landroid/text/format/Time;->month:I

    iget v4, v8, Landroid/text/format/Time;->monthDay:I

    iget v5, v8, Landroid/text/format/Time;->hour:I

    iget v6, v8, Landroid/text/format/Time;->minute:I

    iget v7, v8, Landroid/text/format/Time;->second:I

    invoke-direct/range {v1 .. v7}, Ljava/util/Date;-><init>(IIIIII)V

    .line 194
    .local v1, "system":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NITZ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SystemClock( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->log(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method private setTimeInfoAuto()V
    .locals 5

    .prologue
    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 280
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 281
    .local v0, "c":Ljava/util/Calendar;
    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->RcvNtpTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 283
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->getAutoTime()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 285
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 286
    const-string v1, "gsm.ntptime.ms"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->ntpTimeAutoChecked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 299
    return-void

    .line 297
    .end local v0    # "c":Ljava/util/Calendar;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->set_manual:Z

    if-nez v0, :cond_0

    .line 141
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->receivedNitzFromNetwork:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->ntpTimeAutoChecked:Z

    if-eqz v0, :cond_3

    .line 142
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->receivedNitzFromNetwork:Z

    if-eqz v0, :cond_2

    .line 144
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->timeFromNitz:J

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->storedNitzRealTime:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->nitzTimeInfo(JJ)V

    .line 146
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->ntpTimeAutoChecked:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 151
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->needTimeUpdateAutomatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 157
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->getntptime()V

    goto :goto_0

    .line 161
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->DisplayNtpTime()V

    goto :goto_0

    .line 165
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->setTimeInfoAuto()V

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mMyLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 170
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmNtpTime;->setNtpTimeManual()V

    .line 171
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->set_manual:Z

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mMyLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 176
    :pswitch_5
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->set_manual:Z

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mMyLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setNtpTimeManual()V
    .locals 3

    .prologue
    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 345
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 346
    .local v0, "c":Ljava/util/Calendar;
    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->RcvNtpTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 347
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 352
    return-void

    .line 350
    .end local v0    # "c":Ljava/util/Calendar;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmNtpTime;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
.end method
