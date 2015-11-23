.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final GPRS_WAP:Ljava/lang/String; = "B"

.field public static final HD_LCDCOLOR:Ljava/lang/String; = "24"

.field public static final HD_LCDPIXCEL:Ljava/lang/String; = "999999"

.field public static final HD_LCDSIZE:Ljava/lang/String; = "3539"

.field public static final HSP_WAP:Ljava/lang/String; = "HSP"

.field public static final INFRAWARE:Ljava/lang/String; = "46"

.field public static final IRM_WAP:Ljava/lang/String; = "I"

.field public static final KTF_WAP:Ljava/lang/String; = "KTF"

.field public static final LGT_WAP:Ljava/lang/String; = "LGT"

.field public static final LTE:Ljava/lang/String; = "F"

.field public static final LTE_WAP_VER:Ljava/lang/String; = "46"

.field public static final MANUFACTURER:Ljava/lang/String; = "SK"

.field public static final MODEL_CODE:Ljava/lang/String; = "BD"

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_IWLAN:I = 0x12

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x6

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PERM_DISABLED:I = 0x7

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_SIM_LOCKED:I = 0x8

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field public static final SKT_PLMN_MCC:I = 0x1c2

.field public static final SKT_WAP:Ljava/lang/String; = "SKT"

.field public static final STI_WAP:Ljava/lang/String; = "STI"

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field public static final TYPE_WAP:Ljava/lang/String; = "C"

.field public static final WAP_010:Ljava/lang/String; = "010"

.field public static final WCDMA_WAP:Ljava/lang/String; = "6"

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sLteOnCdmaProductType:Ljava/lang/String;

.field private static final sProductTypePattern:Ljava/util/regex/Pattern;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 200
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 206
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 212
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 519
    invoke-static {}, Landroid/telephony/TelephonyManager;->getProcCmdLine()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    .line 522
    const-string v0, "\\sproduct_type\\s*=\\s*(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    .line 526
    const-string/jumbo v0, "telephony.lteOnCdmaProductType"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 80
    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 85
    :goto_0
    sget-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v1, :cond_0

    .line 86
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 89
    :cond_0
    return-void

    .line 82
    :cond_1
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static checkEmergencyList()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1648
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->checkEmergencyList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1652
    :goto_0
    return v1

    .line 1649
    :catch_0
    move-exception v0

    .line 1650
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1651
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1652
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getCardHwDetect()Z
    .locals 3

    .prologue
    .line 1715
    :try_start_0
    const-string v1, "gsm.card-hw-detect.status"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1717
    .local v0, "ex":Ljava/lang/NullPointerException;
    :goto_0
    return v1

    .line 1716
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_0
    move-exception v0

    .line 1717
    .restart local v0    # "ex":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCardState()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1687
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getITelephonyStatic()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getIccCardState()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1691
    :goto_0
    return-object v1

    .line 1688
    :catch_0
    move-exception v0

    .line 1689
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1690
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1691
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getDefaultSubscription()I
    .locals 2

    .prologue
    .line 627
    const-string/jumbo v0, "persist.radio.default.sub"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGcfMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1674
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getGcfMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1678
    :goto_0
    return v1

    .line 1675
    :catch_0
    move-exception v0

    .line 1676
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1677
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1678
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;
    .locals 1

    .prologue
    .line 1633
    const-string v0, "iskytelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v0

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1392
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getITelephonyStatic()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1640
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getLteOnCdmaModeStatic()I
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 542
    const-string v2, ""

    .line 544
    .local v2, "productType":Ljava/lang/String;
    const-string/jumbo v4, "telephony.lteOnCdmaDevice"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 546
    .local v0, "curVal":I
    move v3, v0

    .line 547
    .local v3, "retVal":I
    if-ne v3, v5, :cond_0

    .line 548
    sget-object v4, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    sget-object v5, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 549
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 550
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 551
    sget-object v4, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 552
    const/4 v3, 0x1

    .line 561
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    const-string v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLteOnCdmaMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " curVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " product_type=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' lteOnCdmaProductType=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return v3

    .line 554
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 557
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getNetworkClass(I)I
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 776
    packed-switch p0, :pswitch_data_0

    .line 799
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 783
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 794
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 797
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 776
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 816
    packed-switch p0, :pswitch_data_0

    .line 854
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 818
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 820
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 822
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 824
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 826
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 828
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 830
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 832
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 834
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 836
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 838
    :pswitch_a
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 840
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 842
    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 844
    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    .line 846
    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    .line 848
    :pswitch_f
    const-string v0, "GSM"

    goto :goto_0

    .line 850
    :pswitch_10
    const-string v0, "TD-SCDMA"

    goto :goto_0

    .line 852
    :pswitch_11
    const-string v0, "IWLAN"

    goto :goto_0

    .line 816
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static getPhoneType(I)I
    .locals 1
    .param p0, "networkMode"    # I

    .prologue
    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x1

    return v0
.end method

.method private getPhoneTypeFromProperty()I
    .locals 3

    .prologue
    .line 409
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 412
    .local v0, "type":I
    return v0
.end method

