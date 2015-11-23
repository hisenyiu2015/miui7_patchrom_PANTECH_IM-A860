.class public final Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FacebookEntry"
.end annotation


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "facebook"    # Ljava/lang/String;

    .prologue
    .line 802
    invoke-direct {p0, p1, p2}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(J)V

    .line 803
    iput-object p3, p0, Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;->mData:Ljava/lang/String;

    .line 804
    const-string v0, "vnd.android.cursor.item/facebook"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;->mMimeType:Ljava/lang/String;

    .line 805
    return-void
.end method


# virtual methods
.method public getFacebook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public setFacebook(Ljava/lang/String;)V
    .locals 1
    .param p1, "facebook"    # Ljava/lang/String;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;->mData:Ljava/lang/String;

    .line 813
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;->mDataOrTypeUpdated:Z

    .line 814
    return-void
.end method
