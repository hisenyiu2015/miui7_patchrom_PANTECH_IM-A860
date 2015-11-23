.class public final Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmailEntry"
.end annotation


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "email"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(JI)V

    .line 303
    iput-object p4, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;->mData:Ljava/lang/String;

    .line 304
    const-string v0, "vnd.android.cursor.item/email_v2"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;->mMimeType:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    .line 296
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(JI)V

    .line 297
    iput-object p3, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;->mData:Ljava/lang/String;

    .line 298
    const-string v0, "vnd.android.cursor.item/email_v2"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;->mMimeType:Ljava/lang/String;

    .line 299
    return-void
.end method


# virtual methods
.method public getCustomLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;->mType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;->mCustomLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;->mCustomLabel:Ljava/lang/String;

    .line 328
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "customLabel"    # Ljava/lang/String;

    .prologue
    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;->mType:I

    .line 319
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;->mCustomLabel:Ljava/lang/String;

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;->mDataOrTypeUpdated:Z

    .line 321
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;->mData:Ljava/lang/String;

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;->mDataOrTypeUpdated:Z

    .line 314
    return-void
.end method
