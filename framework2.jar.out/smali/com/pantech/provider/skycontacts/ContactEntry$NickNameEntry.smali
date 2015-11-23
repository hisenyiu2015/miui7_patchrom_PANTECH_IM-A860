.class public final Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NickNameEntry"
.end annotation


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "nickname"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(J)V

    .line 207
    iput-object p3, p0, Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;->mData:Ljava/lang/String;

    .line 208
    const-string v0, "vnd.android.cursor.item/nickname"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;->mMimeType:Ljava/lang/String;

    .line 209
    return-void
.end method


# virtual methods
.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 1
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;->mData:Ljava/lang/String;

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;->mDataOrTypeUpdated:Z

    .line 218
    return-void
.end method
