.class public final Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneEntry"
.end annotation


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "number"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(JI)V

    .line 260
    iput-object p4, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->mData:Ljava/lang/String;

    .line 261
    const-string v0, "vnd.android.cursor.item/phone_v2"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->mMimeType:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 253
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(JI)V

    .line 254
    iput-object p3, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->mData:Ljava/lang/String;

    .line 255
    const-string v0, "vnd.android.cursor.item/phone_v2"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->mMimeType:Ljava/lang/String;

    .line 256
    return-void
.end method


# virtual methods
.method public getCustomLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->mType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->mCustomLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->mCustomLabel:Ljava/lang/String;

    .line 285
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "customLabel"    # Ljava/lang/String;

    .prologue
    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->mType:I

    .line 276
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->mCustomLabel:Ljava/lang/String;

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->mDataOrTypeUpdated:Z

    .line 278
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->mData:Ljava/lang/String;

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;->mDataOrTypeUpdated:Z

    .line 271
    return-void
.end method
