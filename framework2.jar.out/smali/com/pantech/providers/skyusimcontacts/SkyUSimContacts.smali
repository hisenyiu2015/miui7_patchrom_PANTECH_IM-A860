.class public interface abstract Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;
.super Ljava/lang/Object;
.source "SkyUSimContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Groups;,
        Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$GroupsColumns;,
        Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$Contacts;,
        Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts$ContactsColumns;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "USIM"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.android.contacts.sim"

.field public static final ACTION_DELETE_USIM:Ljava/lang/String; = "com.pantech.app.skyusimcontacts.action.DELETE_USIM"

.field public static final ACTION_DELETE_USIM_GROUP:Ljava/lang/String; = "com.pantech.app.skyusimcontacts.action.DELETE_USIM_GROUP"

.field public static final ACTION_EXPORT_COPY_TO_USIM:Ljava/lang/String; = "com.pantech.app.skyusimcontacts.action.EXPORT_COPY_TO_USIM"

.field public static final ACTION_EXPORT_MOVE_TO_USIM:Ljava/lang/String; = "com.pantech.app.skyusimcontacts.action.EXPORT_MOVE_TO_USIM"

.field public static final ACTION_IMPORT_COPY_TO_PHONE:Ljava/lang/String; = "com.pantech.app.skyusimcontacts.action.IMPORT_COPY_TO_PHONE"

.field public static final ACTION_IMPORT_MOVE_TO_PHONE:Ljava/lang/String; = "com.pantech.app.skyusimcontacts.action.IMPORT_MOVE_TO_PHONE"

.field public static final ACTION_LOAD_USIM:Ljava/lang/String; = "com.pantech.app.skyusimcontacts.action.LOAD_USIM"

.field public static final ACTION_PBM_SIM_INIT_DONE:Ljava/lang/String; = "com.pantech.app.skyusimcontacts.action.PBM_SIM_INIT_DONE"

.field public static final ACTION_VIEW_USAGE_INFO:Ljava/lang/String; = "com.pantech.app.skyusimcontacts.action.VIEW_USAGE_INFO"

.field public static final AUTHORITY:Ljava/lang/String; = "com.pantech.skyusimcontacts"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final CHECKLOAD_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FREE_COUTNT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FREE_FIELD_COUNT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FREE_GRP_COUNT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FREE_RECORD_COUNT:I = 0x2

.field public static final FW_QMI_DEL_RECORD_SKY:I = 0x4

.field public static final FW_QMI_GET_FILE_INFO_SKY:I = 0x9

.field public static final FW_QMI_GET_PB_INFO_SKY:I = 0x7

.field public static final FW_QMI_GET_PB_NUM_RECS_SKY:I = 0x8

.field public static final FW_QMI_GET_PB_STATE_SKY:I = 0x1

.field public static final FW_QMI_READ_GAS_SKY:I = 0x5

.field public static final FW_QMI_READ_RECORD_SKY:I = 0x2

.field public static final FW_QMI_SET_GAS_SKY:I = 0x6

.field public static final FW_QMI_WRITE_RECORD_SKY:I = 0x3

.field public static final GRP_URI:Landroid/net/Uri;

.field public static final INIT_DB_URI:Landroid/net/Uri;

.field public static final LOADGRP_URI:Landroid/net/Uri;

.field public static final MAX_COUNT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_GRP_COUTN_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_RECORD_COUNT:I = 0x0

.field public static final NUM_COUNT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NUM_GRP_COUNT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PBM_ADDNUMBER_INDEX:I = 0x2

.field public static final PBM_EMAIL_INDEX:I = 0x4

.field public static final PBM_GROUPID_INDEX:I = 0x3

.field public static final PBM_GROUPNAME_INDEX:I = 0x5

.field public static final PBM_NAME_INDEX:I = 0x0

.field public static final PBM_NUMBER_INDEX:I = 0x1

.field public static final PBM_NUM_RECS_ADN:I = 0x0

.field public static final PBM_NUM_RECS_ADN_GAS:I = 0x1

.field public static final PBM_READ_RECORD_EMPTY:I = 0x2711

.field public static final PBM_READ_RECORD_ERROR:I = 0x2715

.field public static final PBM_READ_RECORD_FAIL:I = 0x2712

.field public static final PBM_READ_RECORD_NOT_READY:I = 0x2713

.field public static final PBM_READ_RECORD_READY:I = 0x2714

.field public static final PBM_READ_RECORD_SUCCESS:I = 0x2710

.field public static final READALLGRP_URI:Landroid/net/Uri;

.field public static final SEARCHBOOK_DIALER_URI:Landroid/net/Uri;

.field public static final SEARCHBOOK_RECENTCALL_URI:Landroid/net/Uri;

.field public static final SKY_USIM_CHECKLOAD:Ljava/lang/String; = "usimcheckload"

.field public static final SKY_USIM_FREE_COUTNT:Ljava/lang/String; = "usimfreecount"

.field public static final SKY_USIM_FREE_FIELD_COUNT:Ljava/lang/String; = "usimfreefieldcount"

.field public static final SKY_USIM_FREE_GRP_COUNT:Ljava/lang/String; = "usimfreegrpcount"

