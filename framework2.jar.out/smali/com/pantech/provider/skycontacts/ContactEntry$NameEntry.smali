.class public final Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NameEntry"
.end annotation


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(J)V

    .line 187
    iput-object p3, p0, Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;->mData:Ljava/lang/String;

    .line 188
    const-string v0, "vnd.android.cursor.item/name"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;->mMimeType:Ljava/lang/String;

    .line 189
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;->mData:Ljava/lang/String;

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;->mDataOrTypeUpdated:Z

    .line 198
    return-void
.end method
