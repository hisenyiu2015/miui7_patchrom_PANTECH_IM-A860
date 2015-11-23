.class public Lcom/android/internal/telephony/SmsConstants;
.super Ljava/lang/Object;
.source "SmsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsConstants$MessageClass;
    }
.end annotation


# static fields
.field public static final ENCODING_16BIT:I = 0x3

.field public static final ENCODING_7BIT:I = 0x1

.field public static final ENCODING_8BIT:I = 0x2

.field public static final ENCODING_KSC5601:I = 0x4

.field public static final ENCODING_UNKNOWN:I = 0x0

.field public static final FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field public static final FORMAT_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final MAX_USER_DATA_BYTES:I = 0x8c

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field public static final MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99

.field public static final PID_DEFAULT:I = 0x0

.field public static final PID_EMS:I = 0x5e

.field public static final PID_KT_APP_PORT:I = 0x53

.field public static final PID_KT_CBS:I = 0x52

.field public static final PID_KT_CONV:I = 0x5d

.field public static final PID_KT_LBS_SERVICE:I = 0x51

.field public static final PID_KT_LMS_SERVICE:I = 0x4f

.field public static final PID_KT_PLATFORM_CB:I = 0x4d

.field public static final PID_KT_RTN:I = 0x49

.field public static final PID_KT_URL_CB:I = 0x4e

.field public static final PID_KT_URL_CB_018:I = 0x50

.field public static final PID_KT_V2MN:I = 0x48

.field public static final PID_LGU_SERVICE:I = 0x53

.field public static final PID_ME_DATA_DOWNLOAD:I = 0x7d

.field public static final PID_ME_DEPERSONALIZE:I = 0x7e

.field public static final PID_RETURN_CALL:I = 0x5f

.field public static final PID_SIM_DATA_DOWNLOAD:I = 0x7f

.field public static final PID_SKT_URL_CB:I = 0x91

.field public static final _ST_DUP_MSG_M:I = 0x1000000

.field public static final _ST_RDCF_MSG_M:I = 0x2000000

.field public static final _TP_DCS_M:I = 0x80

.field public static final _TP_MMS_M:I = 0x2

.field public static final _TP_MTI_M:I = 0x1

.field public static final _TP_NO_FIELD:I = 0x0

.field public static final _TP_OA_M:I = 0x20

.field public static final _TP_PID_M:I = 0x40

.field public static final _TP_RP_M:I = 0x4

.field public static final _TP_SCTS_M:I = 0x100

.field public static final _TP_SRI_M:I = 0x10

.field public static final _TP_UDHI_M:I = 0x8

.field public static final _TP_UDL_M:I = 0x200

.field public static final _TP_UD_M:I = 0x800

.field public static final _UDH_KTCALLBACK_M:I = 0x80000

.field public static final _UDH_LMSAPPID_M:I = 0x8000

.field public static final _UDH_LMSAUTH_M:I = 0x10000

.field public static final _UDH_LMSDATASIZE_M:I = 0x20000

.field public static final _UDH_LMSPULL_INFO_M:I = 0x40000

.field public static final _UDH_READCF_ID_M:I = 0x4000

.field public static final _UDH_REPLY_ADDR_ID_M:I = 0x2000

.field public static final _UDH_SPCSM_M:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method