.field public static final SKY_USIM_GRP:Ljava/lang/String; = "usimgrp"

.field public static final SKY_USIM_LOADGRP:Ljava/lang/String; = "usimloadgrp"

.field public static final SKY_USIM_MAX_COUNT:Ljava/lang/String; = "usimcount"

.field public static final SKY_USIM_MAX_GRP_COUTNT:Ljava/lang/String; = "usimcountgrp"

.field public static final SKY_USIM_NUM_COUNT:Ljava/lang/String; = "usimnumcount"

.field public static final SKY_USIM_NUM_GRP_COUNT:Ljava/lang/String; = "usimnumgrpcount"

.field public static final SKY_USIM_READALLGRP:Ljava/lang/String; = "usimreadallgrp"

.field public static final SKY_USIM_SEARCHBOOK_DIALER:Ljava/lang/String; = "usimsearchbookdialer"

.field public static final SKY_USIM_SEARCHBOOK_RECENTCALL:Ljava/lang/String; = "usimsearchbookrecentcall"

.field public static final SKY_USIM_USIM:Ljava/lang/String; = "usim"

.field public static final SUBFN_ADN:I = 0x1

.field public static final SUBFN_ANR:I = 0x3

.field public static final SUBFN_DEFAULT:I = 0x0

.field public static final SUBFN_EMAIL:I = 0x5

.field public static final SUBFN_EXT1:I = 0x4

.field public static final SUBFN_FIND_NUM:I = 0x9

.field public static final SUBFN_GAS:I = 0x6

.field public static final SUBFN_GENERIC:I = 0x2

.field public static final SUBFN_ICI:I = 0x7

.field public static final SUBFN_OCI:I = 0x8

.field public static final TYPE_EMAIL:I = 0x3

.field public static final TYPE_GROUPNAME:I = 0x2

.field public static final TYPE_NAME:I = 0x0

.field public static final TYPE_NUMBER:I = 0x1

.field public static final USED_RECORD_COUNT:I = 0x1

.field public static final USIM_CALL_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.CALL_USIM"

.field public static final USIM_COPY_MOVE_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.COPY_MOVE_USIM"

.field public static final USIM_EDIT_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.EDIT_USIM"

.field public static final USIM_EDIT_GRP_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.EDIT_GRP_USIM"

.field public static final USIM_INSERT_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.INSERT_USIM"

.field public static final USIM_INSERT_GRP_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.INSERT_GRP_USIM"

.field public static final USIM_LIST_GROUP_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.USIM_LIST_GROUP_ACTION"

.field public static final USIM_LOAD_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.LOAD_USIM"

.field public static final USIM_LOAD_END:I = 0x3

.field public static final USIM_LOAD_NONE:I = 0x0

.field public static final USIM_LOAD_PROGRESS:I = 0x2

.field public static final USIM_LOAD_START:I = 0x1

.field public static final USIM_SEND_DATA_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.SEND_DATA_USIM"

.field public static final USIM_VIEW_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.USIMVIEW"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-string v0, "content://com.pantech.skyusimcontacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    .line 16
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usim_init_db"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->INIT_DB_URI:Landroid/net/Uri;

    .line 131
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usim"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 135
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usimcheckload"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->CHECKLOAD_URI:Landroid/net/Uri;

    .line 139
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usimcount"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->MAX_COUNT_URI:Landroid/net/Uri;

    .line 143
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usimnumcount"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->NUM_COUNT_URI:Landroid/net/Uri;

    .line 147
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usimcountgrp"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->MAX_GRP_COUTN_URI:Landroid/net/Uri;

    .line 151
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usimnumgrpcount"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->NUM_GRP_COUNT_URI:Landroid/net/Uri;

    .line 154
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usimsearchbookdialer"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->SEARCHBOOK_DIALER_URI:Landroid/net/Uri;

    .line 157
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usimsearchbookrecentcall"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->SEARCHBOOK_RECENTCALL_URI:Landroid/net/Uri;

    .line 160
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usimgrp"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->GRP_URI:Landroid/net/Uri;

    .line 163
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usimloadgrp"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->LOADGRP_URI:Landroid/net/Uri;

    .line 166
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usimreadallgrp"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->READALLGRP_URI:Landroid/net/Uri;

    .line 170
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usimfreecount"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->FREE_COUTNT_URI:Landroid/net/Uri;

    .line 174
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usimfreegrpcount"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->FREE_GRP_COUNT_URI:Landroid/net/Uri;

    .line 178
    sget-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usimfreefieldcount"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->FREE_FIELD_COUNT_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract getFieldCount(I)I
.end method

.method public abstract getFieldLength(II)I
.end method

.method public abstract getFieldsNumber([B)I
.end method

.method public abstract getPayload([B)Ljava/lang/String;
.end method

.method public abstract getPbrDefNumFieldLength()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPbrFieldLength(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getRecordCount(II)I
.end method

.method public abstract getRecordId([B)I
.end method

.method public abstract getRecordsNumber([B)I
.end method

.method public abstract getUSIMInfo(Landroid/content/Context;Landroid/net/Uri;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getUSimLoadState()I
.end method

.method public abstract setUSimLoadState(I)V
.end method
