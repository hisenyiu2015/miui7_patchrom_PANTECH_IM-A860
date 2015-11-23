.class public final Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImEntry"
.end annotation


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "im"    # Ljava/lang/String;

    .prologue
    .line 539
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(JI)V

    .line 540
    iput-object p4, p0, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;->mData:Ljava/lang/String;

    .line 541
    const-string v0, "vnd.android.cursor.item/im"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;->mMimeType:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "im"    # Ljava/lang/String;

    .prologue
    .line 533
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(JI)V

    .line 534
    iput-object p3, p0, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;->mData:Ljava/lang/String;

    .line 535
    const-string v0, "vnd.android.cursor.item/im"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;->mMimeType:Ljava/lang/String;

    .line 536
    return-void
.end method


# virtual methods
.method public getCustomLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 561
    iget v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;->mCustomLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;->mCustomLabel:Ljava/lang/String;

    .line 564
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "customLabel"    # Ljava/lang/String;

    .prologue
    .line 554
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;->mType:I

    .line 555
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;->mCustomLabel:Ljava/lang/String;

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;->mDataOrTypeUpdated:Z

    .line 557
    return-void
.end method

.method public setIm(Ljava/lang/String;)V
    .locals 1
    .param p1, "im"    # Ljava/lang/String;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;->mData:Ljava/lang/String;

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;->mDataOrTypeUpdated:Z

    .line 551
    return-void
.end method
