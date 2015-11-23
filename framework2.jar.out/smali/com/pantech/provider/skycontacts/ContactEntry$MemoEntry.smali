.class public final Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemoEntry"
.end annotation


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "memo"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(J)V

    .line 227
    iput-object p3, p0, Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;->mData:Ljava/lang/String;

    .line 228
    const-string v0, "vnd.android.cursor.item/note"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;->mMimeType:Ljava/lang/String;

    .line 229
    return-void
.end method


# virtual methods
.method public getMemo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 1
    .param p1, "memo"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;->mData:Ljava/lang/String;

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;->mDataOrTypeUpdated:Z

    .line 238
    return-void
.end method
