.class public abstract Lcom/pantech/provider/skycontacts/ContactEntry;
.super Ljava/lang/Object;
.source "ContactEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;,
        Lcom/pantech/provider/skycontacts/ContactEntry$EditEntry;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/accounts/Account;J)V
    .locals 0
    .param p1, "accout"    # Landroid/accounts/Account;
    .param p2, "rawContactId"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p1, "accout"    # Landroid/accounts/Account;
    .param p2, "rawContactId"    # Ljava/lang/Long;
    .param p3, "version"    # Ljava/lang/Long;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addAnniversary(Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;)V
.end method

.method public abstract addBlog(Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;)V
.end method

.method public abstract addEmail(Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;)V
.end method

.method public abstract addFacebook(Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;)V
.end method

.method public abstract addGroupmembership(Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;)V
.end method

.method public abstract addIm(Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;)V
.end method

.method public abstract addMe2Day(Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;)V
.end method

.method public abstract addMemo(Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;)V
.end method

.method public abstract addName(Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;)V
.end method

.method public abstract addNickName(Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;)V
.end method

.method public abstract addOrganization(Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;)V
.end method

.method public abstract addPhoneNumber(Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;)V
.end method

.method public abstract addPhoto(Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;)V
.end method

.method public abstract addPostal(Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;)V
.end method

.method public abstract addRelation(Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;)V
.end method

.method public abstract addSipAddress(Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;)V
.end method

.method public abstract addTwitter(Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;)V
.end method

.method public abstract getAccount()Landroid/accounts/Account;
.end method

.method public abstract getAnniversaryList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$AnniversaryEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBlogList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$BlogEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEmailList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$EmailEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFacebook()Lcom/pantech/provider/skycontacts/ContactEntry$FacebookEntry;
.end method

.method public abstract getGroupmembershipList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$GroupMembershipEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/Long;
.end method

.method public abstract getImList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$ImEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMe2Day()Lcom/pantech/provider/skycontacts/ContactEntry$Me2DayEntry;
.end method

.method public abstract getMemo()Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;
.end method

.method public abstract getMemoList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$MemoEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Lcom/pantech/provider/skycontacts/ContactEntry$NameEntry;
.end method

.method public abstract getNickName()Lcom/pantech/provider/skycontacts/ContactEntry$NickNameEntry;
.end method

.method public abstract getOrganizationList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$OrganizationEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhoneList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$PhoneEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhoto()Lcom/pantech/provider/skycontacts/ContactEntry$PhotoEntry;
.end method

.method public abstract getPostalList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$PostalEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRelationList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/provider/skycontacts/ContactEntry$RelationEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSipAddress()Lcom/pantech/provider/skycontacts/ContactEntry$SipAddressEntry;
.end method

.method public abstract getTwitter()Lcom/pantech/provider/skycontacts/ContactEntry$TwitterEntry;
.end method

.method public abstract getVersion()Ljava/lang/Long;
.end method
