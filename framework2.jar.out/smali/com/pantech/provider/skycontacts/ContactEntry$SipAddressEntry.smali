.class public final Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SipAddressEntry"
.end annotation


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "sipAddress"    # Ljava/lang/String;

    .prologue
    .line 889
    invoke-direct {p0, p1, p2}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(J)V

    .line 890
    iput-object p3, p0, Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;->mData:Ljava/lang/String;

    .line 891
    const-string v0, "vnd.android.cursor.item/sip_address"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;->mMimeType:Ljava/lang/String;

    .line 892
    return-void
.end method


# virtual methods
.method public getSipAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public setSipAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "sipAddress"    # Ljava/lang/String;

    .prologue
    .line 899
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;->mData:Ljava/lang/String;

    .line 900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;->mDataOrTypeUpdated:Z

    .line 901
    return-void
.end method
