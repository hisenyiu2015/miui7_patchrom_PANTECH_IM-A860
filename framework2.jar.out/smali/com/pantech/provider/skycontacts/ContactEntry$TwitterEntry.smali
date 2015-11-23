.class public final Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TwitterEntry"
.end annotation


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "twitter"    # Ljava/lang/String;

    .prologue
    .line 781
    invoke-direct {p0, p1, p2}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(J)V

    .line 782
    iput-object p3, p0, Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;->mData:Ljava/lang/String;

    .line 783
    const-string v0, "vnd.android.cursor.item/twitter"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;->mMimeType:Ljava/lang/String;

    .line 784
    return-void
.end method


# virtual methods
.method public getTwitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public setTwitter(Ljava/lang/String;)V
    .locals 1
    .param p1, "twitter"    # Ljava/lang/String;

    .prologue
    .line 791
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;->mData:Ljava/lang/String;

    .line 792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;->mDataOrTypeUpdated:Z

    .line 793
    return-void
.end method
