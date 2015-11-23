.class public Lcom/android/internal/telephony/SmsHeader;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsHeader$SpecialSM;,
        Lcom/android/internal/telephony/SmsHeader$MiscElt;,
        Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;,
        Lcom/android/internal/telephony/SmsHeader$ConcatRef;,
        Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    }
.end annotation


# static fields
.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_16_BIT:I = 0x5

.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_8_BIT:I = 0x4

.field public static final ELT_ID_CHARACTER_SIZE_WVG_OBJECT:I = 0x19

.field public static final ELT_ID_COMPRESSION_CONTROL:I = 0x16

.field public static final ELT_ID_CONCATENATED_16_BIT_REFERENCE:I = 0x8

.field public static final ELT_ID_CONCATENATED_8_BIT_REFERENCE:I = 0x0

.field public static final ELT_ID_ENHANCED_VOICE_MAIL_INFORMATION:I = 0x23

.field public static final ELT_ID_EXTENDED_OBJECT:I = 0x14

.field public static final ELT_ID_EXTENDED_OBJECT_DATA_REQUEST_CMD:I = 0x1a

.field public static final ELT_ID_HYPERLINK_FORMAT_ELEMENT:I = 0x21

.field public static final ELT_ID_KT_CALLBACK:I = 0x50

.field public static final ELT_ID_KT_LMS_LMS:I = 0x40

.field public static final ELT_ID_KT_LMS_LMS_AUTH:I = 0x41

.field public static final ELT_ID_KT_LMS_LMS_DATA_SIZE:I = 0x42

.field public static final ELT_ID_KT_LMS_LMS_PULL:I = 0x43

.field public static final ELT_ID_KT_READ_CONFIRM:I = 0x44

.field public static final ELT_ID_KT_REPLAY_OPTION:I = 0x62

.field public static final ELT_ID_KT_RESPONSE_CODE:I = 0x63

.field public static final ELT_ID_KT_RESPONSE_TYPE:I = 0x61

.field public static final ELT_ID_KT_SESSION_INFO:I = 0x60

.field public static final ELT_ID_KT_UICC_COMMAND_ID:I = 0x70

.field public static final ELT_ID_KT_UICC_RESPONSE_ID:I = 0x71

.field public static final ELT_ID_LARGE_ANIMATION:I = 0xe

.field public static final ELT_ID_LARGE_PICTURE:I = 0x10

.field public static final ELT_ID_NATIONAL_LANGUAGE_LOCKING_SHIFT:I = 0x25

.field public static final ELT_ID_NATIONAL_LANGUAGE_SINGLE_SHIFT:I = 0x24

.field public static final ELT_ID_OBJECT_DISTR_INDICATOR:I = 0x17

.field public static final ELT_ID_PREDEFINED_ANIMATION:I = 0xd

.field public static final ELT_ID_PREDEFINED_SOUND:I = 0xb

.field public static final ELT_ID_REPLY_ADDRESS_ELEMENT:I = 0x22

.field public static final ELT_ID_REUSED_EXTENDED_OBJECT:I = 0x15

.field public static final ELT_ID_RFC_822_EMAIL_HEADER:I = 0x20

.field public static final ELT_ID_SMALL_ANIMATION:I = 0xf

.field public static final ELT_ID_SMALL_PICTURE:I = 0x11

.field public static final ELT_ID_SMSC_CONTROL_PARAMS:I = 0x6

.field public static final ELT_ID_SPECIAL_SMS_MESSAGE_INDICATION:I = 0x1

.field public static final ELT_ID_STANDARD_WVG_OBJECT:I = 0x18

.field public static final ELT_ID_TEXT_FORMATTING:I = 0xa

.field public static final ELT_ID_UDH_SOURCE_INDICATION:I = 0x7

.field public static final ELT_ID_USER_DEFINED_SOUND:I = 0xc

.field public static final ELT_ID_USER_PROMPT_INDICATOR:I = 0x13

.field public static final ELT_ID_VARIABLE_PICTURE:I = 0x12

.field public static final ELT_ID_WIRELESS_CTRL_MSG_PROTOCOL:I = 0x9

.field public static final PORT_SKT_CALLBACK_URL:I = 0x4261

