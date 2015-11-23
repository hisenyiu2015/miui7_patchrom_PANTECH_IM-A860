.class public abstract Lcom/pantech/provider/skycontacts/GroupEntry;
.super Ljava/lang/Object;
.source "GroupEntry.java"


# direct methods
.method public constructor <init>(Landroid/accounts/Account;JLjava/lang/String;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "groupId"    # J
    .param p4, "groupName"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAccount()Landroid/accounts/Account;
.end method

.method public abstract getGrpName()Ljava/lang/String;
.end method

.method public abstract getId()J
.end method

.method public abstract isEditable()Z
.end method

.method public abstract setEditable(Z)V
.end method

.method public abstract setGrpName(Ljava/lang/String;)V
.end method