.method private static getProcCmdLine()Ljava/lang/String;
    .locals 10

    .prologue
    .line 495
    const-string v1, ""

    .line 496
    .local v1, "cmdline":Ljava/lang/String;
    const/4 v5, 0x0

    .line 498
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/cmdline"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v6, "is":Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_1
    new-array v0, v7, [B

    .line 500
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 501
    .local v3, "count":I
    if-lez v3, :cond_0

    .line 502
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "cmdline":Ljava/lang/String;
    .local v2, "cmdline":Ljava/lang/String;
    move-object v1, v2

    .line 507
    .end local v2    # "cmdline":Ljava/lang/String;
    .restart local v1    # "cmdline":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_3

    .line 509
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 514
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/cmdline="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-object v1

    .line 510
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    move-object v5, v6

    .line 511
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_0

    .line 504
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    :catch_1
    move-exception v4

    .line 505
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No /proc/cmdline exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 507
    if-eqz v5, :cond_1

    .line 509
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 510
    :catch_2
    move-exception v7

    goto :goto_0

    .line 507
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v5, :cond_2

    .line 509
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 511
    :cond_2
    :goto_3
    throw v7

    .line 510
    :catch_3
    move-exception v8

    goto :goto_3

    .line 507
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 504
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :cond_3
    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 1290
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 637
    const/4 v1, 0x0

    .line 638
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 640
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 641
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 642
    aget-object v1, v2, p1

    .line 645
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static getUAField()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2498
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getUAFieldForDM()Ljava/lang/String;

    move-result-object v0

    .line 2499
    .local v0, "ua":Ljava/lang/String;
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Return ua : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    return-object v0
.end method

.method public static getUsimSubscription()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2046
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getUsimSubscription()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2050
    :goto_0
    return v1

    .line 2047
    :catch_0
    move-exception v0

    .line 2048
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2049
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2050
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static isEmergencyCallMode(Z)Z
    .locals 3
    .param p0, "cardcheck"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1661
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->isEmergencyCallMode(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1665
    :goto_0
    return v1

    .line 1662
    :catch_0
    move-exception v0

    .line 1663
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1664
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1665
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static verifyPck(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "keyPck"    # Ljava/lang/String;
    .param p1, "persoFeature"    # I

    .prologue
    const/4 v1, 0x0

    .line 1701
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->verifyPck(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1705
    :goto_0
    return v1

    .line 1702
    :catch_0
    move-exception v0

    .line 1703
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1704
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1705
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method


# virtual methods
.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 2535
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2540
    :goto_0
    return v0

    .line 2537
    :catch_0
    move-exception v0

    .line 2540
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 2536
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public changePersoDck2(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "oldDck"    # Ljava/lang/String;
    .param p2, "newDck"    # Ljava/lang/String;
    .param p3, "perso_feature"    # I

    .prologue
    .line 2561
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->changePersoDck2(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2566
    :goto_0
    return v0

    .line 2563
    :catch_0
    move-exception v0

    .line 2566
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 2562
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 325
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    goto :goto_0

    .line 326
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 308
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    goto :goto_0

    .line 309
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1548
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1552
    :goto_0
    return-object v1

    .line 1549
    :catch_0
    move-exception v0

    .line 1550
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1551
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1552
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1310
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1316
    :goto_0
    return v1

    .line 1311
    :catch_0
    move-exception v0

    .line 1313
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1314
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1316
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1443
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1448
    :goto_0
    return v1

    .line 1444
    :catch_0
    move-exception v0

    .line 1446
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1447
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1448
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1461
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1466
    :goto_0
    return v1

    .line 1462
    :catch_0
    move-exception v0

    .line 1464
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1465
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1466
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1477
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1482
    :goto_0
    return-object v1

    .line 1478
    :catch_0
    move-exception v0

    .line 1480
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1481
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1482
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 284
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 285
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 293
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v1

    .line 286
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 287
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 288
    goto :goto_0

    .line 290
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    move-object v1, v3

    .line 291
    goto :goto_0

    .line 292
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 293
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1159
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1164
    :goto_0
    return-object v1

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1162
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1164
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType()I
    .locals 3

    .prologue
    .line 374
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 375
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 376
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 388
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 379
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 381
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 384
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 385
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 388
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1346
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1352
    :goto_0
    return v1

    .line 1347
    :catch_0
    move-exception v0

    .line 1349
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1350
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1352
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataNetworkType()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 721
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 722
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 723
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 733
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 728
    :catch_0
    move-exception v0

    .line 730
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 731
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 733
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1382
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1387
    :goto_0
    return v1

    .line 1383
    :catch_0
    move-exception v0

    .line 1385
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1386
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1387
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 259
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 263
    :goto_0
    return-object v1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 262
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 242
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 246
    :goto_0
    return-object v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 245
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1065
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1070
    :goto_0
    return-object v1

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1068
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1070
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIccLockEnabled()Z
    .locals 1

    .prologue
    .line 2511
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getIccLockEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2516
    :goto_0
    return v0

    .line 2513
    :catch_0
    move-exception v0

    .line 2516
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2512
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getIccPin1RetryCount()I
    .locals 1

    .prologue
    .line 2547
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getIccPin1RetryCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2552
    :goto_0
    return v0

    .line 2549
    :catch_0
    move-exception v0

    .line 2552
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 2548
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1227
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1232
    :goto_0
    return-object v1

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1230
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1232
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1211
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1216
    :goto_0
    return-object v1

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1214
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1216
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1244
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1249
    :goto_0
    return-object v1

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1247
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1249
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1278
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1283
    :goto_0
    return-object v1

    .line 1279
    :catch_0
    move-exception v0

    .line 1280
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1281
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1283
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1262
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscf()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1267
    :goto_0
    return-object v1

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1265
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1267
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1103
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1108
    :goto_0
    return-object v1

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1106
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1108
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1083
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1088
    :goto_0
    return-object v1

    .line 1084
    :catch_0
    move-exception v0

    .line 1085
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1086
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1088
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLocalDbInfo_Float(I)F
    .locals 3
    .param p1, "db_num"    # I

    .prologue
    const/4 v1, 0x0

    .line 2018
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getLocalDbInfo_Float(I)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2022
    :goto_0
    return v1

    .line 2019
    :catch_0
    move-exception v0

    .line 2020
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2021
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2022
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLocalDbInfo_Int(I)I
    .locals 3
    .param p1, "db_num"    # I

    .prologue
    const/4 v1, 0x0

    .line 1990
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getLocalDbInfo_Int(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1994
    :goto_0
    return v1

    .line 1991
    :catch_0
    move-exception v0

    .line 1992
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1993
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1994
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLocalDbInfo_Ints(I)[I
    .locals 3
    .param p1, "db_num"    # I

    .prologue
    const/4 v1, 0x0

    .line 2004
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getLocalDbInfo_Ints(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2008
    :goto_0
    return-object v1

    .line 2005
    :catch_0
    move-exception v0

    .line 2006
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2007
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2008
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLocalDbInfo_String(I)Ljava/lang/String;
    .locals 3
    .param p1, "db_num"    # I

    .prologue
    const/4 v1, 0x0

    .line 1976
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getLocalDbInfo_String(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1980
    :goto_0
    return-object v1

    .line 1977
    :catch_0
    move-exception v0

    .line 1978
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1979
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1980
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOnCdmaMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1022
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1028
    :goto_0
    return v1

    .line 1023
    :catch_0
    move-exception v0

    .line 1025
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1026
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1028
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOverlay()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2060
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getLteOverlay()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2064
    :goto_0
    return v1

    .line 2061
    :catch_0
    move-exception v0

    .line 2062
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2063
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2064
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMmsUAProfUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1618
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1619
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMmsUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1609
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1610
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMobileQualityInformation()Ljava/util/HashMap;
    .locals 51

    .prologue
    .line 1763
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 1771
    .local v21, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v20, 0x0

    .line 1780
    .local v20, "lte_tx":I
    const/4 v6, 0x0

    .line 1782
    .local v6, "antenna_tech":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v33

    .line 1783
    .local v33, "networkOperator":Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, "mnc":I
    move/from16 v22, v23

    .line 1784
    .local v22, "mcc":I
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v49

    const/16 v50, 0x5

    move/from16 v0, v49

    move/from16 v1, v50

    if-lt v0, v1, :cond_0

    .line 1785
    const/16 v49, 0x0

    const/16 v50, 0x3

    move-object/from16 v0, v33

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 1786
    const/16 v49, 0x3

    move-object/from16 v0, v33

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 1789
    :cond_0
    const-string v49, "LTE"

    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_8

    .line 1792
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v34

    .line 1793
    .local v34, "network_mode":Ljava/lang/String;
    const/16 v49, 0x53

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v41

    .line 1794
    .local v41, "tac":I
    const/16 v49, 0x4b

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v13

    .line 1795
    .local v13, "earfcn_downlink":I
    const/16 v49, 0x4a

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v7

    .line 1796
    .local v7, "band":I
    if-eqz v13, :cond_1

    if-nez v7, :cond_5

    .line 1797
    :cond_1
    const/4 v14, 0x0

    .line 1805
    .local v14, "earfcn_uplink":I
    :goto_0
    const/16 v49, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v8

    .line 1806
    .local v8, "bandwidth":I
    const/16 v49, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v16

    .line 1807
    .local v16, "lte_cell_id":I
    const/16 v49, 0x51

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v36

    .line 1809
    .local v36, "pci":I
    const/16 v49, 0x4e

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v37

    .line 1810
    .local v37, "rsrp":I
    const/16 v49, 0x4f

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v38

    .line 1811
    .local v38, "rsrq":I
    const/16 v49, 0x5a

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v20

    .line 1812
    const/16 v49, 0x50

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Float(I)F

    move-result v40

    .line 1814
    .local v40, "sinr":F
    const/16 v49, 0x5e

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Ints(I)[I

    move-result-object v17

    .line 1816
    .local v17, "lte_nbr":[I
    sub-int v19, v37, v38

    .line 1817
    .local v19, "lte_rssi":I
    const/16 v49, 0x5f

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v11

    .line 1818
    .local v11, "cqi":I
    const-string v18, "IDLE"

    .line 1820
    .local v18, "lte_rrc_state":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getQspiderIpAddress()Ljava/lang/String;

    move-result-object v15

    .line 1822
    .local v15, "ip":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1823
    .local v24, "neighborset_pci":I
    const/16 v25, 0x0

    .line 1824
    .local v25, "neighborset_pci_2":I
    const/16 v26, 0x0

    .line 1825
    .local v26, "neighborset_pci_3":I
    const/16 v27, 0x0

    .line 1826
    .local v27, "neighborset_rsrp":I
    const/16 v28, 0x0

    .line 1827
    .local v28, "neighborset_rsrp_2":I
    const/16 v29, 0x0

    .line 1828
    .local v29, "neighborset_rsrp_3":I
    const/16 v30, 0x0

    .line 1829
    .local v30, "neighborset_rsrq":I
    const/16 v31, 0x0

    .line 1830
    .local v31, "neighborset_rsrq_2":I
    const/16 v32, 0x0

    .line 1831
    .local v32, "neighborset_rsrq_3":I
    if-eqz v17, :cond_4

    const/16 v49, 0x0

    aget v49, v17, v49

    if-lez v49, :cond_4

    .line 1832
    const/16 v49, 0x0

    aget v49, v17, v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_2

    .line 1834
    const/16 v49, 0x1

    aget v24, v17, v49

    .line 1835
    const/16 v49, 0x9

    aget v27, v17, v49

    .line 1836
    const/16 v49, 0x11

    aget v30, v17, v49

    .line 1839
    :cond_2
    const/16 v49, 0x0

    aget v49, v17, v49

    const/16 v50, 0x2

    move/from16 v0, v49

    move/from16 v1, v50

    if-lt v0, v1, :cond_3

    .line 1841
    const/16 v49, 0x2

    aget v25, v17, v49

    .line 1842
    const/16 v49, 0xa

    aget v28, v17, v49

    .line 1843
    const/16 v49, 0x12

    aget v31, v17, v49

    .line 1845
    :cond_3
    const/16 v49, 0x0

    aget v49, v17, v49

    const/16 v50, 0x3

    move/from16 v0, v49

    move/from16 v1, v50

    if-lt v0, v1, :cond_4

    .line 1847
    const/16 v49, 0x3

    aget v26, v17, v49

    .line 1848
    const/16 v49, 0xb

    aget v29, v17, v49

    .line 1849
    const/16 v49, 0x13

    aget v32, v17, v49

    .line 1856
    :cond_4
    const-string/jumbo v49, "network_mode"

    new-instance v50, Ljava/lang/String;

    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    const-string/jumbo v49, "mcc"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1858
    const-string/jumbo v49, "mnc"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    const-string/jumbo v49, "tac"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v41

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    const-string v49, "earfcn_downlink"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    const-string v49, "earfcn_uplink"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    invoke-direct {v0, v14}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    const-string v49, "band"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1863
    const-string v49, "bandwidth"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    const-string v49, "cell_id"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    const-string/jumbo v49, "pci"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    const-string/jumbo v49, "rssi"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    const-string/jumbo v49, "rsrp"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    const-string/jumbo v49, "rsrq"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    const/16 v49, 0x3e8

    move/from16 v0, v20

    move/from16 v1, v49

    if-eq v0, v1, :cond_7

    .line 1871
    const-string/jumbo v49, "tx_power"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    :goto_1
    const-string/jumbo v49, "sinr"

    new-instance v50, Ljava/lang/Float;

    move-object/from16 v0, v50

    move/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    const-string/jumbo v49, "rrc"

    new-instance v50, Ljava/lang/String;

    move-object/from16 v0, v50

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1877
    const-string v49, "ip"

    new-instance v50, Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    const-string v49, "cqi"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    invoke-direct {v0, v11}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    const-string v49, "antenna_tech"

    const/16 v50, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    const-string/jumbo v49, "neighborset_pci"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    const-string/jumbo v49, "neighborset_pci_2"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1883
    const-string/jumbo v49, "neighborset_pci_3"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1885
    const-string/jumbo v49, "neighborset_rsrp"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    const-string/jumbo v49, "neighborset_rsrp_2"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    const-string/jumbo v49, "neighborset_rsrp_3"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1889
    const-string/jumbo v49, "neighborset_rsrq"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    const-string/jumbo v49, "neighborset_rsrq_2"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1891
    const-string/jumbo v49, "neighborset_rsrq_3"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    .end local v7    # "band":I
    .end local v8    # "bandwidth":I
    .end local v13    # "earfcn_downlink":I
    .end local v14    # "earfcn_uplink":I
    .end local v15    # "ip":Ljava/lang/String;
    .end local v16    # "lte_cell_id":I
    .end local v17    # "lte_nbr":[I
    .end local v18    # "lte_rrc_state":Ljava/lang/String;
    .end local v19    # "lte_rssi":I
    .end local v24    # "neighborset_pci":I
    .end local v25    # "neighborset_pci_2":I
    .end local v26    # "neighborset_pci_3":I
    .end local v27    # "neighborset_rsrp":I
    .end local v28    # "neighborset_rsrp_2":I
    .end local v29    # "neighborset_rsrp_3":I
    .end local v30    # "neighborset_rsrq":I
    .end local v31    # "neighborset_rsrq_2":I
    .end local v32    # "neighborset_rsrq_3":I
    .end local v36    # "pci":I
    .end local v37    # "rsrp":I
    .end local v38    # "rsrq":I
    .end local v40    # "sinr":F
    .end local v41    # "tac":I
    :goto_2
    return-object v21

    .line 1800
    .end local v11    # "cqi":I
    .restart local v7    # "band":I
    .restart local v13    # "earfcn_downlink":I
    .restart local v41    # "tac":I
    :cond_5
    const/16 v49, 0x1

    move/from16 v0, v49

    if-lt v7, v0, :cond_6

    const/16 v49, 0x11

    move/from16 v0, v49

    if-gt v7, v0, :cond_6

    .line 1801
    add-int/lit16 v14, v13, 0x4650

    .restart local v14    # "earfcn_uplink":I
    goto/16 :goto_0

    .line 1802
    .end local v14    # "earfcn_uplink":I
    :cond_6
    move v14, v13

    .restart local v14    # "earfcn_uplink":I
    goto/16 :goto_0

    .line 1873
    .restart local v8    # "bandwidth":I
    .restart local v11    # "cqi":I
    .restart local v15    # "ip":Ljava/lang/String;
    .restart local v16    # "lte_cell_id":I
    .restart local v17    # "lte_nbr":[I
    .restart local v18    # "lte_rrc_state":Ljava/lang/String;
    .restart local v19    # "lte_rssi":I
    .restart local v24    # "neighborset_pci":I
    .restart local v25    # "neighborset_pci_2":I
    .restart local v26    # "neighborset_pci_3":I
    .restart local v27    # "neighborset_rsrp":I
    .restart local v28    # "neighborset_rsrp_2":I
    .restart local v29    # "neighborset_rsrp_3":I
    .restart local v30    # "neighborset_rsrq":I
    .restart local v31    # "neighborset_rsrq_2":I
    .restart local v32    # "neighborset_rsrq_3":I
    .restart local v36    # "pci":I
    .restart local v37    # "rsrp":I
    .restart local v38    # "rsrq":I
    .restart local v40    # "sinr":F
    :cond_7
    const-string/jumbo v49, "tx_power"

    const/16 v50, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1899
    .end local v7    # "band":I
    .end local v8    # "bandwidth":I
    .end local v11    # "cqi":I
    .end local v13    # "earfcn_downlink":I
    .end local v14    # "earfcn_uplink":I
    .end local v15    # "ip":Ljava/lang/String;
    .end local v16    # "lte_cell_id":I
    .end local v17    # "lte_nbr":[I
    .end local v18    # "lte_rrc_state":Ljava/lang/String;
    .end local v19    # "lte_rssi":I
    .end local v24    # "neighborset_pci":I
    .end local v25    # "neighborset_pci_2":I
    .end local v26    # "neighborset_pci_3":I
    .end local v27    # "neighborset_rsrp":I
    .end local v28    # "neighborset_rsrp_2":I
    .end local v29    # "neighborset_rsrp_3":I
    .end local v30    # "neighborset_rsrq":I
    .end local v31    # "neighborset_rsrq_2":I
    .end local v32    # "neighborset_rsrq_3":I
    .end local v34    # "network_mode":Ljava/lang/String;
    .end local v36    # "pci":I
    .end local v37    # "rsrp":I
    .end local v38    # "rsrq":I
    .end local v40    # "sinr":F
    .end local v41    # "tac":I
    :cond_8
    const-string v34, "WCDMA"

    .line 1901
    .restart local v34    # "network_mode":Ljava/lang/String;
    const/16 v49, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Ints(I)[I

    move-result-object v45

    .line 1902
    .local v45, "w_band_info":[I
    const/16 v44, 0x0

    .local v44, "ulch":I
    move/from16 v12, v44

    .line 1903
    .local v12, "dlch":I
    if-eqz v45, :cond_9

    .line 1904
    const/16 v49, 0x0

    aget v12, v45, v49

    .line 1905
    const/16 v49, 0x1

    aget v44, v45, v49

    .line 1907
    :cond_9
    const/16 v49, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v10

    .line 1909
    .local v10, "cell_id":I
    const/16 v49, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v42

    .line 1910
    .local v42, "tx_agc":I
    const/16 v49, 0x49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v43

    .line 1911
    .local v43, "ul_inter":I
    const/16 v49, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v4

    .line 1912
    .local v4, "active_psc":I
    const/16 v49, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v5

    .line 1913
    .local v5, "active_rscp":I
    const/16 v49, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v3

    .line 1914
    .local v3, "active_ecio":I
    const/16 v49, 0x2b

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v11

    .line 1915
    .restart local v11    # "cqi":I
    const/16 v49, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Float(I)F

    move-result v9

    .line 1917
    .local v9, "bler":F
    sub-int v39, v5, v3

    .line 1918
    .local v39, "rssi":I
    const/16 v49, 0x1e

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Ints(I)[I

    move-result-object v35

    .line 1919
    .local v35, "nset":[I
    const/16 v47, 0x0

    .line 1920
    .local v47, "w_nset_psc":I
    const/16 v48, 0x0

    .line 1921
    .local v48, "w_nset_rscp":I
    const/16 v46, 0x0

    .line 1922
    .local v46, "w_nset_ecio":I
    if-eqz v35, :cond_a

    const/16 v49, 0x0

    aget v49, v35, v49

    if-lez v49, :cond_a

    .line 1923
    const/16 v49, 0x1

    aget v47, v35, v49

    .line 1924
    const/16 v49, 0x8

    aget v48, v35, v49

    .line 1925
    const/16 v49, 0xf

    aget v46, v35, v49

    .line 1928
    :cond_a
    const-string/jumbo v49, "network_mode"

    new-instance v50, Ljava/lang/String;

    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    const-string/jumbo v49, "mcc"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    const-string/jumbo v49, "mnc"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    const-string v49, "downlink_channel"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    invoke-direct {v0, v12}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    const-string/jumbo v49, "uplink_channel"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    const-string v49, "cell_id"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    invoke-direct {v0, v10}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    const-string/jumbo v49, "rssi"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    const/16 v49, 0x3e8

    move/from16 v0, v42

    move/from16 v1, v49

    if-eq v0, v1, :cond_b

    .line 1937
    const-string/jumbo v49, "tx_power"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    :goto_3
    const-string/jumbo v49, "ul_interference"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    const-string v49, "activeset_psc"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    const-string v49, "activeset_rscp"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    const-string v49, "activeset_ecio"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    const-string/jumbo v49, "neighborset_psc"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    const-string/jumbo v49, "neighborset_rscp"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v48

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    const-string/jumbo v49, "neighborset_ecio"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    move/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    const-string v49, "cqi"

    new-instance v50, Ljava/lang/Integer;

    move-object/from16 v0, v50

    invoke-direct {v0, v11}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    const-string v49, "bler"

    new-instance v50, Ljava/lang/Float;

    move-object/from16 v0, v50

    invoke-direct {v0, v9}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1939
    :cond_b
    const-string/jumbo v49, "tx_power"

    const/16 v50, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3
.end method

.method public getModemDb_strArray(I)[Ljava/lang/String;
    .locals 3
    .param p1, "db_item"    # I

    .prologue
    const/4 v1, 0x0

    .line 2032
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getModemDb_strArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2036
    :goto_0
    return-object v1

    .line 2033
    :catch_0
    move-exception v0

    .line 2034
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2035
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2036
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getModemDb_string(I)Ljava/lang/String;
    .locals 3
    .param p1, "db_item"    # I

    .prologue
    const/4 v1, 0x0

    .line 2304
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getLocalDbInfo_String(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2308
    :goto_0
    return-object v1

    .line 2305
    :catch_0
    move-exception v0

    .line 2306
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2307
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2308
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getModemDbgInfo()Ljava/util/HashMap;
    .locals 40

    .prologue
    .line 2073
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 2076
    .local v19, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v23, " - "

    .line 2079
    .local v23, "unknown":Ljava/lang/String;
    const/16 v37, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Int(I)I

    move-result v22

    .line 2080
    .local v22, "srv_type":I
    const/16 v37, 0x1

    move/from16 v0, v22

    move/from16 v1, v37

    if-ge v0, v1, :cond_1

    const/16 v37, 0x3

    move/from16 v0, v22

    move/from16 v1, v37

    if-le v0, v1, :cond_1

    .line 2081
    const-string/jumbo v37, "plmn"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    const-string/jumbo v37, "wcdma_dl_uarfcn"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    const-string/jumbo v37, "wcdma_cell_id"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    const-string/jumbo v37, "wcdma_psc"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    const-string/jumbo v37, "wcdma_drx"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    const-string v37, "lte_band"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    const-string v37, "lte_bandwidth"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    const-string v37, "lte_earfcn"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    const-string v37, "lte_pci"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    const-string v37, "lte_rssi"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    const-string v37, "lte_rsrp"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    const-string v37, "lte_rsrq"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2097
    const-string v37, "lte_sinr"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    const-string v37, "lte_cell_id"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2099
    const-string v37, "lte_tx_power"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    :cond_0
    :goto_0
    return-object v19

    .line 2104
    :cond_1
    const/16 v37, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v21

    .line 2105
    .local v21, "srv_status":Ljava/lang/String;
    const-string/jumbo v37, "service_status"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2114
    const/16 v37, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v25

    .line 2115
    .local v25, "wcdma_dl_uarfcn":Ljava/lang/String;
    const/16 v37, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v24

    .line 2116
    .local v24, "wcdma_cell_id":Ljava/lang/String;
    const/16 v37, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v31

    .line 2117
    .local v31, "wcdma_psc":Ljava/lang/String;
    const/16 v37, 0x1d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v26

    .line 2118
    .local v26, "wcdma_drx":Ljava/lang/String;
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v32

    .line 2119
    .local v32, "wcdma_rrc_s":Ljava/lang/String;
    const/16 v37, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v35

    .line 2120
    .local v35, "wcdma_rx_agc":Ljava/lang/String;
    const/16 v37, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v36

    .line 2121
    .local v36, "wcdma_tx_agc":Ljava/lang/String;
    const/16 v37, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v27

    .line 2122
    .local v27, "wcdma_ecio":Ljava/lang/String;
    const/16 v37, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v34

    .line 2123
    .local v34, "wcdma_rssi":Ljava/lang/String;
    const/16 v37, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v33

    .line 2124
    .local v33, "wcdma_rscp":Ljava/lang/String;
    const/16 v37, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v30

    .line 2125
    .local v30, "wcdma_msop":Ljava/lang/String;
    const/16 v37, 0x23

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v29

    .line 2126
    .local v29, "wcdma_mm_rej":Ljava/lang/String;
    const/16 v37, 0x24

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v28

    .line 2128
    .local v28, "wcdma_gmm_rej":Ljava/lang/String;
    const-string/jumbo v37, "wcdma_dl_uarfcn"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    const-string/jumbo v37, "wcdma_cell_id"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    const-string/jumbo v37, "wcdma_psc"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    const-string/jumbo v37, "wcdma_drx"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2132
    const-string/jumbo v37, "wcdma_rrc_s"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2133
    const-string/jumbo v37, "wcdma_rx_agc"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2134
    const-string/jumbo v37, "wcdma_tx_agc"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    const-string/jumbo v37, "wcdma_ecio"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2136
    const-string/jumbo v37, "wcdma_rssi"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2137
    const-string/jumbo v37, "wcdma_rscp"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    const-string/jumbo v37, "wcdma_msop"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    const-string/jumbo v37, "wcdma_mm_rej"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2140
    const-string/jumbo v37, "wcdma_gmm_rej"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    const/16 v37, 0x1e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Ints(I)[I

    move-result-object v20

    .line 2146
    .local v20, "nset":[I
    if-eqz v20, :cond_f

    .line 2147
    const/16 v37, 0x0

    aget v37, v20, v37

    const/16 v38, 0x6

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_2

    const/16 v37, 0x0

    const/16 v38, 0x6

    aput v38, v20, v37

    .line 2148
    :cond_2
    const-string/jumbo v37, "wcdma_nset_cnt"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x0

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    const/16 v37, 0x0

    aget v37, v20, v37

    if-lez v37, :cond_3

    .line 2151
    const-string/jumbo v37, "wcdma_nset_psc1"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x1

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    const-string/jumbo v37, "wcdma_nset_rscp1"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x8

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    const-string/jumbo v37, "wcdma_nset_ecio1"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xf

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2155
    :cond_3
    const/16 v37, 0x0

    aget v37, v20, v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_4

    .line 2156
    const-string/jumbo v37, "wcdma_nset_psc2"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x2

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    const-string/jumbo v37, "wcdma_nset_rscp2"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x9

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2158
    const-string/jumbo v37, "wcdma_nset_ecio2"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x10

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    :cond_4
    const/16 v37, 0x0

    aget v37, v20, v37

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_5

    .line 2161
    const-string/jumbo v37, "wcdma_nset_psc3"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x3

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    const-string/jumbo v37, "wcdma_nset_rscp3"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xa

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2163
    const-string/jumbo v37, "wcdma_nset_ecio3"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x11

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2165
    :cond_5
    const/16 v37, 0x0

    aget v37, v20, v37

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_6

    .line 2166
    const-string/jumbo v37, "wcdma_nset_psc4"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x4

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2167
    const-string/jumbo v37, "wcdma_nset_rscp4"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xb

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2168
    const-string/jumbo v37, "wcdma_nset_ecio4"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x12

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2170
    :cond_6
    const/16 v37, 0x0

    aget v37, v20, v37

    const/16 v38, 0x4

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_7

    .line 2171
    const-string/jumbo v37, "wcdma_nset_psc5"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x5

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2172
    const-string/jumbo v37, "wcdma_nset_rscp5"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xc

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2173
    const-string/jumbo v37, "wcdma_nset_ecio5"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x13

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2175
    :cond_7
    const/16 v37, 0x0

    aget v37, v20, v37

    const/16 v38, 0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_8

    .line 2176
    const-string/jumbo v37, "wcdma_nset_psc6"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x6

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2177
    const-string/jumbo v37, "wcdma_nset_rscp6"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xd

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    const-string/jumbo v37, "wcdma_nset_ecio6"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x14

    aget v39, v20, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    :cond_8
    :goto_1
    const/16 v37, 0x4a

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v3

    .line 2193
    .local v3, "lte_band":Ljava/lang/String;
    const/16 v37, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v4

    .line 2194
    .local v4, "lte_bandwidth":Ljava/lang/String;
    const/16 v37, 0x4b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v6

    .line 2195
    .local v6, "lte_earfcn":Ljava/lang/String;
    const/16 v37, 0x51

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v12

    .line 2196
    .local v12, "lte_pci":Ljava/lang/String;
    const/16 v37, 0x4d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v16

    .line 2197
    .local v16, "lte_rssi":Ljava/lang/String;
    const/16 v37, 0x4e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v14

    .line 2198
    .local v14, "lte_rsrp":Ljava/lang/String;
    const/16 v37, 0x4f

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v15

    .line 2199
    .local v15, "lte_rsrq":Ljava/lang/String;
    const/16 v37, 0x50

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v17

    .line 2200
    .local v17, "lte_sinr":Ljava/lang/String;
    const/16 v37, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v5

    .line 2201
    .local v5, "lte_cell_id":Ljava/lang/String;
    const/16 v37, 0x57

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v7

    .line 2202
    .local v7, "lte_emm_cause":Ljava/lang/String;
    const/16 v37, 0x58

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v10

    .line 2203
    .local v10, "lte_esm_cause":Ljava/lang/String;
    const/16 v37, 0x5a

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v18

    .line 2204
    .local v18, "lte_tx_power":Ljava/lang/String;
    const/16 v37, 0x5b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v13

    .line 2205
    .local v13, "lte_rrc_state":Ljava/lang/String;
    const/16 v37, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v8

    .line 2206
    .local v8, "lte_emm_state":Ljava/lang/String;
    const/16 v37, 0x5d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_String(I)Ljava/lang/String;

    move-result-object v9

    .line 2208
    .local v9, "lte_emm_substate":Ljava/lang/String;
    const-string v37, "lte_band"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2209
    const-string v37, "lte_bandwidth"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    const-string v37, "lte_earfcn"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2211
    const-string v37, "lte_pci"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    const-string v37, "lte_rssi"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    const-string v37, "lte_rsrp"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    const-string v37, "lte_rsrq"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    const-string v37, "lte_sinr"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    const-string v37, "lte_cell_id"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2217
    const-string v37, "lte_emm_cause"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2218
    const-string v37, "lte_esm_cause"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2219
    const-string v37, "lte_tx_power"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2220
    const-string v37, "lte_rrc_state"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    const-string v37, "lte_emm_state"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    const-string v37, "lte_emm_substate"

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2227
    const/16 v37, 0x5e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLocalDbInfo_Ints(I)[I

    move-result-object v11

    .line 2228
    .local v11, "lte_nset":[I
    if-eqz v11, :cond_10

    .line 2229
    const/16 v37, 0x0

    aget v37, v11, v37

    const/16 v38, 0x6

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_9

    const/16 v37, 0x0

    const/16 v38, 0x6

    aput v38, v11, v37

    .line 2230
    :cond_9
    const-string v37, "lte_nset_cnt"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x0

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2232
    const/16 v37, 0x0

    aget v37, v11, v37

    if-lez v37, :cond_a

    .line 2233
    const-string v37, "lte_nset_pci1"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x1

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2234
    const-string v37, "lte_nset_rsrq1"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x9

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    const-string v37, "lte_nset_rsrp1"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x11

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    const-string v37, "lte_nset_rssi1"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x19

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    :cond_a
    const/16 v37, 0x0

    aget v37, v11, v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_b

    .line 2239
    const-string v37, "lte_nset_pci2"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x2

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2240
    const-string v37, "lte_nset_rsrq2"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xa

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2241
    const-string v37, "lte_nset_rsrp2"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x12

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    const-string v37, "lte_nset_rssi2"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x1a

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    :cond_b
    const/16 v37, 0x0

    aget v37, v11, v37

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_c

    .line 2245
    const-string v37, "lte_nset_pci3"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x3

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2246
    const-string v37, "lte_nset_rsrq3"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xb

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    const-string v37, "lte_nset_rsrp3"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x13

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2248
    const-string v37, "lte_nset_rssi3"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x1b

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2250
    :cond_c
    const/16 v37, 0x0

    aget v37, v11, v37

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_d

    .line 2251
    const-string v37, "lte_nset_pci4"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x4

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    const-string v37, "lte_nset_rsrq4"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xc

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2253
    const-string v37, "lte_nset_rsrp4"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x14

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2254
    const-string v37, "lte_nset_rssi4"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x1c

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2256
    :cond_d
    const/16 v37, 0x0

    aget v37, v11, v37

    const/16 v38, 0x4

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_e

    .line 2257
    const-string v37, "lte_nset_pci5"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x5

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    const-string v37, "lte_nset_rsrq5"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xd

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2259
    const-string v37, "lte_nset_rsrp5"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x15

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    const-string v37, "lte_nset_rssi5"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x1d

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2262
    :cond_e
    const/16 v37, 0x0

    aget v37, v11, v37

    const/16 v38, 0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_0

    .line 2263
    const-string v37, "lte_nset_pci6"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x6

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2264
    const-string v37, "lte_nset_rsrq6"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0xe

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2265
    const-string v37, "lte_nset_rsrp6"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x16

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    const-string v37, "lte_nset_rssi6"

    new-instance v38, Ljava/lang/String;

    const/16 v39, 0x1e

    aget v39, v11, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2182
    .end local v3    # "lte_band":Ljava/lang/String;
    .end local v4    # "lte_bandwidth":Ljava/lang/String;
    .end local v5    # "lte_cell_id":Ljava/lang/String;
    .end local v6    # "lte_earfcn":Ljava/lang/String;
    .end local v7    # "lte_emm_cause":Ljava/lang/String;
    .end local v8    # "lte_emm_state":Ljava/lang/String;
    .end local v9    # "lte_emm_substate":Ljava/lang/String;
    .end local v10    # "lte_esm_cause":Ljava/lang/String;
    .end local v11    # "lte_nset":[I
    .end local v12    # "lte_pci":Ljava/lang/String;
    .end local v13    # "lte_rrc_state":Ljava/lang/String;
    .end local v14    # "lte_rsrp":Ljava/lang/String;
    .end local v15    # "lte_rsrq":Ljava/lang/String;
    .end local v16    # "lte_rssi":Ljava/lang/String;
    .end local v17    # "lte_sinr":Ljava/lang/String;
    .end local v18    # "lte_tx_power":Ljava/lang/String;
    :cond_f
    const-string/jumbo v37, "wcdma_nset_cnt"

    const-string v38, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2270
    .restart local v3    # "lte_band":Ljava/lang/String;
    .restart local v4    # "lte_bandwidth":Ljava/lang/String;
    .restart local v5    # "lte_cell_id":Ljava/lang/String;
    .restart local v6    # "lte_earfcn":Ljava/lang/String;
    .restart local v7    # "lte_emm_cause":Ljava/lang/String;
    .restart local v8    # "lte_emm_state":Ljava/lang/String;
    .restart local v9    # "lte_emm_substate":Ljava/lang/String;
    .restart local v10    # "lte_esm_cause":Ljava/lang/String;
    .restart local v11    # "lte_nset":[I
    .restart local v12    # "lte_pci":Ljava/lang/String;
    .restart local v13    # "lte_rrc_state":Ljava/lang/String;
    .restart local v14    # "lte_rsrp":Ljava/lang/String;
    .restart local v15    # "lte_rsrq":Ljava/lang/String;
    .restart local v16    # "lte_rssi":Ljava/lang/String;
    .restart local v17    # "lte_sinr":Ljava/lang/String;
    .restart local v18    # "lte_tx_power":Ljava/lang/String;
    :cond_10
    const-string v37, "lte_nset_cnt"

    const-string v38, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1123
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1128
    :goto_0
    return-object v1

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1126
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1128
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 344
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 348
    :goto_0
    return-object v1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 347
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 348
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 3

    .prologue
    .line 617
    const-string v0, "gsm.operator.iso-country"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 593
    const-string v0, "gsm.operator.numeric"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 581
    const-string v0, "gsm.operator.alpha"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorSky()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1754
    const-string v0, "gsm.operator.sky_numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 691
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 811
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersoIndEnabled2(I)Z
    .locals 1
    .param p1, "perso_feature"    # I

    .prologue
    .line 2585
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getPersoIndEnabled2(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2590
    :goto_0
    return v0

    .line 2587
    :catch_0
    move-exception v0

    .line 2590
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2586
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    const/4 v0, 0x0

    .line 405
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public getQspiderIpAddress()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1962
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getIpAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1966
    :goto_0
    return-object v1

    .line 1963
    :catch_0
    move-exception v0

    .line 1964
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1965
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1966
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getRejectUsim()Z
    .locals 3

    .prologue
    .line 2283
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2285
    const/4 v1, 0x1

    .line 2291
    :goto_0
    return v1

    .line 2289
    :cond_0
    :try_start_0
    const-string/jumbo v1, "persist.radio.rejected_usim"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2290
    :catch_0
    move-exception v0

    .line 2291
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 3

    .prologue
    .line 988
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 968
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 980
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1001
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1006
    :goto_0
    return-object v1

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1004
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1006
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState()I
    .locals 4

    .prologue
    .line 924
    const-string v1, "gsm.sim.state"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    const/4 v1, 0x1

    .line 955
    :goto_0
    return v1

    .line 929
    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    const/4 v1, 0x2

    goto :goto_0

    .line 932
    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 933
    const/4 v1, 0x3

    goto :goto_0

    .line 935
    :cond_2
    const-string v1, "PERSO_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 936
    const/4 v1, 0x4

    goto :goto_0

    .line 938
    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 939
    const/4 v1, 0x5

    goto :goto_0

    .line 941
    :cond_4
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 942
    const/4 v1, 0x6

    goto :goto_0

    .line 945
    :cond_5
    const-string v1, "PERM_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 946
    const/4 v1, 0x7

    goto :goto_0

    .line 950
    :cond_6
    const-string v1, "SIM SIM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 951
    const/16 v1, 0x8

    goto :goto_0

    .line 955
    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSktImsiMin()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1727
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getSktImsiMin()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1731
    :goto_0
    return-object v1

    .line 1728
    :catch_0
    move-exception v0

    .line 1729
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1730
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1731
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSktIrm()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1741
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getISkyTelephony()Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->getSktIrm()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1745
    :goto_0
    return-object v1

    .line 1742
    :catch_0
    move-exception v0

    .line 1743
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1744
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1745
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSmscAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1571
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1047
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1052
    :goto_0
    return-object v1

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1050
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1052
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getUAFieldForDM()Ljava/lang/String;
    .locals 18

    .prologue
    .line 2341
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    .line 2342
    .local v12, "strUAField":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2346
    .local v2, "clBundle":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 2347
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1, v2}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2354
    const-string v13, "cid"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2355
    .local v0, "cellId":I
    const v13, 0xff00

    and-int/2addr v13, v0

    shr-int/lit8 v8, v13, 0x8

    .line 2356
    .local v8, "nNodeB":I
    shr-int/lit8 v13, v0, 0x10

    and-int/lit8 v9, v13, 0x1f

    .line 2357
    .local v9, "nRnc":I
    shr-int/lit8 v13, v0, 0x15

    and-int/lit16 v6, v13, 0xbf

    .line 2358
    .local v6, "nMsc":I
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v10

    .line 2359
    .local v10, "networkOperator":Ljava/lang/String;
    const-string v13, "TelephonyManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DM networkOperator : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    const/4 v5, 0x0

    .line 2364
    .local v5, "nMnc":I
    if-eqz v10, :cond_0

    :try_start_1
    const-string v13, ""

    if-eq v10, v13, :cond_0

    .line 2366
    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2367
    .local v4, "nMcc":I
    const/4 v13, 0x3

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v5

    .line 2395
    const/16 v13, 0x1c2

    if-ne v4, v13, :cond_1

    .line 2397
    const/4 v7, 0x0

    .line 2398
    .local v7, "nNAM":I
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getSktImsiMin()Ljava/lang/String;

    move-result-object v11

    .line 2406
    .local v11, "strMIN":Ljava/lang/String;
    :goto_0
    if-nez v11, :cond_2

    .line 2408
    const-string v13, "TelephonyManager"

    const-string/jumbo v14, "strMIN is null return null"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    const/4 v13, 0x0

    .line 2493
    .end local v0    # "cellId":I
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    .end local v4    # "nMcc":I
    .end local v5    # "nMnc":I
    .end local v6    # "nMsc":I
    .end local v7    # "nNAM":I
    .end local v8    # "nNodeB":I
    .end local v9    # "nRnc":I
    .end local v10    # "networkOperator":Ljava/lang/String;
    .end local v11    # "strMIN":Ljava/lang/String;
    :goto_1
    return-object v13

    .line 2349
    :catch_0
    move-exception v3

    .line 2351
    .local v3, "ex":Ljava/lang/NullPointerException;
    const/4 v13, 0x0

    goto :goto_1

    .line 2371
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    .restart local v0    # "cellId":I
    .restart local v1    # "cl":Landroid/telephony/CellLocation;
    .restart local v5    # "nMnc":I
    .restart local v6    # "nMsc":I
    .restart local v8    # "nNodeB":I
    .restart local v9    # "nRnc":I
    .restart local v10    # "networkOperator":Ljava/lang/String;
    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    .line 2374
    :catch_1
    move-exception v3

    .line 2376
    .local v3, "ex":Ljava/lang/NumberFormatException;
    const-string v13, "TelephonyManager"

    const-string v14, "DM NumberFormatException"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    const/4 v13, 0x0

    goto :goto_1

    .line 2379
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v3

    .line 2381
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string v13, "TelephonyManager"

    const-string v14, "DM NullPointerException"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    const/4 v13, 0x0

    goto :goto_1

    .line 2384
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v3

    .line 2386
    .local v3, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v13, "TelephonyManager"

    const-string v14, "DM StringIndexOutOfBoundsException"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    const/4 v13, 0x0

    goto :goto_1

    .line 2402
    .end local v3    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v4    # "nMcc":I
    :cond_1
    const/4 v7, 0x2

    .line 2403
    .restart local v7    # "nNAM":I
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getSktIrm()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "strMIN":Ljava/lang/String;
    goto :goto_0

    .line 2412
    :cond_2
    const/4 v13, 0x1

    if-le v7, v13, :cond_4

    .line 2414
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "I"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2415
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2445
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_e

    .line 2447
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "B"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2463
    :goto_3
    const/4 v13, 0x1

    if-le v7, v13, :cond_f

    .line 2465
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    const/16 v15, 0xa

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2483
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v13

    const/16 v14, 0xd

    if-ne v13, v14, :cond_12

    .line 2485
    const-string v13, "TelephonyManager"

    const-string v14, "NETWORK_TYPE_LTE"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";%d;%d;%04d"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_5
    move-object v13, v12

    .line 2493
    goto/16 :goto_1

    .line 2419
    :cond_4
    const-string v13, "010"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "10"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2421
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "010"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 2423
    :cond_6
    const-string v13, "011"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "11"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2425
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "SKT"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 2427
    :cond_8
    const-string v13, "016"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "16"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 2429
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "KTF"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 2431
    :cond_a
    const-string v13, "019"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "19"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 2433
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "LGT"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 2435
    :cond_c
    const-string v13, "017"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 2437
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "STI"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 2439
    :cond_d
    const-string v13, "018"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2441
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "HSP"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 2458
    :cond_e
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "F"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2460
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "CSKBD4646999999353924"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 2469
    :cond_f
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x30

    if-eq v13, v14, :cond_10

    .line 2471
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    const/16 v15, 0xa

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4

    .line 2473
    :cond_10
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xb

    if-ne v13, v14, :cond_11

    .line 2475
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x3

    const/16 v15, 0xb

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4

    .line 2479
    :cond_11
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x30

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x3

    const/16 v15, 0xa

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4

    .line 2490
    :cond_12
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";%d;%d;%d;%d;%04d"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1195
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1200
    :goto_0
    return-object v1

    .line 1196
    :catch_0
    move-exception v0

    .line 1197
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1198
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1200
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1140
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1145
    :goto_0
    return-object v1

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1143
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1145
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1177
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1182
    :goto_0
    return v1

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1180
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1182
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceNetworkType()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 744
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 745
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 746
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 756
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 751
    :catch_0
    move-exception v0

    .line 753
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 754
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 756
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 901
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 907
    :goto_0
    return v1

    .line 902
    :catch_0
    move-exception v0

    .line 904
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 905
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 907
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 4

    .prologue
    .line 604
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v2

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSmsCapable()Z
    .locals 2

    .prologue
    .line 1520
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1521
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isVoiceCapable()Z
    .locals 2

    .prologue
    .line 1503
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1504
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 1425
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1427
    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1428
    .local v0, "notifyNow":Ljava/lang/Boolean;
    sget-object v2, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v2, :cond_miui_0

    const-string v2, "telephony.registry"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v2

    sput-object v2, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    :cond_miui_0
    sget-object v2, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v1, v3, p2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1434
    .end local v0    # "notifyNow":Ljava/lang/Boolean;
    :goto_1
    return-void

    .line 1425
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_0
    const-string v1, "<unknown>"

    goto :goto_0

    .line 1431
    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1429
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public setCellInfoListRate(I)V
    .locals 1
    .param p1, "rateInMillis"    # I

    .prologue
    .line 1599
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1603
    :goto_0
    return-void

    .line 1601
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1600
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setIccLockEnabled(ZLjava/lang/String;)I
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2523
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setIccLockEnabled(ZLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2528
    :goto_0
    return v0

    .line 2525
    :catch_0
    move-exception v0

    .line 2528
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 2524
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setPersoInd2(Ljava/lang/String;ZI)I
    .locals 1
    .param p1, "dck"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "perso_feature"    # I

    .prologue
    .line 2573
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setPersoInd2(Ljava/lang/String;ZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2578
    :goto_0
    return v0

    .line 2575
    :catch_0
    move-exception v0

    .line 2578
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 2574
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setSmscAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1583
    return-void
.end method

.method public static from(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public static getDefault(I)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public setDefaultDataSlotId(I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    return-void
.end method

.method public setDefaultVoiceSlotId(I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    return-void
.end method