.field public static final PORT_SKT_COMMON_PUSH:I = 0x425c

.field public static final PORT_SKT_DISABLE_LOST_MODE:I = 0x4200

.field public static final PORT_SKT_DM_PUSH:I = 0x4244

.field public static final PORT_SKT_ENABLE_LOST_MODE:I = 0x4201

.field public static final PORT_SKT_FINDFRIEND:I = 0x1c6b

.field public static final PORT_SKT_IMS_PUSH:I = 0x4243

.field public static final PORT_SKT_MMS:I = 0xb85

.field public static final PORT_SKT_MONETA_PUSH:I = 0x4256

.field public static final PORT_SKT_VC_PUSH:I = 0x4255

.field public static final PORT_WAP_PUSH:I = 0xb84

.field public static final PORT_WAP_WSP:I = 0x23f0


# instance fields
.field public IsReadConfirmMsg:Z

.field public ReplyAddr:Ljava/lang/String;

.field public ReplyTon:I

.field public UdhParam:J

.field public concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

.field public languageShiftTable:I

.field public languageTable:I

.field public miscEltList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsHeader$MiscElt;",
            ">;"
        }
    .end annotation
.end field

.field public portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

.field public readConfirmId:I

.field public specialSmInfo:Lcom/android/internal/telephony/SmsHeader$SpecialSM;

.field public specialSmsMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    .line 145
    return-void
.end method

