.class public abstract Lcom/pantech/provider/skycontacts/USIMContactManageHelper;
.super Ljava/lang/Object;
.source "USIMContactManageHelper.java"


# static fields
.field public static final ADDNUMBER_INDEX:I = 0x3

.field public static final COLUMN_ADDNUMBER:Ljava/lang/String; = "addnumber"

.field public static final COLUMN_EMAIL:Ljava/lang/String; = "email"

.field public static final COLUMN_GROUPID:Ljava/lang/String; = "group_id"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_NUMBER:Ljava/lang/String; = "number"

.field public static final EMAIL_INDEX:I = 0x5

.field public static final GROUPID_INDEX:I = 0x4

.field public static final NAME_INDEX:I = 0x1

.field public static final NUMBER_INDEX:I = 0x2

.field public static final UID_INDEX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteUSIMContact(I)Z
.end method

.method public abstract deleteUSIMGroup(I)Z
.end method

.method public abstract getUSIMContact(I)Lcom/pantech/provider/skycontacts/USIMContactEntry;
.end method

.method public abstract getUSIMGroup(I)Lcom/pantech/provider/skycontacts/USIMGroupEntry;
.end method

.method public abstract insertUSIMContact(Lcom/pantech/provider/skycontacts/USIMContactEntry;)Landroid/net/Uri;
.end method

.method public abstract insertUSIMGroup(Lcom/pantech/provider/skycontacts/USIMGroupEntry;)Landroid/net/Uri;
.end method

.method public abstract updateUSIMContact(Lcom/pantech/provider/skycontacts/USIMContactEntry;)Z
.end method

.method public abstract updateUSIMGroup(Lcom/pantech/provider/skycontacts/USIMGroupEntry;)Z
.end method
