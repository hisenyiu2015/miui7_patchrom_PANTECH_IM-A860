.class public final Lcom/pantech/provider/skycontacts/impl/GroupEntryImpl;
.super Lcom/pantech/provider/skycontacts/GroupEntry;
.source "GroupEntryImpl.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mEditable:Z

.field private mGroupId:J

.field private mGroupName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;JLjava/lang/String;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "groupId"    # J
    .param p4, "groupName"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/provider/skycontacts/GroupEntry;-><init>(Landroid/accounts/Account;JLjava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/GroupEntryImpl;->mAccount:Landroid/accounts/Account;

    .line 40
    iput-wide p2, p0, Lcom/pantech/provider/skycontacts/impl/GroupEntryImpl;->mGroupId:J

    .line 41
    iput-object p4, p0, Lcom/pantech/provider/skycontacts/impl/GroupEntryImpl;->mGroupName:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/GroupEntryImpl;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getGrpMode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    const/4 v0, -0x1

    return v0
.end method

.method public getGrpMsgRingtone()Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGrpName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pantech/provider/skycontacts/impl/GroupEntryImpl;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGrpOrder()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    const/4 v0, -0x1

    return v0
.end method

.method public getGrpPhoto()Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGrpRingtone()Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/pantech/provider/skycontacts/impl/GroupEntryImpl;->mGroupId:J

    return-wide v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/pantech/provider/skycontacts/impl/GroupEntryImpl;->mEditable:Z

    return v0
.end method

.method public setEditable(Z)V
    .locals 0
    .param p1, "editable"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/pantech/provider/skycontacts/impl/GroupEntryImpl;->mEditable:Z

    .line 64
    return-void
.end method

.method public setGrpMode(I)V
    .locals 0
    .param p1, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    return-void
.end method

.method public setGrpMsgRingtone(Landroid/net/Uri;)V
    .locals 0
    .param p1, "ringtone"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    return-void
.end method

.method public setGrpName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/pantech/provider/skycontacts/impl/GroupEntryImpl;->mEditable:Z

    if-eqz v0, :cond_0

    .line 58
    iput-object p1, p0, Lcom/pantech/provider/skycontacts/impl/GroupEntryImpl;->mGroupName:Ljava/lang/String;

    .line 60
    :cond_0
    return-void
.end method

.method public setGrpOrder(I)V
    .locals 0
    .param p1, "order"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    return-void
.end method

.method public setGrpPhoto(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "photo"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    return-void
.end method

.method public setGrpRingtone(Landroid/net/Uri;)V
    .locals 0
    .param p1, "ringtone"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    return-void
.end method