.method public static fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;
    .locals 17
    .param p0, "data"    # [B

    .prologue
    .line 168
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 169
    .local v4, "inStream":Ljava/io/ByteArrayInputStream;
    new-instance v11, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 170
    .local v11, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    const-wide/16 v13, 0x0

    .line 171
    .local v13, "udhparam":J
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    if-lez v15, :cond_1

    .line 180
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 181
    .local v3, "id":I
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 186
    .local v5, "length":I
    sparse-switch v3, :sswitch_data_0

    .line 264
    new-instance v6, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 265
    .local v6, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iput v3, v6, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 266
    new-array v15, v5, [B

    iput-object v15, v6, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 267
    iget-object v15, v6, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 268
    iget-object v15, v11, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    .end local v6    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :sswitch_0
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 189
    .local v1, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    iput v15, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 190
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    iput v15, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 191
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    iput v15, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 192
    const/4 v15, 0x1

    iput-boolean v15, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 193
    iget v15, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v15, :cond_0

    iget v15, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v15, :cond_0

    iget v15, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v15, v0, :cond_0

    .line 195
    iput-object v1, v11, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto :goto_0

    .line 199
    .end local v1    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_1
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 200
    .restart local v1    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    shl-int/lit8 v15, v15, 0x8

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v16

    or-int v15, v15, v16

    iput v15, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 201
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    iput v15, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 202
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    iput v15, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 203
    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 204
    iget v15, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v15, :cond_0

    iget v15, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v15, :cond_0

    iget v15, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v15, v0, :cond_0

    .line 206
    iput-object v1, v11, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto/16 :goto_0

    .line 210
    .end local v1    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_2
    new-instance v9, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v9}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 211
    .local v9, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    iput v15, v9, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 212
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    iput v15, v9, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 213
    const/4 v15, 0x1

    iput-boolean v15, v9, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 214
    iput-object v9, v11, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    goto/16 :goto_0

    .line 217
    .end local v9    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_3
    new-instance v9, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v9}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 218
    .restart local v9    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    shl-int/lit8 v15, v15, 0x8

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v16

    or-int v15, v15, v16

    iput v15, v9, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 219
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    shl-int/lit8 v15, v15, 0x8

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v16

    or-int v15, v15, v16

    iput v15, v9, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 220
    const/4 v15, 0x0

    iput-boolean v15, v9, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 221
    iput-object v9, v11, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    goto/16 :goto_0

    .line 224
    .end local v9    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_4
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    iput v15, v11, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto/16 :goto_0

    .line 227
    :sswitch_5
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    iput v15, v11, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto/16 :goto_0

    .line 239
    :sswitch_6
    new-instance v12, Lcom/android/internal/telephony/SmsHeader$SpecialSM;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader$SpecialSM;-><init>()V

    .line 240
    .local v12, "specialSmInfo":Lcom/android/internal/telephony/SmsHeader$SpecialSM;
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    .line 241
    .local v7, "msgKind":I
    and-int/lit8 v15, v7, 0x7f

    iput v15, v12, Lcom/android/internal/telephony/SmsHeader$SpecialSM;->msgType:I

    .line 242
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    iput v15, v12, Lcom/android/internal/telephony/SmsHeader$SpecialSM;->msgTotalcount:I

    .line 243
    iput-object v12, v11, Lcom/android/internal/telephony/SmsHeader;->specialSmInfo:Lcom/android/internal/telephony/SmsHeader$SpecialSM;

    .line 244
    const-wide/16 v13, 0x1000

    .line 245
    iget-wide v15, v11, Lcom/android/internal/telephony/SmsHeader;->UdhParam:J

    or-long/2addr v15, v13

    iput-wide v15, v11, Lcom/android/internal/telephony/SmsHeader;->UdhParam:J

    goto/16 :goto_0

    .line 248
    .end local v7    # "msgKind":I
    .end local v12    # "specialSmInfo":Lcom/android/internal/telephony/SmsHeader$SpecialSM;
    :sswitch_7
    new-array v10, v5, [B

    .line 250
    .local v10, "replayAddr":[B
    const/4 v15, 0x0

    invoke-virtual {v4, v10, v15, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v2

    .line 251
    .local v2, "copylen":I
    const/4 v15, 0x1

    aget-byte v15, v10, v15

    and-int/lit8 v15, v15, 0x70

    shr-int/lit8 v8, v15, 0x4

    .line 252
    .local v8, "number_type":I
    const/4 v15, 0x1

    add-int/lit8 v16, v5, -0x1

    move/from16 v0, v16

    invoke-static {v10, v15, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString_sms([BII)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v11, Lcom/android/internal/telephony/SmsHeader;->ReplyAddr:Ljava/lang/String;

    .line 253
    iput v8, v11, Lcom/android/internal/telephony/SmsHeader;->ReplyTon:I

    .line 254
    const-wide/16 v13, 0x2000

    .line 255
    iget-wide v15, v11, Lcom/android/internal/telephony/SmsHeader;->UdhParam:J

    or-long/2addr v15, v13

    iput-wide v15, v11, Lcom/android/internal/telephony/SmsHeader;->UdhParam:J

    goto/16 :goto_0

    .line 258
    .end local v2    # "copylen":I
    .end local v8    # "number_type":I
    .end local v10    # "replayAddr":[B
    :sswitch_8
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    iput v15, v11, Lcom/android/internal/telephony/SmsHeader;->readConfirmId:I

    .line 259
    const-wide/32 v13, 0x2004000

    .line 260
    iget-wide v15, v11, Lcom/android/internal/telephony/SmsHeader;->UdhParam:J

    or-long/2addr v15, v13

    iput-wide v15, v11, Lcom/android/internal/telephony/SmsHeader;->UdhParam:J

    goto/16 :goto_0

    .line 271
    .end local v3    # "id":I
    .end local v5    # "length":I
    :cond_1
    return-object v11

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_6
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x8 -> :sswitch_1
        0x22 -> :sswitch_7
        0x24 -> :sswitch_4
        0x25 -> :sswitch_5
        0x44 -> :sswitch_8
    .end sparse-switch
.end method

.method public static toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B
    .locals 13
    .param p0, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .prologue
    .line 281
    invoke-static {}, Lcom/android/internal/telephony/SkyMsgConfig;->isKTVendor()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 283
    iget-object v10, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    iget v10, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-nez v10, :cond_1

    iget v10, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/SmsHeader;->ReplyAddr:Ljava/lang/String;

    if-nez v10, :cond_1

    iget v10, p0, Lcom/android/internal/telephony/SmsHeader;->readConfirmId:I

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/android/internal/telephony/SmsHeader;->IsReadConfirmMsg:Z

    if-nez v10, :cond_1

    .line 292
    const/4 v10, 0x0

    .line 385
    :goto_0
    return-object v10

    .line 298
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    iget v10, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-nez v10, :cond_1

    iget v10, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/SmsHeader;->ReplyAddr:Ljava/lang/String;

    if-nez v10, :cond_1

    .line 306
    const/4 v10, 0x0

    goto :goto_0

    .line 310
    :cond_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x8c

    invoke-direct {v5, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 312
    .local v5, "outStream":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 313
    .local v2, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    if-eqz v2, :cond_2

    .line 314
    iget-boolean v10, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    if-eqz v10, :cond_8

    .line 315
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 316
    const/4 v10, 0x3

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 317
    iget v10, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 324
    :goto_1
    iget v10, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 325
    iget v10, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 327
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 328
    .local v6, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v6, :cond_3

    .line 329
    iget-boolean v10, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    if-eqz v10, :cond_9

    .line 330
    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 331
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 332
    iget v10, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 333
    iget v10, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 344
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/SmsHeader;->ReplyAddr:Ljava/lang/String;

    .line 345
    .local v8, "replyaddr":Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 347
    const/16 v10, 0x22

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 348
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 349
    .local v1, "addrByte":[B
    array-length v10, v1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 350
    array-length v10, v1

    add-int/lit8 v10, v10, -0x1

    mul-int/lit8 v11, v10, 0x2

    array-length v10, v1

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xf0

    const/16 v12, 0xf0

    if-ne v10, v12, :cond_a

    const/4 v10, 0x1

    :goto_3
    sub-int v10, v11, v10

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 352
    const/4 v10, 0x0

    array-length v11, v1

    invoke-virtual {v5, v1, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 355
    .end local v1    # "addrByte":[B
    :cond_4
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->readConfirmId:I

    .line 356
    .local v7, "readconfirmId":I
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsHeader;->IsReadConfirmMsg:Z

    .line 357
    .local v0, "IsreadConfirm":Z
    if-eqz v0, :cond_5

    .line 358
    const/16 v10, 0x44

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 359
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 360
    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 364
    :cond_5
    iget v10, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v10, :cond_6

    .line 365
    const/16 v10, 0x24

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 366
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 367
    iget v10, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 369
    :cond_6
    iget v10, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v10, :cond_7

    .line 370
    const/16 v10, 0x25

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 371
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 372
    iget v10, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 374
    :cond_7
    iget-object v10, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 375
    .local v9, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 376
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 377
    iget v10, v9, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 378
    iget v10, v9, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 319
    .end local v0    # "IsreadConfirm":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    .end local v7    # "readconfirmId":I
    .end local v8    # "replyaddr":Ljava/lang/String;
    .end local v9    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    :cond_8
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 320
    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 321
    iget v10, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    ushr-int/lit8 v10, v10, 0x8

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 322
    iget v10, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 335
    .restart local v6    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_9
    const/4 v10, 0x5

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 336
    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 337
    iget v10, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    ushr-int/lit8 v10, v10, 0x8

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 338
    iget v10, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 339
    iget v10, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    ushr-int/lit8 v10, v10, 0x8

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 340
    iget v10, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 350
    .restart local v1    # "addrByte":[B
    .restart local v8    # "replyaddr":Ljava/lang/String;
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 380
    .end local v1    # "addrByte":[B
    .restart local v0    # "IsreadConfirm":Z
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v7    # "readconfirmId":I
    :cond_b
    iget-object v10, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 381
    .local v4, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iget v10, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 382
    iget-object v10, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v10, v10

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 383
    iget-object v10, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    const/4 v11, 0x0

    iget-object v12, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v12, v12

    invoke-virtual {v5, v10, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    .line 385
    .end local v4    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_c
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v4, "UserDataHeader "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string v4, "{ ConcatRef "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v4, :cond_2

    .line 394
    const-string v4, "unset"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :goto_0
    const-string v4, ", PortAddrs "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v4, :cond_3

    .line 404
    const-string v4, "unset"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v4, :cond_0

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", languageShiftTable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v4, :cond_1

    .line 415
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", languageTable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 418
    .local v3, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    const-string v4, ", SpecialSmsMsg "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{ msgIndType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", msgCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 396
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{ refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", msgCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", seqNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", isEightBits="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-boolean v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 406
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{ destPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", origPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", areEightBits="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget-boolean v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 423
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 424
    .local v2, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const-string v4, ", MiscElt "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{ id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 430
    .end local v2    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_5
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
