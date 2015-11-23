.class public final Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
.super Ljava/lang/Object;
.source "SmsEnvelope.java"


# static fields
.field public static final MESSAGE_TYPE_ACKNOWLEDGE:I = 0x2

.field public static final MESSAGE_TYPE_BROADCAST:I = 0x1

.field public static final MESSAGE_TYPE_POINT_TO_POINT:I = 0x0

.field public static final SERVICE_CATEGORY_CMAS_CHILD_ABDUCTION_EMERGENCY:I = 0x1003

.field public static final SERVICE_CATEGORY_CMAS_EXTREME_THREAT:I = 0x1001

.field public static final SERVICE_CATEGORY_CMAS_LAST_RESERVED_VALUE:I = 0x10ff

.field public static final SERVICE_CATEGORY_CMAS_PRESIDENTIAL_LEVEL_ALERT:I = 0x1000

.field public static final SERVICE_CATEGORY_CMAS_SEVERE_THREAT:I = 0x1002

.field public static final SERVICE_CATEGORY_CMAS_TEST_MESSAGE:I = 0x1004

.field public static final TELESERVICE_CT_WAP:I = 0xfdea

.field public static final TELESERVICE_LGU_BROADCAST:I = 0x50000

.field public static final TELESERVICE_LGU_DUAL_NUMBER:I = 0xc029

.field public static final TELESERVICE_LGU_FOTA:I = 0xc277

.field public static final TELESERVICE_LGU_GPS_ON:I = 0xc033

.field public static final TELESERVICE_LGU_GROUPCALL_INFO:I = 0xc251

.field public static final TELESERVICE_LGU_GROUPCALL_SERVER_INFO:I = 0xc252

.field public static final TELESERVICE_LGU_LMS:I = 0xf6fe

.field public static final TELESERVICE_LGU_MMS_NOTI:I = 0x1004

.field public static final TELESERVICE_LGU_PMT:I = 0x1002

.field public static final TELESERVICE_LGU_PPT:I = 0x1001

.field public static final TELESERVICE_LGU_SHARED_LMS:I = 0xc00b

.field public static final TELESERVICE_LGU_SHARED_SMS:I = 0xc00a

.field public static final TELESERVICE_LGU_VMN:I = 0x1003

.field public static final TELESERVICE_LGU_WAP_PUSH_LMS_CORP:I = 0xc024

.field public static final TELESERVICE_LGU_WAP_PUSH_LMS_CP:I = 0xc023

.field public static final TELESERVICE_LGU_WAP_PUSH_LMS_LGU:I = 0xc022

.field public static final TELESERVICE_LGU_WAP_PUSH_SMS_CORP:I = 0xc00e

.field public static final TELESERVICE_LGU_WAP_PUSH_SMS_CP:I = 0xc00f

.field public static final TELESERVICE_LGU_WAP_PUSH_SMS_LGU:I = 0xc010

.field public static final TELESERVICE_LGU_WEB_PUSH_LMS_CORP:I = 0xc264

.field public static final TELESERVICE_LGU_WEB_PUSH_LMS_CP:I = 0xc268

.field public static final TELESERVICE_LGU_WEB_PUSH_LMS_LGU:I = 0xc266

.field public static final TELESERVICE_LGU_WEB_PUSH_SMS_CORP:I = 0xc263

.field public static final TELESERVICE_LGU_WEB_PUSH_SMS_CP:I = 0xc267

.field public static final TELESERVICE_LGU_WEB_PUSH_SMS_LGU:I = 0xc265

.field public static final TELESERVICE_MWI:I = 0x40000

.field public static final TELESERVICE_NOT_SET:I = 0x0

.field public static final TELESERVICE_SCPT:I = 0x1006

.field public static final TELESERVICE_VMN:I = 0x1003

.field public static final TELESERVICE_WAP:I = 0x1004

.field public static final TELESERVICE_WEMT:I = 0x1005

.field public static final TELESERVICE_WMT:I = 0x1002


