.class public final Landroid/provider/TelephonyExtend$MmsSmsExtend;
.super Ljava/lang/Object;
.source "TelephonyExtend.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/TelephonyExtend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsSmsExtend"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final BOOT_COMPLETE_URI:Landroid/net/Uri;

.field public static final BUBBLE_CONTENT_URI:Landroid/net/Uri;

.field public static final CHATTING_CONTENT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DRAFTBOX_SELECTION:Ljava/lang/String; = "(x_extra_boxtype = 110 OR x_extra_boxtype = 3)"

.field public static final FAILEDBOX_CONTENT_URI:Landroid/net/Uri;

.field public static final FAILEDBOX_COUNT_URI:Landroid/net/Uri;

.field public static final FAILEDBOX_SELECTION:Ljava/lang/String; = "x_extra_boxtype = 5"

.field public static final INBOX_CONTENT_URI:Landroid/net/Uri;

.field public static final INBOX_COUNT_URI:Landroid/net/Uri;

.field public static final INBOX_SELECTION:Ljava/lang/String; = "x_extra_boxtype = 1"

.field public static final MESSAGE_BOX:Ljava/lang/String; = "msg_box"

.field public static final MESSAGE_RECYCLE_URI:Landroid/net/Uri;

.field public static final MMS_DEFAULT_THREAD_SELECTION:Ljava/lang/String; = "((pdu.x_extra_boxtype = 1 OR pdu.x_extra_boxtype = 2 OR pdu.x_extra_boxtype = 4 OR pdu.x_extra_boxtype = 5 OR pdu.x_extra_boxtype = 100 OR pdu.x_extra_boxtype = 101 OR pdu.x_extra_boxtype = 102 OR pdu.x_extra_boxtype = 110) AND (pdu.m_type = 128 OR pdu.m_type = 132 OR pdu.m_type = 130))"

.field public static final MMS_DRAFTBOX_SELECTION:Ljava/lang/String; = "(pdu.x_extra_boxtype = 110 OR pdu.x_extra_boxtype = 3)"

.field public static final MMS_FAILEDBOX_SELECTION:Ljava/lang/String; = "pdu.x_extra_boxtype = 5"

.field public static final MMS_INBOX_SELECTION:Ljava/lang/String; = "pdu.x_extra_boxtype = 1 AND (pdu.m_type = 132 OR pdu.m_type = 130)"

.field public static final MMS_PERMBOX_SELECTION:Ljava/lang/String; = "pdu.x_extra_boxtype = 102"

.field public static final MMS_RECYCLE_SELECTION:Ljava/lang/String; = "((pdu.x_extra_boxtype = 1 OR pdu.x_extra_boxtype = 2 OR pdu.x_extra_boxtype = 3 OR pdu.x_extra_boxtype = 4 OR pdu.x_extra_boxtype = 5 OR pdu.x_extra_boxtype = 110) AND (pdu.m_type = 128 OR pdu.m_type = 132 OR pdu.m_type = 130))"

.field public static final MMS_RESERVEBOX_SELECTION:Ljava/lang/String; = "pdu.x_extra_boxtype = 100"

.field public static final MMS_SEARCH_SELECTION:Ljava/lang/String; = "((pdu.x_extra_boxtype = 1 OR pdu.x_extra_boxtype = 2 OR pdu.x_extra_boxtype = 3 OR pdu.x_extra_boxtype = 4 OR pdu.x_extra_boxtype = 5 OR pdu.x_extra_boxtype = 100 OR pdu.x_extra_boxtype = 102 OR pdu.x_extra_boxtype = 110) AND (pdu.x_sub_msg_type = 7) AND (pdu.m_type = 128 OR pdu.m_type = 132 OR pdu.m_type = 130))"

.field public static final MMS_SENTBOX_SELECTION:Ljava/lang/String; = "((pdu.x_extra_boxtype = 2 OR pdu.x_extra_boxtype = 3 OR pdu.x_extra_boxtype = 5 OR pdu.x_extra_boxtype = 110 OR pdu.x_extra_boxtype = 100) AND (pdu.m_type = 128))"

