.class public final Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnniversaryEntry"
.end annotation


# instance fields
.field private mDateType:I


# direct methods
.method public constructor <init>(JILjava/lang/String;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "date"    # Ljava/lang/String;
    .param p5, "dateType"    # I

    .prologue
    .line 349
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(JI)V

    .line 350
    iput-object p4, p0, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;->mData:Ljava/lang/String;

    .line 351
    iput p5, p0, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;->mDateType:I

    .line 352
    invoke-direct {p0, p5}, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;->getMimetype(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;->mMimeType:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 6
    .param p1, "id"    # J
    .param p3, "date"    # Ljava/lang/String;

    .prologue
    .line 345
    const/4 v3, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;-><init>(JILjava/lang/String;I)V

    .line 346
    return-void
.end method

.method private getMimetype(I)Ljava/lang/String;
    .locals 1
    .param p1, "dateType"    # I

    .prologue
    .line 406
    if-nez p1, :cond_0

    .line 407
    const-string v0, "vnd.android.cursor.item/contact_event"

    .line 409
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "vnd.pantech.cursor.item/lunar_event"

    goto :goto_0
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getDateType()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;->mDateType:I

    return v0
.end method

.method public isLeap()Z
    .locals 2

    .prologue
    .line 424
    iget v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;->mDateType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLunar()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 419
    iget v1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;->mDateType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSolar()Z
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;->mDateType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 1
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;->mData:Ljava/lang/String;

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;->mDataOrTypeUpdated:Z

    .line 372
    return-void
.end method

.method public setDateType(I)V
    .locals 1
    .param p1, "dateType"    # I

    .prologue
    .line 393
    iput p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;->mDateType:I

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;->mDataOrTypeUpdated:Z

    .line 395
    return-void
.end method
