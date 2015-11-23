.class public final Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;
.super Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/ContactEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupMembershipEntry"
.end annotation


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "groupId"    # J

    .prologue
    .line 823
    invoke-direct {p0, p1, p2}, Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;-><init>(J)V

    .line 824
    invoke-virtual {p0, p3, p4}, Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;->setGroupId(J)V

    .line 825
    const-string v0, "vnd.android.cursor.item/group_membership"

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;->mMimeType:Ljava/lang/String;

    .line 826
    return-void
.end method


# virtual methods
.method public getGroupId()J
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;->mData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;->mData:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 832
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setGroupId(J)V
    .locals 1
    .param p1, "groupId"    # J

    .prologue
    .line 836
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;->mData:Ljava/lang/String;

    .line 837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;->mDataOrTypeUpdated:Z

    .line 838
    return-void
.end method