.field public static final MMS_SPAMBOX_SELECTION:Ljava/lang/String; = "pdu.x_extra_boxtype = 101"

.field public static final MMS_THREAD_SELECTION:Ljava/lang/String; = "((pdu.x_extra_boxtype = 1 OR pdu.x_extra_boxtype = 2 OR pdu.x_extra_boxtype = 3 OR pdu.x_extra_boxtype = 4 OR pdu.x_extra_boxtype = 5 OR pdu.x_extra_boxtype = 100 OR pdu.x_extra_boxtype = 110) AND (pdu.m_type = 128 OR pdu.m_type = 132 OR pdu.m_type = 130))"

.field public static final NEWINCOMINGMSG_URI:Landroid/net/Uri;

.field public static final NEW_KPASMSG_URI:Landroid/net/Uri;

.field public static final PERMBOX_CONTENT_URI:Landroid/net/Uri;

.field public static final PERMBOX_COUNT_URI:Landroid/net/Uri;

.field public static final PERMBOX_SELECTION:Ljava/lang/String; = "x_extra_boxtype = 102"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final RECIPIENT_IDS:Ljava/lang/String; = "recipient_ids"

.field public static final RECYCLE_SELECTION:Ljava/lang/String; = "(x_extra_boxtype = 1 OR x_extra_boxtype = 2 OR x_extra_boxtype = 3 OR x_extra_boxtype = 4 OR x_extra_boxtype = 5 OR x_extra_boxtype = 6 OR x_extra_boxtype = 103 OR x_extra_boxtype = 110)"

.field public static final RESERVEBOX_SELECTION:Ljava/lang/String; = "x_extra_boxtype = 100"

.field public static final RESERVEVBOX_CONTENT_URI:Landroid/net/Uri;

.field public static final RESERVEVBOX_COUNT_URI:Landroid/net/Uri;

.field public static final SEARCHBOX_COUNT_URI:Landroid/net/Uri;

.field public static final SEARCHBOX_URI:Landroid/net/Uri;

.field public static final SECRETBOX_URI:Landroid/net/Uri;

.field public static final SENTBOX_CONTENT_URI:Landroid/net/Uri;

.field public static final SENTBOX_COUNT_URI:Landroid/net/Uri;

.field public static final SENTBOX_SELECTION:Ljava/lang/String; = "(x_extra_boxtype = 2 OR x_extra_boxtype = 3 OR x_extra_boxtype = 5 OR x_extra_boxtype = 110 OR x_extra_boxtype = 100)"

.field public static final SMS_DEFAULT_THREAD_SELECTION:Ljava/lang/String; = "(sms.x_extra_boxtype = 1 OR sms.x_extra_boxtype = 2 OR sms.x_extra_boxtype = 4 OR sms.x_extra_boxtype = 5 OR sms.x_extra_boxtype = 6 OR sms.x_extra_boxtype = 100 OR sms.x_extra_boxtype = 101 OR sms.x_extra_boxtype = 102 OR sms.x_extra_boxtype = 103 OR sms.x_extra_boxtype = 110)"

.field public static final SMS_DRAFTBOX_SELECTION:Ljava/lang/String; = "(sms.x_extra_boxtype = 110 OR sms.x_extra_boxtype = 3)"

.field public static final SMS_FAILEDBOX_SELECTION:Ljava/lang/String; = "sms.x_extra_boxtype = 5"

.field public static final SMS_INBOX_SELECTION:Ljava/lang/String; = "sms.x_extra_boxtype = 1"

.field public static final SMS_PERMBOX_SELECTION:Ljava/lang/String; = "sms.x_extra_boxtype = 102"