# instance fields
.field public bearerData:[B

.field public bearerReply:I

.field public causeCode:B

.field public destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public errorClass:B

.field public messageType:I

.field public origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

.field public replySeqNo:B

.field public serviceCategory:I

.field public teleService:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 209
    return-void
.end method

.method public static isLGUControlMessage(I)Z
    .locals 1
    .param p0, "teleserviceId"    # I

    .prologue
    .line 329
    sparse-switch p0, :sswitch_data_0

    .line 336
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 334
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 329
    nop

    :sswitch_data_0
    .sparse-switch
        0xc033 -> :sswitch_0
        0xc251 -> :sswitch_0
        0xc252 -> :sswitch_0
        0xc277 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isLGULmsMessage(I)Z
    .locals 1
    .param p0, "teleserviceId"    # I

    .prologue
    .line 218
    sparse-switch p0, :sswitch_data_0

    .line 229
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 227
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0xc00b -> :sswitch_0
        0xc022 -> :sswitch_0
        0xc023 -> :sswitch_0
        0xc024 -> :sswitch_0
        0xc264 -> :sswitch_0
        0xc266 -> :sswitch_0
        0xc268 -> :sswitch_0
        0xf6fe -> :sswitch_0
    .end sparse-switch
.end method

.method public static isLGUSavedMessage(I)Z
    .locals 1
    .param p0, "teleserviceId"    # I

    .prologue
    .line 311
    sparse-switch p0, :sswitch_data_0

    .line 319
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 317
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    nop

    :sswitch_data_0
    .sparse-switch
        0x1004 -> :sswitch_0
        0xc033 -> :sswitch_0
        0xc251 -> :sswitch_0
        0xc252 -> :sswitch_0
        0xc277 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isLGUSpecializedTeleserviceId(I)Z
    .locals 1
    .param p0, "teleserviceId"    # I

    .prologue
    .line 277
    sparse-switch p0, :sswitch_data_0

    .line 301
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 299
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 277
    nop

    :sswitch_data_0
    .sparse-switch
        0x1003 -> :sswitch_0
        0xc00a -> :sswitch_0
        0xc00b -> :sswitch_0
        0xc00e -> :sswitch_0
        0xc00f -> :sswitch_0
        0xc010 -> :sswitch_0
        0xc022 -> :sswitch_0
        0xc023 -> :sswitch_0
        0xc024 -> :sswitch_0
        0xc033 -> :sswitch_0
        0xc251 -> :sswitch_0
        0xc252 -> :sswitch_0
        0xc263 -> :sswitch_0
        0xc264 -> :sswitch_0
        0xc265 -> :sswitch_0
        0xc266 -> :sswitch_0
        0xc267 -> :sswitch_0
        0xc268 -> :sswitch_0
        0xc277 -> :sswitch_0
        0x50000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isLGUSupportedTeleserviceId(I)Z
    .locals 1
    .param p0, "teleserviceId"    # I

    .prologue
    .line 239
    sparse-switch p0, :sswitch_data_0

    .line 267
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 265
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 239
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_0
        0x1003 -> :sswitch_0
        0x1004 -> :sswitch_0
        0xc00a -> :sswitch_0
        0xc00b -> :sswitch_0
        0xc00e -> :sswitch_0
        0xc00f -> :sswitch_0
        0xc010 -> :sswitch_0
        0xc022 -> :sswitch_0
        0xc023 -> :sswitch_0
        0xc024 -> :sswitch_0
        0xc033 -> :sswitch_0
        0xc251 -> :sswitch_0
        0xc252 -> :sswitch_0
        0xc263 -> :sswitch_0
        0xc264 -> :sswitch_0
        0xc265 -> :sswitch_0
        0xc266 -> :sswitch_0
        0xc267 -> :sswitch_0
        0xc268 -> :sswitch_0
        0xc277 -> :sswitch_0
        0xf6fe -> :sswitch_0
        0x50000 -> :sswitch_0
    .end sparse-switch
.end method
