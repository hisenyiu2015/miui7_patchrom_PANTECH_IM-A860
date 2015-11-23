.class public Landroid/provider/sms/DatamanagerMsgUtil;
.super Ljava/lang/Object;
.source "DatamanagerMsgUtil.java"


# static fields
.field public static final INBOX:I = 0x1

.field static final MSG_PROJECTION:[Ljava/lang/String;

.field public static final OUTBOX:I = 0x2

.field private static sInstance:Landroid/provider/sms/DatamanagerMsgUtil;


# instance fields
.field private MsgCursor:Landroid/database/Cursor;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;

.field private mbox_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/sms/DatamanagerMsgUtil;->sInstance:Landroid/provider/sms/DatamanagerMsgUtil;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "body"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/sms/DatamanagerMsgUtil;->MSG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->mContext:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->mResolver:Landroid/content/ContentResolver;

    .line 22
    iput-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    .line 33
    iput-object p1, p0, Landroid/provider/sms/DatamanagerMsgUtil;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->mResolver:Landroid/content/ContentResolver;

    .line 37
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/provider/sms/DatamanagerMsgUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Landroid/provider/sms/DatamanagerMsgUtil;->sInstance:Landroid/provider/sms/DatamanagerMsgUtil;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/provider/sms/DatamanagerMsgUtil;

    invoke-direct {v0, p0}, Landroid/provider/sms/DatamanagerMsgUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/provider/sms/DatamanagerMsgUtil;->sInstance:Landroid/provider/sms/DatamanagerMsgUtil;

    .line 43
    :cond_0
    sget-object v0, Landroid/provider/sms/DatamanagerMsgUtil;->sInstance:Landroid/provider/sms/DatamanagerMsgUtil;

    return-object v0
.end method


# virtual methods
.method public CloseMsgbox()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_0
    return-void
.end method

.method public DeleteMsg(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    .local v0, "mSelectionBuffer":Ljava/lang/StringBuffer;
    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 134
    iget-object v1, p0, Landroid/provider/sms/DatamanagerMsgUtil;->mResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Landroid/provider/sms/DatamanagerMsgUtil;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    :cond_0
    return-void
.end method

.method public GetMsg()Landroid/provider/sms/DatamanagerMsg;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 94
    iget-object v6, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    if-nez v6, :cond_0

    move-object v0, v5

    .line 121
    :goto_0
    return-object v0

    .line 97
    :cond_0
    new-instance v0, Landroid/provider/sms/DatamanagerMsg;

    invoke-direct {v0}, Landroid/provider/sms/DatamanagerMsg;-><init>()V

    .line 98
    .local v0, "Msg":Landroid/provider/sms/DatamanagerMsg;
    iget-object v6, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v0, Landroid/provider/sms/DatamanagerMsg;->index:J

    .line 99
    iput-object v5, v0, Landroid/provider/sms/DatamanagerMsg;->nAddr:Ljava/lang/String;

    .line 100
    iget-object v6, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/provider/sms/DatamanagerMsg;->msg_text:Ljava/lang/String;

    .line 103
    new-instance v1, Ljava/util/Date;

    iget-object v6, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 104
    .local v1, "currDate":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy/MM/dd/HH/mm/ss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "dateFormate":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "timestamp":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/provider/sms/DatamanagerMsg;->date:[Ljava/lang/String;

    .line 108
    iget v6, p0, Landroid/provider/sms/DatamanagerMsgUtil;->mbox_type:I

    if-ne v6, v9, :cond_1

    .line 109
    iget-object v6, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/provider/sms/DatamanagerMsg;->send_number:Ljava/lang/String;

    .line 110
    iput v8, v0, Landroid/provider/sms/DatamanagerMsg;->donbo_count:I

    .line 111
    iput-object v5, v0, Landroid/provider/sms/DatamanagerMsg;->recv_num:[Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_1
    iget-object v6, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "temp_addr":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 115
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/provider/sms/DatamanagerMsg;->recv_num:[Ljava/lang/String;

    .line 118
    :goto_1
    iget-object v6, v0, Landroid/provider/sms/DatamanagerMsg;->recv_num:[Ljava/lang/String;

    array-length v6, v6

    iput v6, v0, Landroid/provider/sms/DatamanagerMsg;->donbo_count:I

    .line 119
    iput-object v5, v0, Landroid/provider/sms/DatamanagerMsg;->send_number:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_2
    iget-object v6, v0, Landroid/provider/sms/DatamanagerMsg;->recv_num:[Ljava/lang/String;

    aput-object v3, v6, v8

    goto :goto_1
.end method

.method public GetMsgCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public MoveToNextMsg()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 128
    :cond_0
    return-void
.end method

.method public OpenMsgbox(I)V
    .locals 8
    .param p1, "box_type"    # I

    .prologue
    const/4 v1, 0x1

    .line 47
    iput p1, p0, Landroid/provider/sms/DatamanagerMsgUtil;->mbox_type:I

    .line 48
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v7, "mSelectionBuffer":Ljava/lang/StringBuffer;
    iget v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->mbox_type:I

    if-ne v0, v1, :cond_3

    .line 50
    const-string v0, "x_extra_boxtype"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const-string v0, " = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 58
    :goto_0
    iget-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/sms/DatamanagerMsgUtil;->MSG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    .line 69
    :cond_1
    iget-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_2
    :goto_1
    return-void

    .line 54
    :cond_3
    const-string v0, "x_extra_boxtype"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v0, " = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 72
    :catch_0
    move-exception v6

    .line 73
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Landroid/provider/sms/DatamanagerMsgUtil;->MsgCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method