.field public static final SMS_RECYCLE_SELECTION:Ljava/lang/String; = "(sms.x_extra_boxtype = 1 OR sms.x_extra_boxtype = 2 OR sms.x_extra_boxtype = 3 OR sms.x_extra_boxtype = 4 OR sms.x_extra_boxtype = 5 OR sms.x_extra_boxtype = 6 OR sms.x_extra_boxtype = 103 OR sms.x_extra_boxtype = 110)"

.field public static final SMS_RESERVEBOX_SELECTION:Ljava/lang/String; = "sms.x_extra_boxtype = 100"

.field public static final SMS_SEARCH_SELECTION:Ljava/lang/String; = "((sms.x_extra_boxtype = 1 OR sms.x_extra_boxtype = 2 OR sms.x_extra_boxtype = 3 OR sms.x_extra_boxtype = 4 OR sms.x_extra_boxtype = 5 OR sms.x_extra_boxtype = 6 OR sms.x_extra_boxtype = 100 OR sms.x_extra_boxtype = 102 OR sms.x_extra_boxtype = 103 OR sms.x_extra_boxtype = 110) AND (sms.x_sub_msg_type NOT IN (3,4,5,100,305,308,307,310,306,309,303,304,311,302,200)))"

.field public static final SMS_SENTBOX_SELECTION:Ljava/lang/String; = "(sms.x_extra_boxtype = 2 OR sms.x_extra_boxtype = 3 OR sms.x_extra_boxtype = 5 OR sms.x_extra_boxtype = 110 OR sms.x_extra_boxtype = 100)"

.field public static final SMS_SPAMBOX_SELECTION:Ljava/lang/String; = "sms.x_extra_boxtype = 101"

.field public static final SMS_THREAD_SELECTION:Ljava/lang/String; = "(sms.x_extra_boxtype = 1 OR sms.x_extra_boxtype = 2 OR sms.x_extra_boxtype = 3 OR sms.x_extra_boxtype = 4 OR sms.x_extra_boxtype = 5 OR sms.x_extra_boxtype = 6 OR sms.x_extra_boxtype = 100 OR sms.x_extra_boxtype = 103 OR sms.x_extra_boxtype = 110)"

.field public static final SNIPPET:Ljava/lang/String; = "snippet"

.field public static final SPAMBOX_CONTENT_URI:Landroid/net/Uri;

.field public static final SPAMBOX_COUNT_URI:Landroid/net/Uri;

.field public static final SPAMBOX_SELECTION:Ljava/lang/String; = "x_extra_boxtype = 101"

.field public static final THREAD_COUNT_URI:Landroid/net/Uri;

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final THREAD_NO_UPDATE_URI:Landroid/net/Uri;

.field public static final THREAD_READ_URI:Landroid/net/Uri;

.field public static final THREAD_SELECTION:Ljava/lang/String; = "(x_extra_boxtype = 1 OR x_extra_boxtype = 2 OR x_extra_boxtype = 3 OR x_extra_boxtype = 4 OR x_extra_boxtype = 5 OR x_extra_boxtype = 6 OR x_extra_boxtype = 100 OR x_extra_boxtype = 103 OR x_extra_boxtype = 110)"

.field public static final THREAD_UPDATE_URI:Landroid/net/Uri;

.field public static final UNREAD_EXCLUDINGKPAS_COUNT_URI:Landroid/net/Uri;

.field public static final UNREAD_THREAD_COUNT_URI:Landroid/net/Uri;

.field public static final X_AUTH:Ljava/lang/String; = "x_auth"

.field public static final X_CANONICAL_ID:Ljava/lang/String; = "x_canonical_id"

.field public static final X_EMOTION:Ljava/lang/String; = "x_emotion"

.field public static final X_EXTRA_BOXTYPE:Ljava/lang/String; = "x_extra_boxtype"

.field public static final X_MSG_TYPE:Ljava/lang/String; = "x_msg_type"

.field public static final X_ORI_ADDRESS:Ljava/lang/String; = "x_ori_address"

.field public static final X_RESERVE_TIME:Ljava/lang/String; = "x_reserve_time"

