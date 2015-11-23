.class public abstract Lcom/pantech/provider/skycontacts/SkyPBMSynchronizer;
.super Ljava/lang/Object;
.source "SkyPBMSynchronizer.java"


# static fields
.field public static final PBM_ADDNUMBER_INDEX:I = 0x2

.field public static final PBM_EMAIL_INDEX:I = 0x4

.field public static final PBM_ERROR:I = 0x11

.field public static final PBM_GROUPID_INDEX:I = 0x3

.field public static final PBM_GROUP_OPERATION_ADD:I = 0x0

.field public static final PBM_GROUP_OPERATION_DELETE:I = 0x2

.field public static final PBM_GROUP_OPERATION_MODIFY:I = 0x1

.field public static final PBM_NAME_INDEX:I = 0x0

.field public static final PBM_NUMBER_INDEX:I = 0x1

.field public static final PBM_SUCCESS:I = 0x0

.field public static final QMI_ERR_MEM_FULL_ANR_V01:I = 0xca

.field public static final QMI_ERR_MEM_FULL_EMAIL_V01:I = 0xc9

.field public static final QMI_ERR_MEM_FULL_EXT_V01:I = 0xcb


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteContact(I)Z
.end method

.method public abstract deleteGroup(I)Z
.end method

.method public abstract getCutUTFString(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getKTValidKSC5601(Ljava/lang/String;)Ljava/nio/ByteBuffer;
.end method

.method public abstract updateContact(Landroid/content/Context;ILandroid/content/ContentValues;)I
.end method

.method public abstract updateGroup(ILandroid/content/ContentValues;)I
.end method

.method public abstract usimToByteBuffer(Ljava/util/Map;)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation
.end method
