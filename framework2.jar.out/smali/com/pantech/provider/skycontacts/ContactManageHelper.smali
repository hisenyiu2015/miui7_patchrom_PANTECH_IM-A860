.class public abstract Lcom/pantech/provider/skycontacts/ContactManageHelper;
.super Ljava/lang/Object;
.source "ContactManageHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteContact(J)Z
.end method

.method public abstract deleteGroup(J)Z
.end method

.method public abstract deleteSpeedDial(I)Z
.end method

.method public abstract destroyContactManageHelper()V
.end method

.method public abstract getAllGroupList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/GroupEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContact(J)Lcom/pantech/provider/skycontacts/ContactEntry;
.end method

.method public abstract getGroup(J)Lcom/pantech/provider/skycontacts/GroupEntry;
.end method

.method public abstract getGroupList(Landroid/accounts/Account;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/GroupEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRewritbleContactsId()Landroid/database/Cursor;
.end method

.method public abstract getSpeedDial(I)Lcom/pantech/provider/skycontacts/SpeedDialEntry;
.end method

.method public abstract insertContact(Lcom/pantech/provider/skycontacts/ContactEntry;)Landroid/net/Uri;
.end method

.method public abstract insertGroup(Lcom/pantech/provider/skycontacts/GroupEntry;)Landroid/net/Uri;
.end method

.method public abstract insertSpeedDial(IJ)Landroid/net/Uri;
.end method

.method public abstract queryAccount()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setDefaultKindByAccountType()V
.end method

.method public abstract updateContact(Lcom/pantech/provider/skycontacts/ContactEntry;)Z
.end method

.method public abstract updateGroup(Lcom/pantech/provider/skycontacts/GroupEntry;)Z
.end method

.method public abstract updateSpeedDial(IJ)Z
.end method