.field public static final X_SUB_MSG_TYPE:Ljava/lang/String; = "x_sub_msg_type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 349
    const-string v0, "content://mms-sms/chatting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->CHATTING_CONTENT_URI:Landroid/net/Uri;

    .line 352
    const-string v0, "content://mms-sms/bubble"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->BUBBLE_CONTENT_URI:Landroid/net/Uri;

    .line 355
    const-string v0, "content://mms-sms/message_recycle"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->MESSAGE_RECYCLE_URI:Landroid/net/Uri;

    .line 358
    const-string v0, "content://mms-sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->INBOX_CONTENT_URI:Landroid/net/Uri;

    .line 361
    const-string v0, "content://mms-sms/sentbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->SENTBOX_CONTENT_URI:Landroid/net/Uri;

    .line 364
    const-string v0, "content://mms-sms/permbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->PERMBOX_CONTENT_URI:Landroid/net/Uri;

    .line 367
    const-string v0, "content://mms-sms/spambox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->SPAMBOX_CONTENT_URI:Landroid/net/Uri;

    .line 370
    const-string v0, "content://mms-sms/reservebox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->RESERVEVBOX_CONTENT_URI:Landroid/net/Uri;

    .line 373
    const-string v0, "content://mms-sms/failedbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->FAILEDBOX_CONTENT_URI:Landroid/net/Uri;

    .line 376
    const-string v0, "content://mms-sms/searchbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->SEARCHBOX_URI:Landroid/net/Uri;

    .line 379
    const-string v0, "content://mms-sms/count_inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->INBOX_COUNT_URI:Landroid/net/Uri;

    .line 382
    const-string v0, "content://mms-sms/count_sentbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->SENTBOX_COUNT_URI:Landroid/net/Uri;

    .line 385
    const-string v0, "content://mms-sms/count_permbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->PERMBOX_COUNT_URI:Landroid/net/Uri;

    .line 388
    const-string v0, "content://mms-sms/count_spambox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->SPAMBOX_COUNT_URI:Landroid/net/Uri;

    .line 391
    const-string v0, "content://mms-sms/count_reservebox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->RESERVEVBOX_COUNT_URI:Landroid/net/Uri;

    .line 394
    const-string v0, "content://mms-sms/count_failedbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->FAILEDBOX_COUNT_URI:Landroid/net/Uri;

    .line 397
    const-string v0, "content://mms-sms/count_searchbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->SEARCHBOX_COUNT_URI:Landroid/net/Uri;

    .line 400
    const-string v0, "content://mms-sms/thread_read"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->THREAD_READ_URI:Landroid/net/Uri;

    .line 403
    const-string v0, "content://mms-sms/count_thread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->THREAD_COUNT_URI:Landroid/net/Uri;

    .line 406
    const-string v0, "content://mms-sms/count_unread_thread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->UNREAD_THREAD_COUNT_URI:Landroid/net/Uri;

    .line 409
    const-string v0, "content://mms-sms/newmsg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->NEWINCOMINGMSG_URI:Landroid/net/Uri;

    .line 412
    const-string v0, "content://mms-sms/thread_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->THREAD_UPDATE_URI:Landroid/net/Uri;

    .line 415
    const-string v0, "content://mms-sms/thread_no_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->THREAD_NO_UPDATE_URI:Landroid/net/Uri;

    .line 418
    const-string v0, "content://mms-sms/boot_complete"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->BOOT_COMPLETE_URI:Landroid/net/Uri;

    .line 422
    const-string v0, "content://mms-sms/new_kpasmsg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->NEW_KPASMSG_URI:Landroid/net/Uri;

    .line 425
    const-string v0, "content://mms-sms/count_unread_excludingkpas"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->UNREAD_EXCLUDINGKPAS_COUNT_URI:Landroid/net/Uri;

    .line 428
    const-string v0, "content://mms-sms/secretbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TelephonyExtend$MmsSmsExtend;->SECRETBOX_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
